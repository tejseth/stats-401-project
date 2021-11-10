library(tidyverse)

fifa_22 <- read_csv(url("https://raw.githubusercontent.com/tejseth/stats-401-project/master/players_fifa22.csv"))
names(fifa_22)

fifa_small <- fifa_22 %>%
  select(FullName, Age, Height, Weight, PhotoUrl, Overall, BestPosition, ValueEUR,
         ShootingTotal, PassingTotal, DribblingTotal, DefendingTotal, PhysicalityTotal)

colSums(is.na(fifa_small))

