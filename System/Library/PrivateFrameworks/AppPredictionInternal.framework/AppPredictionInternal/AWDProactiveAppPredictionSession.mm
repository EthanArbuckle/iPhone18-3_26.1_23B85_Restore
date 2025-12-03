@interface AWDProactiveAppPredictionSession
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsConsumerSubType:(id)type;
- (int)StringAsCurrentLOIType:(id)type;
- (int)StringAsOutcome:(id)outcome;
- (int)consumerSubType;
- (int)currentLOIType;
- (int)outcome;
- (unint64_t)hash;
- (void)addAppSequence:(id)sequence;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasConsumerSubType:(BOOL)type;
- (void)setHasCoreMotionCurrentMotionLaunches:(BOOL)launches;
- (void)setHasCoreMotionLaunches:(BOOL)launches;
- (void)setHasCurrentLOIType:(BOOL)type;
- (void)setHasDayOfWeek:(BOOL)week;
- (void)setHasEngagedApp:(BOOL)app;
- (void)setHasInAirplaneMode:(BOOL)mode;
- (void)setHasIsInternalBuild:(BOOL)build;
- (void)setHasLocationDistanceFromGym:(BOOL)gym;
- (void)setHasLocationDistanceFromHome:(BOOL)home;
- (void)setHasLocationDistanceFromSchool:(BOOL)school;
- (void)setHasLocationDistanceFromWork:(BOOL)work;
- (void)setHasOutcome:(BOOL)outcome;
- (void)setHasPredictionCacheAge:(BOOL)age;
- (void)setHasSessionLogVersion:(BOOL)version;
- (void)setHasTimeOfDayInterval:(BOOL)interval;
- (void)setHasTotalAirplaneModeLaunches:(BOOL)launches;
- (void)setHasTotalCurrentDayOfWeekLaunches:(BOOL)launches;
- (void)setHasTotalDayOfWeekLaunches:(BOOL)launches;
- (void)setHasTotalLaunchSequences:(BOOL)sequences;
- (void)setHasTotalLaunches:(BOOL)launches;
- (void)setHasTotalSSIDLaunches:(BOOL)launches;
- (void)setHasTotalSpotlightLaunches:(BOOL)launches;
- (void)setHasTotalSpotlightTimeOfDayLaunches:(BOOL)launches;
- (void)setHasTotalTimeOfDayLaunches:(BOOL)launches;
- (void)setHasTotalTrendingLaunches:(BOOL)launches;
- (void)setHasTotalWifiLaunches:(BOOL)launches;
- (void)writeTo:(id)to;
@end

@implementation AWDProactiveAppPredictionSession

- (void)setHasCoreMotionLaunches:(BOOL)launches
{
  if (launches)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFF7 | v3);
}

- (void)setHasTotalAirplaneModeLaunches:(BOOL)launches
{
  if (launches)
  {
    v3 = 0x8000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFF7FFF | v3);
}

- (void)setHasInAirplaneMode:(BOOL)mode
{
  if (mode)
  {
    v3 = 0x4000000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFBFFFFFF | v3);
}

- (void)setHasCoreMotionCurrentMotionLaunches:(BOOL)launches
{
  if (launches)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFB | v3);
}

- (void)setHasTotalSpotlightLaunches:(BOOL)launches
{
  if (launches)
  {
    v3 = 0x200000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFDFFFFF | v3);
}

- (void)setHasTotalLaunchSequences:(BOOL)sequences
{
  if (sequences)
  {
    v3 = 0x40000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFBFFFF | v3);
}

- (void)setHasTotalCurrentDayOfWeekLaunches:(BOOL)launches
{
  if (launches)
  {
    v3 = 0x10000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFEFFFF | v3);
}

- (void)setHasTotalWifiLaunches:(BOOL)launches
{
  if (launches)
  {
    v3 = 0x2000000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFDFFFFFF | v3);
}

- (void)setHasTimeOfDayInterval:(BOOL)interval
{
  if (interval)
  {
    v3 = 0x4000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFBFFF | v3);
}

- (int)consumerSubType
{
  if ((*&self->_has & 2) != 0)
  {
    return self->_consumerSubType;
  }

  else
  {
    return 0;
  }
}

- (void)setHasConsumerSubType:(BOOL)type
{
  if (type)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFD | v3);
}

- (int)StringAsConsumerSubType:(id)type
{
  typeCopy = type;
  if ([typeCopy isEqualToString:@"ATXConsumerSubTypeUnknown"])
  {
    v4 = 0;
  }

  else if ([typeCopy isEqualToString:@"ATXConsumerSubTypeWidgetUnknown"])
  {
    v4 = 1;
  }

  else if ([typeCopy isEqualToString:@"ATXConsumerSubTypeWidgetToday"])
  {
    v4 = 2;
  }

  else if ([typeCopy isEqualToString:@"ATXConsumerSubTypeWidgetLockScreen"])
  {
    v4 = 3;
  }

  else if ([typeCopy isEqualToString:@"ATXConsumerSubTypeSpotlightPullDownHomeScreen"])
  {
    v4 = 4;
  }

  else if ([typeCopy isEqualToString:@"ATXConsumerSubTypeSpotlightNotificationCenterOverApp"])
  {
    v4 = 5;
  }

  else if ([typeCopy isEqualToString:@"ATXConsumerSubTypeSpotlightNotificationCenterHomeScreen"])
  {
    v4 = 6;
  }

  else if ([typeCopy isEqualToString:@"ATXConsumerSubTypeSpotlightTodayLockScreen"])
  {
    v4 = 7;
  }

  else if ([typeCopy isEqualToString:@"ATXConsumerSubTypeSpotlightTodayHomeScreen"])
  {
    v4 = 8;
  }

  else if ([typeCopy isEqualToString:@"ATXConsumerSubTypeSpotlightUnknown"])
  {
    v4 = 9;
  }

  else if ([typeCopy isEqualToString:@"ATXConsumerSubTypePreferenceSiriKit"])
  {
    v4 = 10;
  }

  else if ([typeCopy isEqualToString:@"ATXConsumerSubTypePreferenceShadowLog"])
  {
    v4 = 11;
  }

  else if ([typeCopy isEqualToString:@"ATXConsumerSubTypePreferenceUnknown"])
  {
    v4 = 12;
  }

  else if ([typeCopy isEqualToString:@"ATXConsumerSubTypeAppConnectionExpertSpringBoard"])
  {
    v4 = 13;
  }

  else if ([typeCopy isEqualToString:@"ATXConsumerSubTypeSuperGreen"])
  {
    v4 = 14;
  }

  else if ([typeCopy isEqualToString:@"ATXConsumerSubTypeShadowLogging"])
  {
    v4 = 15;
  }

  else if ([typeCopy isEqualToString:@"ATXConsumerSubTypeActionUnknown"])
  {
    v4 = 16;
  }

  else if ([typeCopy isEqualToString:@"ATXConsumerSubTypeActionShadowLog"])
  {
    v4 = 17;
  }

  else if ([typeCopy isEqualToString:@"ATXConsumerSubTypeActionSpotlightPullDownHomeScreen"])
  {
    v4 = 18;
  }

  else if ([typeCopy isEqualToString:@"ATXConsumerSubTypeActionSpotlightTodayLockScreen"])
  {
    v4 = 19;
  }

  else if ([typeCopy isEqualToString:@"ATXConsumerSubTypeActionSpotlightTodayHomeScreen"])
  {
    v4 = 20;
  }

  else if ([typeCopy isEqualToString:@"ATXConsumerSubTypeActionSpotlightUnknown"])
  {
    v4 = 21;
  }

  else if ([typeCopy isEqualToString:@"ATXConsumerSubTypeActionLockScreen"])
  {
    v4 = 22;
  }

  else if ([typeCopy isEqualToString:@"ATXConsumerSubTypeActionVoiceShortcuts"])
  {
    v4 = 23;
  }

  else if ([typeCopy isEqualToString:@"ATXConsumerSubTypeSlotResolution"])
  {
    v4 = 24;
  }

  else if ([typeCopy isEqualToString:@"ATXConsumerSubTypeSlotResolutionShadowLog"])
  {
    v4 = 25;
  }

  else if ([typeCopy isEqualToString:@"ATXConsumerSubTypeActionValuation"])
  {
    v4 = 26;
  }

  else if ([typeCopy isEqualToString:@"ATXConsumerSubTypeActionValuationShadowLog"])
  {
    v4 = 27;
  }

  else if ([typeCopy isEqualToString:@"ATXConsumerSubTypeActionValuationLockscreen"])
  {
    v4 = 28;
  }

  else if ([typeCopy isEqualToString:@"ATXConsumerSubTypeDock"])
  {
    v4 = 29;
  }

  else if ([typeCopy isEqualToString:@"ATXConsumerSubTypeMax"])
  {
    v4 = 30;
  }

  else if ([typeCopy isEqualToString:@"ATXConsumerSubTypeActionCarPlayDashboard"])
  {
    v4 = 31;
  }

  else if ([typeCopy isEqualToString:@"ATXConsumerSubTypeShortcutsGallery"])
  {
    v4 = 32;
  }

  else if ([typeCopy isEqualToString:@"ATXConsumerSubTypeSuggestionHomeScreen"])
  {
    v4 = 33;
  }

  else if ([typeCopy isEqualToString:@"ATXConsumerSubTypeAppDirectory"])
  {
    v4 = 34;
  }

  else if ([typeCopy isEqualToString:@"ATXConsumerSubTypeAppSuggestionHomeScreen"])
  {
    v4 = 35;
  }

  else if ([typeCopy isEqualToString:@"ATXConsumerSubTypeActionSuggestionHomeScreen"])
  {
    v4 = 36;
  }

  else if ([typeCopy isEqualToString:@"ATXConsumerSubTypeSuggestionsWidgetHomeScreen"])
  {
    v4 = 37;
  }

  else if ([typeCopy isEqualToString:@"ATXConsumerSubTypeSuggestionsWidgetTodayHomeScreen"])
  {
    v4 = 38;
  }

  else if ([typeCopy isEqualToString:@"ATXConsumerSubTypeAppSuggestionTodayHomeScreen"])
  {
    v4 = 39;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (int)currentLOIType
{
  if ((*&self->_has & 0x10) != 0)
  {
    return self->_currentLOIType;
  }

  else
  {
    return 0;
  }
}

- (void)setHasCurrentLOIType:(BOOL)type
{
  if (type)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFEF | v3);
}

- (int)StringAsCurrentLOIType:(id)type
{
  typeCopy = type;
  if ([typeCopy isEqualToString:@"ProactiveAppPredictionLOITypeUnknown"])
  {
    v4 = 0;
  }

  else if ([typeCopy isEqualToString:@"ProactiveAppPredictionLOITypeWork"])
  {
    v4 = 1;
  }

  else if ([typeCopy isEqualToString:@"ProactiveAppPredictionLOITypeHome"])
  {
    v4 = 2;
  }

  else if ([typeCopy isEqualToString:@"ProactiveAppPredictionLOITypeGym"])
  {
    v4 = 3;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setHasTotalLaunches:(BOOL)launches
{
  if (launches)
  {
    v3 = 0x80000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFF7FFFF | v3);
}

- (int)outcome
{
  if ((*(&self->_has + 1) & 8) != 0)
  {
    return self->_outcome;
  }

  else
  {
    return 0;
  }
}

- (void)setHasOutcome:(BOOL)outcome
{
  if (outcome)
  {
    v3 = 2048;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFF7FF | v3);
}

- (int)StringAsOutcome:(id)outcome
{
  outcomeCopy = outcome;
  if ([outcomeCopy isEqualToString:@"ATXPredictionOutcomeConversionAppExpert"])
  {
    v4 = 0;
  }

  else if ([outcomeCopy isEqualToString:@"ATXPredictionOutcomeConversionUnknown"])
  {
    v4 = 1;
  }

  else if ([outcomeCopy isEqualToString:@"ATXPredictionOutcomePseudoconversion"])
  {
    v4 = 2;
  }

  else if ([outcomeCopy isEqualToString:@"ATXPredictionOutcomeDiversion"])
  {
    v4 = 3;
  }

  else if ([outcomeCopy isEqualToString:@"ATXPredictionOutcomeSearchAbandonment"])
  {
    v4 = 4;
  }

  else if ([outcomeCopy isEqualToString:@"ATXPredictionOutcomeAbandonment"])
  {
    v4 = 5;
  }

  else if ([outcomeCopy isEqualToString:@"ATXPredictionOutcomeError"])
  {
    v4 = 6;
  }

  else if ([outcomeCopy isEqualToString:@"ATXPredictionOutcomeMax"])
  {
    v4 = 7;
  }

  else if ([outcomeCopy isEqualToString:@"ATXPredictionOutcomeDeduplicated"])
  {
    v4 = 8;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setHasEngagedApp:(BOOL)app
{
  if (app)
  {
    v3 = 64;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFBF | v3);
}

- (void)setHasTotalTrendingLaunches:(BOOL)launches
{
  if (launches)
  {
    v3 = 0x1000000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFEFFFFFF | v3);
}

- (void)setHasTotalTimeOfDayLaunches:(BOOL)launches
{
  if (launches)
  {
    v3 = 0x800000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFF7FFFFF | v3);
}

- (void)setHasTotalSSIDLaunches:(BOOL)launches
{
  if (launches)
  {
    v3 = 0x100000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFEFFFFF | v3);
}

- (void)setHasLocationDistanceFromHome:(BOOL)home
{
  if (home)
  {
    v3 = 256;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFEFF | v3);
}

- (void)setHasLocationDistanceFromWork:(BOOL)work
{
  if (work)
  {
    v3 = 1024;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFBFF | v3);
}

- (void)setHasLocationDistanceFromSchool:(BOOL)school
{
  if (school)
  {
    v3 = 512;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFDFF | v3);
}

- (void)setHasLocationDistanceFromGym:(BOOL)gym
{
  if (gym)
  {
    v3 = 128;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFF7F | v3);
}

- (void)setHasIsInternalBuild:(BOOL)build
{
  if (build)
  {
    v3 = 0x8000000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xF7FFFFFF | v3);
}

- (void)setHasPredictionCacheAge:(BOOL)age
{
  if (age)
  {
    v3 = 4096;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFEFFF | v3);
}

- (void)setHasSessionLogVersion:(BOOL)version
{
  if (version)
  {
    v3 = 0x2000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFDFFF | v3);
}

- (void)setHasTotalSpotlightTimeOfDayLaunches:(BOOL)launches
{
  if (launches)
  {
    v3 = 0x400000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFBFFFFF | v3);
}

- (void)setHasDayOfWeek:(BOOL)week
{
  if (week)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFDF | v3);
}

- (void)setHasTotalDayOfWeekLaunches:(BOOL)launches
{
  if (launches)
  {
    v3 = 0x20000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFDFFFF | v3);
}

- (void)addAppSequence:(id)sequence
{
  sequenceCopy = sequence;
  appSequences = self->_appSequences;
  v8 = sequenceCopy;
  if (!appSequences)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_appSequences;
    self->_appSequences = v6;

    sequenceCopy = v8;
    appSequences = self->_appSequences;
  }

  [(NSMutableArray *)appSequences addObject:sequenceCopy];
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = AWDProactiveAppPredictionSession;
  v4 = [(AWDProactiveAppPredictionSession *)&v8 description];
  dictionaryRepresentation = [(AWDProactiveAppPredictionSession *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  has = self->_has;
  if (*&has)
  {
    v16 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:self->_timestamp];
    [dictionary setObject:v16 forKey:@"timestamp"];

    has = self->_has;
    if ((*&has & 8) == 0)
    {
LABEL_3:
      if ((*&has & 0x8000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_49;
    }
  }

  else if ((*&has & 8) == 0)
  {
    goto LABEL_3;
  }

  v17 = [MEMORY[0x277CCABB0] numberWithInt:self->_coreMotionLaunches];
  [dictionary setObject:v17 forKey:@"CoreMotionLaunches"];

  has = self->_has;
  if ((*&has & 0x8000) == 0)
  {
LABEL_4:
    if ((*&has & 0x4000000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_50;
  }

LABEL_49:
  v18 = [MEMORY[0x277CCABB0] numberWithInt:self->_totalAirplaneModeLaunches];
  [dictionary setObject:v18 forKey:@"TotalAirplaneModeLaunches"];

  has = self->_has;
  if ((*&has & 0x4000000) == 0)
  {
LABEL_5:
    if ((*&has & 4) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_51;
  }

LABEL_50:
  v19 = [MEMORY[0x277CCABB0] numberWithBool:self->_inAirplaneMode];
  [dictionary setObject:v19 forKey:@"InAirplaneMode"];

  has = self->_has;
  if ((*&has & 4) == 0)
  {
LABEL_6:
    if ((*&has & 0x200000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_52;
  }

LABEL_51:
  v20 = [MEMORY[0x277CCABB0] numberWithInt:self->_coreMotionCurrentMotionLaunches];
  [dictionary setObject:v20 forKey:@"CoreMotionCurrentMotionLaunches"];

  has = self->_has;
  if ((*&has & 0x200000) == 0)
  {
LABEL_7:
    if ((*&has & 0x40000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_53;
  }

LABEL_52:
  v21 = [MEMORY[0x277CCABB0] numberWithInt:self->_totalSpotlightLaunches];
  [dictionary setObject:v21 forKey:@"TotalSpotlightLaunches"];

  has = self->_has;
  if ((*&has & 0x40000) == 0)
  {
LABEL_8:
    if ((*&has & 0x10000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_54;
  }

LABEL_53:
  v22 = [MEMORY[0x277CCABB0] numberWithInt:self->_totalLaunchSequences];
  [dictionary setObject:v22 forKey:@"TotalLaunchSequences"];

  has = self->_has;
  if ((*&has & 0x10000) == 0)
  {
LABEL_9:
    if ((*&has & 0x2000000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_55;
  }

LABEL_54:
  v23 = [MEMORY[0x277CCABB0] numberWithInt:self->_totalCurrentDayOfWeekLaunches];
  [dictionary setObject:v23 forKey:@"TotalCurrentDayOfWeekLaunches"];

  has = self->_has;
  if ((*&has & 0x2000000) == 0)
  {
LABEL_10:
    if ((*&has & 0x4000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_56;
  }

LABEL_55:
  v24 = [MEMORY[0x277CCABB0] numberWithInt:self->_totalWifiLaunches];
  [dictionary setObject:v24 forKey:@"TotalWifiLaunches"];

  has = self->_has;
  if ((*&has & 0x4000) == 0)
  {
LABEL_11:
    if ((*&has & 2) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_57;
  }

LABEL_56:
  v25 = [MEMORY[0x277CCABB0] numberWithInt:self->_timeOfDayInterval];
  [dictionary setObject:v25 forKey:@"TimeOfDayInterval"];

  has = self->_has;
  if ((*&has & 2) == 0)
  {
LABEL_12:
    if ((*&has & 0x10) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_61;
  }

LABEL_57:
  consumerSubType = self->_consumerSubType;
  if (consumerSubType >= 0x28)
  {
    v27 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", self->_consumerSubType];
  }

  else
  {
    v27 = off_2785993A8[consumerSubType];
  }

  [dictionary setObject:v27 forKey:@"ConsumerSubType"];

  has = self->_has;
  if ((*&has & 0x10) == 0)
  {
LABEL_13:
    if ((*&has & 0x80000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_65;
  }

LABEL_61:
  currentLOIType = self->_currentLOIType;
  if (currentLOIType >= 4)
  {
    v29 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", self->_currentLOIType];
  }

  else
  {
    v29 = off_2785994E8[currentLOIType];
  }

  [dictionary setObject:v29 forKey:@"CurrentLOIType"];

  has = self->_has;
  if ((*&has & 0x80000) == 0)
  {
LABEL_14:
    if ((*&has & 0x800) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_66;
  }

LABEL_65:
  v30 = [MEMORY[0x277CCABB0] numberWithInt:self->_totalLaunches];
  [dictionary setObject:v30 forKey:@"TotalLaunches"];

  has = self->_has;
  if ((*&has & 0x800) == 0)
  {
LABEL_15:
    if ((*&has & 0x40) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_70;
  }

LABEL_66:
  outcome = self->_outcome;
  if (outcome >= 9)
  {
    v32 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", self->_outcome];
  }

  else
  {
    v32 = off_278599508[outcome];
  }

  [dictionary setObject:v32 forKey:@"Outcome"];

  has = self->_has;
  if ((*&has & 0x40) == 0)
  {
LABEL_16:
    if ((*&has & 0x1000000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_71;
  }

LABEL_70:
  v33 = [MEMORY[0x277CCABB0] numberWithInt:self->_engagedApp];
  [dictionary setObject:v33 forKey:@"EngagedApp"];

  has = self->_has;
  if ((*&has & 0x1000000) == 0)
  {
LABEL_17:
    if ((*&has & 0x800000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_72;
  }

LABEL_71:
  v34 = [MEMORY[0x277CCABB0] numberWithInt:self->_totalTrendingLaunches];
  [dictionary setObject:v34 forKey:@"TotalTrendingLaunches"];

  has = self->_has;
  if ((*&has & 0x800000) == 0)
  {
LABEL_18:
    if ((*&has & 0x100000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_73;
  }

LABEL_72:
  v35 = [MEMORY[0x277CCABB0] numberWithInt:self->_totalTimeOfDayLaunches];
  [dictionary setObject:v35 forKey:@"TotalTimeOfDayLaunches"];

  has = self->_has;
  if ((*&has & 0x100000) == 0)
  {
LABEL_19:
    if ((*&has & 0x100) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_74;
  }

LABEL_73:
  v36 = [MEMORY[0x277CCABB0] numberWithInt:self->_totalSSIDLaunches];
  [dictionary setObject:v36 forKey:@"TotalSSIDLaunches"];

  has = self->_has;
  if ((*&has & 0x100) == 0)
  {
LABEL_20:
    if ((*&has & 0x400) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_75;
  }

LABEL_74:
  v37 = [MEMORY[0x277CCABB0] numberWithInt:self->_locationDistanceFromHome];
  [dictionary setObject:v37 forKey:@"LocationDistanceFromHome"];

  has = self->_has;
  if ((*&has & 0x400) == 0)
  {
LABEL_21:
    if ((*&has & 0x200) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_76;
  }

LABEL_75:
  v38 = [MEMORY[0x277CCABB0] numberWithInt:self->_locationDistanceFromWork];
  [dictionary setObject:v38 forKey:@"LocationDistanceFromWork"];

  has = self->_has;
  if ((*&has & 0x200) == 0)
  {
LABEL_22:
    if ((*&has & 0x80) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_77;
  }

LABEL_76:
  v39 = [MEMORY[0x277CCABB0] numberWithInt:self->_locationDistanceFromSchool];
  [dictionary setObject:v39 forKey:@"LocationDistanceFromSchool"];

  has = self->_has;
  if ((*&has & 0x80) == 0)
  {
LABEL_23:
    if ((*&has & 0x8000000) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_78;
  }

LABEL_77:
  v40 = [MEMORY[0x277CCABB0] numberWithInt:self->_locationDistanceFromGym];
  [dictionary setObject:v40 forKey:@"LocationDistanceFromGym"];

  has = self->_has;
  if ((*&has & 0x8000000) == 0)
  {
LABEL_24:
    if ((*&has & 0x1000) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_79;
  }

LABEL_78:
  v41 = [MEMORY[0x277CCABB0] numberWithBool:self->_isInternalBuild];
  [dictionary setObject:v41 forKey:@"IsInternalBuild"];

  has = self->_has;
  if ((*&has & 0x1000) == 0)
  {
LABEL_25:
    if ((*&has & 0x2000) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_80;
  }

LABEL_79:
  v42 = [MEMORY[0x277CCABB0] numberWithInt:self->_predictionCacheAge];
  [dictionary setObject:v42 forKey:@"PredictionCacheAge"];

  has = self->_has;
  if ((*&has & 0x2000) == 0)
  {
LABEL_26:
    if ((*&has & 0x400000) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_81;
  }

LABEL_80:
  v43 = [MEMORY[0x277CCABB0] numberWithInt:self->_sessionLogVersion];
  [dictionary setObject:v43 forKey:@"session_log_version"];

  has = self->_has;
  if ((*&has & 0x400000) == 0)
  {
LABEL_27:
    if ((*&has & 0x20) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_82;
  }

LABEL_81:
  v44 = [MEMORY[0x277CCABB0] numberWithInt:self->_totalSpotlightTimeOfDayLaunches];
  [dictionary setObject:v44 forKey:@"TotalSpotlightTimeOfDayLaunches"];

  has = self->_has;
  if ((*&has & 0x20) == 0)
  {
LABEL_28:
    if ((*&has & 0x20000) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_29;
  }

LABEL_82:
  v45 = [MEMORY[0x277CCABB0] numberWithInt:self->_dayOfWeek];
  [dictionary setObject:v45 forKey:@"DayOfWeek"];

  if ((*&self->_has & 0x20000) != 0)
  {
LABEL_29:
    v5 = [MEMORY[0x277CCABB0] numberWithInt:self->_totalDayOfWeekLaunches];
    [dictionary setObject:v5 forKey:@"TotalDayOfWeekLaunches"];
  }

LABEL_30:
  appSequences = self->_appSequences;
  if (appSequences)
  {
    [dictionary setObject:appSequences forKey:@"AppSequence"];
  }

  aPRFeedbackSource = self->_aPRFeedbackSource;
  if (aPRFeedbackSource)
  {
    [dictionary setObject:aPRFeedbackSource forKey:@"APRFeedbackSource"];
  }

  aPREngagementType = self->_aPREngagementType;
  if (aPREngagementType)
  {
    [dictionary setObject:aPREngagementType forKey:@"APREngagementType"];
  }

  aPRSiriExperience = self->_aPRSiriExperience;
  if (aPRSiriExperience)
  {
    [dictionary setObject:aPRSiriExperience forKey:@"APRSiriExperience"];
  }

  intentType = self->_intentType;
  if (intentType)
  {
    [dictionary setObject:intentType forKey:@"IntentType"];
  }

  consumerType = self->_consumerType;
  if (consumerType)
  {
    [dictionary setObject:consumerType forKey:@"ConsumerType"];
  }

  sessionId = self->_sessionId;
  if (sessionId)
  {
    [dictionary setObject:sessionId forKey:@"SessionId"];
  }

  aBGroup = self->_aBGroup;
  if (aBGroup)
  {
    [dictionary setObject:aBGroup forKey:@"ABGroup"];
  }

  v14 = dictionary;

  return dictionary;
}

- (void)writeTo:(id)to
{
  v46 = *MEMORY[0x277D85DE8];
  toCopy = to;
  has = self->_has;
  if (*&has)
  {
    timestamp = self->_timestamp;
    PBDataWriterWriteUint64Field();
    has = self->_has;
    if ((*&has & 8) == 0)
    {
LABEL_3:
      if ((*&has & 0x8000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_54;
    }
  }

  else if ((*&has & 8) == 0)
  {
    goto LABEL_3;
  }

  coreMotionLaunches = self->_coreMotionLaunches;
  PBDataWriterWriteInt32Field();
  has = self->_has;
  if ((*&has & 0x8000) == 0)
  {
LABEL_4:
    if ((*&has & 0x4000000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_55;
  }

LABEL_54:
  totalAirplaneModeLaunches = self->_totalAirplaneModeLaunches;
  PBDataWriterWriteInt32Field();
  has = self->_has;
  if ((*&has & 0x4000000) == 0)
  {
LABEL_5:
    if ((*&has & 4) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_56;
  }

LABEL_55:
  inAirplaneMode = self->_inAirplaneMode;
  PBDataWriterWriteBOOLField();
  has = self->_has;
  if ((*&has & 4) == 0)
  {
LABEL_6:
    if ((*&has & 0x200000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_57;
  }

LABEL_56:
  coreMotionCurrentMotionLaunches = self->_coreMotionCurrentMotionLaunches;
  PBDataWriterWriteInt32Field();
  has = self->_has;
  if ((*&has & 0x200000) == 0)
  {
LABEL_7:
    if ((*&has & 0x40000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_58;
  }

LABEL_57:
  totalSpotlightLaunches = self->_totalSpotlightLaunches;
  PBDataWriterWriteInt32Field();
  has = self->_has;
  if ((*&has & 0x40000) == 0)
  {
LABEL_8:
    if ((*&has & 0x10000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_59;
  }

LABEL_58:
  totalLaunchSequences = self->_totalLaunchSequences;
  PBDataWriterWriteInt32Field();
  has = self->_has;
  if ((*&has & 0x10000) == 0)
  {
LABEL_9:
    if ((*&has & 0x2000000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_60;
  }

LABEL_59:
  totalCurrentDayOfWeekLaunches = self->_totalCurrentDayOfWeekLaunches;
  PBDataWriterWriteInt32Field();
  has = self->_has;
  if ((*&has & 0x2000000) == 0)
  {
LABEL_10:
    if ((*&has & 0x4000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_61;
  }

LABEL_60:
  totalWifiLaunches = self->_totalWifiLaunches;
  PBDataWriterWriteInt32Field();
  has = self->_has;
  if ((*&has & 0x4000) == 0)
  {
LABEL_11:
    if ((*&has & 2) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_62;
  }

LABEL_61:
  timeOfDayInterval = self->_timeOfDayInterval;
  PBDataWriterWriteInt32Field();
  has = self->_has;
  if ((*&has & 2) == 0)
  {
LABEL_12:
    if ((*&has & 0x10) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_63;
  }

LABEL_62:
  consumerSubType = self->_consumerSubType;
  PBDataWriterWriteInt32Field();
  has = self->_has;
  if ((*&has & 0x10) == 0)
  {
LABEL_13:
    if ((*&has & 0x80000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_64;
  }

LABEL_63:
  currentLOIType = self->_currentLOIType;
  PBDataWriterWriteInt32Field();
  has = self->_has;
  if ((*&has & 0x80000) == 0)
  {
LABEL_14:
    if ((*&has & 0x800) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_65;
  }

LABEL_64:
  totalLaunches = self->_totalLaunches;
  PBDataWriterWriteInt32Field();
  has = self->_has;
  if ((*&has & 0x800) == 0)
  {
LABEL_15:
    if ((*&has & 0x40) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_66;
  }

LABEL_65:
  outcome = self->_outcome;
  PBDataWriterWriteInt32Field();
  has = self->_has;
  if ((*&has & 0x40) == 0)
  {
LABEL_16:
    if ((*&has & 0x1000000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_67;
  }

LABEL_66:
  engagedApp = self->_engagedApp;
  PBDataWriterWriteInt32Field();
  has = self->_has;
  if ((*&has & 0x1000000) == 0)
  {
LABEL_17:
    if ((*&has & 0x800000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_68;
  }

LABEL_67:
  totalTrendingLaunches = self->_totalTrendingLaunches;
  PBDataWriterWriteInt32Field();
  has = self->_has;
  if ((*&has & 0x800000) == 0)
  {
LABEL_18:
    if ((*&has & 0x100000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_69;
  }

LABEL_68:
  totalTimeOfDayLaunches = self->_totalTimeOfDayLaunches;
  PBDataWriterWriteInt32Field();
  has = self->_has;
  if ((*&has & 0x100000) == 0)
  {
LABEL_19:
    if ((*&has & 0x100) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_70;
  }

LABEL_69:
  totalSSIDLaunches = self->_totalSSIDLaunches;
  PBDataWriterWriteInt32Field();
  has = self->_has;
  if ((*&has & 0x100) == 0)
  {
LABEL_20:
    if ((*&has & 0x400) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_71;
  }

LABEL_70:
  locationDistanceFromHome = self->_locationDistanceFromHome;
  PBDataWriterWriteInt32Field();
  has = self->_has;
  if ((*&has & 0x400) == 0)
  {
LABEL_21:
    if ((*&has & 0x200) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_72;
  }

LABEL_71:
  locationDistanceFromWork = self->_locationDistanceFromWork;
  PBDataWriterWriteInt32Field();
  has = self->_has;
  if ((*&has & 0x200) == 0)
  {
LABEL_22:
    if ((*&has & 0x80) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_73;
  }

LABEL_72:
  locationDistanceFromSchool = self->_locationDistanceFromSchool;
  PBDataWriterWriteInt32Field();
  has = self->_has;
  if ((*&has & 0x80) == 0)
  {
LABEL_23:
    if ((*&has & 0x8000000) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_74;
  }

LABEL_73:
  locationDistanceFromGym = self->_locationDistanceFromGym;
  PBDataWriterWriteInt32Field();
  has = self->_has;
  if ((*&has & 0x8000000) == 0)
  {
LABEL_24:
    if ((*&has & 0x1000) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_75;
  }

LABEL_74:
  isInternalBuild = self->_isInternalBuild;
  PBDataWriterWriteBOOLField();
  has = self->_has;
  if ((*&has & 0x1000) == 0)
  {
LABEL_25:
    if ((*&has & 0x2000) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_76;
  }

LABEL_75:
  predictionCacheAge = self->_predictionCacheAge;
  PBDataWriterWriteInt32Field();
  has = self->_has;
  if ((*&has & 0x2000) == 0)
  {
LABEL_26:
    if ((*&has & 0x400000) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_77;
  }

LABEL_76:
  sessionLogVersion = self->_sessionLogVersion;
  PBDataWriterWriteInt32Field();
  has = self->_has;
  if ((*&has & 0x400000) == 0)
  {
LABEL_27:
    if ((*&has & 0x20) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_78;
  }

LABEL_77:
  totalSpotlightTimeOfDayLaunches = self->_totalSpotlightTimeOfDayLaunches;
  PBDataWriterWriteInt32Field();
  has = self->_has;
  if ((*&has & 0x20) == 0)
  {
LABEL_28:
    if ((*&has & 0x20000) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_29;
  }

LABEL_78:
  dayOfWeek = self->_dayOfWeek;
  PBDataWriterWriteInt32Field();
  if ((*&self->_has & 0x20000) != 0)
  {
LABEL_29:
    totalDayOfWeekLaunches = self->_totalDayOfWeekLaunches;
    PBDataWriterWriteInt32Field();
  }

LABEL_30:
  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  v7 = self->_appSequences;
  v8 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v41 objects:v45 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v42;
    do
    {
      v11 = 0;
      do
      {
        if (*v42 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v41 + 1) + 8 * v11);
        PBDataWriterWriteStringField();
        ++v11;
      }

      while (v9 != v11);
      v9 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v41 objects:v45 count:16];
    }

    while (v9);
  }

  if (self->_aPRFeedbackSource)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_aPREngagementType)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_aPRSiriExperience)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_intentType)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_consumerType)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_sessionId)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_aBGroup)
  {
    PBDataWriterWriteStringField();
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)copyTo:(id)to
{
  toCopy = to;
  has = self->_has;
  if (*&has)
  {
    toCopy[1] = self->_timestamp;
    *(toCopy + 48) |= 1u;
    has = self->_has;
    if ((*&has & 8) == 0)
    {
LABEL_3:
      if ((*&has & 0x8000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_53;
    }
  }

  else if ((*&has & 8) == 0)
  {
    goto LABEL_3;
  }

  *(toCopy + 19) = self->_coreMotionLaunches;
  *(toCopy + 48) |= 8u;
  has = self->_has;
  if ((*&has & 0x8000) == 0)
  {
LABEL_4:
    if ((*&has & 0x4000000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_54;
  }

LABEL_53:
  *(toCopy + 36) = self->_totalAirplaneModeLaunches;
  *(toCopy + 48) |= 0x8000u;
  has = self->_has;
  if ((*&has & 0x4000000) == 0)
  {
LABEL_5:
    if ((*&has & 4) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_55;
  }

LABEL_54:
  *(toCopy + 188) = self->_inAirplaneMode;
  *(toCopy + 48) |= 0x4000000u;
  has = self->_has;
  if ((*&has & 4) == 0)
  {
LABEL_6:
    if ((*&has & 0x200000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_56;
  }

LABEL_55:
  *(toCopy + 18) = self->_coreMotionCurrentMotionLaunches;
  *(toCopy + 48) |= 4u;
  has = self->_has;
  if ((*&has & 0x200000) == 0)
  {
LABEL_7:
    if ((*&has & 0x40000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_57;
  }

LABEL_56:
  *(toCopy + 42) = self->_totalSpotlightLaunches;
  *(toCopy + 48) |= 0x200000u;
  has = self->_has;
  if ((*&has & 0x40000) == 0)
  {
LABEL_8:
    if ((*&has & 0x10000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_58;
  }

LABEL_57:
  *(toCopy + 39) = self->_totalLaunchSequences;
  *(toCopy + 48) |= 0x40000u;
  has = self->_has;
  if ((*&has & 0x10000) == 0)
  {
LABEL_9:
    if ((*&has & 0x2000000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_59;
  }

LABEL_58:
  *(toCopy + 37) = self->_totalCurrentDayOfWeekLaunches;
  *(toCopy + 48) |= 0x10000u;
  has = self->_has;
  if ((*&has & 0x2000000) == 0)
  {
LABEL_10:
    if ((*&has & 0x4000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_60;
  }

LABEL_59:
  *(toCopy + 46) = self->_totalWifiLaunches;
  *(toCopy + 48) |= 0x2000000u;
  has = self->_has;
  if ((*&has & 0x4000) == 0)
  {
LABEL_11:
    if ((*&has & 2) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_61;
  }

LABEL_60:
  *(toCopy + 35) = self->_timeOfDayInterval;
  *(toCopy + 48) |= 0x4000u;
  has = self->_has;
  if ((*&has & 2) == 0)
  {
LABEL_12:
    if ((*&has & 0x10) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_62;
  }

LABEL_61:
  *(toCopy + 14) = self->_consumerSubType;
  *(toCopy + 48) |= 2u;
  has = self->_has;
  if ((*&has & 0x10) == 0)
  {
LABEL_13:
    if ((*&has & 0x80000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_63;
  }

LABEL_62:
  *(toCopy + 20) = self->_currentLOIType;
  *(toCopy + 48) |= 0x10u;
  has = self->_has;
  if ((*&has & 0x80000) == 0)
  {
LABEL_14:
    if ((*&has & 0x800) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_64;
  }

LABEL_63:
  *(toCopy + 40) = self->_totalLaunches;
  *(toCopy + 48) |= 0x80000u;
  has = self->_has;
  if ((*&has & 0x800) == 0)
  {
LABEL_15:
    if ((*&has & 0x40) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_65;
  }

LABEL_64:
  *(toCopy + 30) = self->_outcome;
  *(toCopy + 48) |= 0x800u;
  has = self->_has;
  if ((*&has & 0x40) == 0)
  {
LABEL_16:
    if ((*&has & 0x1000000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_66;
  }

LABEL_65:
  *(toCopy + 22) = self->_engagedApp;
  *(toCopy + 48) |= 0x40u;
  has = self->_has;
  if ((*&has & 0x1000000) == 0)
  {
LABEL_17:
    if ((*&has & 0x800000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_67;
  }

LABEL_66:
  *(toCopy + 45) = self->_totalTrendingLaunches;
  *(toCopy + 48) |= 0x1000000u;
  has = self->_has;
  if ((*&has & 0x800000) == 0)
  {
LABEL_18:
    if ((*&has & 0x100000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_68;
  }

LABEL_67:
  *(toCopy + 44) = self->_totalTimeOfDayLaunches;
  *(toCopy + 48) |= 0x800000u;
  has = self->_has;
  if ((*&has & 0x100000) == 0)
  {
LABEL_19:
    if ((*&has & 0x100) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_69;
  }

LABEL_68:
  *(toCopy + 41) = self->_totalSSIDLaunches;
  *(toCopy + 48) |= 0x100000u;
  has = self->_has;
  if ((*&has & 0x100) == 0)
  {
LABEL_20:
    if ((*&has & 0x400) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_70;
  }

LABEL_69:
  *(toCopy + 27) = self->_locationDistanceFromHome;
  *(toCopy + 48) |= 0x100u;
  has = self->_has;
  if ((*&has & 0x400) == 0)
  {
LABEL_21:
    if ((*&has & 0x200) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_71;
  }

LABEL_70:
  *(toCopy + 29) = self->_locationDistanceFromWork;
  *(toCopy + 48) |= 0x400u;
  has = self->_has;
  if ((*&has & 0x200) == 0)
  {
LABEL_22:
    if ((*&has & 0x80) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_72;
  }

LABEL_71:
  *(toCopy + 28) = self->_locationDistanceFromSchool;
  *(toCopy + 48) |= 0x200u;
  has = self->_has;
  if ((*&has & 0x80) == 0)
  {
LABEL_23:
    if ((*&has & 0x8000000) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_73;
  }

LABEL_72:
  *(toCopy + 26) = self->_locationDistanceFromGym;
  *(toCopy + 48) |= 0x80u;
  has = self->_has;
  if ((*&has & 0x8000000) == 0)
  {
LABEL_24:
    if ((*&has & 0x1000) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_74;
  }

LABEL_73:
  *(toCopy + 189) = self->_isInternalBuild;
  *(toCopy + 48) |= 0x8000000u;
  has = self->_has;
  if ((*&has & 0x1000) == 0)
  {
LABEL_25:
    if ((*&has & 0x2000) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_75;
  }

LABEL_74:
  *(toCopy + 31) = self->_predictionCacheAge;
  *(toCopy + 48) |= 0x1000u;
  has = self->_has;
  if ((*&has & 0x2000) == 0)
  {
LABEL_26:
    if ((*&has & 0x400000) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_76;
  }

LABEL_75:
  *(toCopy + 34) = self->_sessionLogVersion;
  *(toCopy + 48) |= 0x2000u;
  has = self->_has;
  if ((*&has & 0x400000) == 0)
  {
LABEL_27:
    if ((*&has & 0x20) == 0)
    {
      goto LABEL_28;
    }

LABEL_77:
    *(toCopy + 21) = self->_dayOfWeek;
    *(toCopy + 48) |= 0x20u;
    if ((*&self->_has & 0x20000) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_29;
  }

LABEL_76:
  *(toCopy + 43) = self->_totalSpotlightTimeOfDayLaunches;
  *(toCopy + 48) |= 0x400000u;
  has = self->_has;
  if ((*&has & 0x20) != 0)
  {
    goto LABEL_77;
  }

LABEL_28:
  if ((*&has & 0x20000) != 0)
  {
LABEL_29:
    *(toCopy + 38) = self->_totalDayOfWeekLaunches;
    *(toCopy + 48) |= 0x20000u;
  }

LABEL_30:
  v11 = toCopy;
  if ([(AWDProactiveAppPredictionSession *)self appSequencesCount])
  {
    [v11 clearAppSequences];
    appSequencesCount = [(AWDProactiveAppPredictionSession *)self appSequencesCount];
    if (appSequencesCount)
    {
      v7 = appSequencesCount;
      for (i = 0; i != v7; ++i)
      {
        v9 = [(AWDProactiveAppPredictionSession *)self appSequenceAtIndex:i];
        [v11 addAppSequence:v9];
      }
    }
  }

  if (self->_aPRFeedbackSource)
  {
    [v11 setAPRFeedbackSource:?];
  }

  v10 = v11;
  if (self->_aPREngagementType)
  {
    [v11 setAPREngagementType:?];
    v10 = v11;
  }

  if (self->_aPRSiriExperience)
  {
    [v11 setAPRSiriExperience:?];
    v10 = v11;
  }

  if (self->_intentType)
  {
    [v11 setIntentType:?];
    v10 = v11;
  }

  if (self->_consumerType)
  {
    [v11 setConsumerType:?];
    v10 = v11;
  }

  if (self->_sessionId)
  {
    [v11 setSessionId:?];
    v10 = v11;
  }

  if (self->_aBGroup)
  {
    [v11 setABGroup:?];
    v10 = v11;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v35 = *MEMORY[0x277D85DE8];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = v5;
  has = self->_has;
  if (*&has)
  {
    *(v5 + 8) = self->_timestamp;
    *(v5 + 192) |= 1u;
    has = self->_has;
    if ((*&has & 8) == 0)
    {
LABEL_3:
      if ((*&has & 0x8000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_40;
    }
  }

  else if ((*&has & 8) == 0)
  {
    goto LABEL_3;
  }

  *(v5 + 76) = self->_coreMotionLaunches;
  *(v5 + 192) |= 8u;
  has = self->_has;
  if ((*&has & 0x8000) == 0)
  {
LABEL_4:
    if ((*&has & 0x4000000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_41;
  }

LABEL_40:
  *(v5 + 144) = self->_totalAirplaneModeLaunches;
  *(v5 + 192) |= 0x8000u;
  has = self->_has;
  if ((*&has & 0x4000000) == 0)
  {
LABEL_5:
    if ((*&has & 4) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_42;
  }

LABEL_41:
  *(v5 + 188) = self->_inAirplaneMode;
  *(v5 + 192) |= 0x4000000u;
  has = self->_has;
  if ((*&has & 4) == 0)
  {
LABEL_6:
    if ((*&has & 0x200000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_43;
  }

LABEL_42:
  *(v5 + 72) = self->_coreMotionCurrentMotionLaunches;
  *(v5 + 192) |= 4u;
  has = self->_has;
  if ((*&has & 0x200000) == 0)
  {
LABEL_7:
    if ((*&has & 0x40000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_44;
  }

LABEL_43:
  *(v5 + 168) = self->_totalSpotlightLaunches;
  *(v5 + 192) |= 0x200000u;
  has = self->_has;
  if ((*&has & 0x40000) == 0)
  {
LABEL_8:
    if ((*&has & 0x10000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_45;
  }

LABEL_44:
  *(v5 + 156) = self->_totalLaunchSequences;
  *(v5 + 192) |= 0x40000u;
  has = self->_has;
  if ((*&has & 0x10000) == 0)
  {
LABEL_9:
    if ((*&has & 0x2000000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_46;
  }

LABEL_45:
  *(v5 + 148) = self->_totalCurrentDayOfWeekLaunches;
  *(v5 + 192) |= 0x10000u;
  has = self->_has;
  if ((*&has & 0x2000000) == 0)
  {
LABEL_10:
    if ((*&has & 0x4000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_47;
  }

LABEL_46:
  *(v5 + 184) = self->_totalWifiLaunches;
  *(v5 + 192) |= 0x2000000u;
  has = self->_has;
  if ((*&has & 0x4000) == 0)
  {
LABEL_11:
    if ((*&has & 2) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_48;
  }

LABEL_47:
  *(v5 + 140) = self->_timeOfDayInterval;
  *(v5 + 192) |= 0x4000u;
  has = self->_has;
  if ((*&has & 2) == 0)
  {
LABEL_12:
    if ((*&has & 0x10) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_49;
  }

LABEL_48:
  *(v5 + 56) = self->_consumerSubType;
  *(v5 + 192) |= 2u;
  has = self->_has;
  if ((*&has & 0x10) == 0)
  {
LABEL_13:
    if ((*&has & 0x80000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_50;
  }

LABEL_49:
  *(v5 + 80) = self->_currentLOIType;
  *(v5 + 192) |= 0x10u;
  has = self->_has;
  if ((*&has & 0x80000) == 0)
  {
LABEL_14:
    if ((*&has & 0x800) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_51;
  }

LABEL_50:
  *(v5 + 160) = self->_totalLaunches;
  *(v5 + 192) |= 0x80000u;
  has = self->_has;
  if ((*&has & 0x800) == 0)
  {
LABEL_15:
    if ((*&has & 0x40) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_52;
  }

LABEL_51:
  *(v5 + 120) = self->_outcome;
  *(v5 + 192) |= 0x800u;
  has = self->_has;
  if ((*&has & 0x40) == 0)
  {
LABEL_16:
    if ((*&has & 0x1000000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_53;
  }

LABEL_52:
  *(v5 + 88) = self->_engagedApp;
  *(v5 + 192) |= 0x40u;
  has = self->_has;
  if ((*&has & 0x1000000) == 0)
  {
LABEL_17:
    if ((*&has & 0x800000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_54;
  }

LABEL_53:
  *(v5 + 180) = self->_totalTrendingLaunches;
  *(v5 + 192) |= 0x1000000u;
  has = self->_has;
  if ((*&has & 0x800000) == 0)
  {
LABEL_18:
    if ((*&has & 0x100000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_55;
  }

LABEL_54:
  *(v5 + 176) = self->_totalTimeOfDayLaunches;
  *(v5 + 192) |= 0x800000u;
  has = self->_has;
  if ((*&has & 0x100000) == 0)
  {
LABEL_19:
    if ((*&has & 0x100) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_56;
  }

LABEL_55:
  *(v5 + 164) = self->_totalSSIDLaunches;
  *(v5 + 192) |= 0x100000u;
  has = self->_has;
  if ((*&has & 0x100) == 0)
  {
LABEL_20:
    if ((*&has & 0x400) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_57;
  }

LABEL_56:
  *(v5 + 108) = self->_locationDistanceFromHome;
  *(v5 + 192) |= 0x100u;
  has = self->_has;
  if ((*&has & 0x400) == 0)
  {
LABEL_21:
    if ((*&has & 0x200) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_58;
  }

LABEL_57:
  *(v5 + 116) = self->_locationDistanceFromWork;
  *(v5 + 192) |= 0x400u;
  has = self->_has;
  if ((*&has & 0x200) == 0)
  {
LABEL_22:
    if ((*&has & 0x80) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_59;
  }

LABEL_58:
  *(v5 + 112) = self->_locationDistanceFromSchool;
  *(v5 + 192) |= 0x200u;
  has = self->_has;
  if ((*&has & 0x80) == 0)
  {
LABEL_23:
    if ((*&has & 0x8000000) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_60;
  }

LABEL_59:
  *(v5 + 104) = self->_locationDistanceFromGym;
  *(v5 + 192) |= 0x80u;
  has = self->_has;
  if ((*&has & 0x8000000) == 0)
  {
LABEL_24:
    if ((*&has & 0x1000) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_61;
  }

LABEL_60:
  *(v5 + 189) = self->_isInternalBuild;
  *(v5 + 192) |= 0x8000000u;
  has = self->_has;
  if ((*&has & 0x1000) == 0)
  {
LABEL_25:
    if ((*&has & 0x2000) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_62;
  }

LABEL_61:
  *(v5 + 124) = self->_predictionCacheAge;
  *(v5 + 192) |= 0x1000u;
  has = self->_has;
  if ((*&has & 0x2000) == 0)
  {
LABEL_26:
    if ((*&has & 0x400000) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_63;
  }

LABEL_62:
  *(v5 + 136) = self->_sessionLogVersion;
  *(v5 + 192) |= 0x2000u;
  has = self->_has;
  if ((*&has & 0x400000) == 0)
  {
LABEL_27:
    if ((*&has & 0x20) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_64;
  }

LABEL_63:
  *(v5 + 172) = self->_totalSpotlightTimeOfDayLaunches;
  *(v5 + 192) |= 0x400000u;
  has = self->_has;
  if ((*&has & 0x20) == 0)
  {
LABEL_28:
    if ((*&has & 0x20000) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_29;
  }

LABEL_64:
  *(v5 + 84) = self->_dayOfWeek;
  *(v5 + 192) |= 0x20u;
  if ((*&self->_has & 0x20000) != 0)
  {
LABEL_29:
    *(v5 + 152) = self->_totalDayOfWeekLaunches;
    *(v5 + 192) |= 0x20000u;
  }

LABEL_30:
  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v8 = self->_appSequences;
  v9 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v30 objects:v34 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v31;
    do
    {
      v12 = 0;
      do
      {
        if (*v31 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = [*(*(&v30 + 1) + 8 * v12) copyWithZone:{zone, v30}];
        [v6 addAppSequence:v13];

        ++v12;
      }

      while (v10 != v12);
      v10 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v30 objects:v34 count:16];
    }

    while (v10);
  }

  v14 = [(NSString *)self->_aPRFeedbackSource copyWithZone:zone];
  v15 = v6[4];
  v6[4] = v14;

  v16 = [(NSString *)self->_aPREngagementType copyWithZone:zone];
  v17 = v6[3];
  v6[3] = v16;

  v18 = [(NSString *)self->_aPRSiriExperience copyWithZone:zone];
  v19 = v6[5];
  v6[5] = v18;

  v20 = [(NSString *)self->_intentType copyWithZone:zone];
  v21 = v6[12];
  v6[12] = v20;

  v22 = [(NSString *)self->_consumerType copyWithZone:zone];
  v23 = v6[8];
  v6[8] = v22;

  v24 = [(NSString *)self->_sessionId copyWithZone:zone];
  v25 = v6[16];
  v6[16] = v24;

  v26 = [(NSString *)self->_aBGroup copyWithZone:zone];
  v27 = v6[2];
  v6[2] = v26;

  v28 = *MEMORY[0x277D85DE8];
  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_164;
  }

  has = self->_has;
  v6 = *(equalCopy + 48);
  if (*&has)
  {
    if ((v6 & 1) == 0 || self->_timestamp != *(equalCopy + 1))
    {
      goto LABEL_164;
    }
  }

  else if (v6)
  {
    goto LABEL_164;
  }

  if ((*&has & 8) != 0)
  {
    if ((v6 & 8) == 0 || self->_coreMotionLaunches != *(equalCopy + 19))
    {
      goto LABEL_164;
    }
  }

  else if ((v6 & 8) != 0)
  {
    goto LABEL_164;
  }

  if ((*&has & 0x8000) != 0)
  {
    if ((v6 & 0x8000) == 0 || self->_totalAirplaneModeLaunches != *(equalCopy + 36))
    {
      goto LABEL_164;
    }
  }

  else if ((v6 & 0x8000) != 0)
  {
    goto LABEL_164;
  }

  if ((*&has & 0x4000000) != 0)
  {
    if ((v6 & 0x4000000) == 0)
    {
      goto LABEL_164;
    }

    v7 = *(equalCopy + 188);
    if (self->_inAirplaneMode)
    {
      if ((*(equalCopy + 188) & 1) == 0)
      {
        goto LABEL_164;
      }
    }

    else if (*(equalCopy + 188))
    {
      goto LABEL_164;
    }
  }

  else if ((v6 & 0x4000000) != 0)
  {
    goto LABEL_164;
  }

  if ((*&has & 4) != 0)
  {
    if ((v6 & 4) == 0 || self->_coreMotionCurrentMotionLaunches != *(equalCopy + 18))
    {
      goto LABEL_164;
    }
  }

  else if ((v6 & 4) != 0)
  {
    goto LABEL_164;
  }

  if ((*&has & 0x200000) != 0)
  {
    if ((v6 & 0x200000) == 0 || self->_totalSpotlightLaunches != *(equalCopy + 42))
    {
      goto LABEL_164;
    }
  }

  else if ((v6 & 0x200000) != 0)
  {
    goto LABEL_164;
  }

  if ((*&has & 0x40000) != 0)
  {
    if ((v6 & 0x40000) == 0 || self->_totalLaunchSequences != *(equalCopy + 39))
    {
      goto LABEL_164;
    }
  }

  else if ((v6 & 0x40000) != 0)
  {
    goto LABEL_164;
  }

  if ((*&has & 0x10000) != 0)
  {
    if ((v6 & 0x10000) == 0 || self->_totalCurrentDayOfWeekLaunches != *(equalCopy + 37))
    {
      goto LABEL_164;
    }
  }

  else if ((v6 & 0x10000) != 0)
  {
    goto LABEL_164;
  }

  if ((*&has & 0x2000000) != 0)
  {
    if ((v6 & 0x2000000) == 0 || self->_totalWifiLaunches != *(equalCopy + 46))
    {
      goto LABEL_164;
    }
  }

  else if ((v6 & 0x2000000) != 0)
  {
    goto LABEL_164;
  }

  if ((*&has & 0x4000) != 0)
  {
    if ((v6 & 0x4000) == 0 || self->_timeOfDayInterval != *(equalCopy + 35))
    {
      goto LABEL_164;
    }
  }

  else if ((v6 & 0x4000) != 0)
  {
    goto LABEL_164;
  }

  if ((*&has & 2) != 0)
  {
    if ((v6 & 2) == 0 || self->_consumerSubType != *(equalCopy + 14))
    {
      goto LABEL_164;
    }
  }

  else if ((v6 & 2) != 0)
  {
    goto LABEL_164;
  }

  if ((*&has & 0x10) != 0)
  {
    if ((v6 & 0x10) == 0 || self->_currentLOIType != *(equalCopy + 20))
    {
      goto LABEL_164;
    }
  }

  else if ((v6 & 0x10) != 0)
  {
    goto LABEL_164;
  }

  if ((*&has & 0x80000) != 0)
  {
    if ((v6 & 0x80000) == 0 || self->_totalLaunches != *(equalCopy + 40))
    {
      goto LABEL_164;
    }
  }

  else if ((v6 & 0x80000) != 0)
  {
    goto LABEL_164;
  }

  if ((*&has & 0x800) != 0)
  {
    if ((v6 & 0x800) == 0 || self->_outcome != *(equalCopy + 30))
    {
      goto LABEL_164;
    }
  }

  else if ((v6 & 0x800) != 0)
  {
    goto LABEL_164;
  }

  if ((*&has & 0x40) != 0)
  {
    if ((v6 & 0x40) == 0 || self->_engagedApp != *(equalCopy + 22))
    {
      goto LABEL_164;
    }
  }

  else if ((v6 & 0x40) != 0)
  {
    goto LABEL_164;
  }

  if ((*&has & 0x1000000) != 0)
  {
    if ((v6 & 0x1000000) == 0 || self->_totalTrendingLaunches != *(equalCopy + 45))
    {
      goto LABEL_164;
    }
  }

  else if ((v6 & 0x1000000) != 0)
  {
    goto LABEL_164;
  }

  if ((*&has & 0x800000) != 0)
  {
    if ((v6 & 0x800000) == 0 || self->_totalTimeOfDayLaunches != *(equalCopy + 44))
    {
      goto LABEL_164;
    }
  }

  else if ((v6 & 0x800000) != 0)
  {
    goto LABEL_164;
  }

  if ((*&has & 0x100000) != 0)
  {
    if ((v6 & 0x100000) == 0 || self->_totalSSIDLaunches != *(equalCopy + 41))
    {
      goto LABEL_164;
    }
  }

  else if ((v6 & 0x100000) != 0)
  {
    goto LABEL_164;
  }

  if ((*&has & 0x100) != 0)
  {
    if ((v6 & 0x100) == 0 || self->_locationDistanceFromHome != *(equalCopy + 27))
    {
      goto LABEL_164;
    }
  }

  else if ((v6 & 0x100) != 0)
  {
    goto LABEL_164;
  }

  if ((*&has & 0x400) != 0)
  {
    if ((v6 & 0x400) == 0 || self->_locationDistanceFromWork != *(equalCopy + 29))
    {
      goto LABEL_164;
    }
  }

  else if ((v6 & 0x400) != 0)
  {
    goto LABEL_164;
  }

  if ((*&has & 0x200) != 0)
  {
    if ((v6 & 0x200) == 0 || self->_locationDistanceFromSchool != *(equalCopy + 28))
    {
      goto LABEL_164;
    }
  }

  else if ((v6 & 0x200) != 0)
  {
    goto LABEL_164;
  }

  if ((*&has & 0x80) != 0)
  {
    if ((v6 & 0x80) == 0 || self->_locationDistanceFromGym != *(equalCopy + 26))
    {
      goto LABEL_164;
    }
  }

  else if ((v6 & 0x80) != 0)
  {
    goto LABEL_164;
  }

  if ((*&has & 0x8000000) != 0)
  {
    if ((v6 & 0x8000000) != 0)
    {
      v8 = *(equalCopy + 189);
      if (self->_isInternalBuild)
      {
        if ((*(equalCopy + 189) & 1) == 0)
        {
          goto LABEL_164;
        }

        goto LABEL_123;
      }

      if ((*(equalCopy + 189) & 1) == 0)
      {
        goto LABEL_123;
      }
    }

LABEL_164:
    v17 = 0;
    goto LABEL_165;
  }

  if ((v6 & 0x8000000) != 0)
  {
    goto LABEL_164;
  }

LABEL_123:
  if ((*&has & 0x1000) != 0)
  {
    if ((v6 & 0x1000) == 0 || self->_predictionCacheAge != *(equalCopy + 31))
    {
      goto LABEL_164;
    }
  }

  else if ((v6 & 0x1000) != 0)
  {
    goto LABEL_164;
  }

  if ((*&has & 0x2000) != 0)
  {
    if ((v6 & 0x2000) == 0 || self->_sessionLogVersion != *(equalCopy + 34))
    {
      goto LABEL_164;
    }
  }

  else if ((v6 & 0x2000) != 0)
  {
    goto LABEL_164;
  }

  if ((*&has & 0x400000) != 0)
  {
    if ((v6 & 0x400000) == 0 || self->_totalSpotlightTimeOfDayLaunches != *(equalCopy + 43))
    {
      goto LABEL_164;
    }
  }

  else if ((v6 & 0x400000) != 0)
  {
    goto LABEL_164;
  }

  if ((*&has & 0x20) != 0)
  {
    if ((v6 & 0x20) == 0 || self->_dayOfWeek != *(equalCopy + 21))
    {
      goto LABEL_164;
    }
  }

  else if ((v6 & 0x20) != 0)
  {
    goto LABEL_164;
  }

  if ((*&has & 0x20000) != 0)
  {
    if ((v6 & 0x20000) == 0 || self->_totalDayOfWeekLaunches != *(equalCopy + 38))
    {
      goto LABEL_164;
    }
  }

  else if ((v6 & 0x20000) != 0)
  {
    goto LABEL_164;
  }

  appSequences = self->_appSequences;
  if (appSequences | *(equalCopy + 6) && ![(NSMutableArray *)appSequences isEqual:?])
  {
    goto LABEL_164;
  }

  aPRFeedbackSource = self->_aPRFeedbackSource;
  if (aPRFeedbackSource | *(equalCopy + 4))
  {
    if (![(NSString *)aPRFeedbackSource isEqual:?])
    {
      goto LABEL_164;
    }
  }

  aPREngagementType = self->_aPREngagementType;
  if (aPREngagementType | *(equalCopy + 3))
  {
    if (![(NSString *)aPREngagementType isEqual:?])
    {
      goto LABEL_164;
    }
  }

  aPRSiriExperience = self->_aPRSiriExperience;
  if (aPRSiriExperience | *(equalCopy + 5))
  {
    if (![(NSString *)aPRSiriExperience isEqual:?])
    {
      goto LABEL_164;
    }
  }

  intentType = self->_intentType;
  if (intentType | *(equalCopy + 12))
  {
    if (![(NSString *)intentType isEqual:?])
    {
      goto LABEL_164;
    }
  }

  consumerType = self->_consumerType;
  if (consumerType | *(equalCopy + 8))
  {
    if (![(NSString *)consumerType isEqual:?])
    {
      goto LABEL_164;
    }
  }

  sessionId = self->_sessionId;
  if (sessionId | *(equalCopy + 16))
  {
    if (![(NSString *)sessionId isEqual:?])
    {
      goto LABEL_164;
    }
  }

  aBGroup = self->_aBGroup;
  if (aBGroup | *(equalCopy + 2))
  {
    v17 = [(NSString *)aBGroup isEqual:?];
  }

  else
  {
    v17 = 1;
  }

LABEL_165:

  return v17;
}

- (unint64_t)hash
{
  has = self->_has;
  if (*&has)
  {
    v39 = 2654435761u * self->_timestamp;
    if ((*&has & 8) != 0)
    {
LABEL_3:
      v4 = 2654435761 * self->_coreMotionLaunches;
      if ((*&has & 0x8000) != 0)
      {
        goto LABEL_4;
      }

      goto LABEL_32;
    }
  }

  else
  {
    v39 = 0;
    if ((*&has & 8) != 0)
    {
      goto LABEL_3;
    }
  }

  v4 = 0;
  if ((*&has & 0x8000) != 0)
  {
LABEL_4:
    v5 = 2654435761 * self->_totalAirplaneModeLaunches;
    if ((*&has & 0x4000000) != 0)
    {
      goto LABEL_5;
    }

    goto LABEL_33;
  }

LABEL_32:
  v5 = 0;
  if ((*&has & 0x4000000) != 0)
  {
LABEL_5:
    v6 = 2654435761 * self->_inAirplaneMode;
    if ((*&has & 4) != 0)
    {
      goto LABEL_6;
    }

    goto LABEL_34;
  }

LABEL_33:
  v6 = 0;
  if ((*&has & 4) != 0)
  {
LABEL_6:
    v7 = 2654435761 * self->_coreMotionCurrentMotionLaunches;
    if ((*&has & 0x200000) != 0)
    {
      goto LABEL_7;
    }

    goto LABEL_35;
  }

LABEL_34:
  v7 = 0;
  if ((*&has & 0x200000) != 0)
  {
LABEL_7:
    v8 = 2654435761 * self->_totalSpotlightLaunches;
    if ((*&has & 0x40000) != 0)
    {
      goto LABEL_8;
    }

    goto LABEL_36;
  }

LABEL_35:
  v8 = 0;
  if ((*&has & 0x40000) != 0)
  {
LABEL_8:
    v9 = 2654435761 * self->_totalLaunchSequences;
    if ((*&has & 0x10000) != 0)
    {
      goto LABEL_9;
    }

    goto LABEL_37;
  }

LABEL_36:
  v9 = 0;
  if ((*&has & 0x10000) != 0)
  {
LABEL_9:
    v10 = 2654435761 * self->_totalCurrentDayOfWeekLaunches;
    if ((*&has & 0x2000000) != 0)
    {
      goto LABEL_10;
    }

    goto LABEL_38;
  }

LABEL_37:
  v10 = 0;
  if ((*&has & 0x2000000) != 0)
  {
LABEL_10:
    v11 = 2654435761 * self->_totalWifiLaunches;
    if ((*&has & 0x4000) != 0)
    {
      goto LABEL_11;
    }

    goto LABEL_39;
  }

LABEL_38:
  v11 = 0;
  if ((*&has & 0x4000) != 0)
  {
LABEL_11:
    v12 = 2654435761 * self->_timeOfDayInterval;
    if ((*&has & 2) != 0)
    {
      goto LABEL_12;
    }

    goto LABEL_40;
  }

LABEL_39:
  v12 = 0;
  if ((*&has & 2) != 0)
  {
LABEL_12:
    v13 = 2654435761 * self->_consumerSubType;
    if ((*&has & 0x10) != 0)
    {
      goto LABEL_13;
    }

    goto LABEL_41;
  }

LABEL_40:
  v13 = 0;
  if ((*&has & 0x10) != 0)
  {
LABEL_13:
    v14 = 2654435761 * self->_currentLOIType;
    if ((*&has & 0x80000) != 0)
    {
      goto LABEL_14;
    }

    goto LABEL_42;
  }

LABEL_41:
  v14 = 0;
  if ((*&has & 0x80000) != 0)
  {
LABEL_14:
    v15 = 2654435761 * self->_totalLaunches;
    if ((*&has & 0x800) != 0)
    {
      goto LABEL_15;
    }

    goto LABEL_43;
  }

LABEL_42:
  v15 = 0;
  if ((*&has & 0x800) != 0)
  {
LABEL_15:
    v16 = 2654435761 * self->_outcome;
    if ((*&has & 0x40) != 0)
    {
      goto LABEL_16;
    }

    goto LABEL_44;
  }

LABEL_43:
  v16 = 0;
  if ((*&has & 0x40) != 0)
  {
LABEL_16:
    v17 = 2654435761 * self->_engagedApp;
    if ((*&has & 0x1000000) != 0)
    {
      goto LABEL_17;
    }

    goto LABEL_45;
  }

LABEL_44:
  v17 = 0;
  if ((*&has & 0x1000000) != 0)
  {
LABEL_17:
    v18 = 2654435761 * self->_totalTrendingLaunches;
    if ((*&has & 0x800000) != 0)
    {
      goto LABEL_18;
    }

    goto LABEL_46;
  }

LABEL_45:
  v18 = 0;
  if ((*&has & 0x800000) != 0)
  {
LABEL_18:
    v19 = 2654435761 * self->_totalTimeOfDayLaunches;
    if ((*&has & 0x100000) != 0)
    {
      goto LABEL_19;
    }

    goto LABEL_47;
  }

LABEL_46:
  v19 = 0;
  if ((*&has & 0x100000) != 0)
  {
LABEL_19:
    v20 = 2654435761 * self->_totalSSIDLaunches;
    if ((*&has & 0x100) != 0)
    {
      goto LABEL_20;
    }

    goto LABEL_48;
  }

LABEL_47:
  v20 = 0;
  if ((*&has & 0x100) != 0)
  {
LABEL_20:
    v21 = 2654435761 * self->_locationDistanceFromHome;
    if ((*&has & 0x400) != 0)
    {
      goto LABEL_21;
    }

    goto LABEL_49;
  }

LABEL_48:
  v21 = 0;
  if ((*&has & 0x400) != 0)
  {
LABEL_21:
    v22 = 2654435761 * self->_locationDistanceFromWork;
    if ((*&has & 0x200) != 0)
    {
      goto LABEL_22;
    }

    goto LABEL_50;
  }

LABEL_49:
  v22 = 0;
  if ((*&has & 0x200) != 0)
  {
LABEL_22:
    v23 = 2654435761 * self->_locationDistanceFromSchool;
    if ((*&has & 0x80) != 0)
    {
      goto LABEL_23;
    }

    goto LABEL_51;
  }

LABEL_50:
  v23 = 0;
  if ((*&has & 0x80) != 0)
  {
LABEL_23:
    v24 = 2654435761 * self->_locationDistanceFromGym;
    if ((*&has & 0x8000000) != 0)
    {
      goto LABEL_24;
    }

    goto LABEL_52;
  }

LABEL_51:
  v24 = 0;
  if ((*&has & 0x8000000) != 0)
  {
LABEL_24:
    v25 = 2654435761 * self->_isInternalBuild;
    if ((*&has & 0x1000) != 0)
    {
      goto LABEL_25;
    }

    goto LABEL_53;
  }

LABEL_52:
  v25 = 0;
  if ((*&has & 0x1000) != 0)
  {
LABEL_25:
    v26 = 2654435761 * self->_predictionCacheAge;
    if ((*&has & 0x2000) != 0)
    {
      goto LABEL_26;
    }

    goto LABEL_54;
  }

LABEL_53:
  v26 = 0;
  if ((*&has & 0x2000) != 0)
  {
LABEL_26:
    v27 = 2654435761 * self->_sessionLogVersion;
    if ((*&has & 0x400000) != 0)
    {
      goto LABEL_27;
    }

    goto LABEL_55;
  }

LABEL_54:
  v27 = 0;
  if ((*&has & 0x400000) != 0)
  {
LABEL_27:
    v28 = 2654435761 * self->_totalSpotlightTimeOfDayLaunches;
    if ((*&has & 0x20) != 0)
    {
      goto LABEL_28;
    }

LABEL_56:
    v29 = 0;
    if ((*&has & 0x20000) != 0)
    {
      goto LABEL_29;
    }

LABEL_57:
    v30 = 0;
    goto LABEL_58;
  }

LABEL_55:
  v28 = 0;
  if ((*&has & 0x20) == 0)
  {
    goto LABEL_56;
  }

LABEL_28:
  v29 = 2654435761 * self->_dayOfWeek;
  if ((*&has & 0x20000) == 0)
  {
    goto LABEL_57;
  }

LABEL_29:
  v30 = 2654435761 * self->_totalDayOfWeekLaunches;
LABEL_58:
  v31 = v4 ^ v39 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11 ^ v12 ^ v13 ^ v14 ^ v15 ^ v16 ^ v17 ^ v18 ^ v19 ^ v20 ^ v21 ^ v22 ^ v23 ^ v24 ^ v25 ^ v26 ^ v27 ^ v28 ^ v29 ^ v30 ^ [(NSMutableArray *)self->_appSequences hash];
  v32 = [(NSString *)self->_aPRFeedbackSource hash];
  v33 = v31 ^ v32 ^ [(NSString *)self->_aPREngagementType hash];
  v34 = [(NSString *)self->_aPRSiriExperience hash];
  v35 = v34 ^ [(NSString *)self->_intentType hash];
  v36 = v33 ^ v35 ^ [(NSString *)self->_consumerType hash];
  v37 = [(NSString *)self->_sessionId hash];
  return v36 ^ v37 ^ [(NSString *)self->_aBGroup hash];
}

- (void)mergeFrom:(id)from
{
  v18 = *MEMORY[0x277D85DE8];
  fromCopy = from;
  v5 = fromCopy;
  v6 = *(fromCopy + 48);
  if (v6)
  {
    self->_timestamp = *(fromCopy + 1);
    *&self->_has |= 1u;
    v6 = *(fromCopy + 48);
    if ((v6 & 8) == 0)
    {
LABEL_3:
      if ((v6 & 0x8000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_54;
    }
  }

  else if ((v6 & 8) == 0)
  {
    goto LABEL_3;
  }

  self->_coreMotionLaunches = *(fromCopy + 19);
  *&self->_has |= 8u;
  v6 = *(fromCopy + 48);
  if ((v6 & 0x8000) == 0)
  {
LABEL_4:
    if ((v6 & 0x4000000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_55;
  }

LABEL_54:
  self->_totalAirplaneModeLaunches = *(fromCopy + 36);
  *&self->_has |= 0x8000u;
  v6 = *(fromCopy + 48);
  if ((v6 & 0x4000000) == 0)
  {
LABEL_5:
    if ((v6 & 4) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_56;
  }

LABEL_55:
  self->_inAirplaneMode = *(fromCopy + 188);
  *&self->_has |= 0x4000000u;
  v6 = *(fromCopy + 48);
  if ((v6 & 4) == 0)
  {
LABEL_6:
    if ((v6 & 0x200000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_57;
  }

LABEL_56:
  self->_coreMotionCurrentMotionLaunches = *(fromCopy + 18);
  *&self->_has |= 4u;
  v6 = *(fromCopy + 48);
  if ((v6 & 0x200000) == 0)
  {
LABEL_7:
    if ((v6 & 0x40000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_58;
  }

LABEL_57:
  self->_totalSpotlightLaunches = *(fromCopy + 42);
  *&self->_has |= 0x200000u;
  v6 = *(fromCopy + 48);
  if ((v6 & 0x40000) == 0)
  {
LABEL_8:
    if ((v6 & 0x10000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_59;
  }

LABEL_58:
  self->_totalLaunchSequences = *(fromCopy + 39);
  *&self->_has |= 0x40000u;
  v6 = *(fromCopy + 48);
  if ((v6 & 0x10000) == 0)
  {
LABEL_9:
    if ((v6 & 0x2000000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_60;
  }

LABEL_59:
  self->_totalCurrentDayOfWeekLaunches = *(fromCopy + 37);
  *&self->_has |= 0x10000u;
  v6 = *(fromCopy + 48);
  if ((v6 & 0x2000000) == 0)
  {
LABEL_10:
    if ((v6 & 0x4000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_61;
  }

LABEL_60:
  self->_totalWifiLaunches = *(fromCopy + 46);
  *&self->_has |= 0x2000000u;
  v6 = *(fromCopy + 48);
  if ((v6 & 0x4000) == 0)
  {
LABEL_11:
    if ((v6 & 2) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_62;
  }

LABEL_61:
  self->_timeOfDayInterval = *(fromCopy + 35);
  *&self->_has |= 0x4000u;
  v6 = *(fromCopy + 48);
  if ((v6 & 2) == 0)
  {
LABEL_12:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_63;
  }

LABEL_62:
  self->_consumerSubType = *(fromCopy + 14);
  *&self->_has |= 2u;
  v6 = *(fromCopy + 48);
  if ((v6 & 0x10) == 0)
  {
LABEL_13:
    if ((v6 & 0x80000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_64;
  }

LABEL_63:
  self->_currentLOIType = *(fromCopy + 20);
  *&self->_has |= 0x10u;
  v6 = *(fromCopy + 48);
  if ((v6 & 0x80000) == 0)
  {
LABEL_14:
    if ((v6 & 0x800) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_65;
  }

LABEL_64:
  self->_totalLaunches = *(fromCopy + 40);
  *&self->_has |= 0x80000u;
  v6 = *(fromCopy + 48);
  if ((v6 & 0x800) == 0)
  {
LABEL_15:
    if ((v6 & 0x40) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_66;
  }

LABEL_65:
  self->_outcome = *(fromCopy + 30);
  *&self->_has |= 0x800u;
  v6 = *(fromCopy + 48);
  if ((v6 & 0x40) == 0)
  {
LABEL_16:
    if ((v6 & 0x1000000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_67;
  }

LABEL_66:
  self->_engagedApp = *(fromCopy + 22);
  *&self->_has |= 0x40u;
  v6 = *(fromCopy + 48);
  if ((v6 & 0x1000000) == 0)
  {
LABEL_17:
    if ((v6 & 0x800000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_68;
  }

LABEL_67:
  self->_totalTrendingLaunches = *(fromCopy + 45);
  *&self->_has |= 0x1000000u;
  v6 = *(fromCopy + 48);
  if ((v6 & 0x800000) == 0)
  {
LABEL_18:
    if ((v6 & 0x100000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_69;
  }

LABEL_68:
  self->_totalTimeOfDayLaunches = *(fromCopy + 44);
  *&self->_has |= 0x800000u;
  v6 = *(fromCopy + 48);
  if ((v6 & 0x100000) == 0)
  {
LABEL_19:
    if ((v6 & 0x100) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_70;
  }

LABEL_69:
  self->_totalSSIDLaunches = *(fromCopy + 41);
  *&self->_has |= 0x100000u;
  v6 = *(fromCopy + 48);
  if ((v6 & 0x100) == 0)
  {
LABEL_20:
    if ((v6 & 0x400) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_71;
  }

LABEL_70:
  self->_locationDistanceFromHome = *(fromCopy + 27);
  *&self->_has |= 0x100u;
  v6 = *(fromCopy + 48);
  if ((v6 & 0x400) == 0)
  {
LABEL_21:
    if ((v6 & 0x200) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_72;
  }

LABEL_71:
  self->_locationDistanceFromWork = *(fromCopy + 29);
  *&self->_has |= 0x400u;
  v6 = *(fromCopy + 48);
  if ((v6 & 0x200) == 0)
  {
LABEL_22:
    if ((v6 & 0x80) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_73;
  }

LABEL_72:
  self->_locationDistanceFromSchool = *(fromCopy + 28);
  *&self->_has |= 0x200u;
  v6 = *(fromCopy + 48);
  if ((v6 & 0x80) == 0)
  {
LABEL_23:
    if ((v6 & 0x8000000) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_74;
  }

LABEL_73:
  self->_locationDistanceFromGym = *(fromCopy + 26);
  *&self->_has |= 0x80u;
  v6 = *(fromCopy + 48);
  if ((v6 & 0x8000000) == 0)
  {
LABEL_24:
    if ((v6 & 0x1000) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_75;
  }

LABEL_74:
  self->_isInternalBuild = *(fromCopy + 189);
  *&self->_has |= 0x8000000u;
  v6 = *(fromCopy + 48);
  if ((v6 & 0x1000) == 0)
  {
LABEL_25:
    if ((v6 & 0x2000) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_76;
  }

LABEL_75:
  self->_predictionCacheAge = *(fromCopy + 31);
  *&self->_has |= 0x1000u;
  v6 = *(fromCopy + 48);
  if ((v6 & 0x2000) == 0)
  {
LABEL_26:
    if ((v6 & 0x400000) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_77;
  }

LABEL_76:
  self->_sessionLogVersion = *(fromCopy + 34);
  *&self->_has |= 0x2000u;
  v6 = *(fromCopy + 48);
  if ((v6 & 0x400000) == 0)
  {
LABEL_27:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_78;
  }

LABEL_77:
  self->_totalSpotlightTimeOfDayLaunches = *(fromCopy + 43);
  *&self->_has |= 0x400000u;
  v6 = *(fromCopy + 48);
  if ((v6 & 0x20) == 0)
  {
LABEL_28:
    if ((v6 & 0x20000) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_29;
  }

LABEL_78:
  self->_dayOfWeek = *(fromCopy + 21);
  *&self->_has |= 0x20u;
  if ((*(fromCopy + 48) & 0x20000) != 0)
  {
LABEL_29:
    self->_totalDayOfWeekLaunches = *(fromCopy + 38);
    *&self->_has |= 0x20000u;
  }

LABEL_30:
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v7 = *(fromCopy + 6);
  v8 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v14;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v14 != v10)
        {
          objc_enumerationMutation(v7);
        }

        [(AWDProactiveAppPredictionSession *)self addAppSequence:*(*(&v13 + 1) + 8 * i), v13];
      }

      v9 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v9);
  }

  if (v5[4])
  {
    [(AWDProactiveAppPredictionSession *)self setAPRFeedbackSource:?];
  }

  if (v5[3])
  {
    [(AWDProactiveAppPredictionSession *)self setAPREngagementType:?];
  }

  if (v5[5])
  {
    [(AWDProactiveAppPredictionSession *)self setAPRSiriExperience:?];
  }

  if (v5[12])
  {
    [(AWDProactiveAppPredictionSession *)self setIntentType:?];
  }

  if (v5[8])
  {
    [(AWDProactiveAppPredictionSession *)self setConsumerType:?];
  }

  if (v5[16])
  {
    [(AWDProactiveAppPredictionSession *)self setSessionId:?];
  }

  if (v5[2])
  {
    [(AWDProactiveAppPredictionSession *)self setABGroup:?];
  }

  v12 = *MEMORY[0x277D85DE8];
}

@end