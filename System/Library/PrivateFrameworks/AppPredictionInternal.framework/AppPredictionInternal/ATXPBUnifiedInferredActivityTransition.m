@interface ATXPBUnifiedInferredActivityTransition
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (id)initFromJSON:(id)a3;
- (id)jsonRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasInferredActivity:(BOOL)a3;
- (void)setHasIsActivityStart:(BOOL)a3;
- (void)setHasTransitionTime:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation ATXPBUnifiedInferredActivityTransition

- (void)setHasTransitionTime:(BOOL)a3
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

- (void)setHasIsActivityStart:(BOOL)a3
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

- (void)setHasInferredActivity:(BOOL)a3
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

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = ATXPBUnifiedInferredActivityTransition;
  v4 = [(ATXPBUnifiedInferredActivityTransition *)&v8 description];
  v5 = [(ATXPBUnifiedInferredActivityTransition *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  has = self->_has;
  if ((has & 4) != 0)
  {
    v9 = [MEMORY[0x277CCABB0] numberWithDouble:self->_transitionTime];
    [v3 setObject:v9 forKey:@"transitionTime"];

    has = self->_has;
    if ((has & 8) == 0)
    {
LABEL_3:
      if ((has & 2) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((*&self->_has & 8) == 0)
  {
    goto LABEL_3;
  }

  v10 = [MEMORY[0x277CCABB0] numberWithBool:self->_isActivityStart];
  [v3 setObject:v10 forKey:@"isActivityStart"];

  if ((*&self->_has & 2) != 0)
  {
LABEL_4:
    v5 = [MEMORY[0x277CCABB0] numberWithLongLong:self->_inferredActivity];
    [v3 setObject:v5 forKey:@"inferredActivity"];
  }

LABEL_5:
  source = self->_source;
  if (source)
  {
    [v3 setObject:source forKey:@"source"];
  }

  if (*&self->_has)
  {
    v7 = [MEMORY[0x277CCABB0] numberWithDouble:self->_confidence];
    [v3 setObject:v7 forKey:@"confidence"];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  v9 = a3;
  has = self->_has;
  if ((has & 4) != 0)
  {
    transitionTime = self->_transitionTime;
    PBDataWriterWriteDoubleField();
    has = self->_has;
    if ((has & 8) == 0)
    {
LABEL_3:
      if ((has & 2) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((*&self->_has & 8) == 0)
  {
    goto LABEL_3;
  }

  isActivityStart = self->_isActivityStart;
  PBDataWriterWriteBOOLField();
  if ((*&self->_has & 2) != 0)
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

- (void)copyTo:(id)a3
{
  v4 = a3;
  has = self->_has;
  if ((has & 4) != 0)
  {
    v4[3] = *&self->_transitionTime;
    *(v4 + 44) |= 4u;
    has = self->_has;
    if ((has & 8) == 0)
    {
LABEL_3:
      if ((has & 2) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((*&self->_has & 8) == 0)
  {
    goto LABEL_3;
  }

  *(v4 + 40) = self->_isActivityStart;
  *(v4 + 44) |= 8u;
  if ((*&self->_has & 2) != 0)
  {
LABEL_4:
    v4[2] = self->_inferredActivity;
    *(v4 + 44) |= 2u;
  }

LABEL_5:
  if (self->_source)
  {
    v6 = v4;
    [v4 setSource:?];
    v4 = v6;
  }

  if (*&self->_has)
  {
    v4[1] = *&self->_confidence;
    *(v4 + 44) |= 1u;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = v5;
  has = self->_has;
  if ((has & 4) != 0)
  {
    *(v5 + 24) = self->_transitionTime;
    *(v5 + 44) |= 4u;
    has = self->_has;
    if ((has & 8) == 0)
    {
LABEL_3:
      if ((has & 2) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((*&self->_has & 8) == 0)
  {
    goto LABEL_3;
  }

  *(v5 + 40) = self->_isActivityStart;
  *(v5 + 44) |= 8u;
  if ((*&self->_has & 2) != 0)
  {
LABEL_4:
    *(v5 + 16) = self->_inferredActivity;
    *(v5 + 44) |= 2u;
  }

LABEL_5:
  v8 = [(NSString *)self->_source copyWithZone:a3];
  v9 = *(v6 + 32);
  *(v6 + 32) = v8;

  if (*&self->_has)
  {
    *(v6 + 8) = self->_confidence;
    *(v6 + 44) |= 1u;
  }

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_26;
  }

  has = self->_has;
  v6 = *(v4 + 44);
  if ((has & 4) != 0)
  {
    if ((*(v4 + 44) & 4) == 0 || self->_transitionTime != *(v4 + 3))
    {
      goto LABEL_26;
    }
  }

  else if ((*(v4 + 44) & 4) != 0)
  {
    goto LABEL_26;
  }

  if ((*&self->_has & 8) != 0)
  {
    if ((*(v4 + 44) & 8) == 0)
    {
      goto LABEL_26;
    }

    v7 = *(v4 + 40);
    if (self->_isActivityStart)
    {
      if ((*(v4 + 40) & 1) == 0)
      {
        goto LABEL_26;
      }
    }

    else if (*(v4 + 40))
    {
      goto LABEL_26;
    }
  }

  else if ((*(v4 + 44) & 8) != 0)
  {
    goto LABEL_26;
  }

  if ((*&self->_has & 2) != 0)
  {
    if ((*(v4 + 44) & 2) == 0 || self->_inferredActivity != *(v4 + 2))
    {
      goto LABEL_26;
    }
  }

  else if ((*(v4 + 44) & 2) != 0)
  {
    goto LABEL_26;
  }

  source = self->_source;
  if (source | *(v4 + 4))
  {
    if ([(NSString *)source isEqual:?])
    {
      has = self->_has;
      goto LABEL_21;
    }

LABEL_26:
    v9 = 0;
    goto LABEL_27;
  }

LABEL_21:
  v9 = (*(v4 + 44) & 1) == 0;
  if (has)
  {
    if ((*(v4 + 44) & 1) == 0 || self->_confidence != *(v4 + 1))
    {
      goto LABEL_26;
    }

    v9 = 1;
  }

LABEL_27:

  return v9;
}

- (unint64_t)hash
{
  if ((*&self->_has & 4) != 0)
  {
    transitionTime = self->_transitionTime;
    if (transitionTime < 0.0)
    {
      transitionTime = -transitionTime;
    }

    *v2.i64 = floor(transitionTime + 0.5);
    v7 = (transitionTime - *v2.i64) * 1.84467441e19;
    *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
    v8.f64[0] = NAN;
    v8.f64[1] = NAN;
    v5 = 2654435761u * *vbslq_s8(vnegq_f64(v8), v3, v2).i64;
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

  if ((*&self->_has & 8) != 0)
  {
    v9 = 2654435761 * self->_isActivityStart;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v9 = 0;
    if ((*&self->_has & 2) != 0)
    {
LABEL_11:
      v10 = 2654435761 * self->_inferredActivity;
      goto LABEL_14;
    }
  }

  v10 = 0;
LABEL_14:
  v11 = [(NSString *)self->_source hash];
  if (*&self->_has)
  {
    confidence = self->_confidence;
    if (confidence < 0.0)
    {
      confidence = -confidence;
    }

    *v12.i64 = floor(confidence + 0.5);
    v16 = (confidence - *v12.i64) * 1.84467441e19;
    *v13.i64 = *v12.i64 - trunc(*v12.i64 * 5.42101086e-20) * 1.84467441e19;
    v17.f64[0] = NAN;
    v17.f64[1] = NAN;
    v14 = 2654435761u * *vbslq_s8(vnegq_f64(v17), v13, v12).i64;
    if (v16 >= 0.0)
    {
      if (v16 > 0.0)
      {
        v14 += v16;
      }
    }

    else
    {
      v14 -= fabs(v16);
    }
  }

  else
  {
    v14 = 0;
  }

  return v9 ^ v5 ^ v10 ^ v14 ^ v11;
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v5 = *(v4 + 44);
  if ((v5 & 4) != 0)
  {
    self->_transitionTime = *(v4 + 3);
    *&self->_has |= 4u;
    v5 = *(v4 + 44);
    if ((v5 & 8) == 0)
    {
LABEL_3:
      if ((v5 & 2) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((*(v4 + 44) & 8) == 0)
  {
    goto LABEL_3;
  }

  self->_isActivityStart = *(v4 + 40);
  *&self->_has |= 8u;
  if ((*(v4 + 44) & 2) != 0)
  {
LABEL_4:
    self->_inferredActivity = *(v4 + 2);
    *&self->_has |= 2u;
  }

LABEL_5:
  if (*(v4 + 4))
  {
    v6 = v4;
    [(ATXPBUnifiedInferredActivityTransition *)self setSource:?];
    v4 = v6;
  }

  if (*(v4 + 44))
  {
    self->_confidence = *(v4 + 1);
    *&self->_has |= 1u;
  }
}

- (id)initFromJSON:(id)a3
{
  v4 = a3;
  v5 = [(ATXPBUnifiedInferredActivityTransition *)self init];
  if (v5)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = v4;
      v7 = [v6 objectForKeyedSubscript:@"confidence"];
      [v7 doubleValue];
      [(ATXPBUnifiedInferredActivityTransition *)v5 setConfidence:?];

      v8 = [v6 objectForKeyedSubscript:@"inferredActivity"];
      -[ATXPBUnifiedInferredActivityTransition setInferredActivity:](v5, "setInferredActivity:", [v8 integerValue]);

      v9 = [v6 objectForKeyedSubscript:@"isActivityStart"];
      -[ATXPBUnifiedInferredActivityTransition setIsActivityStart:](v5, "setIsActivityStart:", [v9 BOOLValue]);

      v10 = [v6 objectForKeyedSubscript:@"source"];
      [(ATXPBUnifiedInferredActivityTransition *)v5 setSource:v10];

      v11 = [v6 objectForKeyedSubscript:@"transitionTime"];

      [v11 doubleValue];
      [(ATXPBUnifiedInferredActivityTransition *)v5 setTransitionTime:?];
    }
  }

  return v5;
}

- (id)jsonRepresentation
{
  v24[5] = *MEMORY[0x277D85DE8];
  v23[0] = @"confidence";
  v3 = MEMORY[0x277CEB600];
  v4 = MEMORY[0x277CCABB0];
  [(ATXPBUnifiedInferredActivityTransition *)self confidence];
  v22 = [v4 numberWithDouble:?];
  v5 = [v3 wrapObject:v22];
  v24[0] = v5;
  v23[1] = @"inferredActivity";
  v6 = MEMORY[0x277CEB600];
  v7 = [MEMORY[0x277CCABB0] numberWithLongLong:{-[ATXPBUnifiedInferredActivityTransition inferredActivity](self, "inferredActivity")}];
  v8 = [v6 wrapObject:v7];
  v24[1] = v8;
  v23[2] = @"isActivityStart";
  v9 = MEMORY[0x277CEB600];
  v10 = [MEMORY[0x277CCABB0] numberWithBool:{-[ATXPBUnifiedInferredActivityTransition isActivityStart](self, "isActivityStart")}];
  v11 = [v9 wrapObject:v10];
  v24[2] = v11;
  v23[3] = @"transitionTime";
  v12 = MEMORY[0x277CEB600];
  v13 = MEMORY[0x277CCABB0];
  [(ATXPBUnifiedInferredActivityTransition *)self transitionTime];
  v14 = [v13 numberWithDouble:?];
  v15 = [v12 wrapObject:v14];
  v24[3] = v15;
  v23[4] = @"source";
  v16 = MEMORY[0x277CEB600];
  v17 = [(ATXPBUnifiedInferredActivityTransition *)self source];
  v18 = [v16 wrapObject:v17];
  v24[4] = v18;
  v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v24 forKeys:v23 count:5];

  v20 = *MEMORY[0x277D85DE8];

  return v19;
}

@end