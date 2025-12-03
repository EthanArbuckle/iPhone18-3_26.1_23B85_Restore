@interface ATXPBUserNotificationModelScore
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (id)initFromJSON:(id)n;
- (id)jsonRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasScore:(BOOL)score;
- (void)setHasScoreTimestamp:(BOOL)timestamp;
- (void)writeTo:(id)to;
@end

@implementation ATXPBUserNotificationModelScore

- (id)initFromJSON:(id)n
{
  nCopy = n;
  v5 = [(ATXPBUserNotificationModelScore *)self init];
  if (v5)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = nCopy;
      v7 = [v6 objectForKeyedSubscript:@"modelId"];
      [(ATXPBUserNotificationModelScore *)v5 setModelId:v7];

      v8 = [v6 objectForKeyedSubscript:@"modelVersion"];
      -[ATXPBUserNotificationModelScore setModelVersion:](v5, "setModelVersion:", [v8 unsignedIntValue]);

      v9 = [v6 objectForKeyedSubscript:@"score"];
      [v9 doubleValue];
      [(ATXPBUserNotificationModelScore *)v5 setScore:?];

      v10 = [v6 objectForKeyedSubscript:@"scoreTimestamp"];
      [v10 doubleValue];
      [(ATXPBUserNotificationModelScore *)v5 setScoreTimestamp:?];

      v11 = [v6 objectForKeyedSubscript:@"scoreUUID"];
      [(ATXPBUserNotificationModelScore *)v5 setScoreUUID:v11];

      v12 = [v6 objectForKeyedSubscript:@"scoreInfo"];

      v13 = [ATXJSONHelper unwrapData:v12];
      [(ATXPBUserNotificationModelScore *)v5 setScoreInfo:v13];
    }
  }

  return v5;
}

- (id)jsonRepresentation
{
  v15[6] = *MEMORY[0x1E69E9840];
  v14[0] = @"modelId";
  v3 = [ATXJSONHelper wrapObject:self->_modelId];
  v15[0] = v3;
  v14[1] = @"modelVersion";
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_modelVersion];
  v5 = [ATXJSONHelper wrapObject:v4];
  v15[1] = v5;
  v14[2] = @"score";
  v6 = [MEMORY[0x1E696AD98] numberWithDouble:self->_score];
  v7 = [ATXJSONHelper wrapObject:v6];
  v15[2] = v7;
  v14[3] = @"scoreTimestamp";
  v8 = [MEMORY[0x1E696AD98] numberWithDouble:self->_scoreTimestamp];
  v9 = [ATXJSONHelper wrapObject:v8];
  v15[3] = v9;
  v14[4] = @"scoreUUID";
  v10 = [ATXJSONHelper wrapObject:self->_scoreUUID];
  v15[4] = v10;
  v14[5] = @"scoreInfo";
  v11 = [ATXJSONHelper wrapObject:self->_scoreInfo];
  v15[5] = v11;
  v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:v14 count:6];

  return v12;
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

- (void)setHasScoreTimestamp:(BOOL)timestamp
{
  if (timestamp)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = ATXPBUserNotificationModelScore;
  v4 = [(ATXPBUserNotificationModelScore *)&v8 description];
  dictionaryRepresentation = [(ATXPBUserNotificationModelScore *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v4 = dictionary;
  modelId = self->_modelId;
  if (modelId)
  {
    [dictionary setObject:modelId forKey:@"modelId"];
  }

  has = self->_has;
  if (has)
  {
    v11 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_modelVersion];
    [v4 setObject:v11 forKey:@"modelVersion"];

    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_5:
      if ((has & 4) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_6;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_5;
  }

  v12 = [MEMORY[0x1E696AD98] numberWithDouble:self->_score];
  [v4 setObject:v12 forKey:@"score"];

  if ((*&self->_has & 4) != 0)
  {
LABEL_6:
    v7 = [MEMORY[0x1E696AD98] numberWithDouble:self->_scoreTimestamp];
    [v4 setObject:v7 forKey:@"scoreTimestamp"];
  }

LABEL_7:
  scoreUUID = self->_scoreUUID;
  if (scoreUUID)
  {
    [v4 setObject:scoreUUID forKey:@"scoreUUID"];
  }

  scoreInfo = self->_scoreInfo;
  if (scoreInfo)
  {
    [v4 setObject:scoreInfo forKey:@"scoreInfo"];
  }

  return v4;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v6 = toCopy;
  if (self->_modelId)
  {
    PBDataWriterWriteStringField();
    toCopy = v6;
  }

  has = self->_has;
  if (has)
  {
    PBDataWriterWriteUint64Field();
    toCopy = v6;
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_5:
      if ((has & 4) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_6;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_5;
  }

  PBDataWriterWriteDoubleField();
  toCopy = v6;
  if ((*&self->_has & 4) != 0)
  {
LABEL_6:
    PBDataWriterWriteDoubleField();
    toCopy = v6;
  }

LABEL_7:
  if (self->_scoreUUID)
  {
    PBDataWriterWriteStringField();
    toCopy = v6;
  }

  if (self->_scoreInfo)
  {
    PBDataWriterWriteDataField();
    toCopy = v6;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  v6 = toCopy;
  if (self->_modelId)
  {
    [toCopy setModelId:?];
    toCopy = v6;
  }

  has = self->_has;
  if (has)
  {
    *(toCopy + 1) = self->_modelVersion;
    *(toCopy + 56) |= 1u;
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_5:
      if ((has & 4) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_6;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_5;
  }

  *(toCopy + 2) = *&self->_score;
  *(toCopy + 56) |= 2u;
  if ((*&self->_has & 4) != 0)
  {
LABEL_6:
    *(toCopy + 3) = *&self->_scoreTimestamp;
    *(toCopy + 56) |= 4u;
  }

LABEL_7:
  if (self->_scoreUUID)
  {
    [v6 setScoreUUID:?];
    toCopy = v6;
  }

  if (self->_scoreInfo)
  {
    [v6 setScoreInfo:?];
    toCopy = v6;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_modelId copyWithZone:zone];
  v7 = *(v5 + 32);
  *(v5 + 32) = v6;

  has = self->_has;
  if ((has & 1) == 0)
  {
    if ((*&self->_has & 2) == 0)
    {
      goto LABEL_3;
    }

LABEL_7:
    *(v5 + 16) = self->_score;
    *(v5 + 56) |= 2u;
    if ((*&self->_has & 4) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  *(v5 + 8) = self->_modelVersion;
  *(v5 + 56) |= 1u;
  has = self->_has;
  if ((has & 2) != 0)
  {
    goto LABEL_7;
  }

LABEL_3:
  if ((has & 4) != 0)
  {
LABEL_4:
    *(v5 + 24) = self->_scoreTimestamp;
    *(v5 + 56) |= 4u;
  }

LABEL_5:
  v9 = [(NSString *)self->_scoreUUID copyWithZone:zone];
  v10 = *(v5 + 48);
  *(v5 + 48) = v9;

  v11 = [(NSData *)self->_scoreInfo copyWithZone:zone];
  v12 = *(v5 + 40);
  *(v5 + 40) = v11;

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_23;
  }

  modelId = self->_modelId;
  if (modelId | *(equalCopy + 4))
  {
    if (![(NSString *)modelId isEqual:?])
    {
      goto LABEL_23;
    }
  }

  if (*&self->_has)
  {
    if ((*(equalCopy + 56) & 1) == 0 || self->_modelVersion != *(equalCopy + 1))
    {
      goto LABEL_23;
    }
  }

  else if (*(equalCopy + 56))
  {
LABEL_23:
    v8 = 0;
    goto LABEL_24;
  }

  if ((*&self->_has & 2) != 0)
  {
    if ((*(equalCopy + 56) & 2) == 0 || self->_score != *(equalCopy + 2))
    {
      goto LABEL_23;
    }
  }

  else if ((*(equalCopy + 56) & 2) != 0)
  {
    goto LABEL_23;
  }

  if ((*&self->_has & 4) != 0)
  {
    if ((*(equalCopy + 56) & 4) == 0 || self->_scoreTimestamp != *(equalCopy + 3))
    {
      goto LABEL_23;
    }
  }

  else if ((*(equalCopy + 56) & 4) != 0)
  {
    goto LABEL_23;
  }

  scoreUUID = self->_scoreUUID;
  if (scoreUUID | *(equalCopy + 6) && ![(NSString *)scoreUUID isEqual:?])
  {
    goto LABEL_23;
  }

  scoreInfo = self->_scoreInfo;
  if (scoreInfo | *(equalCopy + 5))
  {
    v8 = [(NSData *)scoreInfo isEqual:?];
  }

  else
  {
    v8 = 1;
  }

LABEL_24:

  return v8;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_modelId hash];
  if (*&self->_has)
  {
    v6 = 2654435761u * self->_modelVersion;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_3;
    }

LABEL_8:
    v10 = 0;
    goto LABEL_9;
  }

  v6 = 0;
  if ((*&self->_has & 2) == 0)
  {
    goto LABEL_8;
  }

LABEL_3:
  score = self->_score;
  if (score < 0.0)
  {
    score = -score;
  }

  *v4.i64 = floor(score + 0.5);
  v8 = (score - *v4.i64) * 1.84467441e19;
  *v5.i64 = *v4.i64 - trunc(*v4.i64 * 5.42101086e-20) * 1.84467441e19;
  v9.f64[0] = NAN;
  v9.f64[1] = NAN;
  v4 = vbslq_s8(vnegq_f64(v9), v5, v4);
  v10 = 2654435761u * *v4.i64;
  if (v8 >= 0.0)
  {
    if (v8 > 0.0)
    {
      v10 += v8;
    }
  }

  else
  {
    v10 -= fabs(v8);
  }

LABEL_9:
  if ((*&self->_has & 4) != 0)
  {
    scoreTimestamp = self->_scoreTimestamp;
    if (scoreTimestamp < 0.0)
    {
      scoreTimestamp = -scoreTimestamp;
    }

    *v4.i64 = floor(scoreTimestamp + 0.5);
    v13 = (scoreTimestamp - *v4.i64) * 1.84467441e19;
    *v5.i64 = *v4.i64 - trunc(*v4.i64 * 5.42101086e-20) * 1.84467441e19;
    v14.f64[0] = NAN;
    v14.f64[1] = NAN;
    v11 = 2654435761u * *vbslq_s8(vnegq_f64(v14), v5, v4).i64;
    if (v13 >= 0.0)
    {
      if (v13 > 0.0)
      {
        v11 += v13;
      }
    }

    else
    {
      v11 -= fabs(v13);
    }
  }

  else
  {
    v11 = 0;
  }

  v15 = v6 ^ v3 ^ v10 ^ v11 ^ [(NSString *)self->_scoreUUID hash];
  return v15 ^ [(NSData *)self->_scoreInfo hash];
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v6 = fromCopy;
  if (*(fromCopy + 4))
  {
    [(ATXPBUserNotificationModelScore *)self setModelId:?];
    fromCopy = v6;
  }

  v5 = *(fromCopy + 56);
  if (v5)
  {
    self->_modelVersion = *(fromCopy + 1);
    *&self->_has |= 1u;
    v5 = *(fromCopy + 56);
    if ((v5 & 2) == 0)
    {
LABEL_5:
      if ((v5 & 4) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_6;
    }
  }

  else if ((*(fromCopy + 56) & 2) == 0)
  {
    goto LABEL_5;
  }

  self->_score = *(fromCopy + 2);
  *&self->_has |= 2u;
  if ((*(fromCopy + 56) & 4) != 0)
  {
LABEL_6:
    self->_scoreTimestamp = *(fromCopy + 3);
    *&self->_has |= 4u;
  }

LABEL_7:
  if (*(fromCopy + 6))
  {
    [(ATXPBUserNotificationModelScore *)self setScoreUUID:?];
    fromCopy = v6;
  }

  if (*(fromCopy + 5))
  {
    [(ATXPBUserNotificationModelScore *)self setScoreInfo:?];
    fromCopy = v6;
  }
}

@end