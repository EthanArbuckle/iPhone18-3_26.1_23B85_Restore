@interface ATXPBSpotlightEvent
- (BOOL)hasActionBlendingCacheId;
- (BOOL)hasActionConsumerSubType;
- (BOOL)hasAppBlendingCacheId;
- (BOOL)hasAppConsumerSubType;
- (BOOL)hasMetadata;
- (BOOL)isEqual:(id)equal;
- (__CFString)eventTypeAsString:(__CFString *)string;
- (double)date;
- (id)actionSuggestionIdsAtIndex:(id *)index;
- (id)appSuggestionIdsAtIndex:(id *)index;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (id)documentSuggestionIdsAtIndex:(id *)index;
- (uint64_t)StringAsEventType:(uint64_t)type;
- (uint64_t)actionBlendingCacheId;
- (uint64_t)actionConsumerSubType;
- (uint64_t)actionSuggestionIds;
- (uint64_t)actionSuggestionIdsCount;
- (uint64_t)addActionSuggestionIds:(uint64_t)ids;
- (uint64_t)addAppSuggestionIds:(uint64_t)ids;
- (uint64_t)addDocumentSuggestionIds:(uint64_t)ids;
- (uint64_t)appBlendingCacheId;
- (uint64_t)appConsumerSubType;
- (uint64_t)appSuggestionIds;
- (uint64_t)appSuggestionIdsCount;
- (uint64_t)clearActionSuggestionIds;
- (uint64_t)clearAppSuggestionIds;
- (uint64_t)clearDocumentSuggestionIds;
- (uint64_t)documentSuggestionIds;
- (uint64_t)documentSuggestionIdsCount;
- (uint64_t)eventType;
- (uint64_t)hasDate;
- (uint64_t)hasEventType;
- (uint64_t)metadata;
- (uint64_t)setDate:(uint64_t)result;
- (uint64_t)setEventType:(uint64_t)result;
- (uint64_t)setHasDate:(uint64_t)result;
- (uint64_t)setHasEventType:(uint64_t)result;
- (unint64_t)hash;
- (void)copyTo:(uint64_t)to;
- (void)mergeFrom:(uint64_t)from;
- (void)setActionBlendingCacheId:(uint64_t)id;
- (void)setActionConsumerSubType:(uint64_t)type;
- (void)setActionSuggestionIds:(uint64_t)ids;
- (void)setAppBlendingCacheId:(uint64_t)id;
- (void)setAppConsumerSubType:(uint64_t)type;
- (void)setAppSuggestionIds:(uint64_t)ids;
- (void)setDocumentSuggestionIds:(uint64_t)ids;
- (void)setMetadata:(uint64_t)metadata;
- (void)writeTo:(id)to;
@end

@implementation ATXPBSpotlightEvent

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = ATXPBSpotlightEvent;
  v4 = [(ATXPBSpotlightEvent *)&v8 description];
  dictionaryRepresentation = [(ATXPBSpotlightEvent *)self dictionaryRepresentation];
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
    if (v6 >= 8)
    {
      v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", self->_eventType];
    }

    else
    {
      v7 = off_1E80C53F8[v6];
    }

    [dictionary setObject:v7 forKey:@"eventType"];
  }

  appConsumerSubType = self->_appConsumerSubType;
  if (appConsumerSubType)
  {
    [dictionary setObject:appConsumerSubType forKey:@"appConsumerSubType"];
  }

  actionConsumerSubType = self->_actionConsumerSubType;
  if (actionConsumerSubType)
  {
    [dictionary setObject:actionConsumerSubType forKey:@"actionConsumerSubType"];
  }

  appBlendingCacheId = self->_appBlendingCacheId;
  if (appBlendingCacheId)
  {
    [dictionary setObject:appBlendingCacheId forKey:@"appBlendingCacheId"];
  }

  actionBlendingCacheId = self->_actionBlendingCacheId;
  if (actionBlendingCacheId)
  {
    [dictionary setObject:actionBlendingCacheId forKey:@"actionBlendingCacheId"];
  }

  appSuggestionIds = self->_appSuggestionIds;
  if (appSuggestionIds)
  {
    [dictionary setObject:appSuggestionIds forKey:@"appSuggestionIds"];
  }

  actionSuggestionIds = self->_actionSuggestionIds;
  if (actionSuggestionIds)
  {
    [dictionary setObject:actionSuggestionIds forKey:@"actionSuggestionIds"];
  }

  metadata = self->_metadata;
  if (metadata)
  {
    dictionaryRepresentation = [(ATXPBSpotlightEventMetadata *)metadata dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation forKey:@"metadata"];
  }

  documentSuggestionIds = self->_documentSuggestionIds;
  if (documentSuggestionIds)
  {
    [dictionary setObject:documentSuggestionIds forKey:@"documentSuggestionIds"];
  }

  return dictionary;
}

- (void)writeTo:(id)to
{
  v36 = *MEMORY[0x1E69E9840];
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

  if (self->_appConsumerSubType)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_actionConsumerSubType)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_appBlendingCacheId)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_actionBlendingCacheId)
  {
    PBDataWriterWriteStringField();
  }

  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v6 = self->_appSuggestionIds;
  v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v29 objects:v35 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v30;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v30 != v9)
        {
          objc_enumerationMutation(v6);
        }

        PBDataWriterWriteStringField();
      }

      v8 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v29 objects:v35 count:16];
    }

    while (v8);
  }

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v11 = self->_actionSuggestionIds;
  v12 = [(NSMutableArray *)v11 countByEnumeratingWithState:&v25 objects:v34 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v26;
    do
    {
      for (j = 0; j != v13; ++j)
      {
        if (*v26 != v14)
        {
          objc_enumerationMutation(v11);
        }

        PBDataWriterWriteStringField();
      }

      v13 = [(NSMutableArray *)v11 countByEnumeratingWithState:&v25 objects:v34 count:16];
    }

    while (v13);
  }

  if (self->_metadata)
  {
    PBDataWriterWriteSubmessage();
  }

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v16 = self->_documentSuggestionIds;
  v17 = [(NSMutableArray *)v16 countByEnumeratingWithState:&v21 objects:v33 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v22;
    do
    {
      for (k = 0; k != v18; ++k)
      {
        if (*v22 != v19)
        {
          objc_enumerationMutation(v16);
        }

        PBDataWriterWriteStringField();
      }

      v18 = [(NSMutableArray *)v16 countByEnumeratingWithState:&v21 objects:v33 count:16];
    }

    while (v18);
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v52 = *MEMORY[0x1E69E9840];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = v5;
  has = self->_has;
  if (has)
  {
    *(v5 + 8) = self->_date;
    *(v5 + 88) |= 1u;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    *(v5 + 72) = self->_eventType;
    *(v5 + 88) |= 2u;
  }

  v8 = [(NSString *)self->_appConsumerSubType copyWithZone:zone];
  v9 = v6[6];
  v6[6] = v8;

  v10 = [(NSString *)self->_actionConsumerSubType copyWithZone:zone];
  v11 = v6[3];
  v6[3] = v10;

  v12 = [(NSString *)self->_appBlendingCacheId copyWithZone:zone];
  v13 = v6[5];
  v6[5] = v12;

  v14 = [(NSString *)self->_actionBlendingCacheId copyWithZone:zone];
  v15 = v6[2];
  v6[2] = v14;

  v47 = 0u;
  v48 = 0u;
  v45 = 0u;
  v46 = 0u;
  v16 = self->_appSuggestionIds;
  v17 = [(NSMutableArray *)v16 countByEnumeratingWithState:&v45 objects:v51 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v46;
    do
    {
      for (i = 0; i != v18; ++i)
      {
        if (*v46 != v19)
        {
          objc_enumerationMutation(v16);
        }

        v21 = [*(*(&v45 + 1) + 8 * i) copyWithZone:zone];
        [(ATXPBSpotlightEvent *)v6 addAppSuggestionIds:v21];
      }

      v18 = [(NSMutableArray *)v16 countByEnumeratingWithState:&v45 objects:v51 count:16];
    }

    while (v18);
  }

  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  v22 = self->_actionSuggestionIds;
  v23 = [(NSMutableArray *)v22 countByEnumeratingWithState:&v41 objects:v50 count:16];
  if (v23)
  {
    v24 = v23;
    v25 = *v42;
    do
    {
      for (j = 0; j != v24; ++j)
      {
        if (*v42 != v25)
        {
          objc_enumerationMutation(v22);
        }

        v27 = [*(*(&v41 + 1) + 8 * j) copyWithZone:zone];
        [(ATXPBSpotlightEvent *)v6 addActionSuggestionIds:v27];
      }

      v24 = [(NSMutableArray *)v22 countByEnumeratingWithState:&v41 objects:v50 count:16];
    }

    while (v24);
  }

  v28 = [(ATXPBSpotlightEventMetadata *)self->_metadata copyWithZone:zone];
  v29 = v6[10];
  v6[10] = v28;

  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v30 = self->_documentSuggestionIds;
  v31 = [(NSMutableArray *)v30 countByEnumeratingWithState:&v37 objects:v49 count:16];
  if (v31)
  {
    v32 = v31;
    v33 = *v38;
    do
    {
      for (k = 0; k != v32; ++k)
      {
        if (*v38 != v33)
        {
          objc_enumerationMutation(v30);
        }

        v35 = [*(*(&v37 + 1) + 8 * k) copyWithZone:{zone, v37}];
        [(ATXPBSpotlightEvent *)v6 addDocumentSuggestionIds:v35];
      }

      v32 = [(NSMutableArray *)v30 countByEnumeratingWithState:&v37 objects:v49 count:16];
    }

    while (v32);
  }

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_28;
  }

  if (*&self->_has)
  {
    if ((*(equalCopy + 88) & 1) == 0 || self->_date != *(equalCopy + 1))
    {
      goto LABEL_28;
    }
  }

  else if (*(equalCopy + 88))
  {
LABEL_28:
    v13 = 0;
    goto LABEL_29;
  }

  if ((*&self->_has & 2) != 0)
  {
    if ((*(equalCopy + 88) & 2) == 0 || self->_eventType != *(equalCopy + 18))
    {
      goto LABEL_28;
    }
  }

  else if ((*(equalCopy + 88) & 2) != 0)
  {
    goto LABEL_28;
  }

  appConsumerSubType = self->_appConsumerSubType;
  if (appConsumerSubType | *(equalCopy + 6) && ![(NSString *)appConsumerSubType isEqual:?])
  {
    goto LABEL_28;
  }

  actionConsumerSubType = self->_actionConsumerSubType;
  if (actionConsumerSubType | *(equalCopy + 3))
  {
    if (![(NSString *)actionConsumerSubType isEqual:?])
    {
      goto LABEL_28;
    }
  }

  appBlendingCacheId = self->_appBlendingCacheId;
  if (appBlendingCacheId | *(equalCopy + 5))
  {
    if (![(NSString *)appBlendingCacheId isEqual:?])
    {
      goto LABEL_28;
    }
  }

  actionBlendingCacheId = self->_actionBlendingCacheId;
  if (actionBlendingCacheId | *(equalCopy + 2))
  {
    if (![(NSString *)actionBlendingCacheId isEqual:?])
    {
      goto LABEL_28;
    }
  }

  appSuggestionIds = self->_appSuggestionIds;
  if (appSuggestionIds | *(equalCopy + 7))
  {
    if (![(NSMutableArray *)appSuggestionIds isEqual:?])
    {
      goto LABEL_28;
    }
  }

  actionSuggestionIds = self->_actionSuggestionIds;
  if (actionSuggestionIds | *(equalCopy + 4))
  {
    if (![(NSMutableArray *)actionSuggestionIds isEqual:?])
    {
      goto LABEL_28;
    }
  }

  metadata = self->_metadata;
  if (metadata | *(equalCopy + 10))
  {
    if (![(ATXPBSpotlightEventMetadata *)metadata isEqual:?])
    {
      goto LABEL_28;
    }
  }

  documentSuggestionIds = self->_documentSuggestionIds;
  if (documentSuggestionIds | *(equalCopy + 8))
  {
    v13 = [(NSMutableArray *)documentSuggestionIds isEqual:?];
  }

  else
  {
    v13 = 1;
  }

LABEL_29:

  return v13;
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

  v10 = v9 ^ v5 ^ [(NSString *)self->_appConsumerSubType hash];
  v11 = [(NSString *)self->_actionConsumerSubType hash];
  v12 = v10 ^ v11 ^ [(NSString *)self->_appBlendingCacheId hash];
  v13 = [(NSString *)self->_actionBlendingCacheId hash];
  v14 = v13 ^ [(NSMutableArray *)self->_appSuggestionIds hash];
  v15 = v12 ^ v14 ^ [(NSMutableArray *)self->_actionSuggestionIds hash];
  v16 = [(ATXPBSpotlightEventMetadata *)self->_metadata hash];
  return v15 ^ v16 ^ [(NSMutableArray *)self->_documentSuggestionIds hash];
}

- (uint64_t)setDate:(uint64_t)result
{
  if (result)
  {
    *(result + 88) |= 1u;
    *(result + 8) = a2;
  }

  return result;
}

- (uint64_t)setHasDate:(uint64_t)result
{
  if (result)
  {
    *(result + 88) = *(result + 88) & 0xFE | a2;
  }

  return result;
}

- (uint64_t)hasDate
{
  if (result)
  {
    return *(result + 88) & 1;
  }

  return result;
}

- (uint64_t)eventType
{
  if (result)
  {
    if ((*(result + 88) & 2) != 0)
    {
      return *(result + 72);
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
    *(result + 88) |= 2u;
    *(result + 72) = a2;
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

    *(result + 88) = *(result + 88) & 0xFD | v2;
  }

  return result;
}

- (uint64_t)hasEventType
{
  if (result)
  {
    return (*(result + 88) >> 1) & 1;
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

  if ((a2 - 1) < 8)
  {
    string = off_1E80C53F8[(a2 - 1)];
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
    if ([v5 isEqualToString:@"ViewAppeared"])
    {
      v6 = 1;
    }

    else if ([v5 isEqualToString:@"ViewDisappeared"])
    {
      v6 = 2;
    }

    else if ([v5 isEqualToString:@"SuggestionsAppeared"])
    {
      v6 = 3;
    }

    else if ([v5 isEqualToString:@"SuggestionTapped"])
    {
      v6 = 4;
    }

    else if ([v5 isEqualToString:@"SuggestionDismissed"])
    {
      v6 = 5;
    }

    else if ([v5 isEqualToString:@"ContextMenuDismissOnce"])
    {
      v6 = 6;
    }

    else if ([v5 isEqualToString:@"ContextMenuNeverShowAgain"])
    {
      v6 = 7;
    }

    else if ([v5 isEqualToString:@"SearchResultTapped"])
    {
      v6 = 8;
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

- (BOOL)hasAppConsumerSubType
{
  if (result)
  {
    return *(result + 48) != 0;
  }

  return result;
}

- (BOOL)hasActionConsumerSubType
{
  if (result)
  {
    return *(result + 24) != 0;
  }

  return result;
}

- (BOOL)hasAppBlendingCacheId
{
  if (result)
  {
    return *(result + 40) != 0;
  }

  return result;
}

- (BOOL)hasActionBlendingCacheId
{
  if (result)
  {
    return *(result + 16) != 0;
  }

  return result;
}

- (uint64_t)clearAppSuggestionIds
{
  if (result)
  {
    return OUTLINED_FUNCTION_1_3(result, 56);
  }

  return result;
}

- (uint64_t)addAppSuggestionIds:(uint64_t)ids
{
  v3 = a2;
  v4 = v3;
  if (ids)
  {
    v5 = *(ids + 56);
    v9 = v4;
    if (!v5)
    {
      v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v7 = *(ids + 56);
      *(ids + 56) = v6;

      v5 = *(ids + 56);
    }

    v3 = [v5 addObject:v9];
    v4 = v9;
  }

  return MEMORY[0x1EEE66BB8](v3, v4);
}

- (uint64_t)appSuggestionIdsCount
{
  if (result)
  {
    return OUTLINED_FUNCTION_0_6(result, 56);
  }

  return result;
}

- (id)appSuggestionIdsAtIndex:(id *)index
{
  if (index)
  {
    index = [index[7] objectAtIndex:a2];
    v2 = vars8;
  }

  return index;
}

- (uint64_t)clearActionSuggestionIds
{
  if (result)
  {
    return OUTLINED_FUNCTION_1_3(result, 32);
  }

  return result;
}

- (uint64_t)addActionSuggestionIds:(uint64_t)ids
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

- (uint64_t)actionSuggestionIdsCount
{
  if (result)
  {
    return OUTLINED_FUNCTION_0_6(result, 32);
  }

  return result;
}

- (id)actionSuggestionIdsAtIndex:(id *)index
{
  if (index)
  {
    index = [index[4] objectAtIndex:a2];
    v2 = vars8;
  }

  return index;
}

- (BOOL)hasMetadata
{
  if (result)
  {
    return *(result + 80) != 0;
  }

  return result;
}

- (uint64_t)clearDocumentSuggestionIds
{
  if (result)
  {
    return OUTLINED_FUNCTION_1_3(result, 64);
  }

  return result;
}

- (uint64_t)addDocumentSuggestionIds:(uint64_t)ids
{
  v3 = a2;
  v4 = v3;
  if (ids)
  {
    v5 = *(ids + 64);
    v9 = v4;
    if (!v5)
    {
      v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v7 = *(ids + 64);
      *(ids + 64) = v6;

      v5 = *(ids + 64);
    }

    v3 = [v5 addObject:v9];
    v4 = v9;
  }

  return MEMORY[0x1EEE66BB8](v3, v4);
}

- (uint64_t)documentSuggestionIdsCount
{
  if (result)
  {
    return OUTLINED_FUNCTION_0_6(result, 64);
  }

  return result;
}

- (id)documentSuggestionIdsAtIndex:(id *)index
{
  if (index)
  {
    index = [index[8] objectAtIndex:a2];
    v2 = vars8;
  }

  return index;
}

- (void)copyTo:(uint64_t)to
{
  v53 = a2;
  if (to)
  {
    OUTLINED_FUNCTION_4_8();
    v7 = v53;
    if (v6)
    {
      v53[1] = *(to + 8);
      *(v53 + v5) |= 1u;
      OUTLINED_FUNCTION_4_8();
    }

    if ((v6 & 2) != 0)
    {
      *(v7 + 18) = *(to + 72);
      *(v7 + *(v4 + 2832)) |= 2u;
    }

    v8 = *(to + 48);
    if (v8)
    {
      [(ATXPBSpotlightEvent *)v53 setAppConsumerSubType:v8];
    }

    v9 = *(to + 24);
    if (v9)
    {
      [(ATXPBSpotlightEvent *)v53 setActionConsumerSubType:v9];
    }

    v10 = *(to + 40);
    if (v10)
    {
      [(ATXPBSpotlightEvent *)v53 setAppBlendingCacheId:v10];
    }

    v11 = *(to + 16);
    if (v11)
    {
      [(ATXPBSpotlightEvent *)v53 setActionBlendingCacheId:v11];
    }

    if ([*(to + 56) count])
    {
      if (v53)
      {
        [v53[7] removeAllObjects];
      }

      v12 = [*(to + 56) count];
      if (v12)
      {
        v13 = v12;
        for (i = 0; i != v13; ++i)
        {
          v15 = [*(to + 56) objectAtIndex:i];
          v23 = OUTLINED_FUNCTION_3_3(v15, v16, v17, v18, v19, v20, v21, v22, v52, v53);
          [(ATXPBSpotlightEvent *)v23 addAppSuggestionIds:v24];
        }
      }
    }

    if ([*(to + 32) count])
    {
      if (v53)
      {
        [v53[4] removeAllObjects];
      }

      v25 = [*(to + 32) count];
      if (v25)
      {
        v26 = v25;
        for (j = 0; j != v26; ++j)
        {
          v28 = [*(to + 32) objectAtIndex:j];
          v36 = OUTLINED_FUNCTION_3_3(v28, v29, v30, v31, v32, v33, v34, v35, v52, v53);
          [(ATXPBSpotlightEvent *)v36 addActionSuggestionIds:v37];
        }
      }
    }

    v38 = *(to + 80);
    if (v38)
    {
      [(ATXPBSpotlightEvent *)v53 setMetadata:v38];
    }

    if ([*(to + 64) count])
    {
      if (v53)
      {
        [v53[8] removeAllObjects];
      }

      v39 = [*(to + 64) count];
      if (v39)
      {
        v40 = v39;
        for (k = 0; k != v40; ++k)
        {
          v42 = [*(to + 64) objectAtIndex:k];
          v50 = OUTLINED_FUNCTION_3_3(v42, v43, v44, v45, v46, v47, v48, v49, v52, v53);
          [(ATXPBSpotlightEvent *)v50 addDocumentSuggestionIds:v51];
        }
      }
    }
  }
}

- (void)setAppConsumerSubType:(uint64_t)type
{
  if (type)
  {
    OUTLINED_FUNCTION_2(type, a2, 48);
  }
}

- (void)setActionConsumerSubType:(uint64_t)type
{
  if (type)
  {
    OUTLINED_FUNCTION_2(type, a2, 24);
  }
}

- (void)setAppBlendingCacheId:(uint64_t)id
{
  if (id)
  {
    OUTLINED_FUNCTION_2(id, a2, 40);
  }
}

- (void)setActionBlendingCacheId:(uint64_t)id
{
  if (id)
  {
    OUTLINED_FUNCTION_2(id, a2, 16);
  }
}

- (void)setMetadata:(uint64_t)metadata
{
  if (metadata)
  {
    OUTLINED_FUNCTION_2(metadata, a2, 80);
  }
}

- (void)mergeFrom:(uint64_t)from
{
  v43 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (from)
  {
    OUTLINED_FUNCTION_4_8();
    if (v6)
    {
      *(from + 8) = *(v3 + 1);
      *(from + v5) |= 1u;
      OUTLINED_FUNCTION_4_8();
    }

    if ((v6 & 2) != 0)
    {
      *(from + 72) = *(v3 + 18);
      *(from + *(v4 + 2832)) |= 2u;
    }

    v7 = *(v3 + 6);
    if (v7)
    {
      objc_storeStrong((from + 48), v7);
    }

    v8 = *(v3 + 3);
    if (v8)
    {
      objc_storeStrong((from + 24), v8);
    }

    v9 = *(v3 + 5);
    if (v9)
    {
      objc_storeStrong((from + 40), v9);
    }

    v10 = *(v3 + 2);
    if (v10)
    {
      objc_storeStrong((from + 16), v10);
    }

    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
    v11 = *(v3 + 7);
    v12 = [v11 countByEnumeratingWithState:&v36 objects:v42 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v37;
      do
      {
        v15 = 0;
        do
        {
          if (*v37 != v14)
          {
            objc_enumerationMutation(v11);
          }

          [(ATXPBSpotlightEvent *)from addAppSuggestionIds:?];
        }

        while (v13 != v15);
        v13 = [v11 countByEnumeratingWithState:&v36 objects:v42 count:16];
      }

      while (v13);
    }

    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    v16 = *(v3 + 4);
    v17 = [v16 countByEnumeratingWithState:&v32 objects:v41 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v33;
      do
      {
        v20 = 0;
        do
        {
          if (*v33 != v19)
          {
            objc_enumerationMutation(v16);
          }

          [(ATXPBSpotlightEvent *)from addActionSuggestionIds:?];
        }

        while (v18 != v20);
        v18 = [v16 countByEnumeratingWithState:&v32 objects:v41 count:16];
      }

      while (v18);
    }

    v21 = *(from + 80);
    v22 = *(v3 + 10);
    if (v21)
    {
      if (v22)
      {
        [(ATXPBSpotlightEventMetadata *)v21 mergeFrom:v22];
      }
    }

    else if (v22)
    {
      objc_storeStrong((from + 80), v22);
    }

    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    v23 = *(v3 + 8);
    v24 = [v23 countByEnumeratingWithState:&v28 objects:v40 count:16];
    if (v24)
    {
      v25 = v24;
      v26 = *v29;
      do
      {
        v27 = 0;
        do
        {
          if (*v29 != v26)
          {
            objc_enumerationMutation(v23);
          }

          [(ATXPBSpotlightEvent *)from addDocumentSuggestionIds:?];
        }

        while (v25 != v27);
        v25 = [v23 countByEnumeratingWithState:&v28 objects:v40 count:16];
      }

      while (v25);
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

- (uint64_t)appConsumerSubType
{
  if (result)
  {
    return *(result + 48);
  }

  return result;
}

- (uint64_t)actionConsumerSubType
{
  if (result)
  {
    return *(result + 24);
  }

  return result;
}

- (uint64_t)appBlendingCacheId
{
  if (result)
  {
    return *(result + 40);
  }

  return result;
}

- (uint64_t)actionBlendingCacheId
{
  if (result)
  {
    return *(result + 16);
  }

  return result;
}

- (uint64_t)appSuggestionIds
{
  if (result)
  {
    return *(result + 56);
  }

  return result;
}

- (void)setAppSuggestionIds:(uint64_t)ids
{
  if (ids)
  {
    OUTLINED_FUNCTION_2(ids, a2, 56);
  }
}

- (uint64_t)actionSuggestionIds
{
  if (result)
  {
    return *(result + 32);
  }

  return result;
}

- (void)setActionSuggestionIds:(uint64_t)ids
{
  if (ids)
  {
    OUTLINED_FUNCTION_2(ids, a2, 32);
  }
}

- (uint64_t)metadata
{
  if (result)
  {
    return *(result + 80);
  }

  return result;
}

- (uint64_t)documentSuggestionIds
{
  if (result)
  {
    return *(result + 64);
  }

  return result;
}

- (void)setDocumentSuggestionIds:(uint64_t)ids
{
  if (ids)
  {
    OUTLINED_FUNCTION_2(ids, a2, 64);
  }
}

@end