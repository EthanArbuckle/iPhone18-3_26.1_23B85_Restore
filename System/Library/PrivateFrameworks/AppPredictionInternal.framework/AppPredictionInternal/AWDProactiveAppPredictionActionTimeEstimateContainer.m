@interface AWDProactiveAppPredictionActionTimeEstimateContainer
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsActionType:(id)a3;
- (int)StringAsLaunchReasons:(id)a3;
- (int)actionType;
- (int)launchReasonAtIndex:(unint64_t)a3;
- (int)sessionIndexAtIndex:(unint64_t)a3;
- (int)sessionLengthAtIndex:(unint64_t)a3;
- (int)timeEstimateAtIndex:(unint64_t)a3;
- (unint64_t)hash;
- (void)addParameter:(id)a3;
- (void)copyTo:(id)a3;
- (void)dealloc;
- (void)mergeFrom:(id)a3;
- (void)setHasNoMatchCount:(BOOL)a3;
- (void)writeTo:(id)a3;
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

- (int)StringAsActionType:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"ATXActionTypeIntent"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"ATXActionTypeNSUserActivity"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"ATXActionTypeOFA"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"ATXActionTypeMax"])
  {
    v4 = 3;
  }

  else if ([v3 isEqualToString:@"ATXActionTypeUnknown"])
  {
    v4 = 4;
  }

  else if ([v3 isEqualToString:@"ATXActionTypeUAUserActivityProxy"])
  {
    v4 = 5;
  }

  else if ([v3 isEqualToString:@"ATXActionTypeMenuItem"])
  {
    v4 = 6;
  }

  else if ([v3 isEqualToString:@"ATXActionTypeToolKitAction"])
  {
    v4 = 7;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)addParameter:(id)a3
{
  v4 = a3;
  parameters = self->_parameters;
  v8 = v4;
  if (!parameters)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_parameters;
    self->_parameters = v6;

    v4 = v8;
    parameters = self->_parameters;
  }

  [(NSMutableArray *)parameters addObject:v4];
}

- (int)timeEstimateAtIndex:(unint64_t)a3
{
  p_timeEstimates = &self->_timeEstimates;
  count = self->_timeEstimates.count;
  if (count <= a3)
  {
    v6 = MEMORY[0x277CBEAD8];
    v7 = *MEMORY[0x277CBE730];
    v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"idx (%lu) is out of range (%lu)", a3, count];
    v9 = [v6 exceptionWithName:v7 reason:v8 userInfo:0];
    [v9 raise];
  }

  return p_timeEstimates->list[a3];
}

- (int)sessionLengthAtIndex:(unint64_t)a3
{
  p_sessionLengths = &self->_sessionLengths;
  count = self->_sessionLengths.count;
  if (count <= a3)
  {
    v6 = MEMORY[0x277CBEAD8];
    v7 = *MEMORY[0x277CBE730];
    v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"idx (%lu) is out of range (%lu)", a3, count];
    v9 = [v6 exceptionWithName:v7 reason:v8 userInfo:0];
    [v9 raise];
  }

  return p_sessionLengths->list[a3];
}

- (int)sessionIndexAtIndex:(unint64_t)a3
{
  p_sessionIndexs = &self->_sessionIndexs;
  count = self->_sessionIndexs.count;
  if (count <= a3)
  {
    v6 = MEMORY[0x277CBEAD8];
    v7 = *MEMORY[0x277CBE730];
    v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"idx (%lu) is out of range (%lu)", a3, count];
    v9 = [v6 exceptionWithName:v7 reason:v8 userInfo:0];
    [v9 raise];
  }

  return p_sessionIndexs->list[a3];
}

- (void)setHasNoMatchCount:(BOOL)a3
{
  if (a3)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (int)launchReasonAtIndex:(unint64_t)a3
{
  p_launchReasons = &self->_launchReasons;
  count = self->_launchReasons.count;
  if (count <= a3)
  {
    v6 = MEMORY[0x277CBEAD8];
    v7 = *MEMORY[0x277CBE730];
    v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"idx (%lu) is out of range (%lu)", a3, count];
    v9 = [v6 exceptionWithName:v7 reason:v8 userInfo:0];
    [v9 raise];
  }

  return p_launchReasons->list[a3];
}

- (int)StringAsLaunchReasons:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"ATXLaunchReasonUnknown"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"ATXLaunchReasonPrefix"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"ATXLaunchReasonHomeScreen"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"ATXLaunchReasonSpotlight"])
  {
    v4 = 3;
  }

  else if ([v3 isEqualToString:@"ATXLaunchReasonAppSwitcher"])
  {
    v4 = 4;
  }

  else if ([v3 isEqualToString:@"ATXLaunchReasonSideAppSwitcher"])
  {
    v4 = 5;
  }

  else if ([v3 isEqualToString:@"ATXLaunchReasonNotificationCenter"])
  {
    v4 = 6;
  }

  else if ([v3 isEqualToString:@"ATXLaunchReasonControlCenter"])
  {
    v4 = 7;
  }

  else if ([v3 isEqualToString:@"ATXLaunchReasonNotification"])
  {
    v4 = 8;
  }

  else if ([v3 isEqualToString:@"ATXLaunchReasonLockScreen"])
  {
    v4 = 9;
  }

  else if ([v3 isEqualToString:@"ATXLaunchReasonSiri"])
  {
    v4 = 10;
  }

  else if ([v3 isEqualToString:@"ATXLaunchReasonCarPlay"])
  {
    v4 = 11;
  }

  else if ([v3 isEqualToString:@"ATXLaunchReasonSystemGesture"])
  {
    v4 = 12;
  }

  else if ([v3 isEqualToString:@"ATXLaunchReasonExternalRequest"])
  {
    v4 = 13;
  }

  else if ([v3 isEqualToString:@"ATXLaunchReasonBreadcrumb"])
  {
    v4 = 14;
  }

  else if ([v3 isEqualToString:@"ATXLaunchReasonCommandTab"])
  {
    v4 = 15;
  }

  else if ([v3 isEqualToString:@"ATXLaunchReasonAccessibility"])
  {
    v4 = 16;
  }

  else if ([v3 isEqualToString:@"ATXLaunchReasonWidget"])
  {
    v4 = 17;
  }

  else if ([v3 isEqualToString:@"ATXLaunchReasonFloatingDock"])
  {
    v4 = 18;
  }

  else if ([v3 isEqualToString:@"ATXLaunchReasonFloatingDockRecents"])
  {
    v4 = 19;
  }

  else if ([v3 isEqualToString:@"ATXLaunchReasonFloatingApplication"])
  {
    v4 = 20;
  }

  else if ([v3 isEqualToString:@"ATXLaunchReasonFloatingDockAppSuggestion"])
  {
    v4 = 21;
  }

  else if ([v3 isEqualToString:@"ATXLaunchReasonBacklightPrefix"])
  {
    v4 = 22;
  }

  else if ([v3 isEqualToString:@"ATXLaunchReasonBacklightProgrammatic"])
  {
    v4 = 23;
  }

  else if ([v3 isEqualToString:@"ATXLaunchReasonBacklightHomeButton"])
  {
    v4 = 24;
  }

  else if ([v3 isEqualToString:@"ATXLaunchReasonBacklightLockButton"])
  {
    v4 = 25;
  }

  else if ([v3 isEqualToString:@"ATXLaunchReasonBacklightVolumeButton"])
  {
    v4 = 26;
  }

  else if ([v3 isEqualToString:@"ATXLaunchReasonBacklightOtherButton"])
  {
    v4 = 27;
  }

  else if ([v3 isEqualToString:@"ATXLaunchReasonBacklightKeyboard"])
  {
    v4 = 28;
  }

  else if ([v3 isEqualToString:@"ATXLaunchReasonBacklightSmartCover"])
  {
    v4 = 29;
  }

  else if ([v3 isEqualToString:@"ATXLaunchReasonBacklightIdleTimer"])
  {
    v4 = 30;
  }

  else if ([v3 isEqualToString:@"ATXLaunchReasonBacklightTouch"])
  {
    v4 = 31;
  }

  else if ([v3 isEqualToString:@"ATXLaunchReasonBacklightPlugin"])
  {
    v4 = 32;
  }

  else if ([v3 isEqualToString:@"ATXLaunchReasonBacklightCar"])
  {
    v4 = 33;
  }

  else if ([v3 isEqualToString:@"ATXLaunchReasonBacklightNotification"])
  {
    v4 = 34;
  }

  else if ([v3 isEqualToString:@"ATXLaunchReasonBacklightProx"])
  {
    v4 = 35;
  }

  else if ([v3 isEqualToString:@"ATXLaunchReasonBacklightSiri"])
  {
    v4 = 36;
  }

  else if ([v3 isEqualToString:@"ATXLaunchReasonBacklightBoot"])
  {
    v4 = 37;
  }

  else if ([v3 isEqualToString:@"ATXLaunchReasonBacklightPocketState"])
  {
    v4 = 38;
  }

  else if ([v3 isEqualToString:@"ATXLaunchReasonBacklightExternalRequest"])
  {
    v4 = 39;
  }

  else if ([v3 isEqualToString:@"ATXLaunchReasonBacklightExternalAppRequest"])
  {
    v4 = 40;
  }

  else if ([v3 isEqualToString:@"ATXLaunchReasonBacklightSpringBoardRequest"])
  {
    v4 = 41;
  }

  else if ([v3 isEqualToString:@"ATXLaunchReasonBacklightLiftToWake"])
  {
    v4 = 42;
  }

  else if ([v3 isEqualToString:@"ATXLaunchReasonBacklightLogout"])
  {
    v4 = 43;
  }

  else if ([v3 isEqualToString:@"ATXLaunchReasonBacklightNotificationCenter"])
  {
    v4 = 44;
  }

  else if ([v3 isEqualToString:@"ATXLaunchReasonBacklightACPowerChange"])
  {
    v4 = 45;
  }

  else if ([v3 isEqualToString:@"ATXLaunchReasonBacklightChargingAccessoryChange"])
  {
    v4 = 46;
  }

  else if ([v3 isEqualToString:@"ATXLaunchReasonBacklightRestoring"])
  {
    v4 = 47;
  }

  else if ([v3 isEqualToString:@"ATXLaunchReasonBacklightAlert"])
  {
    v4 = 48;
  }

  else if ([v3 isEqualToString:@"ATXLaunchReasonBacklightLanguageChange"])
  {
    v4 = 49;
  }

  else if ([v3 isEqualToString:@"ATXLaunchReasonBacklightUnknownUserEvent"])
  {
    v4 = 50;
  }

  else if ([v3 isEqualToString:@"ATXLaunchReasonBacklightCoverSheet"])
  {
    v4 = 51;
  }

  else if ([v3 isEqualToString:@"ATXLaunchReasonBacklightSOSDismiss"])
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
  v5 = [(AWDProactiveAppPredictionActionTimeEstimateContainer *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  v4 = v3;
  actionKey = self->_actionKey;
  if (actionKey)
  {
    [v3 setObject:actionKey forKey:@"actionKey"];
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

- (void)writeTo:(id)a3
{
  v29 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (!self->_actionKey)
  {
    [AWDProactiveAppPredictionActionTimeEstimateContainer writeTo:];
  }

  v5 = v4;
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

- (void)copyTo:(id)a3
{
  v20 = a3;
  [v20 setActionKey:self->_actionKey];
  if (*&self->_has)
  {
    *(v20 + 28) = self->_actionType;
    *(v20 + 128) |= 1u;
  }

  if ([(AWDProactiveAppPredictionActionTimeEstimateContainer *)self parametersCount])
  {
    [v20 clearParameters];
    v4 = [(AWDProactiveAppPredictionActionTimeEstimateContainer *)self parametersCount];
    if (v4)
    {
      v5 = v4;
      for (i = 0; i != v5; ++i)
      {
        v7 = [(AWDProactiveAppPredictionActionTimeEstimateContainer *)self parameterAtIndex:i];
        [v20 addParameter:v7];
      }
    }
  }

  if ([(AWDProactiveAppPredictionActionTimeEstimateContainer *)self timeEstimatesCount])
  {
    [v20 clearTimeEstimates];
    v8 = [(AWDProactiveAppPredictionActionTimeEstimateContainer *)self timeEstimatesCount];
    if (v8)
    {
      v9 = v8;
      for (j = 0; j != v9; ++j)
      {
        [v20 addTimeEstimate:{-[AWDProactiveAppPredictionActionTimeEstimateContainer timeEstimateAtIndex:](self, "timeEstimateAtIndex:", j)}];
      }
    }
  }

  if ([(AWDProactiveAppPredictionActionTimeEstimateContainer *)self sessionLengthsCount])
  {
    [v20 clearSessionLengths];
    v11 = [(AWDProactiveAppPredictionActionTimeEstimateContainer *)self sessionLengthsCount];
    if (v11)
    {
      v12 = v11;
      for (k = 0; k != v12; ++k)
      {
        [v20 addSessionLength:{-[AWDProactiveAppPredictionActionTimeEstimateContainer sessionLengthAtIndex:](self, "sessionLengthAtIndex:", k)}];
      }
    }
  }

  if ([(AWDProactiveAppPredictionActionTimeEstimateContainer *)self sessionIndexsCount])
  {
    [v20 clearSessionIndexs];
    v14 = [(AWDProactiveAppPredictionActionTimeEstimateContainer *)self sessionIndexsCount];
    if (v14)
    {
      v15 = v14;
      for (m = 0; m != v15; ++m)
      {
        [v20 addSessionIndex:{-[AWDProactiveAppPredictionActionTimeEstimateContainer sessionIndexAtIndex:](self, "sessionIndexAtIndex:", m)}];
      }
    }
  }

  if ((*&self->_has & 2) != 0)
  {
    *(v20 + 29) = self->_noMatchCount;
    *(v20 + 128) |= 2u;
  }

  if ([(AWDProactiveAppPredictionActionTimeEstimateContainer *)self launchReasonsCount])
  {
    [v20 clearLaunchReasons];
    v17 = [(AWDProactiveAppPredictionActionTimeEstimateContainer *)self launchReasonsCount];
    if (v17)
    {
      v18 = v17;
      for (n = 0; n != v18; ++n)
      {
        [v20 addLaunchReason:{-[AWDProactiveAppPredictionActionTimeEstimateContainer launchReasonAtIndex:](self, "launchReasonAtIndex:", n)}];
      }
    }
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_actionKey copyWithZone:a3];
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

        v13 = [*(*(&v16 + 1) + 8 * v12) copyWithZone:{a3, v16}];
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_20;
  }

  actionKey = self->_actionKey;
  if (actionKey | *(v4 + 13))
  {
    if (![(NSString *)actionKey isEqual:?])
    {
      goto LABEL_20;
    }
  }

  v6 = *(v4 + 128);
  if (*&self->_has)
  {
    if ((*(v4 + 128) & 1) == 0 || self->_actionType != *(v4 + 28))
    {
      goto LABEL_20;
    }
  }

  else if (*(v4 + 128))
  {
LABEL_20:
    IsEqual = 0;
    goto LABEL_21;
  }

  parameters = self->_parameters;
  if (parameters | *(v4 + 15) && ![(NSMutableArray *)parameters isEqual:?]|| !PBRepeatedInt32IsEqual() || !PBRepeatedInt32IsEqual() || !PBRepeatedInt32IsEqual())
  {
    goto LABEL_20;
  }

  v8 = *(v4 + 128);
  if ((*&self->_has & 2) != 0)
  {
    if ((*(v4 + 128) & 2) == 0 || self->_noMatchCount != *(v4 + 29))
    {
      goto LABEL_20;
    }
  }

  else if ((*(v4 + 128) & 2) != 0)
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

- (void)mergeFrom:(id)a3
{
  v28 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (*(v4 + 13))
  {
    [(AWDProactiveAppPredictionActionTimeEstimateContainer *)self setActionKey:?];
  }

  if (*(v4 + 128))
  {
    self->_actionType = *(v4 + 28);
    *&self->_has |= 1u;
  }

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v5 = *(v4 + 15);
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

  v10 = [v4 timeEstimatesCount];
  if (v10)
  {
    v11 = v10;
    for (j = 0; j != v11; ++j)
    {
      -[AWDProactiveAppPredictionActionTimeEstimateContainer addTimeEstimate:](self, "addTimeEstimate:", [v4 timeEstimateAtIndex:{j, v23}]);
    }
  }

  v13 = [v4 sessionLengthsCount];
  if (v13)
  {
    v14 = v13;
    for (k = 0; k != v14; ++k)
    {
      -[AWDProactiveAppPredictionActionTimeEstimateContainer addSessionLength:](self, "addSessionLength:", [v4 sessionLengthAtIndex:k]);
    }
  }

  v16 = [v4 sessionIndexsCount];
  if (v16)
  {
    v17 = v16;
    for (m = 0; m != v17; ++m)
    {
      -[AWDProactiveAppPredictionActionTimeEstimateContainer addSessionIndex:](self, "addSessionIndex:", [v4 sessionIndexAtIndex:m]);
    }
  }

  if ((*(v4 + 128) & 2) != 0)
  {
    self->_noMatchCount = *(v4 + 29);
    *&self->_has |= 2u;
  }

  v19 = [v4 launchReasonsCount];
  if (v19)
  {
    v20 = v19;
    for (n = 0; n != v20; ++n)
    {
      -[AWDProactiveAppPredictionActionTimeEstimateContainer addLaunchReason:](self, "addLaunchReason:", [v4 launchReasonAtIndex:n]);
    }
  }

  v22 = *MEMORY[0x277D85DE8];
}

@end