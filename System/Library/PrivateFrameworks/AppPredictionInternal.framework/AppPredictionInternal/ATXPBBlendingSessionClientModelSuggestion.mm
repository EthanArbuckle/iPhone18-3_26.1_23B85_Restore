@interface ATXPBBlendingSessionClientModelSuggestion
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsSuggestedConfidenceCategory:(id)a3;
- (int)suggestedConfidenceCategory;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasSuggestedConfidenceCategory:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation ATXPBBlendingSessionClientModelSuggestion

- (int)suggestedConfidenceCategory
{
  if ((*&self->_has & 2) != 0)
  {
    return self->_suggestedConfidenceCategory;
  }

  else
  {
    return 0;
  }
}

- (void)setHasSuggestedConfidenceCategory:(BOOL)a3
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

- (int)StringAsSuggestedConfidenceCategory:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"Unknown"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"Fallback"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"Low"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"Medium"])
  {
    v4 = 3;
  }

  else if ([v3 isEqualToString:@"High"])
  {
    v4 = 4;
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
  v8.super_class = ATXPBBlendingSessionClientModelSuggestion;
  v4 = [(ATXPBBlendingSessionClientModelSuggestion *)&v8 description];
  v5 = [(ATXPBBlendingSessionClientModelSuggestion *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  v4 = v3;
  executableId = self->_executableId;
  if (executableId)
  {
    [v3 setObject:executableId forKey:@"executableId"];
  }

  has = self->_has;
  if (has)
  {
    v7 = [MEMORY[0x277CCABB0] numberWithDouble:self->_rawScore];
    [v4 setObject:v7 forKey:@"rawScore"];

    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    suggestedConfidenceCategory = self->_suggestedConfidenceCategory;
    if (suggestedConfidenceCategory >= 5)
    {
      v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", self->_suggestedConfidenceCategory];
    }

    else
    {
      v9 = off_278598960[suggestedConfidenceCategory];
    }

    [v4 setObject:v9 forKey:@"suggestedConfidenceCategory"];
  }

  return v4;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v8 = v4;
  if (self->_executableId)
  {
    PBDataWriterWriteStringField();
    v4 = v8;
  }

  has = self->_has;
  if (has)
  {
    rawScore = self->_rawScore;
    PBDataWriterWriteDoubleField();
    v4 = v8;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    suggestedConfidenceCategory = self->_suggestedConfidenceCategory;
    PBDataWriterWriteInt32Field();
    v4 = v8;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  if (self->_executableId)
  {
    v6 = v4;
    [v4 setExecutableId:?];
    v4 = v6;
  }

  has = self->_has;
  if (has)
  {
    *(v4 + 1) = *&self->_rawScore;
    *(v4 + 28) |= 1u;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    *(v4 + 6) = self->_suggestedConfidenceCategory;
    *(v4 + 28) |= 2u;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_executableId copyWithZone:a3];
  v7 = *(v5 + 16);
  *(v5 + 16) = v6;

  has = self->_has;
  if (has)
  {
    *(v5 + 8) = self->_rawScore;
    *(v5 + 28) |= 1u;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    *(v5 + 24) = self->_suggestedConfidenceCategory;
    *(v5 + 28) |= 2u;
  }

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_13;
  }

  executableId = self->_executableId;
  if (executableId | *(v4 + 2))
  {
    if (![(NSString *)executableId isEqual:?])
    {
      goto LABEL_13;
    }
  }

  if (*&self->_has)
  {
    if ((*(v4 + 28) & 1) == 0 || self->_rawScore != *(v4 + 1))
    {
      goto LABEL_13;
    }
  }

  else if (*(v4 + 28))
  {
LABEL_13:
    v6 = 0;
    goto LABEL_14;
  }

  v6 = (*(v4 + 28) & 2) == 0;
  if ((*&self->_has & 2) != 0)
  {
    if ((*(v4 + 28) & 2) == 0 || self->_suggestedConfidenceCategory != *(v4 + 6))
    {
      goto LABEL_13;
    }

    v6 = 1;
  }

LABEL_14:

  return v6;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_executableId hash];
  if (*&self->_has)
  {
    rawScore = self->_rawScore;
    if (rawScore < 0.0)
    {
      rawScore = -rawScore;
    }

    *v4.i64 = floor(rawScore + 0.5);
    v8 = (rawScore - *v4.i64) * 1.84467441e19;
    *v5.i64 = *v4.i64 - trunc(*v4.i64 * 5.42101086e-20) * 1.84467441e19;
    v9.f64[0] = NAN;
    v9.f64[1] = NAN;
    v6 = 2654435761u * *vbslq_s8(vnegq_f64(v9), v5, v4).i64;
    if (v8 >= 0.0)
    {
      if (v8 > 0.0)
      {
        v6 += v8;
      }
    }

    else
    {
      v6 -= fabs(v8);
    }
  }

  else
  {
    v6 = 0;
  }

  if ((*&self->_has & 2) != 0)
  {
    v10 = 2654435761 * self->_suggestedConfidenceCategory;
  }

  else
  {
    v10 = 0;
  }

  return v6 ^ v3 ^ v10;
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  if (*(v4 + 2))
  {
    v6 = v4;
    [(ATXPBBlendingSessionClientModelSuggestion *)self setExecutableId:?];
    v4 = v6;
  }

  v5 = *(v4 + 28);
  if (v5)
  {
    self->_rawScore = *(v4 + 1);
    *&self->_has |= 1u;
    v5 = *(v4 + 28);
  }

  if ((v5 & 2) != 0)
  {
    self->_suggestedConfidenceCategory = *(v4 + 6);
    *&self->_has |= 2u;
  }
}

@end