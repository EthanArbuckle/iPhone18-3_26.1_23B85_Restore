@interface ATXPBAppDirectoryEvent
- (BOOL)hasBlendingCacheId;
- (BOOL)hasBundleId;
- (BOOL)hasMetadata;
- (BOOL)isEqual:(id)equal;
- (double)date;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (id)engagedSuggestionIdsAtIndex:(id *)index;
- (id)shownSuggestionIdsAtIndex:(id *)index;
- (uint64_t)addEngagedSuggestionIds:(uint64_t)ids;
- (uint64_t)addShownSuggestionIds:(uint64_t)ids;
- (uint64_t)blendingCacheId;
- (uint64_t)bundleId;
- (uint64_t)bundleIndex;
- (uint64_t)categoryID;
- (uint64_t)categoryIndex;
- (uint64_t)clearEngagedSuggestionIds;
- (uint64_t)clearShownSuggestionIds;
- (uint64_t)engagedSuggestionIds;
- (uint64_t)engagedSuggestionIdsCount;
- (uint64_t)eventType;
- (uint64_t)hasBundleIndex;
- (uint64_t)hasCategoryID;
- (uint64_t)hasCategoryIndex;
- (uint64_t)hasDate;
- (uint64_t)hasEventType;
- (uint64_t)hasSearchQueryLength;
- (uint64_t)hasSearchTab;
- (uint64_t)metadata;
- (uint64_t)searchQueryLength;
- (uint64_t)searchTab;
- (uint64_t)setBundleIndex:(uint64_t)result;
- (uint64_t)setCategoryID:(uint64_t)result;
- (uint64_t)setCategoryIndex:(uint64_t)result;
- (uint64_t)setDate:(uint64_t)result;
- (uint64_t)setEventType:(uint64_t)result;
- (uint64_t)setHasBundleIndex:(uint64_t)result;
- (uint64_t)setHasCategoryID:(uint64_t)result;
- (uint64_t)setHasCategoryIndex:(uint64_t)result;
- (uint64_t)setHasDate:(uint64_t)result;
- (uint64_t)setHasEventType:(uint64_t)result;
- (uint64_t)setHasSearchQueryLength:(uint64_t)result;
- (uint64_t)setHasSearchTab:(uint64_t)result;
- (uint64_t)setSearchQueryLength:(uint64_t)result;
- (uint64_t)setSearchTab:(uint64_t)result;
- (uint64_t)shownSuggestionIds;
- (uint64_t)shownSuggestionIdsCount;
- (unint64_t)hash;
- (void)copyTo:(uint64_t)to;
- (void)mergeFrom:(uint64_t)from;
- (void)setBlendingCacheId:(uint64_t)id;
- (void)setBundleId:(uint64_t)id;
- (void)setEngagedSuggestionIds:(uint64_t)ids;
- (void)setMetadata:(uint64_t)metadata;
- (void)setShownSuggestionIds:(uint64_t)ids;
- (void)writeTo:(id)to;
@end

@implementation ATXPBAppDirectoryEvent

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = ATXPBAppDirectoryEvent;
  v4 = [(ATXPBAppDirectoryEvent *)&v8 description];
  dictionaryRepresentation = [(ATXPBAppDirectoryEvent *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  has = self->_has;
  if ((has & 8) != 0)
  {
    v15 = [MEMORY[0x1E696AD98] numberWithDouble:self->_date];
    [dictionary setObject:v15 forKey:@"date"];

    has = self->_has;
    if ((has & 0x10) == 0)
    {
LABEL_3:
      if ((has & 2) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_25;
    }
  }

  else if ((*&self->_has & 0x10) == 0)
  {
    goto LABEL_3;
  }

  v16 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_eventType];
  [dictionary setObject:v16 forKey:@"eventType"];

  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_4:
    if ((has & 4) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_25:
  v17 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_categoryID];
  [dictionary setObject:v17 forKey:@"categoryID"];

  if ((*&self->_has & 4) != 0)
  {
LABEL_5:
    v5 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_categoryIndex];
    [dictionary setObject:v5 forKey:@"categoryIndex"];
  }

LABEL_6:
  bundleId = self->_bundleId;
  if (bundleId)
  {
    [dictionary setObject:bundleId forKey:@"bundleId"];
  }

  v7 = self->_has;
  if (v7)
  {
    v18 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_bundleIndex];
    [dictionary setObject:v18 forKey:@"bundleIndex"];

    v7 = self->_has;
    if ((v7 & 0x20) == 0)
    {
LABEL_10:
      if ((v7 & 0x40) == 0)
      {
        goto LABEL_12;
      }

      goto LABEL_11;
    }
  }

  else if ((*&self->_has & 0x20) == 0)
  {
    goto LABEL_10;
  }

  v19 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_searchQueryLength];
  [dictionary setObject:v19 forKey:@"searchQueryLength"];

  if ((*&self->_has & 0x40) != 0)
  {
LABEL_11:
    v8 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_searchTab];
    [dictionary setObject:v8 forKey:@"searchTab"];
  }

LABEL_12:
  blendingCacheId = self->_blendingCacheId;
  if (blendingCacheId)
  {
    [dictionary setObject:blendingCacheId forKey:@"blendingCacheId"];
  }

  shownSuggestionIds = self->_shownSuggestionIds;
  if (shownSuggestionIds)
  {
    [dictionary setObject:shownSuggestionIds forKey:@"shownSuggestionIds"];
  }

  engagedSuggestionIds = self->_engagedSuggestionIds;
  if (engagedSuggestionIds)
  {
    [dictionary setObject:engagedSuggestionIds forKey:@"engagedSuggestionIds"];
  }

  metadata = self->_metadata;
  if (metadata)
  {
    dictionaryRepresentation = [(ATXPBAppDirectoryEventMetadata *)metadata dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation forKey:@"metadata"];
  }

  return dictionary;
}

- (void)writeTo:(id)to
{
  v27 = *MEMORY[0x1E69E9840];
  toCopy = to;
  has = self->_has;
  if ((has & 8) != 0)
  {
    PBDataWriterWriteDoubleField();
    has = self->_has;
    if ((has & 0x10) == 0)
    {
LABEL_3:
      if ((has & 2) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_33;
    }
  }

  else if ((*&self->_has & 0x10) == 0)
  {
    goto LABEL_3;
  }

  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_4:
    if ((has & 4) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_33:
  PBDataWriterWriteUint64Field();
  if ((*&self->_has & 4) != 0)
  {
LABEL_5:
    PBDataWriterWriteUint64Field();
  }

LABEL_6:
  if (self->_bundleId)
  {
    PBDataWriterWriteStringField();
  }

  v6 = self->_has;
  if (v6)
  {
    PBDataWriterWriteUint64Field();
    v6 = self->_has;
    if ((v6 & 0x20) == 0)
    {
LABEL_10:
      if ((v6 & 0x40) == 0)
      {
        goto LABEL_12;
      }

      goto LABEL_11;
    }
  }

  else if ((*&self->_has & 0x20) == 0)
  {
    goto LABEL_10;
  }

  PBDataWriterWriteUint64Field();
  if ((*&self->_has & 0x40) != 0)
  {
LABEL_11:
    PBDataWriterWriteUint64Field();
  }

LABEL_12:
  if (self->_blendingCacheId)
  {
    PBDataWriterWriteStringField();
  }

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v7 = self->_shownSuggestionIds;
  v8 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v21 objects:v26 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v22;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v22 != v10)
        {
          objc_enumerationMutation(v7);
        }

        PBDataWriterWriteStringField();
      }

      v9 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v21 objects:v26 count:16];
    }

    while (v9);
  }

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v12 = self->_engagedSuggestionIds;
  v13 = [(NSMutableArray *)v12 countByEnumeratingWithState:&v17 objects:v25 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v18;
    do
    {
      for (j = 0; j != v14; ++j)
      {
        if (*v18 != v15)
        {
          objc_enumerationMutation(v12);
        }

        PBDataWriterWriteStringField();
      }

      v14 = [(NSMutableArray *)v12 countByEnumeratingWithState:&v17 objects:v25 count:16];
    }

    while (v14);
  }

  if (self->_metadata)
  {
    PBDataWriterWriteSubmessage();
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v38 = *MEMORY[0x1E69E9840];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = v5;
  has = self->_has;
  if ((has & 8) != 0)
  {
    *(v5 + 32) = self->_date;
    *(v5 + 104) |= 8u;
    has = self->_has;
    if ((has & 0x10) == 0)
    {
LABEL_3:
      if ((has & 2) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_27;
    }
  }

  else if ((*&self->_has & 0x10) == 0)
  {
    goto LABEL_3;
  }

  *(v5 + 40) = self->_eventType;
  *(v5 + 104) |= 0x10u;
  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_4:
    if ((has & 4) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_27:
  *(v5 + 16) = self->_categoryID;
  *(v5 + 104) |= 2u;
  if ((*&self->_has & 4) != 0)
  {
LABEL_5:
    *(v5 + 24) = self->_categoryIndex;
    *(v5 + 104) |= 4u;
  }

LABEL_6:
  v8 = [(NSString *)self->_bundleId copyWithZone:zone];
  v9 = *(v6 + 72);
  *(v6 + 72) = v8;

  v10 = self->_has;
  if (v10)
  {
    *(v6 + 8) = self->_bundleIndex;
    *(v6 + 104) |= 1u;
    v10 = self->_has;
    if ((v10 & 0x20) == 0)
    {
LABEL_8:
      if ((v10 & 0x40) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_9;
    }
  }

  else if ((*&self->_has & 0x20) == 0)
  {
    goto LABEL_8;
  }

  *(v6 + 48) = self->_searchQueryLength;
  *(v6 + 104) |= 0x20u;
  if ((*&self->_has & 0x40) != 0)
  {
LABEL_9:
    *(v6 + 56) = self->_searchTab;
    *(v6 + 104) |= 0x40u;
  }

LABEL_10:
  v11 = [(NSString *)self->_blendingCacheId copyWithZone:zone];
  v12 = *(v6 + 64);
  *(v6 + 64) = v11;

  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v13 = self->_shownSuggestionIds;
  v14 = [(NSMutableArray *)v13 countByEnumeratingWithState:&v32 objects:v37 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v33;
    do
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v33 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v18 = [*(*(&v32 + 1) + 8 * i) copyWithZone:zone];
        [(ATXPBAppDirectoryEvent *)v6 addShownSuggestionIds:v18];
      }

      v15 = [(NSMutableArray *)v13 countByEnumeratingWithState:&v32 objects:v37 count:16];
    }

    while (v15);
  }

  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v19 = self->_engagedSuggestionIds;
  v20 = [(NSMutableArray *)v19 countByEnumeratingWithState:&v28 objects:v36 count:16];
  if (v20)
  {
    v21 = v20;
    v22 = *v29;
    do
    {
      for (j = 0; j != v21; ++j)
      {
        if (*v29 != v22)
        {
          objc_enumerationMutation(v19);
        }

        v24 = [*(*(&v28 + 1) + 8 * j) copyWithZone:{zone, v28}];
        [(ATXPBAppDirectoryEvent *)v6 addEngagedSuggestionIds:v24];
      }

      v21 = [(NSMutableArray *)v19 countByEnumeratingWithState:&v28 objects:v36 count:16];
    }

    while (v21);
  }

  v25 = [(ATXPBAppDirectoryEventMetadata *)self->_metadata copyWithZone:zone];
  v26 = *(v6 + 88);
  *(v6 + 88) = v25;

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_48;
  }

  has = self->_has;
  if ((has & 8) != 0)
  {
    if ((*(equalCopy + 104) & 8) == 0 || self->_date != *(equalCopy + 4))
    {
      goto LABEL_48;
    }
  }

  else if ((*(equalCopy + 104) & 8) != 0)
  {
    goto LABEL_48;
  }

  if ((*&self->_has & 0x10) != 0)
  {
    if ((*(equalCopy + 104) & 0x10) == 0 || self->_eventType != *(equalCopy + 5))
    {
      goto LABEL_48;
    }
  }

  else if ((*(equalCopy + 104) & 0x10) != 0)
  {
    goto LABEL_48;
  }

  if ((*&self->_has & 2) != 0)
  {
    if ((*(equalCopy + 104) & 2) == 0 || self->_categoryID != *(equalCopy + 2))
    {
      goto LABEL_48;
    }
  }

  else if ((*(equalCopy + 104) & 2) != 0)
  {
    goto LABEL_48;
  }

  if ((*&self->_has & 4) != 0)
  {
    if ((*(equalCopy + 104) & 4) == 0 || self->_categoryIndex != *(equalCopy + 3))
    {
      goto LABEL_48;
    }
  }

  else if ((*(equalCopy + 104) & 4) != 0)
  {
    goto LABEL_48;
  }

  bundleId = self->_bundleId;
  if (bundleId | *(equalCopy + 9))
  {
    if (![(NSString *)bundleId isEqual:?])
    {
LABEL_48:
      v11 = 0;
      goto LABEL_49;
    }

    has = self->_has;
  }

  if (has)
  {
    if ((*(equalCopy + 104) & 1) == 0 || self->_bundleIndex != *(equalCopy + 1))
    {
      goto LABEL_48;
    }
  }

  else if (*(equalCopy + 104))
  {
    goto LABEL_48;
  }

  if ((has & 0x20) != 0)
  {
    if ((*(equalCopy + 104) & 0x20) == 0 || self->_searchQueryLength != *(equalCopy + 6))
    {
      goto LABEL_48;
    }
  }

  else if ((*(equalCopy + 104) & 0x20) != 0)
  {
    goto LABEL_48;
  }

  if ((has & 0x40) != 0)
  {
    if ((*(equalCopy + 104) & 0x40) == 0 || self->_searchTab != *(equalCopy + 7))
    {
      goto LABEL_48;
    }
  }

  else if ((*(equalCopy + 104) & 0x40) != 0)
  {
    goto LABEL_48;
  }

  blendingCacheId = self->_blendingCacheId;
  if (blendingCacheId | *(equalCopy + 8) && ![(NSString *)blendingCacheId isEqual:?])
  {
    goto LABEL_48;
  }

  shownSuggestionIds = self->_shownSuggestionIds;
  if (shownSuggestionIds | *(equalCopy + 12))
  {
    if (![(NSMutableArray *)shownSuggestionIds isEqual:?])
    {
      goto LABEL_48;
    }
  }

  engagedSuggestionIds = self->_engagedSuggestionIds;
  if (engagedSuggestionIds | *(equalCopy + 10))
  {
    if (![(NSMutableArray *)engagedSuggestionIds isEqual:?])
    {
      goto LABEL_48;
    }
  }

  metadata = self->_metadata;
  if (metadata | *(equalCopy + 11))
  {
    v11 = [(ATXPBAppDirectoryEventMetadata *)metadata isEqual:?];
  }

  else
  {
    v11 = 1;
  }

LABEL_49:

  return v11;
}

- (unint64_t)hash
{
  if ((*&self->_has & 8) != 0)
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

  if ((*&self->_has & 0x10) == 0)
  {
    v9 = 0;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_11;
    }

LABEL_14:
    v10 = 0;
    if ((*&self->_has & 4) != 0)
    {
      goto LABEL_12;
    }

    goto LABEL_15;
  }

  v9 = 2654435761u * self->_eventType;
  if ((*&self->_has & 2) == 0)
  {
    goto LABEL_14;
  }

LABEL_11:
  v10 = 2654435761u * self->_categoryID;
  if ((*&self->_has & 4) != 0)
  {
LABEL_12:
    v11 = 2654435761u * self->_categoryIndex;
    goto LABEL_16;
  }

LABEL_15:
  v11 = 0;
LABEL_16:
  v12 = [(NSString *)self->_bundleId hash];
  if ((*&self->_has & 1) == 0)
  {
    v13 = 0;
    if ((*&self->_has & 0x20) != 0)
    {
      goto LABEL_18;
    }

LABEL_21:
    v14 = 0;
    if ((*&self->_has & 0x40) != 0)
    {
      goto LABEL_19;
    }

LABEL_22:
    v15 = 0;
    goto LABEL_23;
  }

  v13 = 2654435761u * self->_bundleIndex;
  if ((*&self->_has & 0x20) == 0)
  {
    goto LABEL_21;
  }

LABEL_18:
  v14 = 2654435761u * self->_searchQueryLength;
  if ((*&self->_has & 0x40) == 0)
  {
    goto LABEL_22;
  }

LABEL_19:
  v15 = 2654435761u * self->_searchTab;
LABEL_23:
  v16 = v9 ^ v5 ^ v10 ^ v11 ^ v13 ^ v14 ^ v15 ^ v12;
  v17 = [(NSString *)self->_blendingCacheId hash];
  v18 = v16 ^ v17 ^ [(NSMutableArray *)self->_shownSuggestionIds hash];
  v19 = [(NSMutableArray *)self->_engagedSuggestionIds hash];
  return v18 ^ v19 ^ [(ATXPBAppDirectoryEventMetadata *)self->_metadata hash];
}

- (uint64_t)setDate:(uint64_t)result
{
  if (result)
  {
    *(result + 104) |= 8u;
    *(result + 32) = a2;
  }

  return result;
}

- (uint64_t)setHasDate:(uint64_t)result
{
  if (result)
  {
    if (a2)
    {
      v2 = 8;
    }

    else
    {
      v2 = 0;
    }

    *(result + 104) = *(result + 104) & 0xF7 | v2;
  }

  return result;
}

- (uint64_t)hasDate
{
  if (result)
  {
    return (*(result + 104) >> 3) & 1;
  }

  return result;
}

- (uint64_t)setEventType:(uint64_t)result
{
  if (result)
  {
    *(result + 104) |= 0x10u;
    *(result + 40) = a2;
  }

  return result;
}

- (uint64_t)setHasEventType:(uint64_t)result
{
  if (result)
  {
    if (a2)
    {
      v2 = 16;
    }

    else
    {
      v2 = 0;
    }

    *(result + 104) = *(result + 104) & 0xEF | v2;
  }

  return result;
}

- (uint64_t)hasEventType
{
  if (result)
  {
    return (*(result + 104) >> 4) & 1;
  }

  return result;
}

- (uint64_t)setCategoryID:(uint64_t)result
{
  if (result)
  {
    *(result + 104) |= 2u;
    *(result + 16) = a2;
  }

  return result;
}

- (uint64_t)setHasCategoryID:(uint64_t)result
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

    *(result + 104) = *(result + 104) & 0xFD | v2;
  }

  return result;
}

- (uint64_t)hasCategoryID
{
  if (result)
  {
    return (*(result + 104) >> 1) & 1;
  }

  return result;
}

- (uint64_t)setCategoryIndex:(uint64_t)result
{
  if (result)
  {
    *(result + 104) |= 4u;
    *(result + 24) = a2;
  }

  return result;
}

- (uint64_t)setHasCategoryIndex:(uint64_t)result
{
  if (result)
  {
    if (a2)
    {
      v2 = 4;
    }

    else
    {
      v2 = 0;
    }

    *(result + 104) = *(result + 104) & 0xFB | v2;
  }

  return result;
}

- (uint64_t)hasCategoryIndex
{
  if (result)
  {
    return (*(result + 104) >> 2) & 1;
  }

  return result;
}

- (BOOL)hasBundleId
{
  if (result)
  {
    return *(result + 72) != 0;
  }

  return result;
}

- (uint64_t)setBundleIndex:(uint64_t)result
{
  if (result)
  {
    *(result + 104) |= 1u;
    *(result + 8) = a2;
  }

  return result;
}

- (uint64_t)setHasBundleIndex:(uint64_t)result
{
  if (result)
  {
    *(result + 104) = *(result + 104) & 0xFE | a2;
  }

  return result;
}

- (uint64_t)hasBundleIndex
{
  if (result)
  {
    return *(result + 104) & 1;
  }

  return result;
}

- (uint64_t)setSearchQueryLength:(uint64_t)result
{
  if (result)
  {
    *(result + 104) |= 0x20u;
    *(result + 48) = a2;
  }

  return result;
}

- (uint64_t)setHasSearchQueryLength:(uint64_t)result
{
  if (result)
  {
    if (a2)
    {
      v2 = 32;
    }

    else
    {
      v2 = 0;
    }

    *(result + 104) = *(result + 104) & 0xDF | v2;
  }

  return result;
}

- (uint64_t)hasSearchQueryLength
{
  if (result)
  {
    return (*(result + 104) >> 5) & 1;
  }

  return result;
}

- (uint64_t)setSearchTab:(uint64_t)result
{
  if (result)
  {
    *(result + 104) |= 0x40u;
    *(result + 56) = a2;
  }

  return result;
}

- (uint64_t)setHasSearchTab:(uint64_t)result
{
  if (result)
  {
    if (a2)
    {
      v2 = 64;
    }

    else
    {
      v2 = 0;
    }

    *(result + 104) = *(result + 104) & 0xBF | v2;
  }

  return result;
}

- (uint64_t)hasSearchTab
{
  if (result)
  {
    return (*(result + 104) >> 6) & 1;
  }

  return result;
}

- (BOOL)hasBlendingCacheId
{
  if (result)
  {
    return *(result + 64) != 0;
  }

  return result;
}

- (uint64_t)clearShownSuggestionIds
{
  if (result)
  {
    return OUTLINED_FUNCTION_1_3(result, 96);
  }

  return result;
}

- (uint64_t)addShownSuggestionIds:(uint64_t)ids
{
  v3 = a2;
  v4 = v3;
  if (ids)
  {
    v5 = OUTLINED_FUNCTION_7_2();
    v10 = v6;
    if (!v5)
    {
      v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v8 = *(ids + 96);
      *(ids + 96) = v7;

      v5 = OUTLINED_FUNCTION_7_2();
    }

    v3 = [v5 addObject:v10];
    v4 = v10;
  }

  return MEMORY[0x1EEE66BB8](v3, v4);
}

- (uint64_t)shownSuggestionIdsCount
{
  if (result)
  {
    return OUTLINED_FUNCTION_0_6(result, 96);
  }

  return result;
}

- (id)shownSuggestionIdsAtIndex:(id *)index
{
  if (index)
  {
    index = [index[12] objectAtIndex:a2];
    v2 = vars8;
  }

  return index;
}

- (uint64_t)clearEngagedSuggestionIds
{
  if (result)
  {
    return OUTLINED_FUNCTION_1_3(result, 80);
  }

  return result;
}

- (uint64_t)addEngagedSuggestionIds:(uint64_t)ids
{
  v3 = a2;
  v4 = v3;
  if (ids)
  {
    v5 = OUTLINED_FUNCTION_8_0();
    v10 = v6;
    if (!v5)
    {
      v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v8 = *(ids + 80);
      *(ids + 80) = v7;

      v5 = OUTLINED_FUNCTION_8_0();
    }

    v3 = [v5 addObject:v10];
    v4 = v10;
  }

  return MEMORY[0x1EEE66BB8](v3, v4);
}

- (uint64_t)engagedSuggestionIdsCount
{
  if (result)
  {
    return OUTLINED_FUNCTION_0_6(result, 80);
  }

  return result;
}

- (id)engagedSuggestionIdsAtIndex:(id *)index
{
  if (index)
  {
    index = [index[10] objectAtIndex:a2];
    v2 = vars8;
  }

  return index;
}

- (BOOL)hasMetadata
{
  if (result)
  {
    return *(result + 88) != 0;
  }

  return result;
}

- (void)copyTo:(uint64_t)to
{
  v3 = a2;
  if (!to)
  {
    goto LABEL_29;
  }

  v4 = *(to + 104);
  if ((v4 & 8) != 0)
  {
    v3[4] = *(to + 32);
    v3 = OUTLINED_FUNCTION_3_5(v3, 104);
    if ((v4 & 0x10) == 0)
    {
LABEL_4:
      if ((v4 & 2) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_34;
    }
  }

  else if ((*(to + 104) & 0x10) == 0)
  {
    goto LABEL_4;
  }

  v22 = OUTLINED_FUNCTION_1_16(v3);
  v3 = OUTLINED_FUNCTION_3_5(v22, v23);
  if ((v4 & 2) == 0)
  {
LABEL_5:
    if ((v4 & 4) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

LABEL_34:
  v24 = OUTLINED_FUNCTION_1_16(v3);
  v3 = OUTLINED_FUNCTION_3_5(v24, v25);
  if ((v26 & 4) != 0)
  {
LABEL_6:
    v3 = OUTLINED_FUNCTION_1_16(v3);
    *(v3 + v6) = v5 | 4;
  }

LABEL_7:
  v7 = *(to + 72);
  v32 = v3;
  if (v7)
  {
    [(ATXPBAppDirectoryEvent *)v3 setBundleId:v7];
    v3 = v32;
  }

  v8 = *(to + 104);
  if ((v8 & 1) == 0)
  {
    if ((*(to + 104) & 0x20) == 0)
    {
      goto LABEL_11;
    }

LABEL_37:
    v29 = OUTLINED_FUNCTION_1_16(v3);
    v3 = OUTLINED_FUNCTION_3_5(v29, v30);
    if ((v31 & 0x40) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  v27 = OUTLINED_FUNCTION_1_16(v3);
  v3 = OUTLINED_FUNCTION_3_5(v27, v28);
  if ((v8 & 0x20) != 0)
  {
    goto LABEL_37;
  }

LABEL_11:
  if ((v8 & 0x40) != 0)
  {
LABEL_12:
    v9 = OUTLINED_FUNCTION_1_16(v3);
    *(v9 + v11) = v10 | 0x40;
  }

LABEL_13:
  v12 = *(to + 64);
  if (v12)
  {
    [(ATXPBAppDirectoryEvent *)v32 setBlendingCacheId:v12];
  }

  if ([OUTLINED_FUNCTION_7_2() count])
  {
    if (v32)
    {
      [*(v32 + 12) removeAllObjects];
    }

    v13 = [OUTLINED_FUNCTION_7_2() count];
    if (v13)
    {
      v14 = v13;
      for (i = 0; i != v14; ++i)
      {
        v16 = [(ATXPBAppDirectoryEvent *)to shownSuggestionIdsAtIndex:?];
        [(ATXPBAppDirectoryEvent *)v32 addShownSuggestionIds:v16];
      }
    }
  }

  if ([OUTLINED_FUNCTION_8_0() count])
  {
    if (v32)
    {
      [*(v32 + 10) removeAllObjects];
    }

    v17 = [OUTLINED_FUNCTION_8_0() count];
    if (v17)
    {
      v18 = v17;
      for (j = 0; j != v18; ++j)
      {
        v20 = [(ATXPBAppDirectoryEvent *)to engagedSuggestionIdsAtIndex:?];
        [(ATXPBAppDirectoryEvent *)v32 addEngagedSuggestionIds:v20];
      }
    }
  }

  v21 = *(to + 88);
  v3 = v32;
  if (v21)
  {
    [(ATXPBAppDirectoryEvent *)v32 setMetadata:v21];
    v3 = v32;
  }

LABEL_29:
}

- (void)setBundleId:(uint64_t)id
{
  if (id)
  {
    OUTLINED_FUNCTION_2(id, a2, 72);
  }
}

- (void)setBlendingCacheId:(uint64_t)id
{
  if (id)
  {
    OUTLINED_FUNCTION_2(id, a2, 64);
  }
}

- (void)setMetadata:(uint64_t)metadata
{
  if (metadata)
  {
    OUTLINED_FUNCTION_2(metadata, a2, 88);
  }
}

- (void)mergeFrom:(uint64_t)from
{
  v41 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = v3;
  if (!from)
  {
    goto LABEL_41;
  }

  v5 = v3[104];
  if ((v5 & 8) != 0)
  {
    *(from + 32) = *(v3 + 4);
    OUTLINED_FUNCTION_4_4(104);
    if ((v5 & 0x10) == 0)
    {
LABEL_4:
      if ((v5 & 2) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_34;
    }
  }

  else if ((v3[104] & 0x10) == 0)
  {
    goto LABEL_4;
  }

  OUTLINED_FUNCTION_2_4();
  OUTLINED_FUNCTION_4_4(v25);
  if ((v5 & 2) == 0)
  {
LABEL_5:
    if ((v5 & 4) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

LABEL_34:
  OUTLINED_FUNCTION_2_4();
  OUTLINED_FUNCTION_4_4(v26);
  if ((v27 & 4) != 0)
  {
LABEL_6:
    OUTLINED_FUNCTION_2_4();
    *(from + v7) = v6 | 4;
  }

LABEL_7:
  v8 = *(v4 + 9);
  if (v8)
  {
    [(ATXPBAppDirectoryEvent *)from setBundleId:v8];
  }

  v9 = *(v4 + 104);
  if ((v9 & 1) == 0)
  {
    if ((*(v4 + 104) & 0x20) == 0)
    {
      goto LABEL_11;
    }

LABEL_37:
    OUTLINED_FUNCTION_2_4();
    OUTLINED_FUNCTION_4_4(v29);
    if ((v30 & 0x40) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  OUTLINED_FUNCTION_2_4();
  OUTLINED_FUNCTION_4_4(v28);
  if ((v9 & 0x20) != 0)
  {
    goto LABEL_37;
  }

LABEL_11:
  if ((v9 & 0x40) != 0)
  {
LABEL_12:
    OUTLINED_FUNCTION_2_4();
    *(from + v11) = v10 | 0x40;
  }

LABEL_13:
  v12 = *(v4 + 8);
  if (v12)
  {
    [(ATXPBAppDirectoryEvent *)from setBlendingCacheId:v12];
  }

  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v13 = *(v4 + 12);
  v14 = [v13 countByEnumeratingWithState:&v35 objects:v40 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v36;
    do
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v36 != v16)
        {
          objc_enumerationMutation(v13);
        }

        [(ATXPBAppDirectoryEvent *)from addShownSuggestionIds:?];
      }

      v15 = [v13 countByEnumeratingWithState:&v35 objects:v40 count:16];
    }

    while (v15);
  }

  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v18 = *(v4 + 10);
  v19 = [v18 countByEnumeratingWithState:&v31 objects:v39 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v32;
    do
    {
      for (j = 0; j != v20; ++j)
      {
        if (*v32 != v21)
        {
          objc_enumerationMutation(v18);
        }

        [(ATXPBAppDirectoryEvent *)from addEngagedSuggestionIds:?];
      }

      v20 = [v18 countByEnumeratingWithState:&v31 objects:v39 count:16];
    }

    while (v20);
  }

  v23 = *(from + 88);
  v24 = *(v4 + 11);
  if (v23)
  {
    if (v24)
    {
      [(ATXPBAppDirectoryEventMetadata *)v23 mergeFrom:v24];
    }
  }

  else if (v24)
  {
    [(ATXPBAppDirectoryEvent *)from setMetadata:v24];
  }

LABEL_41:
}

- (double)date
{
  if (self)
  {
    return *(self + 32);
  }

  else
  {
    return 0.0;
  }
}

- (uint64_t)eventType
{
  if (result)
  {
    return *(result + 40);
  }

  return result;
}

- (uint64_t)categoryID
{
  if (result)
  {
    return *(result + 16);
  }

  return result;
}

- (uint64_t)categoryIndex
{
  if (result)
  {
    return *(result + 24);
  }

  return result;
}

- (uint64_t)bundleId
{
  if (result)
  {
    return *(result + 72);
  }

  return result;
}

- (uint64_t)bundleIndex
{
  if (result)
  {
    return *(result + 8);
  }

  return result;
}

- (uint64_t)searchQueryLength
{
  if (result)
  {
    return *(result + 48);
  }

  return result;
}

- (uint64_t)searchTab
{
  if (result)
  {
    return *(result + 56);
  }

  return result;
}

- (uint64_t)blendingCacheId
{
  if (result)
  {
    return *(result + 64);
  }

  return result;
}

- (uint64_t)shownSuggestionIds
{
  if (result)
  {
    return *(result + 96);
  }

  return result;
}

- (void)setShownSuggestionIds:(uint64_t)ids
{
  if (ids)
  {
    OUTLINED_FUNCTION_2(ids, a2, 96);
  }
}

- (uint64_t)engagedSuggestionIds
{
  if (result)
  {
    return *(result + 80);
  }

  return result;
}

- (void)setEngagedSuggestionIds:(uint64_t)ids
{
  if (ids)
  {
    OUTLINED_FUNCTION_2(ids, a2, 80);
  }
}

- (uint64_t)metadata
{
  if (result)
  {
    return *(result + 88);
  }

  return result;
}

@end