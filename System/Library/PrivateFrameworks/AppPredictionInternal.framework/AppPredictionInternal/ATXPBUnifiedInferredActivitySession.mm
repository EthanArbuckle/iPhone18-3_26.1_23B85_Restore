@interface ATXPBUnifiedInferredActivitySession
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (id)initFromJSON:(id)n;
- (id)jsonRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasEndTime:(BOOL)time;
- (void)setHasInferredActivity:(BOOL)activity;
- (void)setHasStartTime:(BOOL)time;
- (void)writeTo:(id)to;
@end

@implementation ATXPBUnifiedInferredActivitySession

- (id)initFromJSON:(id)n
{
  nCopy = n;
  v5 = [(ATXPBUnifiedInferredActivitySession *)self init];
  if (v5)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = nCopy;
      v7 = [v6 objectForKeyedSubscript:@"confidence"];
      [v7 doubleValue];
      [(ATXPBUnifiedInferredActivitySession *)v5 setConfidence:?];

      v8 = [v6 objectForKeyedSubscript:@"inferredActivity"];
      -[ATXPBUnifiedInferredActivitySession setInferredActivity:](v5, "setInferredActivity:", [v8 integerValue]);

      v9 = [v6 objectForKeyedSubscript:@"startTime"];
      [v9 doubleValue];
      [(ATXPBUnifiedInferredActivitySession *)v5 setStartTime:?];

      v10 = [v6 objectForKeyedSubscript:@"source"];
      [(ATXPBUnifiedInferredActivitySession *)v5 setSource:v10];

      v11 = [v6 objectForKeyedSubscript:@"endTime"];

      [v11 doubleValue];
      [(ATXPBUnifiedInferredActivitySession *)v5 setEndTime:?];
    }
  }

  return v5;
}

- (id)jsonRepresentation
{
  v25[5] = *MEMORY[0x277D85DE8];
  v24[0] = @"confidence";
  v3 = MEMORY[0x277CEB600];
  v4 = MEMORY[0x277CCABB0];
  [(ATXPBUnifiedInferredActivitySession *)self confidence];
  v23 = [v4 numberWithDouble:?];
  v5 = [v3 wrapObject:v23];
  v25[0] = v5;
  v24[1] = @"inferredActivity";
  v6 = MEMORY[0x277CEB600];
  v7 = [MEMORY[0x277CCABB0] numberWithLongLong:{-[ATXPBUnifiedInferredActivitySession inferredActivity](self, "inferredActivity")}];
  v8 = [v6 wrapObject:v7];
  v25[1] = v8;
  v24[2] = @"startTime";
  v9 = MEMORY[0x277CEB600];
  v10 = MEMORY[0x277CCABB0];
  [(ATXPBUnifiedInferredActivitySession *)self startTime];
  v11 = [v10 numberWithDouble:?];
  v12 = [v9 wrapObject:v11];
  v25[2] = v12;
  v24[3] = @"endTime";
  v13 = MEMORY[0x277CEB600];
  v14 = MEMORY[0x277CCABB0];
  [(ATXPBUnifiedInferredActivitySession *)self endTime];
  v15 = [v14 numberWithDouble:?];
  v16 = [v13 wrapObject:v15];
  v25[3] = v16;
  v24[4] = @"source";
  v17 = MEMORY[0x277CEB600];
  source = [(ATXPBUnifiedInferredActivitySession *)self source];
  v19 = [v17 wrapObject:source];
  v25[4] = v19;
  v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v25 forKeys:v24 count:5];

  v21 = *MEMORY[0x277D85DE8];

  return v20;
}

- (void)setHasStartTime:(BOOL)time
{
  if (time)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7 | v3;
}

- (void)setHasEndTime:(BOOL)time
{
  if (time)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (void)setHasInferredActivity:(BOOL)activity
{
  if (activity)
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
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = ATXPBUnifiedInferredActivitySession;
  v4 = [(ATXPBUnifiedInferredActivitySession *)&v8 description];
  dictionaryRepresentation = [(ATXPBUnifiedInferredActivitySession *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  has = self->_has;
  if ((has & 8) != 0)
  {
    v9 = [MEMORY[0x277CCABB0] numberWithDouble:self->_startTime];
    [dictionary setObject:v9 forKey:@"startTime"];

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

  v10 = [MEMORY[0x277CCABB0] numberWithDouble:self->_endTime];
  [dictionary setObject:v10 forKey:@"endTime"];

  if ((*&self->_has & 4) != 0)
  {
LABEL_4:
    v5 = [MEMORY[0x277CCABB0] numberWithLongLong:self->_inferredActivity];
    [dictionary setObject:v5 forKey:@"inferredActivity"];
  }

LABEL_5:
  source = self->_source;
  if (source)
  {
    [dictionary setObject:source forKey:@"source"];
  }

  if (*&self->_has)
  {
    v7 = [MEMORY[0x277CCABB0] numberWithDouble:self->_confidence];
    [dictionary setObject:v7 forKey:@"confidence"];
  }

  return dictionary;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  has = self->_has;
  if ((has & 8) != 0)
  {
    startTime = self->_startTime;
    PBDataWriterWriteDoubleField();
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

  endTime = self->_endTime;
  PBDataWriterWriteDoubleField();
  if ((*&self->_has & 4) != 0)
  {
LABEL_4:
    inferredActivity = self->_inferredActivity;
    PBDataWriterWriteInt64Field();
  }

LABEL_5:
  if (self->_source)
  {
    PBDataWriterWriteStringField();
  }

  if (*&self->_has)
  {
    confidence = self->_confidence;
    PBDataWriterWriteDoubleField();
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  has = self->_has;
  if ((has & 8) != 0)
  {
    toCopy[4] = *&self->_startTime;
    *(toCopy + 48) |= 8u;
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

  toCopy[2] = *&self->_endTime;
  *(toCopy + 48) |= 2u;
  if ((*&self->_has & 4) != 0)
  {
LABEL_4:
    toCopy[3] = self->_inferredActivity;
    *(toCopy + 48) |= 4u;
  }

LABEL_5:
  if (self->_source)
  {
    v6 = toCopy;
    [toCopy setSource:?];
    toCopy = v6;
  }

  if (*&self->_has)
  {
    toCopy[1] = *&self->_confidence;
    *(toCopy + 48) |= 1u;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = v5;
  has = self->_has;
  if ((has & 8) != 0)
  {
    *(v5 + 32) = self->_startTime;
    *(v5 + 48) |= 8u;
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

  *(v5 + 16) = self->_endTime;
  *(v5 + 48) |= 2u;
  if ((*&self->_has & 4) != 0)
  {
LABEL_4:
    *(v5 + 24) = self->_inferredActivity;
    *(v5 + 48) |= 4u;
  }

LABEL_5:
  v8 = [(NSString *)self->_source copyWithZone:zone];
  v9 = *(v6 + 40);
  *(v6 + 40) = v8;

  if (*&self->_has)
  {
    *(v6 + 8) = self->_confidence;
    *(v6 + 48) |= 1u;
  }

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_24;
  }

  has = self->_has;
  v6 = *(equalCopy + 48);
  if ((has & 8) != 0)
  {
    if ((*(equalCopy + 48) & 8) == 0 || self->_startTime != *(equalCopy + 4))
    {
      goto LABEL_24;
    }
  }

  else if ((*(equalCopy + 48) & 8) != 0)
  {
    goto LABEL_24;
  }

  if ((*&self->_has & 2) != 0)
  {
    if ((*(equalCopy + 48) & 2) == 0 || self->_endTime != *(equalCopy + 2))
    {
      goto LABEL_24;
    }
  }

  else if ((*(equalCopy + 48) & 2) != 0)
  {
    goto LABEL_24;
  }

  if ((*&self->_has & 4) != 0)
  {
    if ((*(equalCopy + 48) & 4) == 0 || self->_inferredActivity != *(equalCopy + 3))
    {
      goto LABEL_24;
    }
  }

  else if ((*(equalCopy + 48) & 4) != 0)
  {
    goto LABEL_24;
  }

  source = self->_source;
  if (source | *(equalCopy + 5))
  {
    if (![(NSString *)source isEqual:?])
    {
LABEL_24:
      v8 = 0;
      goto LABEL_25;
    }

    has = self->_has;
  }

  v8 = (*(equalCopy + 48) & 1) == 0;
  if (has)
  {
    if ((*(equalCopy + 48) & 1) == 0 || self->_confidence != *(equalCopy + 1))
    {
      goto LABEL_24;
    }

    v8 = 1;
  }

LABEL_25:

  return v8;
}

- (unint64_t)hash
{
  if ((*&self->_has & 8) != 0)
  {
    startTime = self->_startTime;
    if (startTime < 0.0)
    {
      startTime = -startTime;
    }

    *v2.i64 = floor(startTime + 0.5);
    v7 = (startTime - *v2.i64) * 1.84467441e19;
    *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
    v8.f64[0] = NAN;
    v8.f64[1] = NAN;
    v2 = vbslq_s8(vnegq_f64(v8), v3, v2);
    v5 = 2654435761u * *v2.i64;
    if (v7 >= 0.0)
    {
      if (v7 > 0.0)
      {
        v5 += v7;
      }
    }

    else
    {
      v5 -= fabs(v7);
    }
  }

  else
  {
    v5 = 0;
  }

  if ((*&self->_has & 2) != 0)
  {
    endTime = self->_endTime;
    if (endTime < 0.0)
    {
      endTime = -endTime;
    }

    *v2.i64 = floor(endTime + 0.5);
    v11 = (endTime - *v2.i64) * 1.84467441e19;
    *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
    v12.f64[0] = NAN;
    v12.f64[1] = NAN;
    v9 = 2654435761u * *vbslq_s8(vnegq_f64(v12), v3, v2).i64;
    if (v11 >= 0.0)
    {
      if (v11 > 0.0)
      {
        v9 += v11;
      }
    }

    else
    {
      v9 -= fabs(v11);
    }
  }

  else
  {
    v9 = 0;
  }

  if ((*&self->_has & 4) != 0)
  {
    v13 = 2654435761 * self->_inferredActivity;
  }

  else
  {
    v13 = 0;
  }

  v14 = [(NSString *)self->_source hash];
  if (*&self->_has)
  {
    confidence = self->_confidence;
    if (confidence < 0.0)
    {
      confidence = -confidence;
    }

    *v15.i64 = floor(confidence + 0.5);
    v19 = (confidence - *v15.i64) * 1.84467441e19;
    *v16.i64 = *v15.i64 - trunc(*v15.i64 * 5.42101086e-20) * 1.84467441e19;
    v20.f64[0] = NAN;
    v20.f64[1] = NAN;
    v17 = 2654435761u * *vbslq_s8(vnegq_f64(v20), v16, v15).i64;
    if (v19 >= 0.0)
    {
      if (v19 > 0.0)
      {
        v17 += v19;
      }
    }

    else
    {
      v17 -= fabs(v19);
    }
  }

  else
  {
    v17 = 0;
  }

  return v9 ^ v5 ^ v13 ^ v17 ^ v14;
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v5 = *(fromCopy + 48);
  if ((v5 & 8) != 0)
  {
    self->_startTime = *(fromCopy + 4);
    *&self->_has |= 8u;
    v5 = *(fromCopy + 48);
    if ((v5 & 2) == 0)
    {
LABEL_3:
      if ((v5 & 4) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((*(fromCopy + 48) & 2) == 0)
  {
    goto LABEL_3;
  }

  self->_endTime = *(fromCopy + 2);
  *&self->_has |= 2u;
  if ((*(fromCopy + 48) & 4) != 0)
  {
LABEL_4:
    self->_inferredActivity = *(fromCopy + 3);
    *&self->_has |= 4u;
  }

LABEL_5:
  if (*(fromCopy + 5))
  {
    v6 = fromCopy;
    [(ATXPBUnifiedInferredActivitySession *)self setSource:?];
    fromCopy = v6;
  }

  if (*(fromCopy + 48))
  {
    self->_confidence = *(fromCopy + 1);
    *&self->_has |= 1u;
  }
}

@end