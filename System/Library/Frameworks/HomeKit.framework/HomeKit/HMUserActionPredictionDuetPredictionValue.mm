@interface HMUserActionPredictionDuetPredictionValue
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsPredictionType:(id)type;
- (int)predictionType;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasMapIsValid:(BOOL)valid;
- (void)setHasModelHasSignificantData:(BOOL)data;
- (void)setHasPredictionType:(BOOL)type;
- (void)setHasScore:(BOOL)score;
- (void)writeTo:(id)to;
@end

@implementation HMUserActionPredictionDuetPredictionValue

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v7 = fromCopy;
  if (*(fromCopy + 3))
  {
    [(HMUserActionPredictionDuetPredictionValue *)self setHomeIdentifier:?];
    fromCopy = v7;
  }

  if (*(fromCopy + 7))
  {
    [(HMUserActionPredictionDuetPredictionValue *)self setTargetIdentifier:?];
    fromCopy = v7;
  }

  if (*(fromCopy + 6))
  {
    [(HMUserActionPredictionDuetPredictionValue *)self setTargetAccessoryServiceIdentifier:?];
    fromCopy = v7;
  }

  v5 = *(fromCopy + 68);
  if ((v5 & 2) != 0)
  {
    self->_score = *(fromCopy + 2);
    *&self->_has |= 2u;
    v5 = *(fromCopy + 68);
  }

  if ((v5 & 4) != 0)
  {
    self->_predictionType = *(fromCopy + 8);
    *&self->_has |= 4u;
  }

  if (*(fromCopy + 5))
  {
    [(HMUserActionPredictionDuetPredictionValue *)self setReason:?];
    fromCopy = v7;
  }

  v6 = *(fromCopy + 68);
  if (v6)
  {
    self->_legacyScore = *(fromCopy + 1);
    *&self->_has |= 1u;
    v6 = *(fromCopy + 68);
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

  else if ((*(fromCopy + 68) & 0x10) == 0)
  {
    goto LABEL_15;
  }

  self->_modelHasSignificantData = *(fromCopy + 65);
  *&self->_has |= 0x10u;
  if ((*(fromCopy + 68) & 8) != 0)
  {
LABEL_16:
    self->_mapIsValid = *(fromCopy + 64);
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_34;
  }

  homeIdentifier = self->_homeIdentifier;
  if (homeIdentifier | *(equalCopy + 3))
  {
    if (![(NSString *)homeIdentifier isEqual:?])
    {
      goto LABEL_34;
    }
  }

  targetIdentifier = self->_targetIdentifier;
  if (targetIdentifier | *(equalCopy + 7))
  {
    if (![(NSString *)targetIdentifier isEqual:?])
    {
      goto LABEL_34;
    }
  }

  targetAccessoryServiceIdentifier = self->_targetAccessoryServiceIdentifier;
  if (targetAccessoryServiceIdentifier | *(equalCopy + 6))
  {
    if (![(NSString *)targetAccessoryServiceIdentifier isEqual:?])
    {
      goto LABEL_34;
    }
  }

  has = self->_has;
  v9 = *(equalCopy + 68);
  if ((has & 2) != 0)
  {
    if ((*(equalCopy + 68) & 2) == 0 || self->_score != *(equalCopy + 2))
    {
      goto LABEL_34;
    }
  }

  else if ((*(equalCopy + 68) & 2) != 0)
  {
    goto LABEL_34;
  }

  if ((*&self->_has & 4) != 0)
  {
    if ((*(equalCopy + 68) & 4) == 0 || self->_predictionType != *(equalCopy + 8))
    {
      goto LABEL_34;
    }
  }

  else if ((*(equalCopy + 68) & 4) != 0)
  {
    goto LABEL_34;
  }

  reason = self->_reason;
  if (reason | *(equalCopy + 5))
  {
    if (![(NSString *)reason isEqual:?])
    {
      goto LABEL_34;
    }

    has = self->_has;
    v9 = *(equalCopy + 68);
  }

  if (has)
  {
    if ((v9 & 1) == 0 || self->_legacyScore != *(equalCopy + 1))
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

    v13 = *(equalCopy + 65);
    if (self->_modelHasSignificantData)
    {
      if ((*(equalCopy + 65) & 1) == 0)
      {
        goto LABEL_34;
      }
    }

    else if (*(equalCopy + 65))
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
        if (*(equalCopy + 64))
        {
          goto LABEL_42;
        }
      }

      else if (!*(equalCopy + 64))
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

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_homeIdentifier copyWithZone:zone];
  v7 = *(v5 + 24);
  *(v5 + 24) = v6;

  v8 = [(NSString *)self->_targetIdentifier copyWithZone:zone];
  v9 = *(v5 + 56);
  *(v5 + 56) = v8;

  v10 = [(NSString *)self->_targetAccessoryServiceIdentifier copyWithZone:zone];
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

  v13 = [(NSString *)self->_reason copyWithZone:zone];
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

- (void)copyTo:(id)to
{
  toCopy = to;
  v7 = toCopy;
  if (self->_homeIdentifier)
  {
    [toCopy setHomeIdentifier:?];
    toCopy = v7;
  }

  if (self->_targetIdentifier)
  {
    [v7 setTargetIdentifier:?];
    toCopy = v7;
  }

  if (self->_targetAccessoryServiceIdentifier)
  {
    [v7 setTargetAccessoryServiceIdentifier:?];
    toCopy = v7;
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    *(toCopy + 2) = *&self->_score;
    *(toCopy + 68) |= 2u;
    has = self->_has;
  }

  if ((has & 4) != 0)
  {
    *(toCopy + 8) = self->_predictionType;
    *(toCopy + 68) |= 4u;
  }

  if (self->_reason)
  {
    [v7 setReason:?];
    toCopy = v7;
  }

  v6 = self->_has;
  if (v6)
  {
    *(toCopy + 1) = *&self->_legacyScore;
    *(toCopy + 68) |= 1u;
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

  *(toCopy + 65) = self->_modelHasSignificantData;
  *(toCopy + 68) |= 0x10u;
  if ((*&self->_has & 8) != 0)
  {
LABEL_16:
    *(toCopy + 64) = self->_mapIsValid;
    *(toCopy + 68) |= 8u;
  }

LABEL_17:
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v12 = toCopy;
  if (self->_homeIdentifier)
  {
    PBDataWriterWriteStringField();
    toCopy = v12;
  }

  if (self->_targetIdentifier)
  {
    PBDataWriterWriteStringField();
    toCopy = v12;
  }

  if (self->_targetAccessoryServiceIdentifier)
  {
    PBDataWriterWriteStringField();
    toCopy = v12;
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    score = self->_score;
    PBDataWriterWriteDoubleField();
    toCopy = v12;
    has = self->_has;
  }

  if ((has & 4) != 0)
  {
    predictionType = self->_predictionType;
    PBDataWriterWriteInt32Field();
    toCopy = v12;
  }

  if (self->_reason)
  {
    PBDataWriterWriteStringField();
    toCopy = v12;
  }

  v8 = self->_has;
  if (v8)
  {
    legacyScore = self->_legacyScore;
    PBDataWriterWriteDoubleField();
    toCopy = v12;
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
  toCopy = v12;
  if ((*&self->_has & 8) != 0)
  {
LABEL_16:
    mapIsValid = self->_mapIsValid;
    PBDataWriterWriteBOOLField();
    toCopy = v12;
  }

LABEL_17:
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v4 = dictionary;
  homeIdentifier = self->_homeIdentifier;
  if (homeIdentifier)
  {
    [dictionary setObject:homeIdentifier forKey:@"homeIdentifier"];
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
  dictionaryRepresentation = [(HMUserActionPredictionDuetPredictionValue *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (void)setHasMapIsValid:(BOOL)valid
{
  if (valid)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7 | v3;
}

- (void)setHasModelHasSignificantData:(BOOL)data
{
  if (data)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xEF | v3;
}

- (int)StringAsPredictionType:(id)type
{
  typeCopy = type;
  if ([typeCopy isEqualToString:@"unknown"])
  {
    v4 = 0;
  }

  else if ([typeCopy isEqualToString:@"scene"])
  {
    v4 = 1;
  }

  else if ([typeCopy isEqualToString:@"accessory"])
  {
    v4 = 2;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setHasPredictionType:(BOOL)type
{
  if (type)
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

- (void)setHasScore:(BOOL)score
{
  if (score)
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