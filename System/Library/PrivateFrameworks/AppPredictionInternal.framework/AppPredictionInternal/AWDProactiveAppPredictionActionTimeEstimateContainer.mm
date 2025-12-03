@interface AWDProactiveAppPredictionActionTimeEstimateContainer
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsActionType:(id)type;
- (int)StringAsLaunchReasons:(id)reasons;
- (int)actionType;
- (int)launchReasonAtIndex:(unint64_t)index;
- (int)sessionIndexAtIndex:(unint64_t)index;
- (int)sessionLengthAtIndex:(unint64_t)index;
- (int)timeEstimateAtIndex:(unint64_t)index;
- (unint64_t)hash;
- (void)addParameter:(id)parameter;
- (void)copyTo:(id)to;
- (void)dealloc;
- (void)mergeFrom:(id)from;
- (void)setHasNoMatchCount:(BOOL)count;
- (void)writeTo:(id)to;
@end

@implementation AWDProactiveAppPredictionActionTimeEstimateContainer

- (void)dealloc
{
  PBRepeatedInt32Clear();
  PBRepeatedInt32Clear();
  PBRepeatedInt32Clear();
  PBRepeatedInt32Clear();
  v3.receiver = self;
  v3.super_class = AWDProactiveAppPredictionActionTimeEstimateContainer;
  [(AWDProactiveAppPredictionActionTimeEstimateContainer *)&v3 dealloc];
}

- (int)actionType
{
  if (*&self->_has)
  {
    return self->_actionType;
  }

  else
  {
    return 0;
  }
}

- (int)StringAsActionType:(id)type
{
  typeCopy = type;
  if ([typeCopy isEqualToString:@"ATXActionTypeIntent"])
  {
    v4 = 0;
  }

  else if ([typeCopy isEqualToString:@"ATXActionTypeNSUserActivity"])
  {
    v4 = 1;
  }

  else if ([typeCopy isEqualToString:@"ATXActionTypeOFA"])
  {
    v4 = 2;
  }

  else if ([typeCopy isEqualToString:@"ATXActionTypeMax"])
  {
    v4 = 3;
  }

  else if ([typeCopy isEqualToString:@"ATXActionTypeUnknown"])
  {
    v4 = 4;
  }

  else if ([typeCopy isEqualToString:@"ATXActionTypeUAUserActivityProxy"])
  {
    v4 = 5;
  }

  else if ([typeCopy isEqualToString:@"ATXActionTypeMenuItem"])
  {
    v4 = 6;
  }

  else if ([typeCopy isEqualToString:@"ATXActionTypeToolKitAction"])
  {
    v4 = 7;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)addParameter:(id)parameter
{
  parameterCopy = parameter;
  parameters = self->_parameters;
  v8 = parameterCopy;
  if (!parameters)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_parameters;
    self->_parameters = v6;

    parameterCopy = v8;
    parameters = self->_parameters;
  }

  [(NSMutableArray *)parameters addObject:parameterCopy];
}

- (int)timeEstimateAtIndex:(unint64_t)index
{
  p_timeEstimates = &self->_timeEstimates;
  count = self->_timeEstimates.count;
  if (count <= index)
  {
    v6 = MEMORY[0x277CBEAD8];
    v7 = *MEMORY[0x277CBE730];
    v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"idx (%lu) is out of range (%lu)", index, count];
    v9 = [v6 exceptionWithName:v7 reason:v8 userInfo:0];
    [v9 raise];
  }

  return p_timeEstimates->list[index];
}

- (int)sessionLengthAtIndex:(unint64_t)index
{
  p_sessionLengths = &self->_sessionLengths;
  count = self->_sessionLengths.count;
  if (count <= index)
  {
    v6 = MEMORY[0x277CBEAD8];
    v7 = *MEMORY[0x277CBE730];
    v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"idx (%lu) is out of range (%lu)", index, count];
    v9 = [v6 exceptionWithName:v7 reason:v8 userInfo:0];
    [v9 raise];
  }

  return p_sessionLengths->list[index];
}

- (int)sessionIndexAtIndex:(unint64_t)index
{
  p_sessionIndexs = &self->_sessionIndexs;
  count = self->_sessionIndexs.count;
  if (count <= index)
  {
    v6 = MEMORY[0x277CBEAD8];
    v7 = *MEMORY[0x277CBE730];
    v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"idx (%lu) is out of range (%lu)", index, count];
    v9 = [v6 exceptionWithName:v7 reason:v8 userInfo:0];
    [v9 raise];
  }

  return p_sessionIndexs->list[index];
}

- (void)setHasNoMatchCount:(BOOL)count
{
  if (count)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (int)launchReasonAtIndex:(unint64_t)index
{
  p_launchReasons = &self->_launchReasons;
  count = self->_launchReasons.count;
  if (count <= index)
  {
    v6 = MEMORY[0x277CBEAD8];
    v7 = *MEMORY[0x277CBE730];
    v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"idx (%lu) is out of range (%lu)", index, count];
    v9 = [v6 exceptionWithName:v7 reason:v8 userInfo:0];
    [v9 raise];
  }

  return p_launchReasons->list[index];
}

- (int)StringAsLaunchReasons:(id)reasons
{
  reasonsCopy = reasons;
  if ([reasonsCopy isEqualToString:@"ATXLaunchReasonUnknown"])
  {
    v4 = 0;
  }

  else if ([reasonsCopy isEqualToString:@"ATXLaunchReasonPrefix"])
  {
    v4 = 1;
  }

  else if ([reasonsCopy isEqualToString:@"ATXLaunchReasonHomeScreen"])
  {
    v4 = 2;
  }

  else if ([reasonsCopy isEqualToString:@"ATXLaunchReasonSpotlight"])
  {
    v4 = 3;
  }

  else if ([reasonsCopy isEqualToString:@"ATXLaunchReasonAppSwitcher"])
  {
    v4 = 4;
  }

  else if ([reasonsCopy isEqualToString:@"ATXLaunchReasonSideAppSwitcher"])
  {
    v4 = 5;
  }

  else if ([reasonsCopy isEqualToString:@"ATXLaunchReasonNotificationCenter"])
  {
    v4 = 6;
  }

  else if ([reasonsCopy isEqualToString:@"ATXLaunchReasonControlCenter"])
  {
    v4 = 7;
  }

  else if ([reasonsCopy isEqualToString:@"ATXLaunchReasonNotification"])
  {
    v4 = 8;
  }

  else if ([reasonsCopy isEqualToString:@"ATXLaunchReasonLockScreen"])
  {
    v4 = 9;
  }

  else if ([reasonsCopy isEqualToString:@"ATXLaunchReasonSiri"])
  {
    v4 = 10;
  }

  else if ([reasonsCopy isEqualToString:@"ATXLaunchReasonCarPlay"])
  {
    v4 = 11;
  }

  else if ([reasonsCopy isEqualToString:@"ATXLaunchReasonSystemGesture"])
  {
    v4 = 12;
  }

  else if ([reasonsCopy isEqualToString:@"ATXLaunchReasonExternalRequest"])
  {
    v4 = 13;
  }

  else if ([reasonsCopy isEqualToString:@"ATXLaunchReasonBreadcrumb"])
  {
    v4 = 14;
  }

  else if ([reasonsCopy isEqualToString:@"ATXLaunchReasonCommandTab"])
  {
    v4 = 15;
  }

  else if ([reasonsCopy isEqualToString:@"ATXLaunchReasonAccessibility"])
  {
    v4 = 16;
  }

  else if ([reasonsCopy isEqualToString:@"ATXLaunchReasonWidget"])
  {
    v4 = 17;
  }

  else if ([reasonsCopy isEqualToString:@"ATXLaunchReasonFloatingDock"])
  {
    v4 = 18;
  }

  else if ([reasonsCopy isEqualToString:@"ATXLaunchReasonFloatingDockRecents"])
  {
    v4 = 19;
  }

  else if ([reasonsCopy isEqualToString:@"ATXLaunchReasonFloatingApplication"])
  {
    v4 = 20;
  }

  else if ([reasonsCopy isEqualToString:@"ATXLaunchReasonFloatingDockAppSuggestion"])
  {
    v4 = 21;
  }

  else if ([reasonsCopy isEqualToString:@"ATXLaunchReasonBacklightPrefix"])
  {
    v4 = 22;
  }

  else if ([reasonsCopy isEqualToString:@"ATXLaunchReasonBacklightProgrammatic"])
  {
    v4 = 23;
  }

  else if ([reasonsCopy isEqualToString:@"ATXLaunchReasonBacklightHomeButton"])
  {
    v4 = 24;
  }

  else if ([reasonsCopy isEqualToString:@"ATXLaunchReasonBacklightLockButton"])
  {
    v4 = 25;
  }

  else if ([reasonsCopy isEqualToString:@"ATXLaunchReasonBacklightVolumeButton"])
  {
    v4 = 26;
  }

  else if ([reasonsCopy isEqualToString:@"ATXLaunchReasonBacklightOtherButton"])
  {
    v4 = 27;
  }

  else if ([reasonsCopy isEqualToString:@"ATXLaunchReasonBacklightKeyboard"])
  {
    v4 = 28;
  }

  else if ([reasonsCopy isEqualToString:@"ATXLaunchReasonBacklightSmartCover"])
  {
    v4 = 29;
  }

  else if ([reasonsCopy isEqualToString:@"ATXLaunchReasonBacklightIdleTimer"])
  {
    v4 = 30;
  }

  else if ([reasonsCopy isEqualToString:@"ATXLaunchReasonBacklightTouch"])
  {
    v4 = 31;
  }

  else if ([reasonsCopy isEqualToString:@"ATXLaunchReasonBacklightPlugin"])
  {
    v4 = 32;
  }

  else if ([reasonsCopy isEqualToString:@"ATXLaunchReasonBacklightCar"])
  {
    v4 = 33;
  }

  else if ([reasonsCopy isEqualToString:@"ATXLaunchReasonBacklightNotification"])
  {
    v4 = 34;
  }

  else if ([reasonsCopy isEqualToString:@"ATXLaunchReasonBacklightProx"])
  {
    v4 = 35;
  }

  else if ([reasonsCopy isEqualToString:@"ATXLaunchReasonBacklightSiri"])
  {
    v4 = 36;
  }

  else if ([reasonsCopy isEqualToString:@"ATXLaunchReasonBacklightBoot"])
  {
    v4 = 37;
  }

  else if ([reasonsCopy isEqualToString:@"ATXLaunchReasonBacklightPocketState"])
  {
    v4 = 38;
  }

  else if ([reasonsCopy isEqualToString:@"ATXLaunchReasonBacklightExternalRequest"])
  {
    v4 = 39;
  }

  else if ([reasonsCopy isEqualToString:@"ATXLaunchReasonBacklightExternalAppRequest"])
  {
    v4 = 40;
  }

  else if ([reasonsCopy isEqualToString:@"ATXLaunchReasonBacklightSpringBoardRequest"])
  {
    v4 = 41;
  }

  else if ([reasonsCopy isEqualToString:@"ATXLaunchReasonBacklightLiftToWake"])
  {
    v4 = 42;
  }

  else if ([reasonsCopy isEqualToString:@"ATXLaunchReasonBacklightLogout"])
  {
    v4 = 43;
  }

  else if ([reasonsCopy isEqualToString:@"ATXLaunchReasonBacklightNotificationCenter"])
  {
    v4 = 44;
  }

  else if ([reasonsCopy isEqualToString:@"ATXLaunchReasonBacklightACPowerChange"])
  {
    v4 = 45;
  }

  else if ([reasonsCopy isEqualToString:@"ATXLaunchReasonBacklightChargingAccessoryChange"])
  {
    v4 = 46;
  }

  else if ([reasonsCopy isEqualToString:@"ATXLaunchReasonBacklightRestoring"])
  {
    v4 = 47;
  }

  else if ([reasonsCopy isEqualToString:@"ATXLaunchReasonBacklightAlert"])
  {
    v4 = 48;
  }

  else if ([reasonsCopy isEqualToString:@"ATXLaunchReasonBacklightLanguageChange"])
  {
    v4 = 49;
  }

  else if ([reasonsCopy isEqualToString:@"ATXLaunchReasonBacklightUnknownUserEvent"])
  {
    v4 = 50;
  }

  else if ([reasonsCopy isEqualToString:@"ATXLaunchReasonBacklightCoverSheet"])
  {
    v4 = 51;
  }

  else if ([reasonsCopy isEqualToString:@"ATXLaunchReasonBacklightSOSDismiss"])
  {
    v4 = 52;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = AWDProactiveAppPredictionActionTimeEstimateContainer;
  v4 = [(AWDProactiveAppPredictionActionTimeEstimateContainer *)&v8 description];
  dictionaryRepresentation = [(AWDProactiveAppPredictionActionTimeEstimateContainer *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v4 = dictionary;
  actionKey = self->_actionKey;
  if (actionKey)
  {
    [dictionary setObject:actionKey forKey:@"actionKey"];
  }

  if (*&self->_has)
  {
    actionType = self->_actionType;
    if (actionType >= 8)
    {
      v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", self->_actionType];
    }

    else
    {
      v7 = off_278597950[actionType];
    }

    [v4 setObject:v7 forKey:@"actionType"];
  }

  parameters = self->_parameters;
  if (parameters)
  {
    [v4 setObject:parameters forKey:@"parameter"];
  }

  v9 = PBRepeatedInt32NSArray();
  [v4 setObject:v9 forKey:@"timeEstimate"];

  v10 = PBRepeatedInt32NSArray();
  [v4 setObject:v10 forKey:@"sessionLength"];

  v11 = PBRepeatedInt32NSArray();
  [v4 setObject:v11 forKey:@"sessionIndex"];

  if ((*&self->_has & 2) != 0)
  {
    v12 = [MEMORY[0x277CCABB0] numberWithInt:self->_noMatchCount];
    [v4 setObject:v12 forKey:@"noMatchCount"];
  }

  p_launchReasons = &self->_launchReasons;
  if (self->_launchReasons.count)
  {
    v14 = [MEMORY[0x277CBEB18] arrayWithCapacity:?];
    if (p_launchReasons->count)
    {
      v15 = 0;
      do
      {
        v16 = p_launchReasons->list[v15];
        if (v16 >= 0x35)
        {
          v17 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", p_launchReasons->list[v15]];
        }

        else
        {
          v17 = off_278597990[v16];
        }

        [v14 addObject:v17];

        ++v15;
      }

      while (v15 < p_launchReasons->count);
    }

    [v4 setObject:v14 forKey:@"launchReason"];
  }

  return v4;
}

- (void)writeTo:(id)to
{
  v29 = *MEMORY[0x277D85DE8];
  toCopy = to;
  if (!self->_actionKey)
  {
    [AWDProactiveAppPredictionActionTimeEstimateContainer writeTo:];
  }

  v5 = toCopy;
  PBDataWriterWriteStringField();
  if (*&self->_has)
  {
    actionType = self->_actionType;
    PBDataWriterWriteInt32Field();
  }

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v7 = self->_parameters;
  v8 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v25;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v25 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v24 + 1) + 8 * i);
        PBDataWriterWriteStringField();
      }

      v9 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v9);
  }

  if (self->_timeEstimates.count)
  {
    v13 = 0;
    do
    {
      v14 = self->_timeEstimates.list[v13];
      PBDataWriterWriteInt32Field();
      ++v13;
    }

    while (v13 < self->_timeEstimates.count);
  }

  if (self->_sessionLengths.count)
  {
    v15 = 0;
    do
    {
      v16 = self->_sessionLengths.list[v15];
      PBDataWriterWriteInt32Field();
      ++v15;
    }

    while (v15 < self->_sessionLengths.count);
  }

  if (self->_sessionIndexs.count)
  {
    v17 = 0;
    do
    {
      v18 = self->_sessionIndexs.list[v17];
      PBDataWriterWriteInt32Field();
      ++v17;
    }

    while (v17 < self->_sessionIndexs.count);
  }

  if ((*&self->_has & 2) != 0)
  {
    noMatchCount = self->_noMatchCount;
    PBDataWriterWriteInt32Field();
  }

  p_launchReasons = &self->_launchReasons;
  if (p_launchReasons->count)
  {
    v21 = 0;
    do
    {
      v22 = p_launchReasons->list[v21];
      PBDataWriterWriteInt32Field();
      ++v21;
    }

    while (v21 < p_launchReasons->count);
  }

  v23 = *MEMORY[0x277D85DE8];
}

- (void)copyTo:(id)to
{
  toCopy = to;
  [toCopy setActionKey:self->_actionKey];
  if (*&self->_has)
  {
    *(toCopy + 28) = self->_actionType;
    *(toCopy + 128) |= 1u;
  }

  if ([(AWDProactiveAppPredictionActionTimeEstimateContainer *)self parametersCount])
  {
    [toCopy clearParameters];
    parametersCount = [(AWDProactiveAppPredictionActionTimeEstimateContainer *)self parametersCount];
    if (parametersCount)
    {
      v5 = parametersCount;
      for (i = 0; i != v5; ++i)
      {
        v7 = [(AWDProactiveAppPredictionActionTimeEstimateContainer *)self parameterAtIndex:i];
        [toCopy addParameter:v7];
      }
    }
  }

  if ([(AWDProactiveAppPredictionActionTimeEstimateContainer *)self timeEstimatesCount])
  {
    [toCopy clearTimeEstimates];
    timeEstimatesCount = [(AWDProactiveAppPredictionActionTimeEstimateContainer *)self timeEstimatesCount];
    if (timeEstimatesCount)
    {
      v9 = timeEstimatesCount;
      for (j = 0; j != v9; ++j)
      {
        [toCopy addTimeEstimate:{-[AWDProactiveAppPredictionActionTimeEstimateContainer timeEstimateAtIndex:](self, "timeEstimateAtIndex:", j)}];
      }
    }
  }

  if ([(AWDProactiveAppPredictionActionTimeEstimateContainer *)self sessionLengthsCount])
  {
    [toCopy clearSessionLengths];
    sessionLengthsCount = [(AWDProactiveAppPredictionActionTimeEstimateContainer *)self sessionLengthsCount];
    if (sessionLengthsCount)
    {
      v12 = sessionLengthsCount;
      for (k = 0; k != v12; ++k)
      {
        [toCopy addSessionLength:{-[AWDProactiveAppPredictionActionTimeEstimateContainer sessionLengthAtIndex:](self, "sessionLengthAtIndex:", k)}];
      }
    }
  }

  if ([(AWDProactiveAppPredictionActionTimeEstimateContainer *)self sessionIndexsCount])
  {
    [toCopy clearSessionIndexs];
    sessionIndexsCount = [(AWDProactiveAppPredictionActionTimeEstimateContainer *)self sessionIndexsCount];
    if (sessionIndexsCount)
    {
      v15 = sessionIndexsCount;
      for (m = 0; m != v15; ++m)
      {
        [toCopy addSessionIndex:{-[AWDProactiveAppPredictionActionTimeEstimateContainer sessionIndexAtIndex:](self, "sessionIndexAtIndex:", m)}];
      }
    }
  }

  if ((*&self->_has & 2) != 0)
  {
    *(toCopy + 29) = self->_noMatchCount;
    *(toCopy + 128) |= 2u;
  }

  if ([(AWDProactiveAppPredictionActionTimeEstimateContainer *)self launchReasonsCount])
  {
    [toCopy clearLaunchReasons];
    launchReasonsCount = [(AWDProactiveAppPredictionActionTimeEstimateContainer *)self launchReasonsCount];
    if (launchReasonsCount)
    {
      v18 = launchReasonsCount;
      for (n = 0; n != v18; ++n)
      {
        [toCopy addLaunchReason:{-[AWDProactiveAppPredictionActionTimeEstimateContainer launchReasonAtIndex:](self, "launchReasonAtIndex:", n)}];
      }
    }
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v21 = *MEMORY[0x277D85DE8];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_actionKey copyWithZone:zone];
  v7 = *(v5 + 104);
  *(v5 + 104) = v6;

  if (*&self->_has)
  {
    *(v5 + 112) = self->_actionType;
    *(v5 + 128) |= 1u;
  }

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v8 = self->_parameters;
  v9 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v17;
    do
    {
      v12 = 0;
      do
      {
        if (*v17 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = [*(*(&v16 + 1) + 8 * v12) copyWithZone:{zone, v16}];
        [v5 addParameter:v13];

        ++v12;
      }

      while (v10 != v12);
      v10 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v10);
  }

  PBRepeatedInt32Copy();
  PBRepeatedInt32Copy();
  PBRepeatedInt32Copy();
  if ((*&self->_has & 2) != 0)
  {
    *(v5 + 116) = self->_noMatchCount;
    *(v5 + 128) |= 2u;
  }

  PBRepeatedInt32Copy();
  v14 = *MEMORY[0x277D85DE8];
  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_20;
  }

  actionKey = self->_actionKey;
  if (actionKey | *(equalCopy + 13))
  {
    if (![(NSString *)actionKey isEqual:?])
    {
      goto LABEL_20;
    }
  }

  v6 = *(equalCopy + 128);
  if (*&self->_has)
  {
    if ((*(equalCopy + 128) & 1) == 0 || self->_actionType != *(equalCopy + 28))
    {
      goto LABEL_20;
    }
  }

  else if (*(equalCopy + 128))
  {
LABEL_20:
    IsEqual = 0;
    goto LABEL_21;
  }

  parameters = self->_parameters;
  if (parameters | *(equalCopy + 15) && ![(NSMutableArray *)parameters isEqual:?]|| !PBRepeatedInt32IsEqual() || !PBRepeatedInt32IsEqual() || !PBRepeatedInt32IsEqual())
  {
    goto LABEL_20;
  }

  v8 = *(equalCopy + 128);
  if ((*&self->_has & 2) != 0)
  {
    if ((*(equalCopy + 128) & 2) == 0 || self->_noMatchCount != *(equalCopy + 29))
    {
      goto LABEL_20;
    }
  }

  else if ((*(equalCopy + 128) & 2) != 0)
  {
    goto LABEL_20;
  }

  IsEqual = PBRepeatedInt32IsEqual();
LABEL_21:

  return IsEqual;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_actionKey hash];
  if (*&self->_has)
  {
    v4 = 2654435761 * self->_actionType;
  }

  else
  {
    v4 = 0;
  }

  v5 = [(NSMutableArray *)self->_parameters hash];
  v6 = PBRepeatedInt32Hash();
  v7 = PBRepeatedInt32Hash();
  v8 = PBRepeatedInt32Hash();
  if ((*&self->_has & 2) != 0)
  {
    v9 = 2654435761 * self->_noMatchCount;
  }

  else
  {
    v9 = 0;
  }

  return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ PBRepeatedInt32Hash();
}

- (void)mergeFrom:(id)from
{
  v28 = *MEMORY[0x277D85DE8];
  fromCopy = from;
  if (*(fromCopy + 13))
  {
    [(AWDProactiveAppPredictionActionTimeEstimateContainer *)self setActionKey:?];
  }

  if (*(fromCopy + 128))
  {
    self->_actionType = *(fromCopy + 28);
    *&self->_has |= 1u;
  }

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v5 = *(fromCopy + 15);
  v6 = [v5 countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v24;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v24 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [(AWDProactiveAppPredictionActionTimeEstimateContainer *)self addParameter:*(*(&v23 + 1) + 8 * i), v23];
      }

      v7 = [v5 countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v7);
  }

  timeEstimatesCount = [fromCopy timeEstimatesCount];
  if (timeEstimatesCount)
  {
    v11 = timeEstimatesCount;
    for (j = 0; j != v11; ++j)
    {
      -[AWDProactiveAppPredictionActionTimeEstimateContainer addTimeEstimate:](self, "addTimeEstimate:", [fromCopy timeEstimateAtIndex:{j, v23}]);
    }
  }

  sessionLengthsCount = [fromCopy sessionLengthsCount];
  if (sessionLengthsCount)
  {
    v14 = sessionLengthsCount;
    for (k = 0; k != v14; ++k)
    {
      -[AWDProactiveAppPredictionActionTimeEstimateContainer addSessionLength:](self, "addSessionLength:", [fromCopy sessionLengthAtIndex:k]);
    }
  }

  sessionIndexsCount = [fromCopy sessionIndexsCount];
  if (sessionIndexsCount)
  {
    v17 = sessionIndexsCount;
    for (m = 0; m != v17; ++m)
    {
      -[AWDProactiveAppPredictionActionTimeEstimateContainer addSessionIndex:](self, "addSessionIndex:", [fromCopy sessionIndexAtIndex:m]);
    }
  }

  if ((*(fromCopy + 128) & 2) != 0)
  {
    self->_noMatchCount = *(fromCopy + 29);
    *&self->_has |= 2u;
  }

  launchReasonsCount = [fromCopy launchReasonsCount];
  if (launchReasonsCount)
  {
    v20 = launchReasonsCount;
    for (n = 0; n != v20; ++n)
    {
      -[AWDProactiveAppPredictionActionTimeEstimateContainer addLaunchReason:](self, "addLaunchReason:", [fromCopy launchReasonAtIndex:n]);
    }
  }

  v22 = *MEMORY[0x277D85DE8];
}

@end