@interface ModelMonitoringDataAnomalyMessage
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsAnomalyType:(id)a3;
- (int)anomalyType;
- (unint64_t)hash;
- (void)addDataStates:(id)a3;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasOccuranceCount:(BOOL)a3;
- (void)setHasTotalEventCount:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation ModelMonitoringDataAnomalyMessage

- (int)anomalyType
{
  if (*&self->_has)
  {
    return self->_anomalyType;
  }

  else
  {
    return 0;
  }
}

- (int)StringAsAnomalyType:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"UNKNOWN"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"MODEL_SCORE_DISTRIBUTION_IN_EVENT"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"MODEL_SCORE_MEAN_LOCAL"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"MODEL_SCORE_ENTROPY_LOCAL"])
  {
    v4 = 3;
  }

  else if ([v3 isEqualToString:@"MODEL_SCORE_MEAN_GLOBAL"])
  {
    v4 = 4;
  }

  else if ([v3 isEqualToString:@"MODEL_SCORE_ENTROPY_GLOBAL"])
  {
    v4 = 5;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setHasOccuranceCount:(BOOL)a3
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

- (void)setHasTotalEventCount:(BOOL)a3
{
  if (a3)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (void)addDataStates:(id)a3
{
  v4 = a3;
  dataStates = self->_dataStates;
  v8 = v4;
  if (!dataStates)
  {
    v6 = objc_alloc_init(NSMutableArray);
    v7 = self->_dataStates;
    self->_dataStates = v6;

    v4 = v8;
    dataStates = self->_dataStates;
  }

  [(NSMutableArray *)dataStates addObject:v4];
}

- (id)description
{
  v7.receiver = self;
  v7.super_class = ModelMonitoringDataAnomalyMessage;
  v3 = [(ModelMonitoringDataAnomalyMessage *)&v7 description];
  v4 = [(ModelMonitoringDataAnomalyMessage *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, v4];

  return v5;
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  has = self->_has;
  if (has)
  {
    anomalyType = self->_anomalyType;
    if (anomalyType >= 6)
    {
      v6 = [NSString stringWithFormat:@"(unknown: %i)", self->_anomalyType];
    }

    else
    {
      v6 = off_10000C620[anomalyType];
    }

    [v3 setObject:v6 forKey:@"anomalyType"];

    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    v7 = [NSNumber numberWithInt:self->_occuranceCount];
    [v3 setObject:v7 forKey:@"occuranceCount"];

    has = self->_has;
  }

  if ((has & 4) != 0)
  {
    v8 = [NSNumber numberWithInt:self->_totalEventCount];
    [v3 setObject:v8 forKey:@"totalEventCount"];
  }

  trialIdentifier = self->_trialIdentifier;
  if (trialIdentifier)
  {
    v10 = [(ModelMonitoringDataTrialIdentifier *)trialIdentifier dictionaryRepresentation];
    [v3 setObject:v10 forKey:@"trialIdentifier"];
  }

  if ([(NSMutableArray *)self->_dataStates count])
  {
    v11 = [[NSMutableArray alloc] initWithCapacity:{-[NSMutableArray count](self->_dataStates, "count")}];
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v12 = self->_dataStates;
    v13 = [(NSMutableArray *)v12 countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v20;
      do
      {
        for (i = 0; i != v14; i = i + 1)
        {
          if (*v20 != v15)
          {
            objc_enumerationMutation(v12);
          }

          v17 = [*(*(&v19 + 1) + 8 * i) dictionaryRepresentation];
          [v11 addObject:v17];
        }

        v14 = [(NSMutableArray *)v12 countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v14);
    }

    [v3 setObject:v11 forKey:@"dataStates"];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  has = self->_has;
  if (has)
  {
    anomalyType = self->_anomalyType;
    PBDataWriterWriteInt32Field();
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_3:
      if ((has & 4) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_3;
  }

  occuranceCount = self->_occuranceCount;
  PBDataWriterWriteInt32Field();
  if ((*&self->_has & 4) != 0)
  {
LABEL_4:
    totalEventCount = self->_totalEventCount;
    PBDataWriterWriteInt32Field();
  }

LABEL_5:
  if (self->_trialIdentifier)
  {
    PBDataWriterWriteSubmessage();
  }

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v7 = self->_dataStates;
  v8 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v16;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v16 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v15 + 1) + 8 * i);
        PBDataWriterWriteSubmessage();
      }

      v9 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v9);
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  has = self->_has;
  if (has)
  {
    v4[2] = self->_anomalyType;
    *(v4 + 40) |= 1u;
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_3:
      if ((has & 4) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_3;
  }

  v4[6] = self->_occuranceCount;
  *(v4 + 40) |= 2u;
  if ((*&self->_has & 4) != 0)
  {
LABEL_4:
    v4[7] = self->_totalEventCount;
    *(v4 + 40) |= 4u;
  }

LABEL_5:
  v10 = v4;
  if (self->_trialIdentifier)
  {
    [v4 setTrialIdentifier:?];
  }

  if ([(ModelMonitoringDataAnomalyMessage *)self dataStatesCount])
  {
    [v10 clearDataStates];
    v6 = [(ModelMonitoringDataAnomalyMessage *)self dataStatesCount];
    if (v6)
    {
      v7 = v6;
      for (i = 0; i != v7; ++i)
      {
        v9 = [(ModelMonitoringDataAnomalyMessage *)self dataStatesAtIndex:i];
        [v10 addDataStates:v9];
      }
    }
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = v5;
  has = self->_has;
  if (has)
  {
    *(v5 + 2) = self->_anomalyType;
    *(v5 + 40) |= 1u;
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_3:
      if ((has & 4) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_3;
  }

  *(v5 + 6) = self->_occuranceCount;
  *(v5 + 40) |= 2u;
  if ((*&self->_has & 4) != 0)
  {
LABEL_4:
    *(v5 + 7) = self->_totalEventCount;
    *(v5 + 40) |= 4u;
  }

LABEL_5:
  v8 = [(ModelMonitoringDataTrialIdentifier *)self->_trialIdentifier copyWithZone:a3];
  v9 = v6[4];
  v6[4] = v8;

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v10 = self->_dataStates;
  v11 = [(NSMutableArray *)v10 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v18;
    do
    {
      for (i = 0; i != v12; i = i + 1)
      {
        if (*v18 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = [*(*(&v17 + 1) + 8 * i) copyWithZone:{a3, v17}];
        [v6 addDataStates:v15];
      }

      v12 = [(NSMutableArray *)v10 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v12);
  }

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_21;
  }

  v5 = *(v4 + 40);
  if (*&self->_has)
  {
    if ((*(v4 + 40) & 1) == 0 || self->_anomalyType != *(v4 + 2))
    {
      goto LABEL_21;
    }
  }

  else if (*(v4 + 40))
  {
LABEL_21:
    v8 = 0;
    goto LABEL_22;
  }

  if ((*&self->_has & 2) != 0)
  {
    if ((*(v4 + 40) & 2) == 0 || self->_occuranceCount != *(v4 + 6))
    {
      goto LABEL_21;
    }
  }

  else if ((*(v4 + 40) & 2) != 0)
  {
    goto LABEL_21;
  }

  if ((*&self->_has & 4) != 0)
  {
    if ((*(v4 + 40) & 4) == 0 || self->_totalEventCount != *(v4 + 7))
    {
      goto LABEL_21;
    }
  }

  else if ((*(v4 + 40) & 4) != 0)
  {
    goto LABEL_21;
  }

  trialIdentifier = self->_trialIdentifier;
  if (trialIdentifier | *(v4 + 4) && ![(ModelMonitoringDataTrialIdentifier *)trialIdentifier isEqual:?])
  {
    goto LABEL_21;
  }

  dataStates = self->_dataStates;
  if (dataStates | *(v4 + 2))
  {
    v8 = [(NSMutableArray *)dataStates isEqual:?];
  }

  else
  {
    v8 = 1;
  }

LABEL_22:

  return v8;
}

- (unint64_t)hash
{
  if ((*&self->_has & 1) == 0)
  {
    v3 = 0;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    v4 = 0;
    if ((*&self->_has & 4) != 0)
    {
      goto LABEL_4;
    }

LABEL_7:
    v5 = 0;
    goto LABEL_8;
  }

  v3 = 2654435761 * self->_anomalyType;
  if ((*&self->_has & 2) == 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  v4 = 2654435761 * self->_occuranceCount;
  if ((*&self->_has & 4) == 0)
  {
    goto LABEL_7;
  }

LABEL_4:
  v5 = 2654435761 * self->_totalEventCount;
LABEL_8:
  v6 = v4 ^ v3 ^ v5 ^ [(ModelMonitoringDataTrialIdentifier *)self->_trialIdentifier hash];
  return v6 ^ [(NSMutableArray *)self->_dataStates hash];
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v5 = v4;
  v6 = *(v4 + 40);
  if (v6)
  {
    self->_anomalyType = v4[2];
    *&self->_has |= 1u;
    v6 = *(v4 + 40);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((v4[10] & 2) == 0)
  {
    goto LABEL_3;
  }

  self->_occuranceCount = v4[6];
  *&self->_has |= 2u;
  if ((v4[10] & 4) != 0)
  {
LABEL_4:
    self->_totalEventCount = v4[7];
    *&self->_has |= 4u;
  }

LABEL_5:
  trialIdentifier = self->_trialIdentifier;
  v8 = *(v5 + 4);
  if (trialIdentifier)
  {
    if (v8)
    {
      [(ModelMonitoringDataTrialIdentifier *)trialIdentifier mergeFrom:?];
    }
  }

  else if (v8)
  {
    [(ModelMonitoringDataAnomalyMessage *)self setTrialIdentifier:?];
  }

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v9 = *(v5 + 2);
  v10 = [v9 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v15;
    do
    {
      for (i = 0; i != v11; i = i + 1)
      {
        if (*v15 != v12)
        {
          objc_enumerationMutation(v9);
        }

        [(ModelMonitoringDataAnomalyMessage *)self addDataStates:*(*(&v14 + 1) + 8 * i), v14];
      }

      v11 = [v9 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v11);
  }
}

@end