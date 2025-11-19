@interface ATXTimelineRelevancePBTimelineRelevanceScoreEntry
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsSuggestionMappingReason:(id)a3;
- (int)suggestionMappingReason;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasRelevanceScore:(BOOL)a3;
- (void)setHasSuggestionMappingReason:(BOOL)a3;
- (void)setHasTimestamp:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation ATXTimelineRelevancePBTimelineRelevanceScoreEntry

- (void)setHasRelevanceScore:(BOOL)a3
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

- (void)setHasTimestamp:(BOOL)a3
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

- (int)suggestionMappingReason
{
  if ((*&self->_has & 8) != 0)
  {
    return self->_suggestionMappingReason;
  }

  else
  {
    return 0;
  }
}

- (void)setHasSuggestionMappingReason:(BOOL)a3
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

- (int)StringAsSuggestionMappingReason:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"ReasonCoalescedWithPreviousSuggestion"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"ReasonNewInfoSuggestion"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"ReasonPreviousSuggestionWasTrimmed"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"ReasonNilRelevance"])
  {
    v4 = 3;
  }

  else if ([v3 isEqualToString:@"ReasonNonPositiveRelevanceScore"])
  {
    v4 = 4;
  }

  else if ([v3 isEqualToString:@"ReasonEndDateOfPreviousSuggestionWasSet"])
  {
    v4 = 5;
  }

  else if ([v3 isEqualToString:@"ReasonUnknown"])
  {
    v4 = 6;
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
  v8.super_class = ATXTimelineRelevancePBTimelineRelevanceScoreEntry;
  v4 = [(ATXTimelineRelevancePBTimelineRelevanceScoreEntry *)&v8 description];
  v5 = [(ATXTimelineRelevancePBTimelineRelevanceScoreEntry *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  has = self->_has;
  if ((has & 2) != 0)
  {
    v9 = [MEMORY[0x277CCABB0] numberWithDouble:self->_relevanceScore];
    [v3 setObject:v9 forKey:@"relevanceScore"];

    has = self->_has;
    if ((has & 1) == 0)
    {
LABEL_3:
      if ((has & 4) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((*&self->_has & 1) == 0)
  {
    goto LABEL_3;
  }

  v10 = [MEMORY[0x277CCABB0] numberWithLongLong:self->_duration];
  [v3 setObject:v10 forKey:@"duration"];

  if ((*&self->_has & 4) != 0)
  {
LABEL_4:
    v5 = [MEMORY[0x277CCABB0] numberWithLongLong:self->_timestamp];
    [v3 setObject:v5 forKey:@"timestamp"];
  }

LABEL_5:
  suggestionID = self->_suggestionID;
  if (suggestionID)
  {
    [v3 setObject:suggestionID forKey:@"suggestionID"];
  }

  if ((*&self->_has & 8) != 0)
  {
    suggestionMappingReason = self->_suggestionMappingReason;
    if (suggestionMappingReason >= 7)
    {
      v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", self->_suggestionMappingReason];
    }

    else
    {
      v8 = off_27859FDC8[suggestionMappingReason];
    }

    [v3 setObject:v8 forKey:@"suggestionMappingReason"];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  v9 = a3;
  has = self->_has;
  if ((has & 2) != 0)
  {
    relevanceScore = self->_relevanceScore;
    PBDataWriterWriteDoubleField();
    has = self->_has;
    if ((has & 1) == 0)
    {
LABEL_3:
      if ((has & 4) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((*&self->_has & 1) == 0)
  {
    goto LABEL_3;
  }

  duration = self->_duration;
  PBDataWriterWriteInt64Field();
  if ((*&self->_has & 4) != 0)
  {
LABEL_4:
    timestamp = self->_timestamp;
    PBDataWriterWriteInt64Field();
  }

LABEL_5:
  if (self->_suggestionID)
  {
    PBDataWriterWriteStringField();
  }

  if ((*&self->_has & 8) != 0)
  {
    suggestionMappingReason = self->_suggestionMappingReason;
    PBDataWriterWriteInt32Field();
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  has = self->_has;
  if ((has & 2) != 0)
  {
    v4[2] = *&self->_relevanceScore;
    *(v4 + 44) |= 2u;
    has = self->_has;
    if ((has & 1) == 0)
    {
LABEL_3:
      if ((has & 4) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((*&self->_has & 1) == 0)
  {
    goto LABEL_3;
  }

  v4[1] = self->_duration;
  *(v4 + 44) |= 1u;
  if ((*&self->_has & 4) != 0)
  {
LABEL_4:
    v4[3] = self->_timestamp;
    *(v4 + 44) |= 4u;
  }

LABEL_5:
  if (self->_suggestionID)
  {
    v6 = v4;
    [v4 setSuggestionID:?];
    v4 = v6;
  }

  if ((*&self->_has & 8) != 0)
  {
    *(v4 + 10) = self->_suggestionMappingReason;
    *(v4 + 44) |= 8u;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = v5;
  has = self->_has;
  if ((has & 2) != 0)
  {
    *(v5 + 16) = self->_relevanceScore;
    *(v5 + 44) |= 2u;
    has = self->_has;
    if ((has & 1) == 0)
    {
LABEL_3:
      if ((has & 4) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((*&self->_has & 1) == 0)
  {
    goto LABEL_3;
  }

  *(v5 + 8) = self->_duration;
  *(v5 + 44) |= 1u;
  if ((*&self->_has & 4) != 0)
  {
LABEL_4:
    *(v5 + 24) = self->_timestamp;
    *(v5 + 44) |= 4u;
  }

LABEL_5:
  v8 = [(NSString *)self->_suggestionID copyWithZone:a3];
  v9 = *(v6 + 32);
  *(v6 + 32) = v8;

  if ((*&self->_has & 8) != 0)
  {
    *(v6 + 40) = self->_suggestionMappingReason;
    *(v6 + 44) |= 8u;
  }

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_24;
  }

  has = self->_has;
  v6 = *(v4 + 44);
  if ((has & 2) != 0)
  {
    if ((*(v4 + 44) & 2) == 0 || self->_relevanceScore != *(v4 + 2))
    {
      goto LABEL_24;
    }
  }

  else if ((*(v4 + 44) & 2) != 0)
  {
    goto LABEL_24;
  }

  if (*&self->_has)
  {
    if ((*(v4 + 44) & 1) == 0 || self->_duration != *(v4 + 1))
    {
      goto LABEL_24;
    }
  }

  else if (*(v4 + 44))
  {
    goto LABEL_24;
  }

  if ((*&self->_has & 4) != 0)
  {
    if ((*(v4 + 44) & 4) == 0 || self->_timestamp != *(v4 + 3))
    {
      goto LABEL_24;
    }
  }

  else if ((*(v4 + 44) & 4) != 0)
  {
    goto LABEL_24;
  }

  suggestionID = self->_suggestionID;
  if (suggestionID | *(v4 + 4))
  {
    if (![(NSString *)suggestionID isEqual:?])
    {
LABEL_24:
      v8 = 0;
      goto LABEL_25;
    }

    has = self->_has;
  }

  v8 = (*(v4 + 44) & 8) == 0;
  if ((has & 8) != 0)
  {
    if ((*(v4 + 44) & 8) == 0 || self->_suggestionMappingReason != *(v4 + 10))
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
  if ((*&self->_has & 2) != 0)
  {
    relevanceScore = self->_relevanceScore;
    if (relevanceScore < 0.0)
    {
      relevanceScore = -relevanceScore;
    }

    *v2.i64 = floor(relevanceScore + 0.5);
    v7 = (relevanceScore - *v2.i64) * 1.84467441e19;
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

  if (*&self->_has)
  {
    v9 = 2654435761 * self->_duration;
    if ((*&self->_has & 4) != 0)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v9 = 0;
    if ((*&self->_has & 4) != 0)
    {
LABEL_11:
      v10 = 2654435761 * self->_timestamp;
      goto LABEL_14;
    }
  }

  v10 = 0;
LABEL_14:
  v11 = [(NSString *)self->_suggestionID hash];
  if ((*&self->_has & 8) != 0)
  {
    v12 = 2654435761 * self->_suggestionMappingReason;
  }

  else
  {
    v12 = 0;
  }

  return v9 ^ v5 ^ v10 ^ v12 ^ v11;
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v5 = *(v4 + 44);
  if ((v5 & 2) != 0)
  {
    self->_relevanceScore = *(v4 + 2);
    *&self->_has |= 2u;
    v5 = *(v4 + 44);
    if ((v5 & 1) == 0)
    {
LABEL_3:
      if ((v5 & 4) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((*(v4 + 44) & 1) == 0)
  {
    goto LABEL_3;
  }

  self->_duration = *(v4 + 1);
  *&self->_has |= 1u;
  if ((*(v4 + 44) & 4) != 0)
  {
LABEL_4:
    self->_timestamp = *(v4 + 3);
    *&self->_has |= 4u;
  }

LABEL_5:
  if (*(v4 + 4))
  {
    v6 = v4;
    [(ATXTimelineRelevancePBTimelineRelevanceScoreEntry *)self setSuggestionID:?];
    v4 = v6;
  }

  if ((*(v4 + 44) & 8) != 0)
  {
    self->_suggestionMappingReason = *(v4 + 10);
    *&self->_has |= 8u;
  }
}

@end