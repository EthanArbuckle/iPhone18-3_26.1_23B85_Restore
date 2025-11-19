@interface ATXPBActivity
- (BOOL)hasModeUUID;
- (BOOL)hasOriginAnchorType;
- (BOOL)hasOriginBundleId;
- (BOOL)hasSuggestionUUID;
- (BOOL)isEqual:(id)a3;
- (__CFString)typeAsString:(__CFString *)a1;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (id)serializedTriggersAtIndex:(id *)a1;
- (uint64_t)StringAsType:(uint64_t)a1;
- (uint64_t)addSerializedTriggers:(uint64_t)a1;
- (uint64_t)clearSerializedTriggers;
- (uint64_t)hasOrigin;
- (uint64_t)hasShouldSuggestTriggers;
- (uint64_t)hasType;
- (uint64_t)hasUiLocation;
- (uint64_t)modeUUID;
- (uint64_t)origin;
- (uint64_t)originAnchorType;
- (uint64_t)originBundleId;
- (uint64_t)serializedTriggers;
- (uint64_t)serializedTriggersCount;
- (uint64_t)setHasOrigin:(uint64_t)result;
- (uint64_t)setHasShouldSuggestTriggers:(uint64_t)result;
- (uint64_t)setHasType:(uint64_t)result;
- (uint64_t)setHasUiLocation:(uint64_t)result;
- (uint64_t)setOrigin:(uint64_t)result;
- (uint64_t)setShouldSuggestTriggers:(uint64_t)result;
- (uint64_t)setType:(uint64_t)result;
- (uint64_t)setUiLocation:(uint64_t)result;
- (uint64_t)shouldSuggestTriggers;
- (uint64_t)suggestionUUID;
- (uint64_t)type;
- (uint64_t)uiLocation;
- (unint64_t)hash;
- (void)copyTo:(uint64_t)a1;
- (void)mergeFrom:(uint64_t)a1;
- (void)setModeUUID:(uint64_t)a1;
- (void)setOriginAnchorType:(uint64_t)a1;
- (void)setOriginBundleId:(uint64_t)a1;
- (void)setSerializedTriggers:(uint64_t)a1;
- (void)setSuggestionUUID:(uint64_t)a1;
- (void)writeTo:(id)a3;
@end

@implementation ATXPBActivity

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = ATXPBActivity;
  v4 = [(ATXPBActivity *)&v8 description];
  v5 = [(ATXPBActivity *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  has = self->_has;
  if ((has & 2) != 0)
  {
    v5 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_uiLocation];
    [v3 setObject:v5 forKey:@"uiLocation"];

    has = self->_has;
  }

  if ((has & 4) != 0)
  {
    type = self->_type;
    if (type >= 0xE)
    {
      v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", self->_type];
    }

    else
    {
      v7 = off_1E80C6388[type];
    }

    [v3 setObject:v7 forKey:@"type"];
  }

  modeUUID = self->_modeUUID;
  if (modeUUID)
  {
    [v3 setObject:modeUUID forKey:@"modeUUID"];
  }

  suggestionUUID = self->_suggestionUUID;
  if (suggestionUUID)
  {
    [v3 setObject:suggestionUUID forKey:@"suggestionUUID"];
  }

  if (*&self->_has)
  {
    v10 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_origin];
    [v3 setObject:v10 forKey:@"origin"];
  }

  originBundleId = self->_originBundleId;
  if (originBundleId)
  {
    [v3 setObject:originBundleId forKey:@"originBundleId"];
  }

  originAnchorType = self->_originAnchorType;
  if (originAnchorType)
  {
    [v3 setObject:originAnchorType forKey:@"originAnchorType"];
  }

  serializedTriggers = self->_serializedTriggers;
  if (serializedTriggers)
  {
    [v3 setObject:serializedTriggers forKey:@"serializedTriggers"];
  }

  if ((*&self->_has & 8) != 0)
  {
    v14 = [MEMORY[0x1E696AD98] numberWithBool:self->_shouldSuggestTriggers];
    [v3 setObject:v14 forKey:@"shouldSuggestTriggers"];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = a3;
  has = self->_has;
  if ((has & 2) != 0)
  {
    PBDataWriterWriteUint64Field();
    has = self->_has;
  }

  if ((has & 4) != 0)
  {
    PBDataWriterWriteInt32Field();
  }

  if (self->_modeUUID)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_suggestionUUID)
  {
    PBDataWriterWriteStringField();
  }

  if (*&self->_has)
  {
    PBDataWriterWriteUint64Field();
  }

  if (self->_originBundleId)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_originAnchorType)
  {
    PBDataWriterWriteStringField();
  }

  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v6 = self->_serializedTriggers;
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

        PBDataWriterWriteDataField();
      }

      v8 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v8);
  }

  if ((*&self->_has & 8) != 0)
  {
    PBDataWriterWriteBOOLField();
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v28 = *MEMORY[0x1E69E9840];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = v5;
  has = self->_has;
  if ((has & 2) != 0)
  {
    *(v5 + 16) = self->_uiLocation;
    *(v5 + 72) |= 2u;
    has = self->_has;
  }

  if ((has & 4) != 0)
  {
    *(v5 + 64) = self->_type;
    *(v5 + 72) |= 4u;
  }

  v8 = [(NSString *)self->_modeUUID copyWithZone:a3];
  v9 = *(v6 + 24);
  *(v6 + 24) = v8;

  v10 = [(NSString *)self->_suggestionUUID copyWithZone:a3];
  v11 = *(v6 + 56);
  *(v6 + 56) = v10;

  if (*&self->_has)
  {
    *(v6 + 8) = self->_origin;
    *(v6 + 72) |= 1u;
  }

  v12 = [(NSString *)self->_originBundleId copyWithZone:a3];
  v13 = *(v6 + 40);
  *(v6 + 40) = v12;

  v14 = [(NSString *)self->_originAnchorType copyWithZone:a3];
  v15 = *(v6 + 32);
  *(v6 + 32) = v14;

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v16 = self->_serializedTriggers;
  v17 = [(NSMutableArray *)v16 countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v24;
    do
    {
      for (i = 0; i != v18; ++i)
      {
        if (*v24 != v19)
        {
          objc_enumerationMutation(v16);
        }

        v21 = [*(*(&v23 + 1) + 8 * i) copyWithZone:{a3, v23}];
        [(ATXPBActivity *)v6 addSerializedTriggers:v21];
      }

      v18 = [(NSMutableArray *)v16 countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v18);
  }

  if ((*&self->_has & 8) != 0)
  {
    *(v6 + 68) = self->_shouldSuggestTriggers;
    *(v6 + 72) |= 8u;
  }

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_29;
  }

  if ((*&self->_has & 2) != 0)
  {
    if ((*(v4 + 72) & 2) == 0 || self->_uiLocation != *(v4 + 2))
    {
      goto LABEL_29;
    }
  }

  else if ((*(v4 + 72) & 2) != 0)
  {
    goto LABEL_29;
  }

  if ((*&self->_has & 4) != 0)
  {
    if ((*(v4 + 72) & 4) == 0 || self->_type != *(v4 + 16))
    {
      goto LABEL_29;
    }
  }

  else if ((*(v4 + 72) & 4) != 0)
  {
    goto LABEL_29;
  }

  modeUUID = self->_modeUUID;
  if (modeUUID | *(v4 + 3) && ![(NSString *)modeUUID isEqual:?])
  {
    goto LABEL_29;
  }

  suggestionUUID = self->_suggestionUUID;
  if (suggestionUUID | *(v4 + 7))
  {
    if (![(NSString *)suggestionUUID isEqual:?])
    {
      goto LABEL_29;
    }
  }

  if (*&self->_has)
  {
    if ((*(v4 + 72) & 1) == 0 || self->_origin != *(v4 + 1))
    {
      goto LABEL_29;
    }
  }

  else if (*(v4 + 72))
  {
    goto LABEL_29;
  }

  originBundleId = self->_originBundleId;
  if (originBundleId | *(v4 + 5) && ![(NSString *)originBundleId isEqual:?])
  {
    goto LABEL_29;
  }

  originAnchorType = self->_originAnchorType;
  if (originAnchorType | *(v4 + 4))
  {
    if (![(NSString *)originAnchorType isEqual:?])
    {
      goto LABEL_29;
    }
  }

  serializedTriggers = self->_serializedTriggers;
  if (serializedTriggers | *(v4 + 6))
  {
    if (![(NSMutableArray *)serializedTriggers isEqual:?])
    {
      goto LABEL_29;
    }
  }

  v10 = (*(v4 + 72) & 8) == 0;
  if ((*&self->_has & 8) != 0)
  {
    if ((*(v4 + 72) & 8) == 0)
    {
LABEL_29:
      v10 = 0;
      goto LABEL_30;
    }

    if (self->_shouldSuggestTriggers)
    {
      if ((*(v4 + 68) & 1) == 0)
      {
        goto LABEL_29;
      }
    }

    else if (*(v4 + 68))
    {
      goto LABEL_29;
    }

    v10 = 1;
  }

LABEL_30:

  return v10;
}

- (unint64_t)hash
{
  if ((*&self->_has & 2) != 0)
  {
    v3 = 2654435761u * self->_uiLocation;
    if ((*&self->_has & 4) != 0)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v3 = 0;
    if ((*&self->_has & 4) != 0)
    {
LABEL_3:
      v4 = 2654435761 * self->_type;
      goto LABEL_6;
    }
  }

  v4 = 0;
LABEL_6:
  v5 = [(NSString *)self->_modeUUID hash];
  v6 = [(NSString *)self->_suggestionUUID hash];
  if (*&self->_has)
  {
    v7 = 2654435761u * self->_origin;
  }

  else
  {
    v7 = 0;
  }

  v8 = [(NSString *)self->_originBundleId hash];
  v9 = [(NSString *)self->_originAnchorType hash];
  v10 = [(NSMutableArray *)self->_serializedTriggers hash];
  if ((*&self->_has & 8) != 0)
  {
    v11 = 2654435761 * self->_shouldSuggestTriggers;
  }

  else
  {
    v11 = 0;
  }

  return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11;
}

- (uint64_t)setUiLocation:(uint64_t)result
{
  if (result)
  {
    *(result + 72) |= 2u;
    *(result + 16) = a2;
  }

  return result;
}

- (uint64_t)setHasUiLocation:(uint64_t)result
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

    *(result + 72) = *(result + 72) & 0xFD | v2;
  }

  return result;
}

- (uint64_t)hasUiLocation
{
  if (result)
  {
    return (*(result + 72) >> 1) & 1;
  }

  return result;
}

- (uint64_t)type
{
  if (result)
  {
    if ((*(result + 72) & 4) != 0)
    {
      return *(result + 64);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

- (uint64_t)setType:(uint64_t)result
{
  if (result)
  {
    *(result + 72) |= 4u;
    *(result + 64) = a2;
  }

  return result;
}

- (uint64_t)setHasType:(uint64_t)result
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

    *(result + 72) = *(result + 72) & 0xFB | v2;
  }

  return result;
}

- (uint64_t)hasType
{
  if (result)
  {
    return (*(result + 72) >> 2) & 1;
  }

  return result;
}

- (__CFString)typeAsString:(__CFString *)a1
{
  if (!a1)
  {
LABEL_4:

    return a1;
  }

  if (a2 < 0xE)
  {
    a1 = off_1E80C6388[a2];
    goto LABEL_4;
  }

  a1 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", a2];

  return a1;
}

- (uint64_t)StringAsType:(uint64_t)a1
{
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    v5 = v3;
    if ([v5 isEqualToString:@"Custom"])
    {
      v6 = 0;
    }

    else if ([v5 isEqualToString:@"Home"])
    {
      v6 = 1;
    }

    else if ([v5 isEqualToString:@"Working"])
    {
      v6 = 2;
    }

    else if ([v5 isEqualToString:@"Exercising"])
    {
      v6 = 3;
    }

    else if ([v5 isEqualToString:@"Driving"])
    {
      v6 = 4;
    }

    else if ([v5 isEqualToString:@"Bedtime"])
    {
      v6 = 5;
    }

    else if ([v5 isEqualToString:@"Gaming"])
    {
      v6 = 6;
    }

    else if ([v5 isEqualToString:@"Reading"])
    {
      v6 = 7;
    }

    else if ([v5 isEqualToString:@"Traveling"])
    {
      v6 = 8;
    }

    else if ([v5 isEqualToString:@"Learning"])
    {
      v6 = 9;
    }

    else if ([v5 isEqualToString:@"Streaming"])
    {
      v6 = 10;
    }

    else if ([v5 isEqualToString:@"ScreenSharing"])
    {
      v6 = 11;
    }

    else if ([v5 isEqualToString:@"ClassicDND"])
    {
      v6 = 12;
    }

    else if ([v5 isEqualToString:@"ScreenRecording"])
    {
      v6 = 13;
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)hasModeUUID
{
  if (result)
  {
    return *(result + 24) != 0;
  }

  return result;
}

- (BOOL)hasSuggestionUUID
{
  if (result)
  {
    return *(result + 56) != 0;
  }

  return result;
}

- (uint64_t)setOrigin:(uint64_t)result
{
  if (result)
  {
    *(result + 72) |= 1u;
    *(result + 8) = a2;
  }

  return result;
}

- (uint64_t)setHasOrigin:(uint64_t)result
{
  if (result)
  {
    *(result + 72) = *(result + 72) & 0xFE | a2;
  }

  return result;
}

- (uint64_t)hasOrigin
{
  if (result)
  {
    return *(result + 72) & 1;
  }

  return result;
}

- (BOOL)hasOriginBundleId
{
  if (result)
  {
    return *(result + 40) != 0;
  }

  return result;
}

- (BOOL)hasOriginAnchorType
{
  if (result)
  {
    return *(result + 32) != 0;
  }

  return result;
}

- (uint64_t)clearSerializedTriggers
{
  if (result)
  {
    return [*(result + 48) removeAllObjects];
  }

  return result;
}

- (uint64_t)addSerializedTriggers:(uint64_t)a1
{
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    v5 = *(a1 + 48);
    v9 = v4;
    if (!v5)
    {
      v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v7 = *(a1 + 48);
      *(a1 + 48) = v6;

      v5 = *(a1 + 48);
    }

    v3 = [v5 addObject:v9];
    v4 = v9;
  }

  return MEMORY[0x1EEE66BB8](v3, v4);
}

- (uint64_t)serializedTriggersCount
{
  if (result)
  {
    return [*(result + 48) count];
  }

  return result;
}

- (id)serializedTriggersAtIndex:(id *)a1
{
  if (a1)
  {
    a1 = [a1[6] objectAtIndex:a2];
    v2 = vars8;
  }

  return a1;
}

- (uint64_t)setShouldSuggestTriggers:(uint64_t)result
{
  if (result)
  {
    *(result + 72) |= 8u;
    *(result + 68) = a2;
  }

  return result;
}

- (uint64_t)setHasShouldSuggestTriggers:(uint64_t)result
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

    *(result + 72) = *(result + 72) & 0xF7 | v2;
  }

  return result;
}

- (uint64_t)hasShouldSuggestTriggers
{
  if (result)
  {
    return (*(result + 72) >> 3) & 1;
  }

  return result;
}

- (void)copyTo:(uint64_t)a1
{
  v3 = a2;
  if (a1)
  {
    OUTLINED_FUNCTION_1_24();
    if ((v6 & 2) != 0)
    {
      *(v4 + 16) = *(a1 + 16);
      *(v4 + v5) |= 2u;
      OUTLINED_FUNCTION_1_24();
    }

    if ((v6 & 4) != 0)
    {
      *(v4 + 64) = *(a1 + 64);
      *(v4 + 72) |= 4u;
    }

    v7 = *(a1 + 24);
    v18 = v4;
    if (v7)
    {
      [(ATXPBActivity *)v4 setModeUUID:v7];
    }

    v8 = *(a1 + 56);
    if (v8)
    {
      [(ATXPBActivity *)v18 setSuggestionUUID:v8];
    }

    OUTLINED_FUNCTION_1_24();
    if (v11)
    {
      *(v9 + 8) = *(a1 + 8);
      *(v9 + v10) |= 1u;
    }

    v12 = *(a1 + 40);
    if (v12)
    {
      [(ATXPBActivity *)v18 setOriginBundleId:v12];
    }

    v13 = *(a1 + 32);
    if (v13)
    {
      [(ATXPBActivity *)v18 setOriginAnchorType:v13];
    }

    if ([*(a1 + 48) count])
    {
      if (v18)
      {
        [v18[6] removeAllObjects];
      }

      v14 = [*(a1 + 48) count];
      if (v14)
      {
        v15 = v14;
        for (i = 0; i != v15; ++i)
        {
          v17 = [*(a1 + 48) objectAtIndex:i];
          [(ATXPBActivity *)v18 addSerializedTriggers:v17];
        }
      }
    }

    v3 = v18;
    if ((*(a1 + 72) & 8) != 0)
    {
      *(v18 + 68) = *(a1 + 68);
      *(v18 + 72) |= 8u;
    }
  }
}

- (void)setModeUUID:(uint64_t)a1
{
  if (a1)
  {
    OUTLINED_FUNCTION_2(a1, a2, 24);
  }
}

- (void)setSuggestionUUID:(uint64_t)a1
{
  if (a1)
  {
    OUTLINED_FUNCTION_2(a1, a2, 56);
  }
}

- (void)setOriginBundleId:(uint64_t)a1
{
  if (a1)
  {
    OUTLINED_FUNCTION_2(a1, a2, 40);
  }
}

- (void)setOriginAnchorType:(uint64_t)a1
{
  if (a1)
  {
    OUTLINED_FUNCTION_2(a1, a2, 32);
  }
}

- (void)mergeFrom:(uint64_t)a1
{
  v24 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    v5 = v3[72];
    if ((v5 & 2) != 0)
    {
      *(a1 + 16) = *(v3 + 2);
      *(a1 + 72) |= 2u;
      v5 = v3[72];
    }

    if ((v5 & 4) != 0)
    {
      *(a1 + 64) = *(v3 + 16);
      OUTLINED_FUNCTION_1_24();
      *(a1 + v7) = v6 | 4;
    }

    v8 = *(v4 + 3);
    if (v8)
    {
      objc_storeStrong((a1 + 24), v8);
    }

    v9 = *(v4 + 7);
    if (v9)
    {
      objc_storeStrong((a1 + 56), v9);
    }

    if (*(v4 + 72))
    {
      *(a1 + 8) = *(v4 + 1);
      *(a1 + 72) |= 1u;
    }

    v10 = *(v4 + 5);
    if (v10)
    {
      objc_storeStrong((a1 + 40), v10);
    }

    v11 = *(v4 + 4);
    if (v11)
    {
      objc_storeStrong((a1 + 32), v11);
    }

    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v12 = *(v4 + 6);
    v13 = [v12 countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v20;
      do
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v20 != v15)
          {
            objc_enumerationMutation(v12);
          }

          [(ATXPBActivity *)a1 addSerializedTriggers:?];
        }

        v14 = [v12 countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v14);
    }

    if ((*(v4 + 72) & 8) != 0)
    {
      *(a1 + 68) = *(v4 + 68);
      OUTLINED_FUNCTION_1_24();
      *(a1 + v18) = v17 | 8;
    }
  }
}

- (uint64_t)uiLocation
{
  if (result)
  {
    return *(result + 16);
  }

  return result;
}

- (uint64_t)modeUUID
{
  if (result)
  {
    return *(result + 24);
  }

  return result;
}

- (uint64_t)suggestionUUID
{
  if (result)
  {
    return *(result + 56);
  }

  return result;
}

- (uint64_t)origin
{
  if (result)
  {
    return *(result + 8);
  }

  return result;
}

- (uint64_t)originBundleId
{
  if (result)
  {
    return *(result + 40);
  }

  return result;
}

- (uint64_t)originAnchorType
{
  if (result)
  {
    return *(result + 32);
  }

  return result;
}

- (uint64_t)serializedTriggers
{
  if (result)
  {
    return *(result + 48);
  }

  return result;
}

- (void)setSerializedTriggers:(uint64_t)a1
{
  if (a1)
  {
    OUTLINED_FUNCTION_2(a1, a2, 48);
  }
}

- (uint64_t)shouldSuggestTriggers
{
  if (a1)
  {
    v1 = *(a1 + 68);
  }

  else
  {
    v1 = 0;
  }

  return v1 & 1;
}

@end