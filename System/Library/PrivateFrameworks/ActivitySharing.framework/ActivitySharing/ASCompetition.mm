@interface ASCompetition
+ (id)codableDatabaseCompetitionsFromCompetitions:(id)a3 withFriendWithUUID:(id)a4 withType:(int64_t)a5;
+ (id)competitionWithCodableCompetition:(id)a3;
- (ASCompetition)init;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToCompetition:(id)a3;
- (BOOL)isFirstDayOfCompetition;
- (BOOL)isLastDayOfCompetition;
- (BOOL)isParticipantWinning:(int64_t)a3;
- (NSDate)endDate;
- (NSDate)lastDayOfCompetition;
- (NSDate)startDate;
- (id)_scoresForParticipant:(int64_t)a3;
- (id)codableCompetition;
- (id)copyWithZone:(_NSZone *)a3;
- (id)currentDate;
- (id)daysWonByParticipant:(int64_t)a3;
- (id)description;
- (int64_t)endDateCacheIndex;
- (int64_t)stage;
- (unint64_t)dailyScoreForParticipant:(int64_t)a3 onDate:(id)a4;
- (unint64_t)myDailyAverageScore;
- (unint64_t)myTotalScore;
- (unint64_t)numberOfDaysRemaining;
- (unint64_t)opponentDailyAverageScore;
- (unint64_t)opponentTotalScore;
- (unsigned)victoryBadgeStyle;
@end

@implementation ASCompetition

- (NSDate)endDate
{
  v3 = [MEMORY[0x277CBEA80] hk_gregorianCalendar];
  durationDateComponents = self->_durationDateComponents;
  v5 = [(ASCompetition *)self startDate];
  v6 = [v3 dateByAddingComponents:durationDateComponents toDate:v5 options:0];

  return v6;
}

- (NSDate)startDate
{
  v3 = [MEMORY[0x277CBEA80] hk_gregorianCalendar];
  v4 = [v3 dateFromComponents:self->_startDateComponents];

  return v4;
}

- (ASCompetition)init
{
  v9.receiver = self;
  v9.super_class = ASCompetition;
  v2 = [(ASCompetition *)&v9 init];
  v3 = v2;
  if (v2)
  {
    scores = v2->_scores;
    v5 = MEMORY[0x277CBEBF8];
    v2->_scores = MEMORY[0x277CBEBF8];

    opponentScores = v3->_opponentScores;
    v3->_opponentScores = v5;

    preferredVictoryBadgeStyles = v3->_preferredVictoryBadgeStyles;
    v3->_preferredVictoryBadgeStyles = v5;
  }

  return v3;
}

- (id)description
{
  UUID = self->_UUID;
  v18 = MEMORY[0x277CCACA8];
  v16 = [(NSDateComponents *)self->_startDateComponents month];
  v15 = [(NSDateComponents *)self->_startDateComponents day];
  v3 = [(NSDateComponents *)self->_startDateComponents year];
  v4 = [(NSDateComponents *)self->_durationDateComponents day];
  currentCacheIndex = self->_currentCacheIndex;
  lastPushedCacheIndex = self->_lastPushedCacheIndex;
  v7 = ASFormattedSequence(self->_scores);
  v8 = [(ASCompetition *)self myTotalScore];
  v9 = ASFormattedSequence(self->_opponentScores);
  v10 = [(ASCompetition *)self opponentTotalScore];
  maximumNumberOfPointsPerDay = self->_maximumNumberOfPointsPerDay;
  v12 = ASFormattedVictoryBadgeStyles(self->_preferredVictoryBadgeStyles);
  v13 = [v18 stringWithFormat:@"Competition uuid=%@ start=%ld/%ld/%ld duration=%ld days currentCacheIndex=%ld lastPushedCacheIndex=%ld scores=%@(=%ld) opponentScores=%@(=%ld)  maximumNumberOfPointsPerDay=%lu points preferredVictoryBadgeStyles=%@", UUID, v16, v15, v3, v4, currentCacheIndex, lastPushedCacheIndex, v7, v8, v9, v10, maximumNumberOfPointsPerDay, v12];

  return v13;
}

- (unint64_t)myTotalScore
{
  v2 = [(ASCompetition *)self _scoresForParticipant:0];
  v3 = ASCompetitionCalculateTotalScore(v2);

  return v3;
}

- (unint64_t)opponentTotalScore
{
  v2 = [(ASCompetition *)self _scoresForParticipant:1];
  v3 = ASCompetitionCalculateTotalScore(v2);

  return v3;
}

- (id)codableCompetition
{
  v42 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(ASCodableCloudKitCompetition);
  v4 = [(ASCompetition *)self UUID];
  v5 = [v4 hk_dataForUUIDBytes];
  [(ASCodableCloudKitCompetition *)v3 setUuid:v5];

  [(ASCodableCloudKitCompetition *)v3 setCurrentCacheIndex:[(ASCompetition *)self currentCacheIndex]];
  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v6 = [(ASCompetition *)self scores];
  v7 = [v6 countByEnumeratingWithState:&v35 objects:v41 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v36;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v36 != v9)
        {
          objc_enumerationMutation(v6);
        }

        -[ASCodableCloudKitCompetition addScores:](v3, "addScores:", [*(*(&v35 + 1) + 8 * i) integerValue]);
      }

      v8 = [v6 countByEnumeratingWithState:&v35 objects:v41 count:16];
    }

    while (v8);
  }

  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v11 = [(ASCompetition *)self opponentScores];
  v12 = [v11 countByEnumeratingWithState:&v31 objects:v40 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v32;
    do
    {
      for (j = 0; j != v13; ++j)
      {
        if (*v32 != v14)
        {
          objc_enumerationMutation(v11);
        }

        -[ASCodableCloudKitCompetition addOpponentScores:](v3, "addOpponentScores:", [*(*(&v31 + 1) + 8 * j) integerValue]);
      }

      v13 = [v11 countByEnumeratingWithState:&v31 objects:v40 count:16];
    }

    while (v13);
  }

  v16 = [(ASCompetition *)self startDateComponents];
  v17 = [v16 as_codableDateComponents];
  [(ASCodableCloudKitCompetition *)v3 setStartDateComponents:v17];

  v18 = [(ASCompetition *)self durationDateComponents];
  v19 = [v18 as_codableDateComponents];
  [(ASCodableCloudKitCompetition *)v3 setDurationDateComponents:v19];

  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v20 = [(ASCompetition *)self preferredVictoryBadgeStyles];
  v21 = [v20 countByEnumeratingWithState:&v27 objects:v39 count:16];
  if (v21)
  {
    v22 = v21;
    v23 = *v28;
    do
    {
      for (k = 0; k != v22; ++k)
      {
        if (*v28 != v23)
        {
          objc_enumerationMutation(v20);
        }

        -[ASCodableCloudKitCompetition addPreferredVictoryBadgeStyles:](v3, "addPreferredVictoryBadgeStyles:", [*(*(&v27 + 1) + 8 * k) unsignedIntValue]);
      }

      v22 = [v20 countByEnumeratingWithState:&v27 objects:v39 count:16];
    }

    while (v22);
  }

  [(ASCodableCloudKitCompetition *)v3 setMaximumNumberOfPointsPerDay:[(ASCompetition *)self maximumNumberOfPointsPerDay]];
  v25 = *MEMORY[0x277D85DE8];

  return v3;
}

+ (id)competitionWithCodableCompetition:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(ASCompetition);
  v5 = MEMORY[0x277CCAD78];
  v6 = [v3 uuid];
  v7 = [v5 hk_UUIDWithData:v6];
  [(ASCompetition *)v4 setUUID:v7];

  -[ASCompetition setCurrentCacheIndex:](v4, "setCurrentCacheIndex:", [v3 currentCacheIndex]);
  -[ASCompetition setLastPushedCacheIndex:](v4, "setLastPushedCacheIndex:", [v3 currentCacheIndex]);
  if ([v3 scoresCount])
  {
    v8 = 0;
    do
    {
      v9 = [(ASCompetition *)v4 scores];
      v10 = [MEMORY[0x277CCABB0] numberWithLongLong:{objc_msgSend(v3, "scoresAtIndex:", v8)}];
      v11 = [v9 arrayByAddingObject:v10];
      [(ASCompetition *)v4 setScores:v11];

      ++v8;
    }

    while (v8 < [v3 scoresCount]);
  }

  if ([v3 opponentScoresCount])
  {
    v12 = 0;
    do
    {
      v13 = [(ASCompetition *)v4 opponentScores];
      v14 = [MEMORY[0x277CCABB0] numberWithLongLong:{objc_msgSend(v3, "opponentScoresAtIndex:", v12)}];
      v15 = [v13 arrayByAddingObject:v14];
      [(ASCompetition *)v4 setOpponentScores:v15];

      ++v12;
    }

    while (v12 < [v3 opponentScoresCount]);
  }

  v16 = MEMORY[0x277CBEAB8];
  v17 = [v3 startDateComponents];
  v18 = [v16 as_dateComponentsWithCodable:v17];
  [(ASCompetition *)v4 setStartDateComponents:v18];

  v19 = MEMORY[0x277CBEAB8];
  v20 = [v3 durationDateComponents];
  v21 = [v19 as_dateComponentsWithCodable:v20];
  [(ASCompetition *)v4 setDurationDateComponents:v21];

  if ([v3 preferredVictoryBadgeStylesCount])
  {
    v22 = 0;
    do
    {
      v23 = [(ASCompetition *)v4 preferredVictoryBadgeStyles];
      v24 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(v3, "preferredVictoryBadgeStylesAtIndex:", v22)}];
      v25 = [v23 arrayByAddingObject:v24];
      [(ASCompetition *)v4 setPreferredVictoryBadgeStyles:v25];

      ++v22;
    }

    while (v22 < [v3 preferredVictoryBadgeStylesCount]);
  }

  -[ASCompetition setMaximumNumberOfPointsPerDay:](v4, "setMaximumNumberOfPointsPerDay:", [v3 maximumNumberOfPointsPerDay]);

  return v4;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(ASCompetition *)self isEqualToCompetition:v4];
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  [v5 setUUID:self->_UUID];
  [v5 setCurrentCacheIndex:self->_currentCacheIndex];
  [v5 setLastPushedCacheIndex:self->_lastPushedCacheIndex];
  v6 = [(NSArray *)self->_scores copyWithZone:a3];
  [v5 setScores:v6];

  v7 = [(NSArray *)self->_opponentScores copyWithZone:a3];
  [v5 setOpponentScores:v7];

  v8 = [(NSDateComponents *)self->_startDateComponents copyWithZone:a3];
  [v5 setStartDateComponents:v8];

  v9 = [(NSDateComponents *)self->_durationDateComponents copyWithZone:a3];
  [v5 setDurationDateComponents:v9];

  v10 = [(NSArray *)self->_preferredVictoryBadgeStyles copyWithZone:a3];
  [v5 setPreferredVictoryBadgeStyles:v10];

  [v5 setMaximumNumberOfPointsPerDay:self->_maximumNumberOfPointsPerDay];
  return v5;
}

- (unsigned)victoryBadgeStyle
{
  v2 = [(NSArray *)self->_preferredVictoryBadgeStyles firstObject];
  v3 = [v2 unsignedIntValue];

  return v3;
}

- (NSDate)lastDayOfCompetition
{
  v3 = [MEMORY[0x277CBEA80] hk_gregorianCalendar];
  v4 = [(ASCompetition *)self endDate];
  v5 = [v3 dateByAddingUnit:16 value:-1 toDate:v4 options:0];

  return v5;
}

- (BOOL)isFirstDayOfCompetition
{
  v3 = [MEMORY[0x277CBEA80] hk_gregorianCalendar];
  v4 = [(ASCompetition *)self startDate];
  v5 = [(ASCompetition *)self currentDate];
  v6 = [v3 isDate:v4 inSameDayAsDate:v5];

  return v6;
}

- (BOOL)isLastDayOfCompetition
{
  v3 = [MEMORY[0x277CBEA80] hk_gregorianCalendar];
  v4 = [(ASCompetition *)self lastDayOfCompetition];
  v5 = [(ASCompetition *)self currentDate];
  v6 = [v3 isDate:v4 inSameDayAsDate:v5];

  return v6;
}

- (int64_t)endDateCacheIndex
{
  v3 = [MEMORY[0x277CBEA80] hk_gregorianCalendar];
  v4 = *MEMORY[0x277CCE1D0];
  v5 = [(ASCompetition *)self endDate];
  v6 = [v3 components:v4 fromDate:v5];

  v7 = _HKCacheIndexFromDateComponents();
  return v7;
}

- (unint64_t)numberOfDaysRemaining
{
  v3 = [MEMORY[0x277CBEA80] hk_gregorianCalendar];
  v4 = [(ASCompetition *)self currentDate];
  v5 = [(ASCompetition *)self endDate];
  v6 = [v3 components:16 fromDate:v4 toDate:v5 options:0];

  v7 = [v6 day];
  if (v7 < 0)
  {
    v8 = -1;
  }

  else
  {
    v8 = v7;
  }

  return v8 + 1;
}

- (int64_t)stage
{
  v3 = [(ASCompetition *)self currentDate];
  [v3 timeIntervalSinceReferenceDate];
  v5 = v4;

  v6 = [(ASCompetition *)self startDate];
  [v6 timeIntervalSinceReferenceDate];
  v8 = v7;

  if (v5 < v8)
  {
    return 0;
  }

  v10 = [(ASCompetition *)self endDate];
  [v10 timeIntervalSinceReferenceDate];
  v12 = v11;

  if (v5 <= v12)
  {
    return 1;
  }

  else
  {
    return 2;
  }
}

- (unint64_t)myDailyAverageScore
{
  v2 = [(ASCompetition *)self _scoresForParticipant:0];
  v3 = ASCompetitionCalculateDailyAverageScore(v2);

  return v3;
}

- (unint64_t)opponentDailyAverageScore
{
  v2 = [(ASCompetition *)self _scoresForParticipant:1];
  v3 = ASCompetitionCalculateDailyAverageScore(v2);

  return v3;
}

- (unint64_t)dailyScoreForParticipant:(int64_t)a3 onDate:(id)a4
{
  ASCacheIndexForLocalDate(a4);

  return ASCompetitionDailyScoreForParticipantWithCacheIndex(self, a3);
}

- (id)daysWonByParticipant:(int64_t)a3
{
  if (a3)
  {
    v4 = [(ASCompetition *)self opponentScores];
    [(ASCompetition *)self scores];
  }

  else
  {
    v4 = [(ASCompetition *)self scores];
    [(ASCompetition *)self opponentScores];
  }
  v5 = ;
  v6 = [v4 count];
  v7 = [v5 count];
  if (v6 >= v7)
  {
    v8 = v7;
  }

  else
  {
    v8 = v6;
  }

  if (v8 < 1)
  {
    v10 = MEMORY[0x277CBEBF8];
  }

  else
  {
    v9 = 0;
    v10 = MEMORY[0x277CBEBF8];
    do
    {
      v11 = [v4 objectAtIndexedSubscript:v9];
      v12 = [v11 integerValue];

      v13 = [v5 objectAtIndexedSubscript:v9];
      v14 = [v13 integerValue];

      if (v12 > v14)
      {
        v15 = [MEMORY[0x277CBEA80] hk_gregorianCalendar];
        v16 = [(ASCompetition *)self startDate];
        v17 = [v15 dateByAddingUnit:16 value:v9 toDate:v16 options:0];

        v18 = [v10 arrayByAddingObject:v17];

        v10 = v18;
      }

      ++v9;
    }

    while (v8 != v9);
  }

  v19 = v10;

  return v10;
}

- (BOOL)isParticipantWinning:(int64_t)a3
{
  if (a3)
  {
    v4 = [(ASCompetition *)self opponentTotalScore];
    v5 = [(ASCompetition *)self myTotalScore];
  }

  else
  {
    v4 = [(ASCompetition *)self myTotalScore];
    v5 = [(ASCompetition *)self opponentTotalScore];
  }

  return v4 >= v5;
}

- (BOOL)isEqualToCompetition:(id)a3
{
  v4 = a3;
  currentCacheIndex = self->_currentCacheIndex;
  if (currentCacheIndex == [v4 currentCacheIndex] && (lastPushedCacheIndex = self->_lastPushedCacheIndex, lastPushedCacheIndex == objc_msgSend(v4, "lastPushedCacheIndex")))
  {
    scores = self->_scores;
    v8 = [v4 scores];
    if (ASObjectsAreEqual(scores, v8))
    {
      opponentScores = self->_opponentScores;
      v10 = [v4 opponentScores];
      if (ASObjectsAreEqual(opponentScores, v10))
      {
        durationDateComponents = self->_durationDateComponents;
        v12 = [v4 durationDateComponents];
        if (ASObjectsAreEqual(durationDateComponents, v12))
        {
          UUID = self->_UUID;
          v14 = [v4 UUID];
          if (ASObjectsAreEqual(UUID, v14))
          {
            startDateComponents = self->_startDateComponents;
            v16 = [v4 startDateComponents];
            if (ASObjectsAreEqual(startDateComponents, v16))
            {
              preferredVictoryBadgeStyles = self->_preferredVictoryBadgeStyles;
              v18 = [v4 preferredVictoryBadgeStyles];
              if (ASObjectsAreEqual(preferredVictoryBadgeStyles, v18))
              {
                maximumNumberOfPointsPerDay = self->_maximumNumberOfPointsPerDay;
                v20 = maximumNumberOfPointsPerDay == [v4 maximumNumberOfPointsPerDay];
              }

              else
              {
                v20 = 0;
              }
            }

            else
            {
              v20 = 0;
            }
          }

          else
          {
            v20 = 0;
          }
        }

        else
        {
          v20 = 0;
        }
      }

      else
      {
        v20 = 0;
      }
    }

    else
    {
      v20 = 0;
    }
  }

  else
  {
    v20 = 0;
  }

  return v20;
}

- (id)currentDate
{
  v3 = [(ASCompetition *)self currentDateOverride];
  if (v3)
  {
    [(ASCompetition *)self currentDateOverride];
  }

  else
  {
    [MEMORY[0x277CBEAA8] date];
  }
  v4 = ;

  return v4;
}

- (id)_scoresForParticipant:(int64_t)a3
{
  v3 = 40;
  if (!a3)
  {
    v3 = 32;
  }

  return *(&self->super.isa + v3);
}

+ (id)codableDatabaseCompetitionsFromCompetitions:(id)a3 withFriendWithUUID:(id)a4 withType:(int64_t)a5
{
  v27 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  obj = v7;
  v9 = [v7 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v23;
    v12 = MEMORY[0x277CBEBF8];
    do
    {
      v13 = 0;
      v14 = v12;
      do
      {
        if (*v23 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v15 = *(*(&v22 + 1) + 8 * v13);
        v16 = objc_alloc_init(ASCodableDatabaseCompetition);
        v17 = [v8 hk_dataForUUIDBytes];
        [(ASCodableDatabaseCompetition *)v16 setFriendUUID:v17];

        [(ASCodableDatabaseCompetition *)v16 setType:a5];
        v18 = [v15 codableCompetition];
        [(ASCodableDatabaseCompetition *)v16 setCompetition:v18];

        v12 = [v14 arrayByAddingObject:v16];

        ++v13;
        v14 = v12;
      }

      while (v10 != v13);
      v10 = [obj countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v10);
  }

  else
  {
    v12 = MEMORY[0x277CBEBF8];
  }

  v19 = *MEMORY[0x277D85DE8];

  return v12;
}

@end