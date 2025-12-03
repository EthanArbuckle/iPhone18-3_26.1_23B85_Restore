@interface ASCompetition
+ (id)codableDatabaseCompetitionsFromCompetitions:(id)competitions withFriendWithUUID:(id)d withType:(int64_t)type;
+ (id)competitionWithCodableCompetition:(id)competition;
- (ASCompetition)init;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToCompetition:(id)competition;
- (BOOL)isFirstDayOfCompetition;
- (BOOL)isLastDayOfCompetition;
- (BOOL)isParticipantWinning:(int64_t)winning;
- (NSDate)endDate;
- (NSDate)lastDayOfCompetition;
- (NSDate)startDate;
- (id)_scoresForParticipant:(int64_t)participant;
- (id)codableCompetition;
- (id)copyWithZone:(_NSZone *)zone;
- (id)currentDate;
- (id)daysWonByParticipant:(int64_t)participant;
- (id)description;
- (int64_t)endDateCacheIndex;
- (int64_t)stage;
- (unint64_t)dailyScoreForParticipant:(int64_t)participant onDate:(id)date;
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
  hk_gregorianCalendar = [MEMORY[0x277CBEA80] hk_gregorianCalendar];
  durationDateComponents = self->_durationDateComponents;
  startDate = [(ASCompetition *)self startDate];
  v6 = [hk_gregorianCalendar dateByAddingComponents:durationDateComponents toDate:startDate options:0];

  return v6;
}

- (NSDate)startDate
{
  hk_gregorianCalendar = [MEMORY[0x277CBEA80] hk_gregorianCalendar];
  v4 = [hk_gregorianCalendar dateFromComponents:self->_startDateComponents];

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
  month = [(NSDateComponents *)self->_startDateComponents month];
  v15 = [(NSDateComponents *)self->_startDateComponents day];
  year = [(NSDateComponents *)self->_startDateComponents year];
  v4 = [(NSDateComponents *)self->_durationDateComponents day];
  currentCacheIndex = self->_currentCacheIndex;
  lastPushedCacheIndex = self->_lastPushedCacheIndex;
  v7 = ASFormattedSequence(self->_scores);
  myTotalScore = [(ASCompetition *)self myTotalScore];
  v9 = ASFormattedSequence(self->_opponentScores);
  opponentTotalScore = [(ASCompetition *)self opponentTotalScore];
  maximumNumberOfPointsPerDay = self->_maximumNumberOfPointsPerDay;
  v12 = ASFormattedVictoryBadgeStyles(self->_preferredVictoryBadgeStyles);
  v13 = [v18 stringWithFormat:@"Competition uuid=%@ start=%ld/%ld/%ld duration=%ld days currentCacheIndex=%ld lastPushedCacheIndex=%ld scores=%@(=%ld) opponentScores=%@(=%ld)  maximumNumberOfPointsPerDay=%lu points preferredVictoryBadgeStyles=%@", UUID, month, v15, year, v4, currentCacheIndex, lastPushedCacheIndex, v7, myTotalScore, v9, opponentTotalScore, maximumNumberOfPointsPerDay, v12];

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
  uUID = [(ASCompetition *)self UUID];
  hk_dataForUUIDBytes = [uUID hk_dataForUUIDBytes];
  [(ASCodableCloudKitCompetition *)v3 setUuid:hk_dataForUUIDBytes];

  [(ASCodableCloudKitCompetition *)v3 setCurrentCacheIndex:[(ASCompetition *)self currentCacheIndex]];
  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  scores = [(ASCompetition *)self scores];
  v7 = [scores countByEnumeratingWithState:&v35 objects:v41 count:16];
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
          objc_enumerationMutation(scores);
        }

        -[ASCodableCloudKitCompetition addScores:](v3, "addScores:", [*(*(&v35 + 1) + 8 * i) integerValue]);
      }

      v8 = [scores countByEnumeratingWithState:&v35 objects:v41 count:16];
    }

    while (v8);
  }

  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  opponentScores = [(ASCompetition *)self opponentScores];
  v12 = [opponentScores countByEnumeratingWithState:&v31 objects:v40 count:16];
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
          objc_enumerationMutation(opponentScores);
        }

        -[ASCodableCloudKitCompetition addOpponentScores:](v3, "addOpponentScores:", [*(*(&v31 + 1) + 8 * j) integerValue]);
      }

      v13 = [opponentScores countByEnumeratingWithState:&v31 objects:v40 count:16];
    }

    while (v13);
  }

  startDateComponents = [(ASCompetition *)self startDateComponents];
  as_codableDateComponents = [startDateComponents as_codableDateComponents];
  [(ASCodableCloudKitCompetition *)v3 setStartDateComponents:as_codableDateComponents];

  durationDateComponents = [(ASCompetition *)self durationDateComponents];
  as_codableDateComponents2 = [durationDateComponents as_codableDateComponents];
  [(ASCodableCloudKitCompetition *)v3 setDurationDateComponents:as_codableDateComponents2];

  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  preferredVictoryBadgeStyles = [(ASCompetition *)self preferredVictoryBadgeStyles];
  v21 = [preferredVictoryBadgeStyles countByEnumeratingWithState:&v27 objects:v39 count:16];
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
          objc_enumerationMutation(preferredVictoryBadgeStyles);
        }

        -[ASCodableCloudKitCompetition addPreferredVictoryBadgeStyles:](v3, "addPreferredVictoryBadgeStyles:", [*(*(&v27 + 1) + 8 * k) unsignedIntValue]);
      }

      v22 = [preferredVictoryBadgeStyles countByEnumeratingWithState:&v27 objects:v39 count:16];
    }

    while (v22);
  }

  [(ASCodableCloudKitCompetition *)v3 setMaximumNumberOfPointsPerDay:[(ASCompetition *)self maximumNumberOfPointsPerDay]];
  v25 = *MEMORY[0x277D85DE8];

  return v3;
}

+ (id)competitionWithCodableCompetition:(id)competition
{
  competitionCopy = competition;
  v4 = objc_alloc_init(ASCompetition);
  v5 = MEMORY[0x277CCAD78];
  uuid = [competitionCopy uuid];
  v7 = [v5 hk_UUIDWithData:uuid];
  [(ASCompetition *)v4 setUUID:v7];

  -[ASCompetition setCurrentCacheIndex:](v4, "setCurrentCacheIndex:", [competitionCopy currentCacheIndex]);
  -[ASCompetition setLastPushedCacheIndex:](v4, "setLastPushedCacheIndex:", [competitionCopy currentCacheIndex]);
  if ([competitionCopy scoresCount])
  {
    v8 = 0;
    do
    {
      scores = [(ASCompetition *)v4 scores];
      v10 = [MEMORY[0x277CCABB0] numberWithLongLong:{objc_msgSend(competitionCopy, "scoresAtIndex:", v8)}];
      v11 = [scores arrayByAddingObject:v10];
      [(ASCompetition *)v4 setScores:v11];

      ++v8;
    }

    while (v8 < [competitionCopy scoresCount]);
  }

  if ([competitionCopy opponentScoresCount])
  {
    v12 = 0;
    do
    {
      opponentScores = [(ASCompetition *)v4 opponentScores];
      v14 = [MEMORY[0x277CCABB0] numberWithLongLong:{objc_msgSend(competitionCopy, "opponentScoresAtIndex:", v12)}];
      v15 = [opponentScores arrayByAddingObject:v14];
      [(ASCompetition *)v4 setOpponentScores:v15];

      ++v12;
    }

    while (v12 < [competitionCopy opponentScoresCount]);
  }

  v16 = MEMORY[0x277CBEAB8];
  startDateComponents = [competitionCopy startDateComponents];
  v18 = [v16 as_dateComponentsWithCodable:startDateComponents];
  [(ASCompetition *)v4 setStartDateComponents:v18];

  v19 = MEMORY[0x277CBEAB8];
  durationDateComponents = [competitionCopy durationDateComponents];
  v21 = [v19 as_dateComponentsWithCodable:durationDateComponents];
  [(ASCompetition *)v4 setDurationDateComponents:v21];

  if ([competitionCopy preferredVictoryBadgeStylesCount])
  {
    v22 = 0;
    do
    {
      preferredVictoryBadgeStyles = [(ASCompetition *)v4 preferredVictoryBadgeStyles];
      v24 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(competitionCopy, "preferredVictoryBadgeStylesAtIndex:", v22)}];
      v25 = [preferredVictoryBadgeStyles arrayByAddingObject:v24];
      [(ASCompetition *)v4 setPreferredVictoryBadgeStyles:v25];

      ++v22;
    }

    while (v22 < [competitionCopy preferredVictoryBadgeStylesCount]);
  }

  -[ASCompetition setMaximumNumberOfPointsPerDay:](v4, "setMaximumNumberOfPointsPerDay:", [competitionCopy maximumNumberOfPointsPerDay]);

  return v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(ASCompetition *)self isEqualToCompetition:equalCopy];
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  [v5 setUUID:self->_UUID];
  [v5 setCurrentCacheIndex:self->_currentCacheIndex];
  [v5 setLastPushedCacheIndex:self->_lastPushedCacheIndex];
  v6 = [(NSArray *)self->_scores copyWithZone:zone];
  [v5 setScores:v6];

  v7 = [(NSArray *)self->_opponentScores copyWithZone:zone];
  [v5 setOpponentScores:v7];

  v8 = [(NSDateComponents *)self->_startDateComponents copyWithZone:zone];
  [v5 setStartDateComponents:v8];

  v9 = [(NSDateComponents *)self->_durationDateComponents copyWithZone:zone];
  [v5 setDurationDateComponents:v9];

  v10 = [(NSArray *)self->_preferredVictoryBadgeStyles copyWithZone:zone];
  [v5 setPreferredVictoryBadgeStyles:v10];

  [v5 setMaximumNumberOfPointsPerDay:self->_maximumNumberOfPointsPerDay];
  return v5;
}

- (unsigned)victoryBadgeStyle
{
  firstObject = [(NSArray *)self->_preferredVictoryBadgeStyles firstObject];
  unsignedIntValue = [firstObject unsignedIntValue];

  return unsignedIntValue;
}

- (NSDate)lastDayOfCompetition
{
  hk_gregorianCalendar = [MEMORY[0x277CBEA80] hk_gregorianCalendar];
  endDate = [(ASCompetition *)self endDate];
  v5 = [hk_gregorianCalendar dateByAddingUnit:16 value:-1 toDate:endDate options:0];

  return v5;
}

- (BOOL)isFirstDayOfCompetition
{
  hk_gregorianCalendar = [MEMORY[0x277CBEA80] hk_gregorianCalendar];
  startDate = [(ASCompetition *)self startDate];
  currentDate = [(ASCompetition *)self currentDate];
  v6 = [hk_gregorianCalendar isDate:startDate inSameDayAsDate:currentDate];

  return v6;
}

- (BOOL)isLastDayOfCompetition
{
  hk_gregorianCalendar = [MEMORY[0x277CBEA80] hk_gregorianCalendar];
  lastDayOfCompetition = [(ASCompetition *)self lastDayOfCompetition];
  currentDate = [(ASCompetition *)self currentDate];
  v6 = [hk_gregorianCalendar isDate:lastDayOfCompetition inSameDayAsDate:currentDate];

  return v6;
}

- (int64_t)endDateCacheIndex
{
  hk_gregorianCalendar = [MEMORY[0x277CBEA80] hk_gregorianCalendar];
  v4 = *MEMORY[0x277CCE1D0];
  endDate = [(ASCompetition *)self endDate];
  v6 = [hk_gregorianCalendar components:v4 fromDate:endDate];

  v7 = _HKCacheIndexFromDateComponents();
  return v7;
}

- (unint64_t)numberOfDaysRemaining
{
  hk_gregorianCalendar = [MEMORY[0x277CBEA80] hk_gregorianCalendar];
  currentDate = [(ASCompetition *)self currentDate];
  endDate = [(ASCompetition *)self endDate];
  v6 = [hk_gregorianCalendar components:16 fromDate:currentDate toDate:endDate options:0];

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
  currentDate = [(ASCompetition *)self currentDate];
  [currentDate timeIntervalSinceReferenceDate];
  v5 = v4;

  startDate = [(ASCompetition *)self startDate];
  [startDate timeIntervalSinceReferenceDate];
  v8 = v7;

  if (v5 < v8)
  {
    return 0;
  }

  endDate = [(ASCompetition *)self endDate];
  [endDate timeIntervalSinceReferenceDate];
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

- (unint64_t)dailyScoreForParticipant:(int64_t)participant onDate:(id)date
{
  ASCacheIndexForLocalDate(date);

  return ASCompetitionDailyScoreForParticipantWithCacheIndex(self, participant);
}

- (id)daysWonByParticipant:(int64_t)participant
{
  if (participant)
  {
    opponentScores = [(ASCompetition *)self opponentScores];
    [(ASCompetition *)self scores];
  }

  else
  {
    opponentScores = [(ASCompetition *)self scores];
    [(ASCompetition *)self opponentScores];
  }
  v5 = ;
  v6 = [opponentScores count];
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
      v11 = [opponentScores objectAtIndexedSubscript:v9];
      integerValue = [v11 integerValue];

      v13 = [v5 objectAtIndexedSubscript:v9];
      integerValue2 = [v13 integerValue];

      if (integerValue > integerValue2)
      {
        hk_gregorianCalendar = [MEMORY[0x277CBEA80] hk_gregorianCalendar];
        startDate = [(ASCompetition *)self startDate];
        v17 = [hk_gregorianCalendar dateByAddingUnit:16 value:v9 toDate:startDate options:0];

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

- (BOOL)isParticipantWinning:(int64_t)winning
{
  if (winning)
  {
    opponentTotalScore = [(ASCompetition *)self opponentTotalScore];
    myTotalScore = [(ASCompetition *)self myTotalScore];
  }

  else
  {
    opponentTotalScore = [(ASCompetition *)self myTotalScore];
    myTotalScore = [(ASCompetition *)self opponentTotalScore];
  }

  return opponentTotalScore >= myTotalScore;
}

- (BOOL)isEqualToCompetition:(id)competition
{
  competitionCopy = competition;
  currentCacheIndex = self->_currentCacheIndex;
  if (currentCacheIndex == [competitionCopy currentCacheIndex] && (lastPushedCacheIndex = self->_lastPushedCacheIndex, lastPushedCacheIndex == objc_msgSend(competitionCopy, "lastPushedCacheIndex")))
  {
    scores = self->_scores;
    scores = [competitionCopy scores];
    if (ASObjectsAreEqual(scores, scores))
    {
      opponentScores = self->_opponentScores;
      opponentScores = [competitionCopy opponentScores];
      if (ASObjectsAreEqual(opponentScores, opponentScores))
      {
        durationDateComponents = self->_durationDateComponents;
        durationDateComponents = [competitionCopy durationDateComponents];
        if (ASObjectsAreEqual(durationDateComponents, durationDateComponents))
        {
          UUID = self->_UUID;
          uUID = [competitionCopy UUID];
          if (ASObjectsAreEqual(UUID, uUID))
          {
            startDateComponents = self->_startDateComponents;
            startDateComponents = [competitionCopy startDateComponents];
            if (ASObjectsAreEqual(startDateComponents, startDateComponents))
            {
              preferredVictoryBadgeStyles = self->_preferredVictoryBadgeStyles;
              preferredVictoryBadgeStyles = [competitionCopy preferredVictoryBadgeStyles];
              if (ASObjectsAreEqual(preferredVictoryBadgeStyles, preferredVictoryBadgeStyles))
              {
                maximumNumberOfPointsPerDay = self->_maximumNumberOfPointsPerDay;
                v20 = maximumNumberOfPointsPerDay == [competitionCopy maximumNumberOfPointsPerDay];
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
  currentDateOverride = [(ASCompetition *)self currentDateOverride];
  if (currentDateOverride)
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

- (id)_scoresForParticipant:(int64_t)participant
{
  v3 = 40;
  if (!participant)
  {
    v3 = 32;
  }

  return *(&self->super.isa + v3);
}

+ (id)codableDatabaseCompetitionsFromCompetitions:(id)competitions withFriendWithUUID:(id)d withType:(int64_t)type
{
  v27 = *MEMORY[0x277D85DE8];
  competitionsCopy = competitions;
  dCopy = d;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  obj = competitionsCopy;
  v9 = [competitionsCopy countByEnumeratingWithState:&v22 objects:v26 count:16];
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
        hk_dataForUUIDBytes = [dCopy hk_dataForUUIDBytes];
        [(ASCodableDatabaseCompetition *)v16 setFriendUUID:hk_dataForUUIDBytes];

        [(ASCodableDatabaseCompetition *)v16 setType:type];
        codableCompetition = [v15 codableCompetition];
        [(ASCodableDatabaseCompetition *)v16 setCompetition:codableCompetition];

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