@interface AWDProactiveAppPredictionIntentPredictionSession
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsConsumerSubType:(id)type;
- (int)StringAsCurrentLOIType:(id)type;
- (int)StringAsEngagementType:(id)type;
- (int)consumerSubType;
- (int)currentLOIType;
- (int)engagedActionCacheIndicesAtIndex:(unint64_t)index;
- (int)engagementType;
- (unint64_t)hash;
- (void)addActionData:(id)data;
- (void)copyTo:(id)to;
- (void)dealloc;
- (void)mergeFrom:(id)from;
- (void)setHasAppActionCoreMotionCurrentMotionLaunches:(BOOL)launches;
- (void)setHasAppForAllActionsCoreMotionCurrentMotionLaunches:(BOOL)launches;
- (void)setHasConsumerSubType:(BOOL)type;
- (void)setHasCurrentLOIType:(BOOL)type;
- (void)setHasDayOfWeek:(BOOL)week;
- (void)setHasEngagementType:(BOOL)type;
- (void)setHasInAirplaneMode:(BOOL)mode;
- (void)setHasIntentDonationDelay:(BOOL)delay;
- (void)setHasIsInternalBuild:(BOOL)build;
- (void)setHasLocationDistanceFromHome:(BOOL)home;
- (void)setHasLocationDistanceFromWork:(BOOL)work;
- (void)setHasLogType:(BOOL)type;
- (void)setHasPredictionAge:(BOOL)age;
- (void)setHasSessionLogVersion:(BOOL)version;
- (void)setHasTimeOfDayInterval:(BOOL)interval;
- (void)setHasTotalAppActionAirplaneModeLaunches:(BOOL)launches;
- (void)setHasTotalAppActionCoarseTimeOfDayLaunches:(BOOL)launches;
- (void)setHasTotalAppActionCurrentDayOfWeekLaunches:(BOOL)launches;
- (void)setHasTotalAppActionTimeOfDayLaunches:(BOOL)launches;
- (void)setHasTotalAppForAllActionTimeOfDayLaunches:(BOOL)launches;
- (void)setHasTotalAppForAllActionsAirplaneModeLaunches:(BOOL)launches;
- (void)setHasTotalAppForAllActionsCoarseTimeOfDayLaunches:(BOOL)launches;
- (void)setHasTotalAppForAllActionsCurrentDayOfWeekLaunches:(BOOL)launches;
- (void)setHasUiFeedbackDelay:(BOOL)delay;
- (void)writeTo:(id)to;
@end

@implementation AWDProactiveAppPredictionIntentPredictionSession

- (void)dealloc
{
  PBRepeatedInt32Clear();
  v3.receiver = self;
  v3.super_class = AWDProactiveAppPredictionIntentPredictionSession;
  [(AWDProactiveAppPredictionIntentPredictionSession *)&v3 dealloc];
}

- (void)addActionData:(id)data
{
  dataCopy = data;
  actionDatas = self->_actionDatas;
  v8 = dataCopy;
  if (!actionDatas)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_actionDatas;
    self->_actionDatas = v6;

    dataCopy = v8;
    actionDatas = self->_actionDatas;
  }

  [(NSMutableArray *)actionDatas addObject:dataCopy];
}

- (void)setHasAppActionCoreMotionCurrentMotionLaunches:(BOOL)launches
{
  if (launches)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFD | v3);
}

- (int)consumerSubType
{
  if ((*&self->_has & 8) != 0)
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
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFF7 | v3);
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

- (int)engagedActionCacheIndicesAtIndex:(unint64_t)index
{
  p_engagedActionCacheIndices = &self->_engagedActionCacheIndices;
  count = self->_engagedActionCacheIndices.count;
  if (count <= index)
  {
    v6 = MEMORY[0x277CBEAD8];
    v7 = *MEMORY[0x277CBE730];
    v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"idx (%lu) is out of range (%lu)", index, count];
    v9 = [v6 exceptionWithName:v7 reason:v8 userInfo:0];
    [v9 raise];
  }

  return p_engagedActionCacheIndices->list[index];
}

- (int)engagementType
{
  if ((*&self->_has & 0x40) != 0)
  {
    return self->_engagementType;
  }

  else
  {
    return 0;
  }
}

- (void)setHasEngagementType:(BOOL)type
{
  if (type)
  {
    v3 = 64;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFBF | v3);
}

- (int)StringAsEngagementType:(id)type
{
  typeCopy = type;
  if ([typeCopy isEqualToString:@"ATXActionEngagementTypeUnknown"])
  {
    v4 = 0;
  }

  else if ([typeCopy isEqualToString:@"ATXActionEngagementTypeEngagedInitial"])
  {
    v4 = 1;
  }

  else if ([typeCopy isEqualToString:@"ATXActionEngagementTypeEngagedFinalComplete"])
  {
    v4 = 2;
  }

  else if ([typeCopy isEqualToString:@"ATXActionEngagementTypeEngagedFinalPartial"])
  {
    v4 = 3;
  }

  else if ([typeCopy isEqualToString:@"ATXActionEngagementTypeEngagedDirectComplete"])
  {
    v4 = 4;
  }

  else if ([typeCopy isEqualToString:@"ATXActionEngagementTypeAbandonedDirect"])
  {
    v4 = 5;
  }

  else if ([typeCopy isEqualToString:@"ATXActionEngagementTypeAbandonedFinal"])
  {
    v4 = 6;
  }

  else if ([typeCopy isEqualToString:@"ATXActionEngagementTypeFoundComplete"])
  {
    v4 = 7;
  }

  else if ([typeCopy isEqualToString:@"ATXActionEngagementTypeFoundPartial"])
  {
    v4 = 8;
  }

  else if ([typeCopy isEqualToString:@"ATXActionEngagementTypeFoundNone"])
  {
    v4 = 9;
  }

  else if ([typeCopy isEqualToString:@"ATXActionEngagementTypeMax"])
  {
    v4 = 10;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setHasInAirplaneMode:(BOOL)mode
{
  if (mode)
  {
    v3 = 0x800000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFF7FFFFF | v3);
}

- (void)setHasIntentDonationDelay:(BOOL)delay
{
  if (delay)
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
    v3 = 0x1000000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFEFFFFFF | v3);
}

- (void)setHasLogType:(BOOL)type
{
  if (type)
  {
    v3 = 1024;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFBFF | v3);
}

- (void)setHasPredictionAge:(BOOL)age
{
  if (age)
  {
    v3 = 2048;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFF7FF | v3);
}

- (void)setHasTimeOfDayInterval:(BOOL)interval
{
  if (interval)
  {
    v3 = 0x2000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFDFFF | v3);
}

- (void)setHasTotalAppActionAirplaneModeLaunches:(BOOL)launches
{
  if (launches)
  {
    v3 = 0x4000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFBFFF | v3);
}

- (void)setHasTotalAppActionCurrentDayOfWeekLaunches:(BOOL)launches
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

- (void)setHasTotalAppForAllActionsAirplaneModeLaunches:(BOOL)launches
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

- (void)setHasTotalAppForAllActionsCurrentDayOfWeekLaunches:(BOOL)launches
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

- (void)setHasUiFeedbackDelay:(BOOL)delay
{
  if (delay)
  {
    v3 = 0x400000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFBFFFFF | v3);
}

- (void)setHasSessionLogVersion:(BOOL)version
{
  if (version)
  {
    v3 = 4096;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFEFFF | v3);
}

- (void)setHasAppForAllActionsCoreMotionCurrentMotionLaunches:(BOOL)launches
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
    v3 = 512;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFDFF | v3);
}

- (void)setHasTotalAppActionTimeOfDayLaunches:(BOOL)launches
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

- (void)setHasTotalAppForAllActionTimeOfDayLaunches:(BOOL)launches
{
  if (launches)
  {
    v3 = 0x40000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFBFFFF | v3);
}

- (void)setHasTotalAppActionCoarseTimeOfDayLaunches:(BOOL)launches
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

- (void)setHasTotalAppForAllActionsCoarseTimeOfDayLaunches:(BOOL)launches
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

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = AWDProactiveAppPredictionIntentPredictionSession;
  v4 = [(AWDProactiveAppPredictionIntentPredictionSession *)&v8 description];
  dictionaryRepresentation = [(AWDProactiveAppPredictionIntentPredictionSession *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  v57 = *MEMORY[0x277D85DE8];
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  if (*&self->_has)
  {
    v4 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:self->_timestamp];
    [dictionary setObject:v4 forKey:@"timestamp"];
  }

  if ([(NSMutableArray *)self->_actionDatas count])
  {
    v5 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_actionDatas, "count")}];
    v52 = 0u;
    v53 = 0u;
    v54 = 0u;
    v55 = 0u;
    v6 = self->_actionDatas;
    v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v52 objects:v56 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v53;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v53 != v9)
          {
            objc_enumerationMutation(v6);
          }

          dictionaryRepresentation = [*(*(&v52 + 1) + 8 * i) dictionaryRepresentation];
          [v5 addObject:dictionaryRepresentation];
        }

        v8 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v52 objects:v56 count:16];
      }

      while (v8);
    }

    [dictionary setObject:v5 forKey:@"actionData"];
  }

  if ((*&self->_has & 2) != 0)
  {
    v12 = [MEMORY[0x277CCABB0] numberWithInt:self->_appActionCoreMotionCurrentMotionLaunches];
    [dictionary setObject:v12 forKey:@"appActionCoreMotionCurrentMotionLaunches"];
  }

  appSequence = self->_appSequence;
  if (appSequence)
  {
    dictionaryRepresentation2 = [(AWDProactiveAppPredictionAppLaunchSequence *)appSequence dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation2 forKey:@"appSequence"];
  }

  has = self->_has;
  if ((*&has & 8) != 0)
  {
    consumerSubType = self->_consumerSubType;
    if (consumerSubType >= 0x28)
    {
      v30 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", self->_consumerSubType];
    }

    else
    {
      v30 = off_2785A2300[consumerSubType];
    }

    [dictionary setObject:v30 forKey:@"consumerSubType"];

    has = self->_has;
    if ((*&has & 0x10) == 0)
    {
LABEL_18:
      if ((*&has & 0x20) == 0)
      {
        goto LABEL_20;
      }

      goto LABEL_19;
    }
  }

  else if ((*&has & 0x10) == 0)
  {
    goto LABEL_18;
  }

  currentLOIType = self->_currentLOIType;
  if (currentLOIType >= 4)
  {
    v40 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", self->_currentLOIType];
  }

  else
  {
    v40 = off_2785A2440[currentLOIType];
  }

  [dictionary setObject:v40 forKey:@"currentLOIType"];

  if ((*&self->_has & 0x20) != 0)
  {
LABEL_19:
    v16 = [MEMORY[0x277CCABB0] numberWithInt:self->_dayOfWeek];
    [dictionary setObject:v16 forKey:@"dayOfWeek"];
  }

LABEL_20:
  v17 = PBRepeatedInt32NSArray();
  [dictionary setObject:v17 forKey:@"engagedActionCacheIndices"];

  v18 = self->_has;
  if ((*&v18 & 0x40) != 0)
  {
    engagementType = self->_engagementType;
    if (engagementType >= 0xB)
    {
      v32 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", self->_engagementType];
    }

    else
    {
      v32 = off_2785A2460[engagementType];
    }

    [dictionary setObject:v32 forKey:@"engagementType"];

    v18 = self->_has;
    if ((*&v18 & 0x800000) == 0)
    {
LABEL_22:
      if ((*&v18 & 0x80) == 0)
      {
        goto LABEL_23;
      }

      goto LABEL_67;
    }
  }

  else if ((*&v18 & 0x800000) == 0)
  {
    goto LABEL_22;
  }

  v41 = [MEMORY[0x277CCABB0] numberWithBool:self->_inAirplaneMode];
  [dictionary setObject:v41 forKey:@"inAirplaneMode"];

  v18 = self->_has;
  if ((*&v18 & 0x80) == 0)
  {
LABEL_23:
    if ((*&v18 & 0x1000000) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_68;
  }

LABEL_67:
  v42 = [MEMORY[0x277CCABB0] numberWithInt:self->_intentDonationDelay];
  [dictionary setObject:v42 forKey:@"intentDonationDelay"];

  v18 = self->_has;
  if ((*&v18 & 0x1000000) == 0)
  {
LABEL_24:
    if ((*&v18 & 0x400) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_69;
  }

LABEL_68:
  v43 = [MEMORY[0x277CCABB0] numberWithBool:self->_isInternalBuild];
  [dictionary setObject:v43 forKey:@"isInternalBuild"];

  v18 = self->_has;
  if ((*&v18 & 0x400) == 0)
  {
LABEL_25:
    if ((*&v18 & 0x800) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_70;
  }

LABEL_69:
  v44 = [MEMORY[0x277CCABB0] numberWithInt:self->_logType];
  [dictionary setObject:v44 forKey:@"logType"];

  v18 = self->_has;
  if ((*&v18 & 0x800) == 0)
  {
LABEL_26:
    if ((*&v18 & 0x2000) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_71;
  }

LABEL_70:
  v45 = [MEMORY[0x277CCABB0] numberWithInt:self->_predictionAge];
  [dictionary setObject:v45 forKey:@"predictionAge"];

  v18 = self->_has;
  if ((*&v18 & 0x2000) == 0)
  {
LABEL_27:
    if ((*&v18 & 0x4000) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_72;
  }

LABEL_71:
  v46 = [MEMORY[0x277CCABB0] numberWithInt:self->_timeOfDayInterval];
  [dictionary setObject:v46 forKey:@"timeOfDayInterval"];

  v18 = self->_has;
  if ((*&v18 & 0x4000) == 0)
  {
LABEL_28:
    if ((*&v18 & 0x10000) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_73;
  }

LABEL_72:
  v47 = [MEMORY[0x277CCABB0] numberWithInt:self->_totalAppActionAirplaneModeLaunches];
  [dictionary setObject:v47 forKey:@"totalAppActionAirplaneModeLaunches"];

  v18 = self->_has;
  if ((*&v18 & 0x10000) == 0)
  {
LABEL_29:
    if ((*&v18 & 0x80000) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_74;
  }

LABEL_73:
  v48 = [MEMORY[0x277CCABB0] numberWithInt:self->_totalAppActionCurrentDayOfWeekLaunches];
  [dictionary setObject:v48 forKey:@"totalAppActionCurrentDayOfWeekLaunches"];

  v18 = self->_has;
  if ((*&v18 & 0x80000) == 0)
  {
LABEL_30:
    if ((*&v18 & 0x200000) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_75;
  }

LABEL_74:
  v49 = [MEMORY[0x277CCABB0] numberWithInt:self->_totalAppForAllActionsAirplaneModeLaunches];
  [dictionary setObject:v49 forKey:@"totalAppForAllActionsAirplaneModeLaunches"];

  v18 = self->_has;
  if ((*&v18 & 0x200000) == 0)
  {
LABEL_31:
    if ((*&v18 & 0x400000) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_76;
  }

LABEL_75:
  v50 = [MEMORY[0x277CCABB0] numberWithInt:self->_totalAppForAllActionsCurrentDayOfWeekLaunches];
  [dictionary setObject:v50 forKey:@"totalAppForAllActionsCurrentDayOfWeekLaunches"];

  v18 = self->_has;
  if ((*&v18 & 0x400000) == 0)
  {
LABEL_32:
    if ((*&v18 & 0x1000) == 0)
    {
      goto LABEL_34;
    }

    goto LABEL_33;
  }

LABEL_76:
  v51 = [MEMORY[0x277CCABB0] numberWithInt:self->_uiFeedbackDelay];
  [dictionary setObject:v51 forKey:@"uiFeedbackDelay"];

  if ((*&self->_has & 0x1000) != 0)
  {
LABEL_33:
    v19 = [MEMORY[0x277CCABB0] numberWithInt:self->_sessionLogVersion];
    [dictionary setObject:v19 forKey:@"session_log_version"];
  }

LABEL_34:
  abGroup = self->_abGroup;
  if (abGroup)
  {
    [dictionary setObject:abGroup forKey:@"abGroup"];
  }

  v21 = self->_has;
  if ((*&v21 & 4) != 0)
  {
    v33 = [MEMORY[0x277CCABB0] numberWithInt:self->_appForAllActionsCoreMotionCurrentMotionLaunches];
    [dictionary setObject:v33 forKey:@"appForAllActionsCoreMotionCurrentMotionLaunches"];

    v21 = self->_has;
    if ((*&v21 & 0x100) == 0)
    {
LABEL_38:
      if ((*&v21 & 0x200) == 0)
      {
        goto LABEL_39;
      }

      goto LABEL_55;
    }
  }

  else if ((*&v21 & 0x100) == 0)
  {
    goto LABEL_38;
  }

  v34 = [MEMORY[0x277CCABB0] numberWithInt:self->_locationDistanceFromHome];
  [dictionary setObject:v34 forKey:@"locationDistanceFromHome"];

  v21 = self->_has;
  if ((*&v21 & 0x200) == 0)
  {
LABEL_39:
    if ((*&v21 & 0x20000) == 0)
    {
      goto LABEL_40;
    }

    goto LABEL_56;
  }

LABEL_55:
  v35 = [MEMORY[0x277CCABB0] numberWithInt:self->_locationDistanceFromWork];
  [dictionary setObject:v35 forKey:@"locationDistanceFromWork"];

  v21 = self->_has;
  if ((*&v21 & 0x20000) == 0)
  {
LABEL_40:
    if ((*&v21 & 0x40000) == 0)
    {
      goto LABEL_41;
    }

    goto LABEL_57;
  }

LABEL_56:
  v36 = [MEMORY[0x277CCABB0] numberWithInt:self->_totalAppActionTimeOfDayLaunches];
  [dictionary setObject:v36 forKey:@"totalAppActionTimeOfDayLaunches"];

  v21 = self->_has;
  if ((*&v21 & 0x40000) == 0)
  {
LABEL_41:
    if ((*&v21 & 0x8000) == 0)
    {
      goto LABEL_42;
    }

    goto LABEL_58;
  }

LABEL_57:
  v37 = [MEMORY[0x277CCABB0] numberWithInt:self->_totalAppForAllActionTimeOfDayLaunches];
  [dictionary setObject:v37 forKey:@"totalAppForAllActionTimeOfDayLaunches"];

  v21 = self->_has;
  if ((*&v21 & 0x8000) == 0)
  {
LABEL_42:
    if ((*&v21 & 0x100000) == 0)
    {
      goto LABEL_44;
    }

    goto LABEL_43;
  }

LABEL_58:
  v38 = [MEMORY[0x277CCABB0] numberWithInt:self->_totalAppActionCoarseTimeOfDayLaunches];
  [dictionary setObject:v38 forKey:@"totalAppActionCoarseTimeOfDayLaunches"];

  if ((*&self->_has & 0x100000) != 0)
  {
LABEL_43:
    v22 = [MEMORY[0x277CCABB0] numberWithInt:self->_totalAppForAllActionsCoarseTimeOfDayLaunches];
    [dictionary setObject:v22 forKey:@"totalAppForAllActionsCoarseTimeOfDayLaunches"];
  }

LABEL_44:
  appActionSequence = self->_appActionSequence;
  if (appActionSequence)
  {
    dictionaryRepresentation3 = [(AWDProactiveAppPredictionAppActionSequence *)appActionSequence dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation3 forKey:@"appActionSequence"];
  }

  sessionId = self->_sessionId;
  if (sessionId)
  {
    [dictionary setObject:sessionId forKey:@"sessionId"];
  }

  v26 = dictionary;

  v27 = *MEMORY[0x277D85DE8];
  return dictionary;
}

- (void)writeTo:(id)to
{
  v47 = *MEMORY[0x277D85DE8];
  toCopy = to;
  if (*&self->_has)
  {
    timestamp = self->_timestamp;
    PBDataWriterWriteUint64Field();
  }

  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  v6 = self->_actionDatas;
  v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v42 objects:v46 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v43;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v43 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v42 + 1) + 8 * i);
        PBDataWriterWriteSubmessage();
      }

      v8 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v42 objects:v46 count:16];
    }

    while (v8);
  }

  if ((*&self->_has & 2) != 0)
  {
    appActionCoreMotionCurrentMotionLaunches = self->_appActionCoreMotionCurrentMotionLaunches;
    PBDataWriterWriteInt32Field();
  }

  if (self->_appSequence)
  {
    PBDataWriterWriteSubmessage();
  }

  has = self->_has;
  if ((*&has & 8) != 0)
  {
    consumerSubType = self->_consumerSubType;
    PBDataWriterWriteInt32Field();
    has = self->_has;
    if ((*&has & 0x10) == 0)
    {
LABEL_16:
      if ((*&has & 0x20) == 0)
      {
        goto LABEL_18;
      }

      goto LABEL_17;
    }
  }

  else if ((*&has & 0x10) == 0)
  {
    goto LABEL_16;
  }

  currentLOIType = self->_currentLOIType;
  PBDataWriterWriteInt32Field();
  if ((*&self->_has & 0x20) != 0)
  {
LABEL_17:
    dayOfWeek = self->_dayOfWeek;
    PBDataWriterWriteInt32Field();
  }

LABEL_18:
  if (self->_engagedActionCacheIndices.count)
  {
    v15 = 0;
    do
    {
      v16 = self->_engagedActionCacheIndices.list[v15];
      PBDataWriterWriteInt32Field();
      ++v15;
    }

    while (v15 < self->_engagedActionCacheIndices.count);
  }

  v17 = self->_has;
  if ((*&v17 & 0x40) != 0)
  {
    engagementType = self->_engagementType;
    PBDataWriterWriteInt32Field();
    v17 = self->_has;
    if ((*&v17 & 0x800000) == 0)
    {
LABEL_23:
      if ((*&v17 & 0x80) == 0)
      {
        goto LABEL_24;
      }

      goto LABEL_55;
    }
  }

  else if ((*&v17 & 0x800000) == 0)
  {
    goto LABEL_23;
  }

  inAirplaneMode = self->_inAirplaneMode;
  PBDataWriterWriteBOOLField();
  v17 = self->_has;
  if ((*&v17 & 0x80) == 0)
  {
LABEL_24:
    if ((*&v17 & 0x1000000) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_56;
  }

LABEL_55:
  intentDonationDelay = self->_intentDonationDelay;
  PBDataWriterWriteInt32Field();
  v17 = self->_has;
  if ((*&v17 & 0x1000000) == 0)
  {
LABEL_25:
    if ((*&v17 & 0x400) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_57;
  }

LABEL_56:
  isInternalBuild = self->_isInternalBuild;
  PBDataWriterWriteBOOLField();
  v17 = self->_has;
  if ((*&v17 & 0x400) == 0)
  {
LABEL_26:
    if ((*&v17 & 0x800) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_58;
  }

LABEL_57:
  logType = self->_logType;
  PBDataWriterWriteInt32Field();
  v17 = self->_has;
  if ((*&v17 & 0x800) == 0)
  {
LABEL_27:
    if ((*&v17 & 0x2000) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_59;
  }

LABEL_58:
  predictionAge = self->_predictionAge;
  PBDataWriterWriteInt32Field();
  v17 = self->_has;
  if ((*&v17 & 0x2000) == 0)
  {
LABEL_28:
    if ((*&v17 & 0x4000) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_60;
  }

LABEL_59:
  timeOfDayInterval = self->_timeOfDayInterval;
  PBDataWriterWriteInt32Field();
  v17 = self->_has;
  if ((*&v17 & 0x4000) == 0)
  {
LABEL_29:
    if ((*&v17 & 0x10000) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_61;
  }

LABEL_60:
  totalAppActionAirplaneModeLaunches = self->_totalAppActionAirplaneModeLaunches;
  PBDataWriterWriteInt32Field();
  v17 = self->_has;
  if ((*&v17 & 0x10000) == 0)
  {
LABEL_30:
    if ((*&v17 & 0x80000) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_62;
  }

LABEL_61:
  totalAppActionCurrentDayOfWeekLaunches = self->_totalAppActionCurrentDayOfWeekLaunches;
  PBDataWriterWriteInt32Field();
  v17 = self->_has;
  if ((*&v17 & 0x80000) == 0)
  {
LABEL_31:
    if ((*&v17 & 0x200000) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_63;
  }

LABEL_62:
  totalAppForAllActionsAirplaneModeLaunches = self->_totalAppForAllActionsAirplaneModeLaunches;
  PBDataWriterWriteInt32Field();
  v17 = self->_has;
  if ((*&v17 & 0x200000) == 0)
  {
LABEL_32:
    if ((*&v17 & 0x400000) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_64;
  }

LABEL_63:
  totalAppForAllActionsCurrentDayOfWeekLaunches = self->_totalAppForAllActionsCurrentDayOfWeekLaunches;
  PBDataWriterWriteInt32Field();
  v17 = self->_has;
  if ((*&v17 & 0x400000) == 0)
  {
LABEL_33:
    if ((*&v17 & 0x1000) == 0)
    {
      goto LABEL_35;
    }

    goto LABEL_34;
  }

LABEL_64:
  uiFeedbackDelay = self->_uiFeedbackDelay;
  PBDataWriterWriteInt32Field();
  if ((*&self->_has & 0x1000) != 0)
  {
LABEL_34:
    sessionLogVersion = self->_sessionLogVersion;
    PBDataWriterWriteInt32Field();
  }

LABEL_35:
  if (self->_abGroup)
  {
    PBDataWriterWriteStringField();
  }

  v19 = self->_has;
  if ((*&v19 & 4) != 0)
  {
    appForAllActionsCoreMotionCurrentMotionLaunches = self->_appForAllActionsCoreMotionCurrentMotionLaunches;
    PBDataWriterWriteInt32Field();
    v19 = self->_has;
    if ((*&v19 & 0x100) == 0)
    {
LABEL_39:
      if ((*&v19 & 0x200) == 0)
      {
        goto LABEL_40;
      }

      goto LABEL_68;
    }
  }

  else if ((*&v19 & 0x100) == 0)
  {
    goto LABEL_39;
  }

  locationDistanceFromHome = self->_locationDistanceFromHome;
  PBDataWriterWriteInt32Field();
  v19 = self->_has;
  if ((*&v19 & 0x200) == 0)
  {
LABEL_40:
    if ((*&v19 & 0x20000) == 0)
    {
      goto LABEL_41;
    }

    goto LABEL_69;
  }

LABEL_68:
  locationDistanceFromWork = self->_locationDistanceFromWork;
  PBDataWriterWriteInt32Field();
  v19 = self->_has;
  if ((*&v19 & 0x20000) == 0)
  {
LABEL_41:
    if ((*&v19 & 0x40000) == 0)
    {
      goto LABEL_42;
    }

    goto LABEL_70;
  }

LABEL_69:
  totalAppActionTimeOfDayLaunches = self->_totalAppActionTimeOfDayLaunches;
  PBDataWriterWriteInt32Field();
  v19 = self->_has;
  if ((*&v19 & 0x40000) == 0)
  {
LABEL_42:
    if ((*&v19 & 0x8000) == 0)
    {
      goto LABEL_43;
    }

    goto LABEL_71;
  }

LABEL_70:
  totalAppForAllActionTimeOfDayLaunches = self->_totalAppForAllActionTimeOfDayLaunches;
  PBDataWriterWriteInt32Field();
  v19 = self->_has;
  if ((*&v19 & 0x8000) == 0)
  {
LABEL_43:
    if ((*&v19 & 0x100000) == 0)
    {
      goto LABEL_45;
    }

    goto LABEL_44;
  }

LABEL_71:
  totalAppActionCoarseTimeOfDayLaunches = self->_totalAppActionCoarseTimeOfDayLaunches;
  PBDataWriterWriteInt32Field();
  if ((*&self->_has & 0x100000) != 0)
  {
LABEL_44:
    totalAppForAllActionsCoarseTimeOfDayLaunches = self->_totalAppForAllActionsCoarseTimeOfDayLaunches;
    PBDataWriterWriteInt32Field();
  }

LABEL_45:
  if (self->_appActionSequence)
  {
    PBDataWriterWriteSubmessage();
  }

  if (self->_sessionId)
  {
    PBDataWriterWriteStringField();
  }

  v21 = *MEMORY[0x277D85DE8];
}

- (void)copyTo:(id)to
{
  toCopy = to;
  if (*&self->_has)
  {
    toCopy[4] = self->_timestamp;
    *(toCopy + 46) |= 1u;
  }

  v17 = toCopy;
  if ([(AWDProactiveAppPredictionIntentPredictionSession *)self actionDatasCount])
  {
    [v17 clearActionDatas];
    actionDatasCount = [(AWDProactiveAppPredictionIntentPredictionSession *)self actionDatasCount];
    if (actionDatasCount)
    {
      v6 = actionDatasCount;
      for (i = 0; i != v6; ++i)
      {
        v8 = [(AWDProactiveAppPredictionIntentPredictionSession *)self actionDataAtIndex:i];
        [v17 addActionData:v8];
      }
    }
  }

  v9 = v17;
  if ((*&self->_has & 2) != 0)
  {
    *(v17 + 14) = self->_appActionCoreMotionCurrentMotionLaunches;
    *(v17 + 46) |= 2u;
  }

  if (self->_appSequence)
  {
    [v17 setAppSequence:?];
    v9 = v17;
  }

  has = self->_has;
  if ((*&has & 8) == 0)
  {
    if ((*&has & 0x10) == 0)
    {
      goto LABEL_13;
    }

LABEL_51:
    v9[23] = self->_currentLOIType;
    v9[46] |= 0x10u;
    if ((*&self->_has & 0x20) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

  v9[22] = self->_consumerSubType;
  v9[46] |= 8u;
  has = self->_has;
  if ((*&has & 0x10) != 0)
  {
    goto LABEL_51;
  }

LABEL_13:
  if ((*&has & 0x20) != 0)
  {
LABEL_14:
    v9[24] = self->_dayOfWeek;
    v9[46] |= 0x20u;
  }

LABEL_15:
  if ([(AWDProactiveAppPredictionIntentPredictionSession *)self engagedActionCacheIndicesCount])
  {
    [v17 clearEngagedActionCacheIndices];
    engagedActionCacheIndicesCount = [(AWDProactiveAppPredictionIntentPredictionSession *)self engagedActionCacheIndicesCount];
    if (engagedActionCacheIndicesCount)
    {
      v12 = engagedActionCacheIndicesCount;
      for (j = 0; j != v12; ++j)
      {
        [v17 addEngagedActionCacheIndices:{-[AWDProactiveAppPredictionIntentPredictionSession engagedActionCacheIndicesAtIndex:](self, "engagedActionCacheIndicesAtIndex:", j)}];
      }
    }
  }

  v14 = self->_has;
  v15 = v17;
  if ((*&v14 & 0x40) != 0)
  {
    *(v17 + 25) = self->_engagementType;
    *(v17 + 46) |= 0x40u;
    v14 = self->_has;
    if ((*&v14 & 0x800000) == 0)
    {
LABEL_21:
      if ((*&v14 & 0x80) == 0)
      {
        goto LABEL_22;
      }

      goto LABEL_55;
    }
  }

  else if ((*&v14 & 0x800000) == 0)
  {
    goto LABEL_21;
  }

  *(v17 + 180) = self->_inAirplaneMode;
  *(v17 + 46) |= 0x800000u;
  v14 = self->_has;
  if ((*&v14 & 0x80) == 0)
  {
LABEL_22:
    if ((*&v14 & 0x1000000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_56;
  }

LABEL_55:
  *(v17 + 26) = self->_intentDonationDelay;
  *(v17 + 46) |= 0x80u;
  v14 = self->_has;
  if ((*&v14 & 0x1000000) == 0)
  {
LABEL_23:
    if ((*&v14 & 0x400) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_57;
  }

LABEL_56:
  *(v17 + 181) = self->_isInternalBuild;
  *(v17 + 46) |= 0x1000000u;
  v14 = self->_has;
  if ((*&v14 & 0x400) == 0)
  {
LABEL_24:
    if ((*&v14 & 0x800) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_58;
  }

LABEL_57:
  *(v17 + 29) = self->_logType;
  *(v17 + 46) |= 0x400u;
  v14 = self->_has;
  if ((*&v14 & 0x800) == 0)
  {
LABEL_25:
    if ((*&v14 & 0x2000) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_59;
  }

LABEL_58:
  *(v17 + 30) = self->_predictionAge;
  *(v17 + 46) |= 0x800u;
  v14 = self->_has;
  if ((*&v14 & 0x2000) == 0)
  {
LABEL_26:
    if ((*&v14 & 0x4000) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_60;
  }

LABEL_59:
  *(v17 + 35) = self->_timeOfDayInterval;
  *(v17 + 46) |= 0x2000u;
  v14 = self->_has;
  if ((*&v14 & 0x4000) == 0)
  {
LABEL_27:
    if ((*&v14 & 0x10000) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_61;
  }

LABEL_60:
  *(v17 + 36) = self->_totalAppActionAirplaneModeLaunches;
  *(v17 + 46) |= 0x4000u;
  v14 = self->_has;
  if ((*&v14 & 0x10000) == 0)
  {
LABEL_28:
    if ((*&v14 & 0x80000) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_62;
  }

LABEL_61:
  *(v17 + 38) = self->_totalAppActionCurrentDayOfWeekLaunches;
  *(v17 + 46) |= 0x10000u;
  v14 = self->_has;
  if ((*&v14 & 0x80000) == 0)
  {
LABEL_29:
    if ((*&v14 & 0x200000) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_63;
  }

LABEL_62:
  *(v17 + 41) = self->_totalAppForAllActionsAirplaneModeLaunches;
  *(v17 + 46) |= 0x80000u;
  v14 = self->_has;
  if ((*&v14 & 0x200000) == 0)
  {
LABEL_30:
    if ((*&v14 & 0x400000) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_64;
  }

LABEL_63:
  *(v17 + 43) = self->_totalAppForAllActionsCurrentDayOfWeekLaunches;
  *(v17 + 46) |= 0x200000u;
  v14 = self->_has;
  if ((*&v14 & 0x400000) == 0)
  {
LABEL_31:
    if ((*&v14 & 0x1000) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_32;
  }

LABEL_64:
  *(v17 + 44) = self->_uiFeedbackDelay;
  *(v17 + 46) |= 0x400000u;
  if ((*&self->_has & 0x1000) != 0)
  {
LABEL_32:
    *(v17 + 34) = self->_sessionLogVersion;
    *(v17 + 46) |= 0x1000u;
  }

LABEL_33:
  if (self->_abGroup)
  {
    [v17 setAbGroup:?];
    v15 = v17;
  }

  v16 = self->_has;
  if ((*&v16 & 4) != 0)
  {
    v15[18] = self->_appForAllActionsCoreMotionCurrentMotionLaunches;
    v15[46] |= 4u;
    v16 = self->_has;
    if ((*&v16 & 0x100) == 0)
    {
LABEL_37:
      if ((*&v16 & 0x200) == 0)
      {
        goto LABEL_38;
      }

      goto LABEL_68;
    }
  }

  else if ((*&v16 & 0x100) == 0)
  {
    goto LABEL_37;
  }

  v15[27] = self->_locationDistanceFromHome;
  v15[46] |= 0x100u;
  v16 = self->_has;
  if ((*&v16 & 0x200) == 0)
  {
LABEL_38:
    if ((*&v16 & 0x20000) == 0)
    {
      goto LABEL_39;
    }

    goto LABEL_69;
  }

LABEL_68:
  v15[28] = self->_locationDistanceFromWork;
  v15[46] |= 0x200u;
  v16 = self->_has;
  if ((*&v16 & 0x20000) == 0)
  {
LABEL_39:
    if ((*&v16 & 0x40000) == 0)
    {
      goto LABEL_40;
    }

    goto LABEL_70;
  }

LABEL_69:
  v15[39] = self->_totalAppActionTimeOfDayLaunches;
  v15[46] |= 0x20000u;
  v16 = self->_has;
  if ((*&v16 & 0x40000) == 0)
  {
LABEL_40:
    if ((*&v16 & 0x8000) == 0)
    {
      goto LABEL_41;
    }

    goto LABEL_71;
  }

LABEL_70:
  v15[40] = self->_totalAppForAllActionTimeOfDayLaunches;
  v15[46] |= 0x40000u;
  v16 = self->_has;
  if ((*&v16 & 0x8000) == 0)
  {
LABEL_41:
    if ((*&v16 & 0x100000) == 0)
    {
      goto LABEL_43;
    }

    goto LABEL_42;
  }

LABEL_71:
  v15[37] = self->_totalAppActionCoarseTimeOfDayLaunches;
  v15[46] |= 0x8000u;
  if ((*&self->_has & 0x100000) != 0)
  {
LABEL_42:
    v15[42] = self->_totalAppForAllActionsCoarseTimeOfDayLaunches;
    v15[46] |= 0x100000u;
  }

LABEL_43:
  if (self->_appActionSequence)
  {
    [v17 setAppActionSequence:?];
    v15 = v17;
  }

  if (self->_sessionId)
  {
    [v17 setSessionId:?];
    v15 = v17;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v31 = *MEMORY[0x277D85DE8];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = v5;
  if (*&self->_has)
  {
    *(v5 + 32) = self->_timestamp;
    *(v5 + 184) |= 1u;
  }

  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v7 = self->_actionDatas;
  v8 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v26 objects:v30 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v27;
    do
    {
      v11 = 0;
      do
      {
        if (*v27 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = [*(*(&v26 + 1) + 8 * v11) copyWithZone:{zone, v26}];
        [v6 addActionData:v12];

        ++v11;
      }

      while (v9 != v11);
      v9 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v26 objects:v30 count:16];
    }

    while (v9);
  }

  if ((*&self->_has & 2) != 0)
  {
    *(v6 + 56) = self->_appActionCoreMotionCurrentMotionLaunches;
    *(v6 + 184) |= 2u;
  }

  v13 = [(AWDProactiveAppPredictionAppLaunchSequence *)self->_appSequence copyWithZone:zone, v26];
  v14 = *(v6 + 80);
  *(v6 + 80) = v13;

  has = self->_has;
  if ((*&has & 8) != 0)
  {
    *(v6 + 88) = self->_consumerSubType;
    *(v6 + 184) |= 8u;
    has = self->_has;
    if ((*&has & 0x10) == 0)
    {
LABEL_14:
      if ((*&has & 0x20) == 0)
      {
        goto LABEL_16;
      }

      goto LABEL_15;
    }
  }

  else if ((*&has & 0x10) == 0)
  {
    goto LABEL_14;
  }

  *(v6 + 92) = self->_currentLOIType;
  *(v6 + 184) |= 0x10u;
  if ((*&self->_has & 0x20) != 0)
  {
LABEL_15:
    *(v6 + 96) = self->_dayOfWeek;
    *(v6 + 184) |= 0x20u;
  }

LABEL_16:
  PBRepeatedInt32Copy();
  v16 = self->_has;
  if ((*&v16 & 0x40) != 0)
  {
    *(v6 + 100) = self->_engagementType;
    *(v6 + 184) |= 0x40u;
    v16 = self->_has;
    if ((*&v16 & 0x800000) == 0)
    {
LABEL_18:
      if ((*&v16 & 0x80) == 0)
      {
        goto LABEL_19;
      }

      goto LABEL_44;
    }
  }

  else if ((*&v16 & 0x800000) == 0)
  {
    goto LABEL_18;
  }

  *(v6 + 180) = self->_inAirplaneMode;
  *(v6 + 184) |= 0x800000u;
  v16 = self->_has;
  if ((*&v16 & 0x80) == 0)
  {
LABEL_19:
    if ((*&v16 & 0x1000000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_45;
  }

LABEL_44:
  *(v6 + 104) = self->_intentDonationDelay;
  *(v6 + 184) |= 0x80u;
  v16 = self->_has;
  if ((*&v16 & 0x1000000) == 0)
  {
LABEL_20:
    if ((*&v16 & 0x400) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_46;
  }

LABEL_45:
  *(v6 + 181) = self->_isInternalBuild;
  *(v6 + 184) |= 0x1000000u;
  v16 = self->_has;
  if ((*&v16 & 0x400) == 0)
  {
LABEL_21:
    if ((*&v16 & 0x800) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_47;
  }

LABEL_46:
  *(v6 + 116) = self->_logType;
  *(v6 + 184) |= 0x400u;
  v16 = self->_has;
  if ((*&v16 & 0x800) == 0)
  {
LABEL_22:
    if ((*&v16 & 0x2000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_48;
  }

LABEL_47:
  *(v6 + 120) = self->_predictionAge;
  *(v6 + 184) |= 0x800u;
  v16 = self->_has;
  if ((*&v16 & 0x2000) == 0)
  {
LABEL_23:
    if ((*&v16 & 0x4000) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_49;
  }

LABEL_48:
  *(v6 + 140) = self->_timeOfDayInterval;
  *(v6 + 184) |= 0x2000u;
  v16 = self->_has;
  if ((*&v16 & 0x4000) == 0)
  {
LABEL_24:
    if ((*&v16 & 0x10000) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_50;
  }

LABEL_49:
  *(v6 + 144) = self->_totalAppActionAirplaneModeLaunches;
  *(v6 + 184) |= 0x4000u;
  v16 = self->_has;
  if ((*&v16 & 0x10000) == 0)
  {
LABEL_25:
    if ((*&v16 & 0x80000) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_51;
  }

LABEL_50:
  *(v6 + 152) = self->_totalAppActionCurrentDayOfWeekLaunches;
  *(v6 + 184) |= 0x10000u;
  v16 = self->_has;
  if ((*&v16 & 0x80000) == 0)
  {
LABEL_26:
    if ((*&v16 & 0x200000) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_52;
  }

LABEL_51:
  *(v6 + 164) = self->_totalAppForAllActionsAirplaneModeLaunches;
  *(v6 + 184) |= 0x80000u;
  v16 = self->_has;
  if ((*&v16 & 0x200000) == 0)
  {
LABEL_27:
    if ((*&v16 & 0x400000) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_53;
  }

LABEL_52:
  *(v6 + 172) = self->_totalAppForAllActionsCurrentDayOfWeekLaunches;
  *(v6 + 184) |= 0x200000u;
  v16 = self->_has;
  if ((*&v16 & 0x400000) == 0)
  {
LABEL_28:
    if ((*&v16 & 0x1000) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_29;
  }

LABEL_53:
  *(v6 + 176) = self->_uiFeedbackDelay;
  *(v6 + 184) |= 0x400000u;
  if ((*&self->_has & 0x1000) != 0)
  {
LABEL_29:
    *(v6 + 136) = self->_sessionLogVersion;
    *(v6 + 184) |= 0x1000u;
  }

LABEL_30:
  v17 = [(NSString *)self->_abGroup copyWithZone:zone];
  v18 = *(v6 + 40);
  *(v6 + 40) = v17;

  v19 = self->_has;
  if ((*&v19 & 4) != 0)
  {
    *(v6 + 72) = self->_appForAllActionsCoreMotionCurrentMotionLaunches;
    *(v6 + 184) |= 4u;
    v19 = self->_has;
    if ((*&v19 & 0x100) == 0)
    {
LABEL_32:
      if ((*&v19 & 0x200) == 0)
      {
        goto LABEL_33;
      }

      goto LABEL_57;
    }
  }

  else if ((*&v19 & 0x100) == 0)
  {
    goto LABEL_32;
  }

  *(v6 + 108) = self->_locationDistanceFromHome;
  *(v6 + 184) |= 0x100u;
  v19 = self->_has;
  if ((*&v19 & 0x200) == 0)
  {
LABEL_33:
    if ((*&v19 & 0x20000) == 0)
    {
      goto LABEL_34;
    }

    goto LABEL_58;
  }

LABEL_57:
  *(v6 + 112) = self->_locationDistanceFromWork;
  *(v6 + 184) |= 0x200u;
  v19 = self->_has;
  if ((*&v19 & 0x20000) == 0)
  {
LABEL_34:
    if ((*&v19 & 0x40000) == 0)
    {
      goto LABEL_35;
    }

    goto LABEL_59;
  }

LABEL_58:
  *(v6 + 156) = self->_totalAppActionTimeOfDayLaunches;
  *(v6 + 184) |= 0x20000u;
  v19 = self->_has;
  if ((*&v19 & 0x40000) == 0)
  {
LABEL_35:
    if ((*&v19 & 0x8000) == 0)
    {
      goto LABEL_36;
    }

LABEL_60:
    *(v6 + 148) = self->_totalAppActionCoarseTimeOfDayLaunches;
    *(v6 + 184) |= 0x8000u;
    if ((*&self->_has & 0x100000) == 0)
    {
      goto LABEL_38;
    }

    goto LABEL_37;
  }

LABEL_59:
  *(v6 + 160) = self->_totalAppForAllActionTimeOfDayLaunches;
  *(v6 + 184) |= 0x40000u;
  v19 = self->_has;
  if ((*&v19 & 0x8000) != 0)
  {
    goto LABEL_60;
  }

LABEL_36:
  if ((*&v19 & 0x100000) != 0)
  {
LABEL_37:
    *(v6 + 168) = self->_totalAppForAllActionsCoarseTimeOfDayLaunches;
    *(v6 + 184) |= 0x100000u;
  }

LABEL_38:
  v20 = [(AWDProactiveAppPredictionAppActionSequence *)self->_appActionSequence copyWithZone:zone];
  v21 = *(v6 + 64);
  *(v6 + 64) = v20;

  v22 = [(NSString *)self->_sessionId copyWithZone:zone];
  v23 = *(v6 + 128);
  *(v6 + 128) = v22;

  v24 = *MEMORY[0x277D85DE8];
  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_147;
  }

  has = self->_has;
  v6 = *(equalCopy + 46);
  if (*&has)
  {
    if ((v6 & 1) == 0 || self->_timestamp != *(equalCopy + 4))
    {
      goto LABEL_147;
    }
  }

  else if (v6)
  {
    goto LABEL_147;
  }

  actionDatas = self->_actionDatas;
  if (actionDatas | *(equalCopy + 6))
  {
    if (![(NSMutableArray *)actionDatas isEqual:?])
    {
      goto LABEL_147;
    }

    has = self->_has;
  }

  v8 = *(equalCopy + 46);
  if ((*&has & 2) != 0)
  {
    if ((v8 & 2) == 0 || self->_appActionCoreMotionCurrentMotionLaunches != *(equalCopy + 14))
    {
      goto LABEL_147;
    }
  }

  else if ((v8 & 2) != 0)
  {
    goto LABEL_147;
  }

  appSequence = self->_appSequence;
  if (appSequence | *(equalCopy + 10))
  {
    if (![(AWDProactiveAppPredictionAppLaunchSequence *)appSequence isEqual:?])
    {
      goto LABEL_147;
    }

    has = self->_has;
  }

  v10 = *(equalCopy + 46);
  if ((*&has & 8) != 0)
  {
    if ((v10 & 8) == 0 || self->_consumerSubType != *(equalCopy + 22))
    {
      goto LABEL_147;
    }
  }

  else if ((v10 & 8) != 0)
  {
    goto LABEL_147;
  }

  if ((*&has & 0x10) != 0)
  {
    if ((v10 & 0x10) == 0 || self->_currentLOIType != *(equalCopy + 23))
    {
      goto LABEL_147;
    }
  }

  else if ((v10 & 0x10) != 0)
  {
    goto LABEL_147;
  }

  if ((*&has & 0x20) != 0)
  {
    if ((v10 & 0x20) == 0 || self->_dayOfWeek != *(equalCopy + 24))
    {
      goto LABEL_147;
    }
  }

  else if ((v10 & 0x20) != 0)
  {
    goto LABEL_147;
  }

  if (!PBRepeatedInt32IsEqual())
  {
LABEL_147:
    v19 = 0;
    goto LABEL_148;
  }

  v11 = self->_has;
  v12 = *(equalCopy + 46);
  if ((*&v11 & 0x40) != 0)
  {
    if ((v12 & 0x40) == 0 || self->_engagementType != *(equalCopy + 25))
    {
      goto LABEL_147;
    }
  }

  else if ((v12 & 0x40) != 0)
  {
    goto LABEL_147;
  }

  if ((*&v11 & 0x800000) != 0)
  {
    if ((v12 & 0x800000) == 0)
    {
      goto LABEL_147;
    }

    v13 = *(equalCopy + 180);
    if (self->_inAirplaneMode)
    {
      if ((*(equalCopy + 180) & 1) == 0)
      {
        goto LABEL_147;
      }
    }

    else if (*(equalCopy + 180))
    {
      goto LABEL_147;
    }
  }

  else if ((v12 & 0x800000) != 0)
  {
    goto LABEL_147;
  }

  if ((*&v11 & 0x80) != 0)
  {
    if ((v12 & 0x80) == 0 || self->_intentDonationDelay != *(equalCopy + 26))
    {
      goto LABEL_147;
    }
  }

  else if ((v12 & 0x80) != 0)
  {
    goto LABEL_147;
  }

  if ((*&v11 & 0x1000000) != 0)
  {
    if ((v12 & 0x1000000) == 0)
    {
      goto LABEL_147;
    }

    v14 = *(equalCopy + 181);
    if (self->_isInternalBuild)
    {
      if ((*(equalCopy + 181) & 1) == 0)
      {
        goto LABEL_147;
      }
    }

    else if (*(equalCopy + 181))
    {
      goto LABEL_147;
    }
  }

  else if ((v12 & 0x1000000) != 0)
  {
    goto LABEL_147;
  }

  if ((*&v11 & 0x400) != 0)
  {
    if ((v12 & 0x400) == 0 || self->_logType != *(equalCopy + 29))
    {
      goto LABEL_147;
    }
  }

  else if ((v12 & 0x400) != 0)
  {
    goto LABEL_147;
  }

  if ((*&v11 & 0x800) != 0)
  {
    if ((v12 & 0x800) == 0 || self->_predictionAge != *(equalCopy + 30))
    {
      goto LABEL_147;
    }
  }

  else if ((v12 & 0x800) != 0)
  {
    goto LABEL_147;
  }

  if ((*&v11 & 0x2000) != 0)
  {
    if ((v12 & 0x2000) == 0 || self->_timeOfDayInterval != *(equalCopy + 35))
    {
      goto LABEL_147;
    }
  }

  else if ((v12 & 0x2000) != 0)
  {
    goto LABEL_147;
  }

  if ((*&v11 & 0x4000) != 0)
  {
    if ((v12 & 0x4000) == 0 || self->_totalAppActionAirplaneModeLaunches != *(equalCopy + 36))
    {
      goto LABEL_147;
    }
  }

  else if ((v12 & 0x4000) != 0)
  {
    goto LABEL_147;
  }

  if ((*&v11 & 0x10000) != 0)
  {
    if ((v12 & 0x10000) == 0 || self->_totalAppActionCurrentDayOfWeekLaunches != *(equalCopy + 38))
    {
      goto LABEL_147;
    }
  }

  else if ((v12 & 0x10000) != 0)
  {
    goto LABEL_147;
  }

  if ((*&v11 & 0x80000) != 0)
  {
    if ((v12 & 0x80000) == 0 || self->_totalAppForAllActionsAirplaneModeLaunches != *(equalCopy + 41))
    {
      goto LABEL_147;
    }
  }

  else if ((v12 & 0x80000) != 0)
  {
    goto LABEL_147;
  }

  if ((*&v11 & 0x200000) != 0)
  {
    if ((v12 & 0x200000) == 0 || self->_totalAppForAllActionsCurrentDayOfWeekLaunches != *(equalCopy + 43))
    {
      goto LABEL_147;
    }
  }

  else if ((v12 & 0x200000) != 0)
  {
    goto LABEL_147;
  }

  if ((*&v11 & 0x400000) != 0)
  {
    if ((v12 & 0x400000) == 0 || self->_uiFeedbackDelay != *(equalCopy + 44))
    {
      goto LABEL_147;
    }
  }

  else if ((v12 & 0x400000) != 0)
  {
    goto LABEL_147;
  }

  if ((*&v11 & 0x1000) != 0)
  {
    if ((v12 & 0x1000) == 0 || self->_sessionLogVersion != *(equalCopy + 34))
    {
      goto LABEL_147;
    }
  }

  else if ((v12 & 0x1000) != 0)
  {
    goto LABEL_147;
  }

  abGroup = self->_abGroup;
  if (abGroup | *(equalCopy + 5))
  {
    if ([(NSString *)abGroup isEqual:?])
    {
      v11 = self->_has;
      goto LABEL_108;
    }

    goto LABEL_147;
  }

LABEL_108:
  v16 = *(equalCopy + 46);
  if ((*&v11 & 4) != 0)
  {
    if ((v16 & 4) == 0 || self->_appForAllActionsCoreMotionCurrentMotionLaunches != *(equalCopy + 18))
    {
      goto LABEL_147;
    }
  }

  else if ((v16 & 4) != 0)
  {
    goto LABEL_147;
  }

  if ((*&v11 & 0x100) != 0)
  {
    if ((v16 & 0x100) == 0 || self->_locationDistanceFromHome != *(equalCopy + 27))
    {
      goto LABEL_147;
    }
  }

  else if ((v16 & 0x100) != 0)
  {
    goto LABEL_147;
  }

  if ((*&v11 & 0x200) != 0)
  {
    if ((v16 & 0x200) == 0 || self->_locationDistanceFromWork != *(equalCopy + 28))
    {
      goto LABEL_147;
    }
  }

  else if ((v16 & 0x200) != 0)
  {
    goto LABEL_147;
  }

  if ((*&v11 & 0x20000) != 0)
  {
    if ((v16 & 0x20000) == 0 || self->_totalAppActionTimeOfDayLaunches != *(equalCopy + 39))
    {
      goto LABEL_147;
    }
  }

  else if ((v16 & 0x20000) != 0)
  {
    goto LABEL_147;
  }

  if ((*&v11 & 0x40000) != 0)
  {
    if ((v16 & 0x40000) == 0 || self->_totalAppForAllActionTimeOfDayLaunches != *(equalCopy + 40))
    {
      goto LABEL_147;
    }
  }

  else if ((v16 & 0x40000) != 0)
  {
    goto LABEL_147;
  }

  if ((*&v11 & 0x8000) != 0)
  {
    if ((v16 & 0x8000) == 0 || self->_totalAppActionCoarseTimeOfDayLaunches != *(equalCopy + 37))
    {
      goto LABEL_147;
    }
  }

  else if ((v16 & 0x8000) != 0)
  {
    goto LABEL_147;
  }

  if ((*&v11 & 0x100000) != 0)
  {
    if ((v16 & 0x100000) == 0 || self->_totalAppForAllActionsCoarseTimeOfDayLaunches != *(equalCopy + 42))
    {
      goto LABEL_147;
    }
  }

  else if ((v16 & 0x100000) != 0)
  {
    goto LABEL_147;
  }

  appActionSequence = self->_appActionSequence;
  if (appActionSequence | *(equalCopy + 8) && ![(AWDProactiveAppPredictionAppActionSequence *)appActionSequence isEqual:?])
  {
    goto LABEL_147;
  }

  sessionId = self->_sessionId;
  if (sessionId | *(equalCopy + 16))
  {
    v19 = [(NSString *)sessionId isEqual:?];
  }

  else
  {
    v19 = 1;
  }

LABEL_148:

  return v19;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v38 = 2654435761u * self->_timestamp;
  }

  else
  {
    v38 = 0;
  }

  v37 = [(NSMutableArray *)self->_actionDatas hash];
  if ((*&self->_has & 2) != 0)
  {
    v36 = 2654435761 * self->_appActionCoreMotionCurrentMotionLaunches;
  }

  else
  {
    v36 = 0;
  }

  v35 = [(AWDProactiveAppPredictionAppLaunchSequence *)self->_appSequence hash];
  has = self->_has;
  if ((*&has & 8) == 0)
  {
    v34 = 0;
    if ((*&has & 0x10) != 0)
    {
      goto LABEL_9;
    }

LABEL_12:
    v33 = 0;
    if ((*&has & 0x20) != 0)
    {
      goto LABEL_10;
    }

    goto LABEL_13;
  }

  v34 = 2654435761 * self->_consumerSubType;
  if ((*&has & 0x10) == 0)
  {
    goto LABEL_12;
  }

LABEL_9:
  v33 = 2654435761 * self->_currentLOIType;
  if ((*&has & 0x20) != 0)
  {
LABEL_10:
    v32 = 2654435761 * self->_dayOfWeek;
    goto LABEL_14;
  }

LABEL_13:
  v32 = 0;
LABEL_14:
  v31 = PBRepeatedInt32Hash();
  v4 = self->_has;
  if ((*&v4 & 0x40) != 0)
  {
    v30 = 2654435761 * self->_engagementType;
    if ((*&v4 & 0x800000) != 0)
    {
LABEL_16:
      v29 = 2654435761 * self->_inAirplaneMode;
      if ((*&v4 & 0x80) != 0)
      {
        goto LABEL_17;
      }

      goto LABEL_30;
    }
  }

  else
  {
    v30 = 0;
    if ((*&v4 & 0x800000) != 0)
    {
      goto LABEL_16;
    }
  }

  v29 = 0;
  if ((*&v4 & 0x80) != 0)
  {
LABEL_17:
    v28 = 2654435761 * self->_intentDonationDelay;
    if ((*&v4 & 0x1000000) != 0)
    {
      goto LABEL_18;
    }

    goto LABEL_31;
  }

LABEL_30:
  v28 = 0;
  if ((*&v4 & 0x1000000) != 0)
  {
LABEL_18:
    v27 = 2654435761 * self->_isInternalBuild;
    if ((*&v4 & 0x400) != 0)
    {
      goto LABEL_19;
    }

    goto LABEL_32;
  }

LABEL_31:
  v27 = 0;
  if ((*&v4 & 0x400) != 0)
  {
LABEL_19:
    v26 = 2654435761 * self->_logType;
    if ((*&v4 & 0x800) != 0)
    {
      goto LABEL_20;
    }

    goto LABEL_33;
  }

LABEL_32:
  v26 = 0;
  if ((*&v4 & 0x800) != 0)
  {
LABEL_20:
    v24 = 2654435761 * self->_predictionAge;
    if ((*&v4 & 0x2000) != 0)
    {
      goto LABEL_21;
    }

    goto LABEL_34;
  }

LABEL_33:
  v24 = 0;
  if ((*&v4 & 0x2000) != 0)
  {
LABEL_21:
    v5 = 2654435761 * self->_timeOfDayInterval;
    if ((*&v4 & 0x4000) != 0)
    {
      goto LABEL_22;
    }

    goto LABEL_35;
  }

LABEL_34:
  v5 = 0;
  if ((*&v4 & 0x4000) != 0)
  {
LABEL_22:
    v6 = 2654435761 * self->_totalAppActionAirplaneModeLaunches;
    if ((*&v4 & 0x10000) != 0)
    {
      goto LABEL_23;
    }

    goto LABEL_36;
  }

LABEL_35:
  v6 = 0;
  if ((*&v4 & 0x10000) != 0)
  {
LABEL_23:
    v7 = 2654435761 * self->_totalAppActionCurrentDayOfWeekLaunches;
    if ((*&v4 & 0x80000) != 0)
    {
      goto LABEL_24;
    }

    goto LABEL_37;
  }

LABEL_36:
  v7 = 0;
  if ((*&v4 & 0x80000) != 0)
  {
LABEL_24:
    v8 = 2654435761 * self->_totalAppForAllActionsAirplaneModeLaunches;
    if ((*&v4 & 0x200000) != 0)
    {
      goto LABEL_25;
    }

    goto LABEL_38;
  }

LABEL_37:
  v8 = 0;
  if ((*&v4 & 0x200000) != 0)
  {
LABEL_25:
    v9 = 2654435761 * self->_totalAppForAllActionsCurrentDayOfWeekLaunches;
    if ((*&v4 & 0x400000) != 0)
    {
      goto LABEL_26;
    }

LABEL_39:
    v10 = 0;
    if ((*&v4 & 0x1000) != 0)
    {
      goto LABEL_27;
    }

    goto LABEL_40;
  }

LABEL_38:
  v9 = 0;
  if ((*&v4 & 0x400000) == 0)
  {
    goto LABEL_39;
  }

LABEL_26:
  v10 = 2654435761 * self->_uiFeedbackDelay;
  if ((*&v4 & 0x1000) != 0)
  {
LABEL_27:
    v11 = 2654435761 * self->_sessionLogVersion;
    goto LABEL_41;
  }

LABEL_40:
  v11 = 0;
LABEL_41:
  v12 = [(NSString *)self->_abGroup hash];
  v13 = self->_has;
  if ((*&v13 & 4) != 0)
  {
    v14 = 2654435761 * self->_appForAllActionsCoreMotionCurrentMotionLaunches;
    if ((*&v13 & 0x100) != 0)
    {
LABEL_43:
      v15 = 2654435761 * self->_locationDistanceFromHome;
      if ((*&v13 & 0x200) != 0)
      {
        goto LABEL_44;
      }

      goto LABEL_51;
    }
  }

  else
  {
    v14 = 0;
    if ((*&v13 & 0x100) != 0)
    {
      goto LABEL_43;
    }
  }

  v15 = 0;
  if ((*&v13 & 0x200) != 0)
  {
LABEL_44:
    v16 = 2654435761 * self->_locationDistanceFromWork;
    if ((*&v13 & 0x20000) != 0)
    {
      goto LABEL_45;
    }

    goto LABEL_52;
  }

LABEL_51:
  v16 = 0;
  if ((*&v13 & 0x20000) != 0)
  {
LABEL_45:
    v17 = 2654435761 * self->_totalAppActionTimeOfDayLaunches;
    if ((*&v13 & 0x40000) != 0)
    {
      goto LABEL_46;
    }

    goto LABEL_53;
  }

LABEL_52:
  v17 = 0;
  if ((*&v13 & 0x40000) != 0)
  {
LABEL_46:
    v18 = 2654435761 * self->_totalAppForAllActionTimeOfDayLaunches;
    if ((*&v13 & 0x8000) != 0)
    {
      goto LABEL_47;
    }

LABEL_54:
    v19 = 0;
    if ((*&v13 & 0x100000) != 0)
    {
      goto LABEL_48;
    }

LABEL_55:
    v20 = 0;
    goto LABEL_56;
  }

LABEL_53:
  v18 = 0;
  if ((*&v13 & 0x8000) == 0)
  {
    goto LABEL_54;
  }

LABEL_47:
  v19 = 2654435761 * self->_totalAppActionCoarseTimeOfDayLaunches;
  if ((*&v13 & 0x100000) == 0)
  {
    goto LABEL_55;
  }

LABEL_48:
  v20 = 2654435761 * self->_totalAppForAllActionsCoarseTimeOfDayLaunches;
LABEL_56:
  v21 = v37 ^ v38 ^ v36 ^ v35 ^ v34 ^ v33 ^ v32 ^ v31 ^ v30 ^ v29 ^ v28 ^ v27 ^ v26 ^ v25 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11 ^ v12 ^ v14 ^ v15;
  v22 = v16 ^ v17 ^ v18 ^ v19 ^ v20 ^ [(AWDProactiveAppPredictionAppActionSequence *)self->_appActionSequence hash];
  return v21 ^ v22 ^ [(NSString *)self->_sessionId hash];
}

- (void)mergeFrom:(id)from
{
  v27 = *MEMORY[0x277D85DE8];
  fromCopy = from;
  v5 = fromCopy;
  if (*(fromCopy + 184))
  {
    self->_timestamp = *(fromCopy + 4);
    *&self->_has |= 1u;
  }

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v6 = *(fromCopy + 6);
  v7 = [v6 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v23;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v23 != v9)
        {
          objc_enumerationMutation(v6);
        }

        [(AWDProactiveAppPredictionIntentPredictionSession *)self addActionData:*(*(&v22 + 1) + 8 * i), v22];
      }

      v8 = [v6 countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v8);
  }

  if ((*(v5 + 184) & 2) != 0)
  {
    self->_appActionCoreMotionCurrentMotionLaunches = *(v5 + 14);
    *&self->_has |= 2u;
  }

  appSequence = self->_appSequence;
  v12 = *(v5 + 10);
  if (appSequence)
  {
    if (v12)
    {
      [(AWDProactiveAppPredictionAppLaunchSequence *)appSequence mergeFrom:?];
    }
  }

  else if (v12)
  {
    [(AWDProactiveAppPredictionIntentPredictionSession *)self setAppSequence:?];
  }

  v13 = *(v5 + 46);
  if ((v13 & 8) != 0)
  {
    self->_consumerSubType = *(v5 + 22);
    *&self->_has |= 8u;
    v13 = *(v5 + 46);
    if ((v13 & 0x10) == 0)
    {
LABEL_19:
      if ((v13 & 0x20) == 0)
      {
        goto LABEL_21;
      }

      goto LABEL_20;
    }
  }

  else if ((v13 & 0x10) == 0)
  {
    goto LABEL_19;
  }

  self->_currentLOIType = *(v5 + 23);
  *&self->_has |= 0x10u;
  if ((*(v5 + 46) & 0x20) != 0)
  {
LABEL_20:
    self->_dayOfWeek = *(v5 + 24);
    *&self->_has |= 0x20u;
  }

LABEL_21:
  engagedActionCacheIndicesCount = [v5 engagedActionCacheIndicesCount];
  if (engagedActionCacheIndicesCount)
  {
    v15 = engagedActionCacheIndicesCount;
    for (j = 0; j != v15; ++j)
    {
      -[AWDProactiveAppPredictionIntentPredictionSession addEngagedActionCacheIndices:](self, "addEngagedActionCacheIndices:", [v5 engagedActionCacheIndicesAtIndex:j]);
    }
  }

  v17 = *(v5 + 46);
  if ((v17 & 0x40) != 0)
  {
    self->_engagementType = *(v5 + 25);
    *&self->_has |= 0x40u;
    v17 = *(v5 + 46);
    if ((v17 & 0x800000) == 0)
    {
LABEL_26:
      if ((v17 & 0x80) == 0)
      {
        goto LABEL_27;
      }

      goto LABEL_56;
    }
  }

  else if ((v17 & 0x800000) == 0)
  {
    goto LABEL_26;
  }

  self->_inAirplaneMode = *(v5 + 180);
  *&self->_has |= 0x800000u;
  v17 = *(v5 + 46);
  if ((v17 & 0x80) == 0)
  {
LABEL_27:
    if ((v17 & 0x1000000) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_57;
  }

LABEL_56:
  self->_intentDonationDelay = *(v5 + 26);
  *&self->_has |= 0x80u;
  v17 = *(v5 + 46);
  if ((v17 & 0x1000000) == 0)
  {
LABEL_28:
    if ((v17 & 0x400) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_58;
  }

LABEL_57:
  self->_isInternalBuild = *(v5 + 181);
  *&self->_has |= 0x1000000u;
  v17 = *(v5 + 46);
  if ((v17 & 0x400) == 0)
  {
LABEL_29:
    if ((v17 & 0x800) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_59;
  }

LABEL_58:
  self->_logType = *(v5 + 29);
  *&self->_has |= 0x400u;
  v17 = *(v5 + 46);
  if ((v17 & 0x800) == 0)
  {
LABEL_30:
    if ((v17 & 0x2000) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_60;
  }

LABEL_59:
  self->_predictionAge = *(v5 + 30);
  *&self->_has |= 0x800u;
  v17 = *(v5 + 46);
  if ((v17 & 0x2000) == 0)
  {
LABEL_31:
    if ((v17 & 0x4000) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_61;
  }

LABEL_60:
  self->_timeOfDayInterval = *(v5 + 35);
  *&self->_has |= 0x2000u;
  v17 = *(v5 + 46);
  if ((v17 & 0x4000) == 0)
  {
LABEL_32:
    if ((v17 & 0x10000) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_62;
  }

LABEL_61:
  self->_totalAppActionAirplaneModeLaunches = *(v5 + 36);
  *&self->_has |= 0x4000u;
  v17 = *(v5 + 46);
  if ((v17 & 0x10000) == 0)
  {
LABEL_33:
    if ((v17 & 0x80000) == 0)
    {
      goto LABEL_34;
    }

    goto LABEL_63;
  }

LABEL_62:
  self->_totalAppActionCurrentDayOfWeekLaunches = *(v5 + 38);
  *&self->_has |= 0x10000u;
  v17 = *(v5 + 46);
  if ((v17 & 0x80000) == 0)
  {
LABEL_34:
    if ((v17 & 0x200000) == 0)
    {
      goto LABEL_35;
    }

    goto LABEL_64;
  }

LABEL_63:
  self->_totalAppForAllActionsAirplaneModeLaunches = *(v5 + 41);
  *&self->_has |= 0x80000u;
  v17 = *(v5 + 46);
  if ((v17 & 0x200000) == 0)
  {
LABEL_35:
    if ((v17 & 0x400000) == 0)
    {
      goto LABEL_36;
    }

    goto LABEL_65;
  }

LABEL_64:
  self->_totalAppForAllActionsCurrentDayOfWeekLaunches = *(v5 + 43);
  *&self->_has |= 0x200000u;
  v17 = *(v5 + 46);
  if ((v17 & 0x400000) == 0)
  {
LABEL_36:
    if ((v17 & 0x1000) == 0)
    {
      goto LABEL_38;
    }

    goto LABEL_37;
  }

LABEL_65:
  self->_uiFeedbackDelay = *(v5 + 44);
  *&self->_has |= 0x400000u;
  if ((*(v5 + 46) & 0x1000) != 0)
  {
LABEL_37:
    self->_sessionLogVersion = *(v5 + 34);
    *&self->_has |= 0x1000u;
  }

LABEL_38:
  if (*(v5 + 5))
  {
    [(AWDProactiveAppPredictionIntentPredictionSession *)self setAbGroup:?];
  }

  v18 = *(v5 + 46);
  if ((v18 & 4) != 0)
  {
    self->_appForAllActionsCoreMotionCurrentMotionLaunches = *(v5 + 18);
    *&self->_has |= 4u;
    v18 = *(v5 + 46);
    if ((v18 & 0x100) == 0)
    {
LABEL_42:
      if ((v18 & 0x200) == 0)
      {
        goto LABEL_43;
      }

      goto LABEL_69;
    }
  }

  else if ((v18 & 0x100) == 0)
  {
    goto LABEL_42;
  }

  self->_locationDistanceFromHome = *(v5 + 27);
  *&self->_has |= 0x100u;
  v18 = *(v5 + 46);
  if ((v18 & 0x200) == 0)
  {
LABEL_43:
    if ((v18 & 0x20000) == 0)
    {
      goto LABEL_44;
    }

    goto LABEL_70;
  }

LABEL_69:
  self->_locationDistanceFromWork = *(v5 + 28);
  *&self->_has |= 0x200u;
  v18 = *(v5 + 46);
  if ((v18 & 0x20000) == 0)
  {
LABEL_44:
    if ((v18 & 0x40000) == 0)
    {
      goto LABEL_45;
    }

    goto LABEL_71;
  }

LABEL_70:
  self->_totalAppActionTimeOfDayLaunches = *(v5 + 39);
  *&self->_has |= 0x20000u;
  v18 = *(v5 + 46);
  if ((v18 & 0x40000) == 0)
  {
LABEL_45:
    if ((v18 & 0x8000) == 0)
    {
      goto LABEL_46;
    }

    goto LABEL_72;
  }

LABEL_71:
  self->_totalAppForAllActionTimeOfDayLaunches = *(v5 + 40);
  *&self->_has |= 0x40000u;
  v18 = *(v5 + 46);
  if ((v18 & 0x8000) == 0)
  {
LABEL_46:
    if ((v18 & 0x100000) == 0)
    {
      goto LABEL_48;
    }

    goto LABEL_47;
  }

LABEL_72:
  self->_totalAppActionCoarseTimeOfDayLaunches = *(v5 + 37);
  *&self->_has |= 0x8000u;
  if ((*(v5 + 46) & 0x100000) != 0)
  {
LABEL_47:
    self->_totalAppForAllActionsCoarseTimeOfDayLaunches = *(v5 + 42);
    *&self->_has |= 0x100000u;
  }

LABEL_48:
  appActionSequence = self->_appActionSequence;
  v20 = *(v5 + 8);
  if (appActionSequence)
  {
    if (v20)
    {
      [(AWDProactiveAppPredictionAppActionSequence *)appActionSequence mergeFrom:?];
    }
  }

  else if (v20)
  {
    [(AWDProactiveAppPredictionIntentPredictionSession *)self setAppActionSequence:?];
  }

  if (*(v5 + 16))
  {
    [(AWDProactiveAppPredictionIntentPredictionSession *)self setSessionId:?];
  }

  v21 = *MEMORY[0x277D85DE8];
}

@end