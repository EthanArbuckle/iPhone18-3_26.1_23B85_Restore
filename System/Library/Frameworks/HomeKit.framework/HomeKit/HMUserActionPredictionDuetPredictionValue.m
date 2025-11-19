@interface HMUserActionPredictionDuetPredictionValue
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsPredictionType:(id)a3;
- (int)predictionType;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasMapIsValid:(BOOL)a3;
- (void)setHasModelHasSignificantData:(BOOL)a3;
- (void)setHasPredictionType:(BOOL)a3;
- (void)setHasScore:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation HMUserActionPredictionDuetPredictionValue

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v7 = v4;
  if (*(v4 + 3))
  {
    [(HMUserActionPredictionDuetPredictionValue *)self setHomeIdentifier:?];
    v4 = v7;
  }

  if (*(v4 + 7))
  {
    [(HMUserActionPredictionDuetPredictionValue *)self setTargetIdentifier:?];
    v4 = v7;
  }

  if (*(v4 + 6))
  {
    [(HMUserActionPredictionDuetPredictionValue *)self setTargetAccessoryServiceIdentifier:?];
    v4 = v7;
  }

  v5 = *(v4 + 68);
  if ((v5 & 2) != 0)
  {
    self->_score = *(v4 + 2);
    *&self->_has |= 2u;
    v5 = *(v4 + 68);
  }

  if ((v5 & 4) != 0)
  {
    self->_predictionType = *(v4 + 8);
    *&self->_has |= 4u;
  }

  if (*(v4 + 5))
  {
    [(HMUserActionPredictionDuetPredictionValue *)self setReason:?];
    v4 = v7;
  }

  v6 = *(v4 + 68);
  if (v6)
  {
    self->_legacyScore = *(v4 + 1);
    *&self->_has |= 1u;
    v6 = *(v4 + 68);
    if ((v6 & 0x10) == 0)
    {
LABEL_15:
      if ((v6 & 8) == 0)
      {
        goto LABEL_17;
      }

      goto LABEL_16;
    }
  }

  else if ((*(v4 + 68) & 0x10) == 0)
  {
    goto LABEL_15;
  }

  self->_modelHasSignificantData = *(v4 + 65);
  *&self->_has |= 0x10u;
  if ((*(v4 + 68) & 8) != 0)
  {
LABEL_16:
    self->_mapIsValid = *(v4 + 64);
    *&self->_has |= 8u;
  }

LABEL_17:
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_homeIdentifier hash];
  v4 = [(NSString *)self->_targetIdentifier hash];
  v5 = [(NSString *)self->_targetAccessoryServiceIdentifier hash];
  if ((*&self->_has & 2) != 0)
  {
    score = self->_score;
    if (score < 0.0)
    {
      score = -score;
    }

    *v6.i64 = floor(score + 0.5);
    v10 = (score - *v6.i64) * 1.84467441e19;
    *v7.i64 = *v6.i64 - trunc(*v6.i64 * 5.42101086e-20) * 1.84467441e19;
    v11.f64[0] = NAN;
    v11.f64[1] = NAN;
    v8 = 2654435761u * *vbslq_s8(vnegq_f64(v11), v7, v6).i64;
    if (v10 >= 0.0)
    {
      if (v10 > 0.0)
      {
        v8 += v10;
      }
    }

    else
    {
      v8 -= fabs(v10);
    }
  }

  else
  {
    v8 = 0;
  }

  if ((*&self->_has & 4) != 0)
  {
    v12 = 2654435761 * self->_predictionType;
  }

  else
  {
    v12 = 0;
  }

  v13 = [(NSString *)self->_reason hash];
  if (*&self->_has)
  {
    legacyScore = self->_legacyScore;
    if (legacyScore < 0.0)
    {
      legacyScore = -legacyScore;
    }

    *v14.i64 = floor(legacyScore + 0.5);
    v18 = (legacyScore - *v14.i64) * 1.84467441e19;
    *v15.i64 = *v14.i64 - trunc(*v14.i64 * 5.42101086e-20) * 1.84467441e19;
    v19.f64[0] = NAN;
    v19.f64[1] = NAN;
    v16 = 2654435761u * *vbslq_s8(vnegq_f64(v19), v15, v14).i64;
    if (v18 >= 0.0)
    {
      if (v18 > 0.0)
      {
        v16 += v18;
      }
    }

    else
    {
      v16 -= fabs(v18);
    }
  }

  else
  {
    v16 = 0;
  }

  if ((*&self->_has & 0x10) != 0)
  {
    v20 = 2654435761 * self->_modelHasSignificantData;
    if ((*&self->_has & 8) != 0)
    {
      goto LABEL_22;
    }

LABEL_24:
    v21 = 0;
    return v4 ^ v3 ^ v5 ^ v8 ^ v12 ^ v13 ^ v16 ^ v20 ^ v21;
  }

  v20 = 0;
  if ((*&self->_has & 8) == 0)
  {
    goto LABEL_24;
  }

LABEL_22:
  v21 = 2654435761 * self->_mapIsValid;
  return v4 ^ v3 ^ v5 ^ v8 ^ v12 ^ v13 ^ v16 ^ v20 ^ v21;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_34;
  }

  homeIdentifier = self->_homeIdentifier;
  if (homeIdentifier | *(v4 + 3))
  {
    if (![(NSString *)homeIdentifier isEqual:?])
    {
      goto LABEL_34;
    }
  }

  targetIdentifier = self->_targetIdentifier;
  if (targetIdentifier | *(v4 + 7))
  {
    if (![(NSString *)targetIdentifier isEqual:?])
    {
      goto LABEL_34;
    }
  }

  targetAccessoryServiceIdentifier = self->_targetAccessoryServiceIdentifier;
  if (targetAccessoryServiceIdentifier | *(v4 + 6))
  {
    if (![(NSString *)targetAccessoryServiceIdentifier isEqual:?])
    {
      goto LABEL_34;
    }
  }

  has = self->_has;
  v9 = *(v4 + 68);
  if ((has & 2) != 0)
  {
    if ((*(v4 + 68) & 2) == 0 || self->_score != *(v4 + 2))
    {
      goto LABEL_34;
    }
  }

  else if ((*(v4 + 68) & 2) != 0)
  {
    goto LABEL_34;
  }

  if ((*&self->_has & 4) != 0)
  {
    if ((*(v4 + 68) & 4) == 0 || self->_predictionType != *(v4 + 8))
    {
      goto LABEL_34;
    }
  }

  else if ((*(v4 + 68) & 4) != 0)
  {
    goto LABEL_34;
  }

  reason = self->_reason;
  if (reason | *(v4 + 5))
  {
    if (![(NSString *)reason isEqual:?])
    {
      goto LABEL_34;
    }

    has = self->_has;
    v9 = *(v4 + 68);
  }

  if (has)
  {
    if ((v9 & 1) == 0 || self->_legacyScore != *(v4 + 1))
    {
      goto LABEL_34;
    }
  }

  else if (v9)
  {
    goto LABEL_34;
  }

  if ((has & 0x10) != 0)
  {
    if ((v9 & 0x10) == 0)
    {
      goto LABEL_34;
    }

    v13 = *(v4 + 65);
    if (self->_modelHasSignificantData)
    {
      if ((*(v4 + 65) & 1) == 0)
      {
        goto LABEL_34;
      }
    }

    else if (*(v4 + 65))
    {
      goto LABEL_34;
    }
  }

  else if ((v9 & 0x10) != 0)
  {
    goto LABEL_34;
  }

  v11 = (v9 & 8) == 0;
  if ((has & 8) != 0)
  {
    if ((v9 & 8) != 0)
    {
      if (self->_mapIsValid)
      {
        if (*(v4 + 64))
        {
          goto LABEL_42;
        }
      }

      else if (!*(v4 + 64))
      {
LABEL_42:
        v11 = 1;
        goto LABEL_35;
      }
    }

LABEL_34:
    v11 = 0;
  }

LABEL_35:

  return v11;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_homeIdentifier copyWithZone:a3];
  v7 = *(v5 + 24);
  *(v5 + 24) = v6;

  v8 = [(NSString *)self->_targetIdentifier copyWithZone:a3];
  v9 = *(v5 + 56);
  *(v5 + 56) = v8;

  v10 = [(NSString *)self->_targetAccessoryServiceIdentifier copyWithZone:a3];
  v11 = *(v5 + 48);
  *(v5 + 48) = v10;

  has = self->_has;
  if ((has & 2) != 0)
  {
    *(v5 + 16) = self->_score;
    *(v5 + 68) |= 2u;
    has = self->_has;
  }

  if ((has & 4) != 0)
  {
    *(v5 + 32) = self->_predictionType;
    *(v5 + 68) |= 4u;
  }

  v13 = [(NSString *)self->_reason copyWithZone:a3];
  v14 = *(v5 + 40);
  *(v5 + 40) = v13;

  v15 = self->_has;
  if ((v15 & 1) == 0)
  {
    if ((*&self->_has & 0x10) == 0)
    {
      goto LABEL_7;
    }

LABEL_11:
    *(v5 + 65) = self->_modelHasSignificantData;
    *(v5 + 68) |= 0x10u;
    if ((*&self->_has & 8) == 0)
    {
      return v5;
    }

    goto LABEL_8;
  }

  *(v5 + 8) = self->_legacyScore;
  *(v5 + 68) |= 1u;
  v15 = self->_has;
  if ((v15 & 0x10) != 0)
  {
    goto LABEL_11;
  }

LABEL_7:
  if ((v15 & 8) != 0)
  {
LABEL_8:
    *(v5 + 64) = self->_mapIsValid;
    *(v5 + 68) |= 8u;
  }

  return v5;
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  v7 = v4;
  if (self->_homeIdentifier)
  {
    [v4 setHomeIdentifier:?];
    v4 = v7;
  }

  if (self->_targetIdentifier)
  {
    [v7 setTargetIdentifier:?];
    v4 = v7;
  }

  if (self->_targetAccessoryServiceIdentifier)
  {
    [v7 setTargetAccessoryServiceIdentifier:?];
    v4 = v7;
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    *(v4 + 2) = *&self->_score;
    *(v4 + 68) |= 2u;
    has = self->_has;
  }

  if ((has & 4) != 0)
  {
    *(v4 + 8) = self->_predictionType;
    *(v4 + 68) |= 4u;
  }

  if (self->_reason)
  {
    [v7 setReason:?];
    v4 = v7;
  }

  v6 = self->_has;
  if (v6)
  {
    *(v4 + 1) = *&self->_legacyScore;
    *(v4 + 68) |= 1u;
    v6 = self->_has;
    if ((v6 & 0x10) == 0)
    {
LABEL_15:
      if ((v6 & 8) == 0)
      {
        goto LABEL_17;
      }

      goto LABEL_16;
    }
  }

  else if ((*&self->_has & 0x10) == 0)
  {
    goto LABEL_15;
  }

  *(v4 + 65) = self->_modelHasSignificantData;
  *(v4 + 68) |= 0x10u;
  if ((*&self->_has & 8) != 0)
  {
LABEL_16:
    *(v4 + 64) = self->_mapIsValid;
    *(v4 + 68) |= 8u;
  }

LABEL_17:
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v12 = v4;
  if (self->_homeIdentifier)
  {
    PBDataWriterWriteStringField();
    v4 = v12;
  }

  if (self->_targetIdentifier)
  {
    PBDataWriterWriteStringField();
    v4 = v12;
  }

  if (self->_targetAccessoryServiceIdentifier)
  {
    PBDataWriterWriteStringField();
    v4 = v12;
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    score = self->_score;
    PBDataWriterWriteDoubleField();
    v4 = v12;
    has = self->_has;
  }

  if ((has & 4) != 0)
  {
    predictionType = self->_predictionType;
    PBDataWriterWriteInt32Field();
    v4 = v12;
  }

  if (self->_reason)
  {
    PBDataWriterWriteStringField();
    v4 = v12;
  }

  v8 = self->_has;
  if (v8)
  {
    legacyScore = self->_legacyScore;
    PBDataWriterWriteDoubleField();
    v4 = v12;
    v8 = self->_has;
    if ((v8 & 0x10) == 0)
    {
LABEL_15:
      if ((v8 & 8) == 0)
      {
        goto LABEL_17;
      }

      goto LABEL_16;
    }
  }

  else if ((*&self->_has & 0x10) == 0)
  {
    goto LABEL_15;
  }

  modelHasSignificantData = self->_modelHasSignificantData;
  PBDataWriterWriteBOOLField();
  v4 = v12;
  if ((*&self->_has & 8) != 0)
  {
LABEL_16:
    mapIsValid = self->_mapIsValid;
    PBDataWriterWriteBOOLField();
    v4 = v12;
  }

LABEL_17:
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v4 = v3;
  homeIdentifier = self->_homeIdentifier;
  if (homeIdentifier)
  {
    [v3 setObject:homeIdentifier forKey:@"homeIdentifier"];
  }

  targetIdentifier = self->_targetIdentifier;
  if (targetIdentifier)
  {
    [v4 setObject:targetIdentifier forKey:@"targetIdentifier"];
  }

  targetAccessoryServiceIdentifier = self->_targetAccessoryServiceIdentifier;
  if (targetAccessoryServiceIdentifier)
  {
    [v4 setObject:targetAccessoryServiceIdentifier forKey:@"targetAccessoryServiceIdentifier"];
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    v9 = [MEMORY[0x1E696AD98] numberWithDouble:self->_score];
    [v4 setObject:v9 forKey:@"score"];

    has = self->_has;
  }

  if ((has & 4) != 0)
  {
    predictionType = self->_predictionType;
    if (predictionType >= 3)
    {
      v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", self->_predictionType];
    }

    else
    {
      v11 = off_1E754E4A0[predictionType];
    }

    [v4 setObject:v11 forKey:@"predictionType"];
  }

  reason = self->_reason;
  if (reason)
  {
    [v4 setObject:reason forKey:@"reason"];
  }

  v13 = self->_has;
  if (v13)
  {
    v16 = [MEMORY[0x1E696AD98] numberWithDouble:self->_legacyScore];
    [v4 setObject:v16 forKey:@"legacyScore"];

    v13 = self->_has;
    if ((v13 & 0x10) == 0)
    {
LABEL_18:
      if ((v13 & 8) == 0)
      {
        goto LABEL_20;
      }

      goto LABEL_19;
    }
  }

  else if ((*&self->_has & 0x10) == 0)
  {
    goto LABEL_18;
  }

  v17 = [MEMORY[0x1E696AD98] numberWithBool:self->_modelHasSignificantData];
  [v4 setObject:v17 forKey:@"modelHasSignificantData"];

  if ((*&self->_has & 8) != 0)
  {
LABEL_19:
    v14 = [MEMORY[0x1E696AD98] numberWithBool:self->_mapIsValid];
    [v4 setObject:v14 forKey:@"mapIsValid"];
  }

LABEL_20:

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = HMUserActionPredictionDuetPredictionValue;
  v4 = [(HMUserActionPredictionDuetPredictionValue *)&v8 description];
  v5 = [(HMUserActionPredictionDuetPredictionValue *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (void)setHasMapIsValid:(BOOL)a3
{
  if (a3)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7 | v3;
}

- (void)setHasModelHasSignificantData:(BOOL)a3
{
  if (a3)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xEF | v3;
}

- (int)StringAsPredictionType:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"unknown"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"scene"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"accessory"])
  {
    v4 = 2;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setHasPredictionType:(BOOL)a3
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

- (int)predictionType
{
  if ((*&self->_has & 4) != 0)
  {
    return self->_predictionType;
  }

  else
  {
    return 0;
  }
}

- (void)setHasScore:(BOOL)a3
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

@end