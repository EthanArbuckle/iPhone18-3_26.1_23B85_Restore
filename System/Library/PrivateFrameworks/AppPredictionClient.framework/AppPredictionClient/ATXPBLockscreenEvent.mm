@interface ATXPBLockscreenEvent
- (BOOL)hasBlendingCacheId;
- (BOOL)isEqual:(id)equal;
- (__CFString)eventTypeAsString:(__CFString *)string;
- (double)date;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (id)suggestionIdsAtIndex:(id *)index;
- (uint64_t)StringAsEventType:(uint64_t)type;
- (uint64_t)addSuggestionIds:(uint64_t)ids;
- (uint64_t)blendingCacheId;
- (uint64_t)clearSuggestionIds;
- (uint64_t)eventType;
- (uint64_t)hasDate;
- (uint64_t)hasEventType;
- (uint64_t)setDate:(uint64_t)result;
- (uint64_t)setEventType:(uint64_t)result;
- (uint64_t)setHasDate:(uint64_t)result;
- (uint64_t)setHasEventType:(uint64_t)result;
- (uint64_t)suggestionIds;
- (uint64_t)suggestionIdsCount;
- (unint64_t)hash;
- (void)copyTo:(uint64_t)to;
- (void)mergeFrom:(uint64_t)from;
- (void)setBlendingCacheId:(uint64_t)id;
- (void)setSuggestionIds:(uint64_t)ids;
- (void)writeTo:(id)to;
@end

@implementation ATXPBLockscreenEvent

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = ATXPBLockscreenEvent;
  v4 = [(ATXPBLockscreenEvent *)&v8 description];
  dictionaryRepresentation = [(ATXPBLockscreenEvent *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  has = self->_has;
  if (has)
  {
    v5 = [MEMORY[0x1E696AD98] numberWithDouble:self->_date];
    [dictionary setObject:v5 forKey:@"date"];

    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    v6 = self->_eventType - 1;
    if (v6 >= 4)
    {
      v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", self->_eventType];
    }

    else
    {
      v7 = off_1E80C6950[v6];
    }

    [dictionary setObject:v7 forKey:@"eventType"];
  }

  blendingCacheId = self->_blendingCacheId;
  if (blendingCacheId)
  {
    [dictionary setObject:blendingCacheId forKey:@"blendingCacheId"];
  }

  suggestionIds = self->_suggestionIds;
  if (suggestionIds)
  {
    [dictionary setObject:suggestionIds forKey:@"suggestionIds"];
  }

  return dictionary;
}

- (void)writeTo:(id)to
{
  v16 = *MEMORY[0x1E69E9840];
  toCopy = to;
  has = self->_has;
  if (has)
  {
    PBDataWriterWriteDoubleField();
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    PBDataWriterWriteInt32Field();
  }

  if (self->_blendingCacheId)
  {
    PBDataWriterWriteStringField();
  }

  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v6 = self->_suggestionIds;
  v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v12;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v12 != v9)
        {
          objc_enumerationMutation(v6);
        }

        PBDataWriterWriteStringField();
      }

      v8 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v8);
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v22 = *MEMORY[0x1E69E9840];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = v5;
  has = self->_has;
  if (has)
  {
    *(v5 + 8) = self->_date;
    *(v5 + 40) |= 1u;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    *(v5 + 24) = self->_eventType;
    *(v5 + 40) |= 2u;
  }

  v8 = [(NSString *)self->_blendingCacheId copyWithZone:zone];
  v9 = v6[2];
  v6[2] = v8;

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v10 = self->_suggestionIds;
  v11 = [(NSMutableArray *)v10 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v18;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v18 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = [*(*(&v17 + 1) + 8 * i) copyWithZone:{zone, v17}];
        [(ATXPBLockscreenEvent *)v6 addSuggestionIds:v15];
      }

      v12 = [(NSMutableArray *)v10 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v12);
  }

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_16;
  }

  if (*&self->_has)
  {
    if ((*(equalCopy + 40) & 1) == 0 || self->_date != *(equalCopy + 1))
    {
      goto LABEL_16;
    }
  }

  else if (*(equalCopy + 40))
  {
LABEL_16:
    v7 = 0;
    goto LABEL_17;
  }

  if ((*&self->_has & 2) != 0)
  {
    if ((*(equalCopy + 40) & 2) == 0 || self->_eventType != *(equalCopy + 6))
    {
      goto LABEL_16;
    }
  }

  else if ((*(equalCopy + 40) & 2) != 0)
  {
    goto LABEL_16;
  }

  blendingCacheId = self->_blendingCacheId;
  if (blendingCacheId | *(equalCopy + 2) && ![(NSString *)blendingCacheId isEqual:?])
  {
    goto LABEL_16;
  }

  suggestionIds = self->_suggestionIds;
  if (suggestionIds | *(equalCopy + 4))
  {
    v7 = [(NSMutableArray *)suggestionIds isEqual:?];
  }

  else
  {
    v7 = 1;
  }

LABEL_17:

  return v7;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    date = self->_date;
    if (date < 0.0)
    {
      date = -date;
    }

    *v2.i64 = floor(date + 0.5);
    v7 = (date - *v2.i64) * 1.84467441e19;
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

  if ((*&self->_has & 2) != 0)
  {
    v9 = 2654435761 * self->_eventType;
  }

  else
  {
    v9 = 0;
  }

  v10 = v9 ^ v5 ^ [(NSString *)self->_blendingCacheId hash];
  return v10 ^ [(NSMutableArray *)self->_suggestionIds hash];
}

- (uint64_t)setDate:(uint64_t)result
{
  if (result)
  {
    *(result + 40) |= 1u;
    *(result + 8) = a2;
  }

  return result;
}

- (uint64_t)setHasDate:(uint64_t)result
{
  if (result)
  {
    *(result + 40) = *(result + 40) & 0xFE | a2;
  }

  return result;
}

- (uint64_t)hasDate
{
  if (result)
  {
    return *(result + 40) & 1;
  }

  return result;
}

- (uint64_t)eventType
{
  if (result)
  {
    if ((*(result + 40) & 2) != 0)
    {
      return *(result + 24);
    }

    else
    {
      return 1;
    }
  }

  return result;
}

- (uint64_t)setEventType:(uint64_t)result
{
  if (result)
  {
    *(result + 40) |= 2u;
    *(result + 24) = a2;
  }

  return result;
}

- (uint64_t)setHasEventType:(uint64_t)result
{
  if (result)
  {
    if (a2)
    {
      v2 = 2;
    }

    else
    {
      v2 = 0;
    }

    *(result + 40) = *(result + 40) & 0xFD | v2;
  }

  return result;
}

- (uint64_t)hasEventType
{
  if (result)
  {
    return (*(result + 40) >> 1) & 1;
  }

  return result;
}

- (__CFString)eventTypeAsString:(__CFString *)string
{
  if (!string)
  {
LABEL_4:

    return string;
  }

  if ((a2 - 1) < 4)
  {
    string = off_1E80C6950[(a2 - 1)];
    goto LABEL_4;
  }

  string = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", a2];

  return string;
}

- (uint64_t)StringAsEventType:(uint64_t)type
{
  v3 = a2;
  v4 = v3;
  if (type)
  {
    v5 = v3;
    if ([v5 isEqualToString:@"SuggestionsPushedToLockscreen"])
    {
      v6 = 1;
    }

    else if ([v5 isEqualToString:@"SuggestionTappedByUser"])
    {
      v6 = 2;
    }

    else if ([v5 isEqualToString:@"SuggestionClearedByUser"])
    {
      v6 = 3;
    }

    else if ([v5 isEqualToString:@"SuggestionsRemovedFromLockscreen"])
    {
      v6 = 4;
    }

    else
    {
      v6 = 1;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)hasBlendingCacheId
{
  if (result)
  {
    return *(result + 16) != 0;
  }

  return result;
}

- (uint64_t)clearSuggestionIds
{
  if (result)
  {
    return [*(result + 32) removeAllObjects];
  }

  return result;
}

- (uint64_t)addSuggestionIds:(uint64_t)ids
{
  v3 = a2;
  v4 = v3;
  if (ids)
  {
    v5 = *(ids + 32);
    v9 = v4;
    if (!v5)
    {
      v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v7 = *(ids + 32);
      *(ids + 32) = v6;

      v5 = *(ids + 32);
    }

    v3 = [v5 addObject:v9];
    v4 = v9;
  }

  return MEMORY[0x1EEE66BB8](v3, v4);
}

- (uint64_t)suggestionIdsCount
{
  if (result)
  {
    return [*(result + 32) count];
  }

  return result;
}

- (id)suggestionIdsAtIndex:(id *)index
{
  if (index)
  {
    index = [index[4] objectAtIndex:a2];
    v2 = vars8;
  }

  return index;
}

- (void)copyTo:(uint64_t)to
{
  v12 = a2;
  if (to)
  {
    OUTLINED_FUNCTION_1_25();
    v6 = v12;
    if (v5)
    {
      v12[1] = *(to + 8);
      *(v12 + v4) |= 1u;
      OUTLINED_FUNCTION_1_25();
    }

    if ((v5 & 2) != 0)
    {
      *(v6 + 6) = *(to + 24);
      *(v6 + *(v3 + 456)) |= 2u;
    }

    v7 = *(to + 16);
    if (v7)
    {
      [(ATXPBLockscreenEvent *)v12 setBlendingCacheId:v7];
    }

    if ([*(to + 32) count])
    {
      if (v12)
      {
        [v12[4] removeAllObjects];
      }

      v8 = [*(to + 32) count];
      if (v8)
      {
        v9 = v8;
        for (i = 0; i != v9; ++i)
        {
          v11 = [*(to + 32) objectAtIndex:i];
          [(ATXPBLockscreenEvent *)v12 addSuggestionIds:v11];
        }
      }
    }
  }
}

- (void)setBlendingCacheId:(uint64_t)id
{
  if (id)
  {
    OUTLINED_FUNCTION_2(id, a2, 16);
  }
}

- (void)mergeFrom:(uint64_t)from
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (from)
  {
    OUTLINED_FUNCTION_1_25();
    if (v6)
    {
      *(from + 8) = *(v3 + 1);
      *(from + v5) |= 1u;
      OUTLINED_FUNCTION_1_25();
    }

    if ((v6 & 2) != 0)
    {
      *(from + 24) = *(v3 + 6);
      *(from + *(v4 + 456)) |= 2u;
    }

    v7 = *(v3 + 2);
    if (v7)
    {
      objc_storeStrong((from + 16), v7);
    }

    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v8 = *(v3 + 4);
    v9 = [v8 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v14;
      do
      {
        v12 = 0;
        do
        {
          if (*v14 != v11)
          {
            objc_enumerationMutation(v8);
          }

          [(ATXPBLockscreenEvent *)from addSuggestionIds:?];
        }

        while (v10 != v12);
        v10 = [v8 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v10);
    }
  }
}

- (double)date
{
  if (self)
  {
    return *(self + 8);
  }

  else
  {
    return 0.0;
  }
}

- (uint64_t)blendingCacheId
{
  if (result)
  {
    return *(result + 16);
  }

  return result;
}

- (uint64_t)suggestionIds
{
  if (result)
  {
    return *(result + 32);
  }

  return result;
}

- (void)setSuggestionIds:(uint64_t)ids
{
  if (ids)
  {
    OUTLINED_FUNCTION_2(ids, a2, 32);
  }
}

@end