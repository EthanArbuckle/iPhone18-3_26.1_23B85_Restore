@interface ATXPBHomeScreenEventMetadata
+ (uint64_t)widgetIdentifiablesType;
- (BOOL)hasEngagedUrl;
- (BOOL)hasVisibleRect;
- (BOOL)isEqual:(id)a3;
- (__CFString)suggestedPageTypeAsString:(__CFString *)a1;
- (id)bundleIdsAtIndex:(void *)a1;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (id)stackIdsAtIndex:(void *)a1;
- (id)widgetIdentifiablesAtIndex:(void *)a1;
- (id)widgetInStackIdentifiablesAtIndex:(void *)a1;
- (uint64_t)StringAsSuggestedPageType:(uint64_t)a1;
- (uint64_t)addBundleIds:(uint64_t)a1;
- (uint64_t)addStackIds:(uint64_t)a1;
- (uint64_t)addWidgetIdentifiables:(uint64_t)a1;
- (uint64_t)addWidgetInStackIdentifiables:(uint64_t)a1;
- (uint64_t)bundleIds;
- (uint64_t)bundleIdsCount;
- (uint64_t)clearBundleIds;
- (uint64_t)clearStackIds;
- (uint64_t)clearWidgetIdentifiables;
- (uint64_t)clearWidgetInStackIdentifiables;
- (uint64_t)engagedUrl;
- (uint64_t)hasIsStalenessRotation;
- (uint64_t)hasIsSuggestionInAddWidgetSheet;
- (uint64_t)hasIsWidgetInTodayView;
- (uint64_t)hasPageIndex;
- (uint64_t)hasSuggestedPageType;
- (uint64_t)isStalenessRotation;
- (uint64_t)isSuggestionInAddWidgetSheet;
- (uint64_t)isWidgetInTodayView;
- (uint64_t)pageIndex;
- (uint64_t)setHasIsStalenessRotation:(uint64_t)result;
- (uint64_t)setHasIsSuggestionInAddWidgetSheet:(uint64_t)result;
- (uint64_t)setHasIsWidgetInTodayView:(uint64_t)result;
- (uint64_t)setHasPageIndex:(uint64_t)result;
- (uint64_t)setHasSuggestedPageType:(uint64_t)result;
- (uint64_t)setIsStalenessRotation:(uint64_t)result;
- (uint64_t)setIsSuggestionInAddWidgetSheet:(uint64_t)result;
- (uint64_t)setIsWidgetInTodayView:(uint64_t)result;
- (uint64_t)setPageIndex:(uint64_t)result;
- (uint64_t)setSuggestedPageType:(uint64_t)result;
- (uint64_t)stackIds;
- (uint64_t)stackIdsCount;
- (uint64_t)suggestedPageType;
- (uint64_t)visibleRect;
- (uint64_t)widgetIdentifiables;
- (uint64_t)widgetIdentifiablesCount;
- (uint64_t)widgetInStackIdentifiables;
- (uint64_t)widgetInStackIdentifiablesCount;
- (unint64_t)hash;
- (void)copyTo:(uint64_t)a1;
- (void)mergeFrom:(uint64_t)a1;
- (void)setBundleIds:(uint64_t)a1;
- (void)setEngagedUrl:(uint64_t)a1;
- (void)setStackIds:(uint64_t)a1;
- (void)setVisibleRect:(uint64_t)a1;
- (void)setWidgetIdentifiables:(uint64_t)a1;
- (void)setWidgetInStackIdentifiables:(uint64_t)a1;
- (void)writeTo:(id)a3;
@end

@implementation ATXPBHomeScreenEventMetadata

+ (uint64_t)widgetIdentifiablesType
{
  objc_opt_self();

  return objc_opt_class();
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = ATXPBHomeScreenEventMetadata;
  v4 = [(ATXPBHomeScreenEventMetadata *)&v8 description];
  v5 = [(ATXPBHomeScreenEventMetadata *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v42 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF90] dictionary];
  if (*&self->_has)
  {
    v4 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_pageIndex];
    [v3 setObject:v4 forKey:@"pageIndex"];
  }

  stackIds = self->_stackIds;
  if (stackIds)
  {
    [v3 setObject:stackIds forKey:@"stackIds"];
  }

  if ([(NSMutableArray *)self->_widgetIdentifiables count])
  {
    v6 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSMutableArray count](self->_widgetIdentifiables, "count")}];
    v36 = 0u;
    v37 = 0u;
    v38 = 0u;
    v39 = 0u;
    v7 = self->_widgetIdentifiables;
    v8 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v36 objects:v41 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v37;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v37 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = [*(*(&v36 + 1) + 8 * i) dictionaryRepresentation];
          [v6 addObject:v12];
        }

        v9 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v36 objects:v41 count:16];
      }

      while (v9);
    }

    [v3 setObject:v6 forKey:@"widgetIdentifiables"];
  }

  if ([(NSMutableArray *)self->_widgetInStackIdentifiables count])
  {
    v13 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSMutableArray count](self->_widgetInStackIdentifiables, "count")}];
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    v14 = self->_widgetInStackIdentifiables;
    v15 = [(NSMutableArray *)v14 countByEnumeratingWithState:&v32 objects:v40 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v33;
      do
      {
        for (j = 0; j != v16; ++j)
        {
          if (*v33 != v17)
          {
            objc_enumerationMutation(v14);
          }

          v19 = [*(*(&v32 + 1) + 8 * j) dictionaryRepresentation];
          [v13 addObject:v19];
        }

        v16 = [(NSMutableArray *)v14 countByEnumeratingWithState:&v32 objects:v40 count:16];
      }

      while (v16);
    }

    [v3 setObject:v13 forKey:@"widgetInStackIdentifiables"];
  }

  has = self->_has;
  if ((has & 8) != 0)
  {
    v21 = [MEMORY[0x1E696AD98] numberWithBool:self->_isSuggestionInAddWidgetSheet];
    [v3 setObject:v21 forKey:@"isSuggestionInAddWidgetSheet"];

    has = self->_has;
  }

  if ((has & 0x10) != 0)
  {
    v22 = [MEMORY[0x1E696AD98] numberWithBool:self->_isWidgetInTodayView];
    [v3 setObject:v22 forKey:@"isWidgetInTodayView"];
  }

  visibleRect = self->_visibleRect;
  if (visibleRect)
  {
    v24 = [(ATXPBCGRectWrapper *)visibleRect dictionaryRepresentation];
    [v3 setObject:v24 forKey:@"visibleRect"];
  }

  engagedUrl = self->_engagedUrl;
  if (engagedUrl)
  {
    [v3 setObject:engagedUrl forKey:@"engagedUrl"];
  }

  v26 = self->_has;
  if ((v26 & 4) != 0)
  {
    v27 = [MEMORY[0x1E696AD98] numberWithBool:self->_isStalenessRotation];
    [v3 setObject:v27 forKey:@"isStalenessRotation"];

    v26 = self->_has;
  }

  if ((v26 & 2) != 0)
  {
    suggestedPageType = self->_suggestedPageType;
    if (suggestedPageType >= 0xC)
    {
      v29 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", self->_suggestedPageType];
    }

    else
    {
      v29 = off_1E80C2148[suggestedPageType];
    }

    [v3 setObject:v29 forKey:@"suggestedPageType"];
  }

  bundleIds = self->_bundleIds;
  if (bundleIds)
  {
    [v3 setObject:bundleIds forKey:@"bundleIds"];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  v47 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (*&self->_has)
  {
    PBDataWriterWriteUint64Field();
  }

  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  v5 = self->_stackIds;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v39 objects:v46 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v40;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v40 != v8)
        {
          objc_enumerationMutation(v5);
        }

        PBDataWriterWriteStringField();
      }

      v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v39 objects:v46 count:16];
    }

    while (v7);
  }

  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v10 = self->_widgetIdentifiables;
  v11 = [(NSMutableArray *)v10 countByEnumeratingWithState:&v35 objects:v45 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v36;
    do
    {
      for (j = 0; j != v12; ++j)
      {
        if (*v36 != v13)
        {
          objc_enumerationMutation(v10);
        }

        PBDataWriterWriteSubmessage();
      }

      v12 = [(NSMutableArray *)v10 countByEnumeratingWithState:&v35 objects:v45 count:16];
    }

    while (v12);
  }

  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v15 = self->_widgetInStackIdentifiables;
  v16 = [(NSMutableArray *)v15 countByEnumeratingWithState:&v31 objects:v44 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v32;
    do
    {
      for (k = 0; k != v17; ++k)
      {
        if (*v32 != v18)
        {
          objc_enumerationMutation(v15);
        }

        PBDataWriterWriteSubmessage();
      }

      v17 = [(NSMutableArray *)v15 countByEnumeratingWithState:&v31 objects:v44 count:16];
    }

    while (v17);
  }

  has = self->_has;
  if ((has & 8) != 0)
  {
    PBDataWriterWriteBOOLField();
    has = self->_has;
  }

  if ((has & 0x10) != 0)
  {
    PBDataWriterWriteBOOLField();
  }

  if (self->_visibleRect)
  {
    PBDataWriterWriteSubmessage();
  }

  if (self->_engagedUrl)
  {
    PBDataWriterWriteStringField();
  }

  v21 = self->_has;
  if ((v21 & 4) != 0)
  {
    PBDataWriterWriteBOOLField();
    v21 = self->_has;
  }

  if ((v21 & 2) != 0)
  {
    PBDataWriterWriteInt32Field();
  }

  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v22 = self->_bundleIds;
  v23 = [(NSMutableArray *)v22 countByEnumeratingWithState:&v27 objects:v43 count:16];
  if (v23)
  {
    v24 = v23;
    v25 = *v28;
    do
    {
      for (m = 0; m != v24; ++m)
      {
        if (*v28 != v25)
        {
          objc_enumerationMutation(v22);
        }

        PBDataWriterWriteStringField();
      }

      v24 = [(NSMutableArray *)v22 countByEnumeratingWithState:&v27 objects:v43 count:16];
    }

    while (v24);
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v58 = *MEMORY[0x1E69E9840];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = v5;
  if (*&self->_has)
  {
    *(v5 + 8) = self->_pageIndex;
    *(v5 + 76) |= 1u;
  }

  v52 = 0u;
  v53 = 0u;
  v50 = 0u;
  v51 = 0u;
  v7 = self->_stackIds;
  v8 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v50 objects:v57 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v51;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v51 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = [*(*(&v50 + 1) + 8 * i) copyWithZone:a3];
        [(ATXPBHomeScreenEventMetadata *)v6 addStackIds:v12];
      }

      v9 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v50 objects:v57 count:16];
    }

    while (v9);
  }

  v48 = 0u;
  v49 = 0u;
  v46 = 0u;
  v47 = 0u;
  v13 = self->_widgetIdentifiables;
  v14 = [(NSMutableArray *)v13 countByEnumeratingWithState:&v46 objects:v56 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v47;
    do
    {
      for (j = 0; j != v15; ++j)
      {
        if (*v47 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v18 = [*(*(&v46 + 1) + 8 * j) copyWithZone:a3];
        [(ATXPBHomeScreenEventMetadata *)v6 addWidgetIdentifiables:v18];
      }

      v15 = [(NSMutableArray *)v13 countByEnumeratingWithState:&v46 objects:v56 count:16];
    }

    while (v15);
  }

  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  v19 = self->_widgetInStackIdentifiables;
  v20 = [(NSMutableArray *)v19 countByEnumeratingWithState:&v42 objects:v55 count:16];
  if (v20)
  {
    v21 = v20;
    v22 = *v43;
    do
    {
      for (k = 0; k != v21; ++k)
      {
        if (*v43 != v22)
        {
          objc_enumerationMutation(v19);
        }

        v24 = [*(*(&v42 + 1) + 8 * k) copyWithZone:a3];
        [(ATXPBHomeScreenEventMetadata *)v6 addWidgetInStackIdentifiables:v24];
      }

      v21 = [(NSMutableArray *)v19 countByEnumeratingWithState:&v42 objects:v55 count:16];
    }

    while (v21);
  }

  has = self->_has;
  if ((has & 8) != 0)
  {
    *(v6 + 73) = self->_isSuggestionInAddWidgetSheet;
    *(v6 + 76) |= 8u;
    has = self->_has;
  }

  if ((has & 0x10) != 0)
  {
    *(v6 + 74) = self->_isWidgetInTodayView;
    *(v6 + 76) |= 0x10u;
  }

  v26 = [(ATXPBCGRectWrapper *)self->_visibleRect copyWithZone:a3];
  v27 = *(v6 + 48);
  *(v6 + 48) = v26;

  v28 = [(NSString *)self->_engagedUrl copyWithZone:a3];
  v29 = *(v6 + 24);
  *(v6 + 24) = v28;

  v30 = self->_has;
  if ((v30 & 4) != 0)
  {
    *(v6 + 72) = self->_isStalenessRotation;
    *(v6 + 76) |= 4u;
    v30 = self->_has;
  }

  if ((v30 & 2) != 0)
  {
    *(v6 + 40) = self->_suggestedPageType;
    *(v6 + 76) |= 2u;
  }

  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  v31 = self->_bundleIds;
  v32 = [(NSMutableArray *)v31 countByEnumeratingWithState:&v38 objects:v54 count:16];
  if (v32)
  {
    v33 = v32;
    v34 = *v39;
    do
    {
      for (m = 0; m != v33; ++m)
      {
        if (*v39 != v34)
        {
          objc_enumerationMutation(v31);
        }

        v36 = [*(*(&v38 + 1) + 8 * m) copyWithZone:{a3, v38}];
        [(ATXPBHomeScreenEventMetadata *)v6 addBundleIds:v36];
      }

      v33 = [(NSMutableArray *)v31 countByEnumeratingWithState:&v38 objects:v54 count:16];
    }

    while (v33);
  }

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_47;
  }

  if (*&self->_has)
  {
    if ((*(v4 + 76) & 1) == 0 || self->_pageIndex != *(v4 + 1))
    {
      goto LABEL_47;
    }
  }

  else if (*(v4 + 76))
  {
    goto LABEL_47;
  }

  stackIds = self->_stackIds;
  if (stackIds | *(v4 + 4) && ![(NSMutableArray *)stackIds isEqual:?])
  {
    goto LABEL_47;
  }

  widgetIdentifiables = self->_widgetIdentifiables;
  if (widgetIdentifiables | *(v4 + 7))
  {
    if (![(NSMutableArray *)widgetIdentifiables isEqual:?])
    {
      goto LABEL_47;
    }
  }

  widgetInStackIdentifiables = self->_widgetInStackIdentifiables;
  if (widgetInStackIdentifiables | *(v4 + 8))
  {
    if (![(NSMutableArray *)widgetInStackIdentifiables isEqual:?])
    {
      goto LABEL_47;
    }
  }

  if ((*&self->_has & 8) != 0)
  {
    if ((*(v4 + 76) & 8) == 0)
    {
      goto LABEL_47;
    }

    if (self->_isSuggestionInAddWidgetSheet)
    {
      if ((*(v4 + 73) & 1) == 0)
      {
        goto LABEL_47;
      }
    }

    else if (*(v4 + 73))
    {
      goto LABEL_47;
    }
  }

  else if ((*(v4 + 76) & 8) != 0)
  {
    goto LABEL_47;
  }

  if ((*&self->_has & 0x10) != 0)
  {
    if ((*(v4 + 76) & 0x10) == 0)
    {
      goto LABEL_47;
    }

    if (self->_isWidgetInTodayView)
    {
      if ((*(v4 + 74) & 1) == 0)
      {
        goto LABEL_47;
      }
    }

    else if (*(v4 + 74))
    {
      goto LABEL_47;
    }
  }

  else if ((*(v4 + 76) & 0x10) != 0)
  {
    goto LABEL_47;
  }

  visibleRect = self->_visibleRect;
  if (visibleRect | *(v4 + 6) && ![(ATXPBCGRectWrapper *)visibleRect isEqual:?])
  {
    goto LABEL_47;
  }

  engagedUrl = self->_engagedUrl;
  if (engagedUrl | *(v4 + 3))
  {
    if (![(NSString *)engagedUrl isEqual:?])
    {
      goto LABEL_47;
    }
  }

  if ((*&self->_has & 4) == 0)
  {
    if ((*(v4 + 76) & 4) == 0)
    {
      goto LABEL_23;
    }

LABEL_47:
    v11 = 0;
    goto LABEL_48;
  }

  if ((*(v4 + 76) & 4) == 0)
  {
    goto LABEL_47;
  }

  if (self->_isStalenessRotation)
  {
    if ((*(v4 + 72) & 1) == 0)
    {
      goto LABEL_47;
    }
  }

  else if (*(v4 + 72))
  {
    goto LABEL_47;
  }

LABEL_23:
  if ((*&self->_has & 2) != 0)
  {
    if ((*(v4 + 76) & 2) == 0 || self->_suggestedPageType != *(v4 + 10))
    {
      goto LABEL_47;
    }
  }

  else if ((*(v4 + 76) & 2) != 0)
  {
    goto LABEL_47;
  }

  bundleIds = self->_bundleIds;
  if (bundleIds | *(v4 + 2))
  {
    v11 = [(NSMutableArray *)bundleIds isEqual:?];
  }

  else
  {
    v11 = 1;
  }

LABEL_48:

  return v11;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v3 = 2654435761u * self->_pageIndex;
  }

  else
  {
    v3 = 0;
  }

  v4 = [(NSMutableArray *)self->_stackIds hash];
  v5 = [(NSMutableArray *)self->_widgetIdentifiables hash];
  v6 = [(NSMutableArray *)self->_widgetInStackIdentifiables hash];
  if ((*&self->_has & 8) != 0)
  {
    v7 = 2654435761 * self->_isSuggestionInAddWidgetSheet;
    if ((*&self->_has & 0x10) != 0)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v7 = 0;
    if ((*&self->_has & 0x10) != 0)
    {
LABEL_6:
      v8 = 2654435761 * self->_isWidgetInTodayView;
      goto LABEL_9;
    }
  }

  v8 = 0;
LABEL_9:
  v9 = [(ATXPBCGRectWrapper *)self->_visibleRect hash];
  v10 = [(NSString *)self->_engagedUrl hash];
  if ((*&self->_has & 4) != 0)
  {
    v11 = 2654435761 * self->_isStalenessRotation;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_11;
    }

LABEL_13:
    v12 = 0;
    return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11 ^ v12 ^ [(NSMutableArray *)self->_bundleIds hash];
  }

  v11 = 0;
  if ((*&self->_has & 2) == 0)
  {
    goto LABEL_13;
  }

LABEL_11:
  v12 = 2654435761 * self->_suggestedPageType;
  return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11 ^ v12 ^ [(NSMutableArray *)self->_bundleIds hash];
}

- (uint64_t)setPageIndex:(uint64_t)result
{
  if (result)
  {
    *(result + 76) |= 1u;
    *(result + 8) = a2;
  }

  return result;
}

- (uint64_t)setHasPageIndex:(uint64_t)result
{
  if (result)
  {
    *(result + 76) = *(result + 76) & 0xFE | a2;
  }

  return result;
}

- (uint64_t)hasPageIndex
{
  if (result)
  {
    return *(result + 76) & 1;
  }

  return result;
}

- (uint64_t)clearStackIds
{
  if (result)
  {
    return OUTLINED_FUNCTION_1_3(result, 32);
  }

  return result;
}

- (uint64_t)addStackIds:(uint64_t)a1
{
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    v5 = OUTLINED_FUNCTION_10(32);
    if (!v5)
    {
      OUTLINED_FUNCTION_16(objc_alloc_init(MEMORY[0x1E695DF70]), 32);
      v5 = *(a1 + 32);
    }

    v3 = [v5 addObject:v7];
    v4 = v7;
  }

  return MEMORY[0x1EEE66BB8](v3, v4);
}

- (uint64_t)stackIdsCount
{
  if (result)
  {
    return OUTLINED_FUNCTION_0_6(result, 32);
  }

  return result;
}

- (id)stackIdsAtIndex:(void *)a1
{
  if (a1)
  {
    a1 = [OUTLINED_FUNCTION_13(a1 32)];
    v1 = vars8;
  }

  return a1;
}

- (uint64_t)clearWidgetIdentifiables
{
  if (result)
  {
    return OUTLINED_FUNCTION_1_3(result, 56);
  }

  return result;
}

- (uint64_t)addWidgetIdentifiables:(uint64_t)a1
{
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    v5 = OUTLINED_FUNCTION_10(56);
    if (!v5)
    {
      OUTLINED_FUNCTION_16(objc_alloc_init(MEMORY[0x1E695DF70]), 56);
      v5 = *(a1 + 56);
    }

    v3 = [v5 addObject:v7];
    v4 = v7;
  }

  return MEMORY[0x1EEE66BB8](v3, v4);
}

- (uint64_t)widgetIdentifiablesCount
{
  if (result)
  {
    return OUTLINED_FUNCTION_0_6(result, 56);
  }

  return result;
}

- (id)widgetIdentifiablesAtIndex:(void *)a1
{
  if (a1)
  {
    a1 = [OUTLINED_FUNCTION_13(a1 56)];
    v1 = vars8;
  }

  return a1;
}

- (uint64_t)clearWidgetInStackIdentifiables
{
  if (result)
  {
    return OUTLINED_FUNCTION_1_3(result, 64);
  }

  return result;
}

- (uint64_t)addWidgetInStackIdentifiables:(uint64_t)a1
{
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    v5 = OUTLINED_FUNCTION_10(64);
    if (!v5)
    {
      OUTLINED_FUNCTION_16(objc_alloc_init(MEMORY[0x1E695DF70]), 64);
      v5 = *(a1 + 64);
    }

    v3 = [v5 addObject:v7];
    v4 = v7;
  }

  return MEMORY[0x1EEE66BB8](v3, v4);
}

- (uint64_t)widgetInStackIdentifiablesCount
{
  if (result)
  {
    return OUTLINED_FUNCTION_0_6(result, 64);
  }

  return result;
}

- (id)widgetInStackIdentifiablesAtIndex:(void *)a1
{
  if (a1)
  {
    a1 = [OUTLINED_FUNCTION_13(a1 64)];
    v1 = vars8;
  }

  return a1;
}

- (uint64_t)setIsSuggestionInAddWidgetSheet:(uint64_t)result
{
  if (result)
  {
    *(result + 76) |= 8u;
    *(result + 73) = a2;
  }

  return result;
}

- (uint64_t)setHasIsSuggestionInAddWidgetSheet:(uint64_t)result
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

    *(result + 76) = *(result + 76) & 0xF7 | v2;
  }

  return result;
}

- (uint64_t)hasIsSuggestionInAddWidgetSheet
{
  if (result)
  {
    return (*(result + 76) >> 3) & 1;
  }

  return result;
}

- (uint64_t)setIsWidgetInTodayView:(uint64_t)result
{
  if (result)
  {
    *(result + 76) |= 0x10u;
    *(result + 74) = a2;
  }

  return result;
}

- (uint64_t)setHasIsWidgetInTodayView:(uint64_t)result
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

    *(result + 76) = *(result + 76) & 0xEF | v2;
  }

  return result;
}

- (uint64_t)hasIsWidgetInTodayView
{
  if (result)
  {
    return (*(result + 76) >> 4) & 1;
  }

  return result;
}

- (BOOL)hasVisibleRect
{
  if (result)
  {
    return *(result + 48) != 0;
  }

  return result;
}

- (BOOL)hasEngagedUrl
{
  if (result)
  {
    return *(result + 24) != 0;
  }

  return result;
}

- (uint64_t)setIsStalenessRotation:(uint64_t)result
{
  if (result)
  {
    *(result + 76) |= 4u;
    *(result + 72) = a2;
  }

  return result;
}

- (uint64_t)setHasIsStalenessRotation:(uint64_t)result
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

    *(result + 76) = *(result + 76) & 0xFB | v2;
  }

  return result;
}

- (uint64_t)hasIsStalenessRotation
{
  if (result)
  {
    return (*(result + 76) >> 2) & 1;
  }

  return result;
}

- (uint64_t)suggestedPageType
{
  if (result)
  {
    if ((*(result + 76) & 2) != 0)
    {
      return *(result + 40);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

- (uint64_t)setSuggestedPageType:(uint64_t)result
{
  if (result)
  {
    *(result + 76) |= 2u;
    *(result + 40) = a2;
  }

  return result;
}

- (uint64_t)setHasSuggestedPageType:(uint64_t)result
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

    *(result + 76) = *(result + 76) & 0xFD | v2;
  }

  return result;
}

- (uint64_t)hasSuggestedPageType
{
  if (result)
  {
    return (*(result + 76) >> 1) & 1;
  }

  return result;
}

- (__CFString)suggestedPageTypeAsString:(__CFString *)a1
{
  if (!a1)
  {
LABEL_4:

    return a1;
  }

  if (a2 < 0xC)
  {
    a1 = off_1E80C2148[a2];
    goto LABEL_4;
  }

  a1 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", a2];

  return a1;
}

- (uint64_t)StringAsSuggestedPageType:(uint64_t)a1
{
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    v5 = v3;
    if ([v5 isEqualToString:@"Unspecified"])
    {
      v6 = 0;
    }

    else if ([v5 isEqualToString:@"Default"])
    {
      v6 = 1;
    }

    else if ([v5 isEqualToString:@"Custom"])
    {
      v6 = 2;
    }

    else if ([v5 isEqualToString:@"DND"])
    {
      v6 = 3;
    }

    else if ([v5 isEqualToString:@"Sleep"])
    {
      v6 = 4;
    }

    else if ([v5 isEqualToString:@"Driving"])
    {
      v6 = 5;
    }

    else if ([v5 isEqualToString:@"Exercise"])
    {
      v6 = 6;
    }

    else if ([v5 isEqualToString:@"Work"])
    {
      v6 = 7;
    }

    else if ([v5 isEqualToString:@"Personal"])
    {
      v6 = 8;
    }

    else if ([v5 isEqualToString:@"Reading"])
    {
      v6 = 9;
    }

    else if ([v5 isEqualToString:@"Gaming"])
    {
      v6 = 10;
    }

    else if ([v5 isEqualToString:@"Mindfulness"])
    {
      v6 = 11;
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

- (uint64_t)clearBundleIds
{
  if (result)
  {
    return OUTLINED_FUNCTION_1_3(result, 16);
  }

  return result;
}

- (uint64_t)addBundleIds:(uint64_t)a1
{
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    v5 = OUTLINED_FUNCTION_10(16);
    if (!v5)
    {
      OUTLINED_FUNCTION_16(objc_alloc_init(MEMORY[0x1E695DF70]), 16);
      v5 = *(a1 + 16);
    }

    v3 = [v5 addObject:v7];
    v4 = v7;
  }

  return MEMORY[0x1EEE66BB8](v3, v4);
}

- (uint64_t)bundleIdsCount
{
  if (result)
  {
    return OUTLINED_FUNCTION_0_6(result, 16);
  }

  return result;
}

- (id)bundleIdsAtIndex:(void *)a1
{
  if (a1)
  {
    a1 = [OUTLINED_FUNCTION_13(a1 16)];
    v1 = vars8;
  }

  return a1;
}

- (void)copyTo:(uint64_t)a1
{
  v65 = a2;
  if (a1)
  {
    if (*(a1 + 76))
    {
      *(v65 + 1) = *(a1 + 8);
      *(v65 + 76) |= 1u;
    }

    if ([*(a1 + 32) count])
    {
      if (v65)
      {
        [*(v65 + 4) removeAllObjects];
      }

      if ([*(a1 + 32) count])
      {
        OUTLINED_FUNCTION_9();
        do
        {
          v4 = OUTLINED_FUNCTION_14();
          v5 = [ATXPBHomeScreenEventMetadata stackIdsAtIndex:v4];
          v13 = OUTLINED_FUNCTION_3_3(v5, v6, v7, v8, v9, v10, v11, v12, v64, v65);
          [(ATXPBHomeScreenEventMetadata *)v13 addStackIds:v14];

          OUTLINED_FUNCTION_12();
        }

        while (!v15);
      }
    }

    if ([*(a1 + 56) count])
    {
      if (v65)
      {
        [*(v65 + 7) removeAllObjects];
      }

      if ([*(a1 + 56) count])
      {
        OUTLINED_FUNCTION_9();
        do
        {
          v16 = OUTLINED_FUNCTION_14();
          v17 = [ATXPBHomeScreenEventMetadata widgetIdentifiablesAtIndex:v16];
          v25 = OUTLINED_FUNCTION_3_3(v17, v18, v19, v20, v21, v22, v23, v24, v64, v65);
          [(ATXPBHomeScreenEventMetadata *)v25 addWidgetIdentifiables:v26];

          OUTLINED_FUNCTION_12();
        }

        while (!v15);
      }
    }

    if ([*(a1 + 64) count])
    {
      if (v65)
      {
        [*(v65 + 8) removeAllObjects];
      }

      if ([*(a1 + 64) count])
      {
        OUTLINED_FUNCTION_9();
        do
        {
          v27 = OUTLINED_FUNCTION_14();
          v28 = [ATXPBHomeScreenEventMetadata widgetInStackIdentifiablesAtIndex:v27];
          v36 = OUTLINED_FUNCTION_3_3(v28, v29, v30, v31, v32, v33, v34, v35, v64, v65);
          [(ATXPBHomeScreenEventMetadata *)v36 addWidgetInStackIdentifiables:v37];

          OUTLINED_FUNCTION_12();
        }

        while (!v15);
      }
    }

    OUTLINED_FUNCTION_6_1();
    v39 = v65;
    if ((v38 & 8) != 0)
    {
      v40 = OUTLINED_FUNCTION_5_2(v65, 73);
      *(v40 + v42) = v41 | 8;
      OUTLINED_FUNCTION_6_1();
    }

    if ((v38 & 0x10) != 0)
    {
      v43 = OUTLINED_FUNCTION_5_2(v39, 74);
      *(v43 + v45) = v44 | 0x10;
    }

    v46 = *(a1 + 48);
    if (v46)
    {
      [(ATXPBHomeScreenEventMetadata *)v65 setVisibleRect:v46];
    }

    v47 = *(a1 + 24);
    if (v47)
    {
      [(ATXPBHomeScreenEventMetadata *)v65 setEngagedUrl:v47];
    }

    OUTLINED_FUNCTION_6_1();
    if ((v49 & 4) != 0)
    {
      v50 = OUTLINED_FUNCTION_5_2(v48, 72);
      *(v50 + v52) = v51 | 4;
      OUTLINED_FUNCTION_6_1();
    }

    if ((v49 & 2) != 0)
    {
      *(v48 + 40) = *(a1 + 40);
      *(v48 + 76) |= 2u;
    }

    if ([*(a1 + 16) count])
    {
      if (v65)
      {
        [*(v65 + 2) removeAllObjects];
      }

      if ([*(a1 + 16) count])
      {
        OUTLINED_FUNCTION_9();
        do
        {
          v53 = OUTLINED_FUNCTION_14();
          v54 = [ATXPBHomeScreenEventMetadata bundleIdsAtIndex:v53];
          v62 = OUTLINED_FUNCTION_3_3(v54, v55, v56, v57, v58, v59, v60, v61, v64, v65);
          [(ATXPBHomeScreenEventMetadata *)v62 addBundleIds:v63];

          OUTLINED_FUNCTION_12();
        }

        while (!v15);
      }
    }
  }
}

- (void)setVisibleRect:(uint64_t)a1
{
  if (a1)
  {
    OUTLINED_FUNCTION_2(a1, a2, 48);
  }
}

- (void)setEngagedUrl:(uint64_t)a1
{
  if (a1)
  {
    OUTLINED_FUNCTION_2(a1, a2, 24);
  }
}

- (void)mergeFrom:(uint64_t)a1
{
  v64 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    if (*(v3 + 76))
    {
      *(a1 + 8) = v3[1];
      *(a1 + 76) |= 1u;
    }

    v58 = 0u;
    v59 = 0u;
    v56 = 0u;
    v57 = 0u;
    v5 = v3[4];
    v6 = [v5 countByEnumeratingWithState:&v56 objects:v63 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v57;
      do
      {
        v9 = 0;
        do
        {
          if (*v57 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = [(ATXPBHomeScreenEventMetadata *)a1 addStackIds:?];
        }

        while (v7 != v9);
        v7 = OUTLINED_FUNCTION_15(v10, v11, &v56, v63);
      }

      while (v7);
    }

    v54 = 0u;
    v55 = 0u;
    v52 = 0u;
    v53 = 0u;
    v12 = v4[7];
    v13 = [v12 countByEnumeratingWithState:&v52 objects:v62 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v53;
      do
      {
        v16 = 0;
        do
        {
          if (*v53 != v15)
          {
            objc_enumerationMutation(v12);
          }

          v17 = [(ATXPBHomeScreenEventMetadata *)a1 addWidgetIdentifiables:?];
        }

        while (v14 != v16);
        v14 = OUTLINED_FUNCTION_15(v17, v18, &v52, v62);
      }

      while (v14);
    }

    v50 = 0u;
    v51 = 0u;
    v48 = 0u;
    v49 = 0u;
    v19 = v4[8];
    v20 = [v19 countByEnumeratingWithState:&v48 objects:v61 count:16];
    if (v20)
    {
      v21 = v20;
      v22 = *v49;
      do
      {
        v23 = 0;
        do
        {
          if (*v49 != v22)
          {
            objc_enumerationMutation(v19);
          }

          v24 = [(ATXPBHomeScreenEventMetadata *)a1 addWidgetInStackIdentifiables:?];
        }

        while (v21 != v23);
        v21 = OUTLINED_FUNCTION_15(v24, v25, &v48, v61);
      }

      while (v21);
    }

    OUTLINED_FUNCTION_6_1();
    if ((v26 & 8) != 0)
    {
      OUTLINED_FUNCTION_4_1(73);
      *(a1 + v28) = v27 | 8;
      OUTLINED_FUNCTION_6_1();
    }

    if ((v26 & 0x10) != 0)
    {
      OUTLINED_FUNCTION_4_1(74);
      *(a1 + v30) = v29 | 0x10;
    }

    v31 = *(a1 + 48);
    v32 = v4[6];
    if (v31)
    {
      if (v32)
      {
        [(ATXPBCGRectWrapper *)v31 mergeFrom:v32];
      }
    }

    else if (v32)
    {
      objc_storeStrong((a1 + 48), v32);
    }

    v33 = v4[3];
    if (v33)
    {
      objc_storeStrong((a1 + 24), v33);
    }

    OUTLINED_FUNCTION_6_1();
    if ((v34 & 4) != 0)
    {
      OUTLINED_FUNCTION_4_1(72);
      *(a1 + v36) = v35 | 4;
      OUTLINED_FUNCTION_6_1();
    }

    if ((v34 & 2) != 0)
    {
      *(a1 + 40) = *(v4 + 10);
      *(a1 + 76) |= 2u;
    }

    v46 = 0u;
    v47 = 0u;
    v44 = 0u;
    v45 = 0u;
    v37 = v4[2];
    v38 = [v37 countByEnumeratingWithState:&v44 objects:v60 count:16];
    if (v38)
    {
      v39 = v38;
      v40 = *v45;
      do
      {
        v41 = 0;
        do
        {
          if (*v45 != v40)
          {
            objc_enumerationMutation(v37);
          }

          v42 = [(ATXPBHomeScreenEventMetadata *)a1 addBundleIds:?];
        }

        while (v39 != v41);
        v39 = OUTLINED_FUNCTION_15(v42, v43, &v44, v60);
      }

      while (v39);
    }
  }
}

- (uint64_t)pageIndex
{
  if (result)
  {
    return *(result + 8);
  }

  return result;
}

- (uint64_t)stackIds
{
  if (result)
  {
    return *(result + 32);
  }

  return result;
}

- (void)setStackIds:(uint64_t)a1
{
  if (a1)
  {
    OUTLINED_FUNCTION_2(a1, a2, 32);
  }
}

- (uint64_t)widgetIdentifiables
{
  if (result)
  {
    return *(result + 56);
  }

  return result;
}

- (void)setWidgetIdentifiables:(uint64_t)a1
{
  if (a1)
  {
    OUTLINED_FUNCTION_2(a1, a2, 56);
  }
}

- (uint64_t)widgetInStackIdentifiables
{
  if (result)
  {
    return *(result + 64);
  }

  return result;
}

- (void)setWidgetInStackIdentifiables:(uint64_t)a1
{
  if (a1)
  {
    OUTLINED_FUNCTION_2(a1, a2, 64);
  }
}

- (uint64_t)isSuggestionInAddWidgetSheet
{
  if (a1)
  {
    return OUTLINED_FUNCTION_7_0(*(a1 + 73));
  }

  else
  {
    return OUTLINED_FUNCTION_7_0(0);
  }
}

- (uint64_t)isWidgetInTodayView
{
  if (a1)
  {
    return OUTLINED_FUNCTION_7_0(*(a1 + 74));
  }

  else
  {
    return OUTLINED_FUNCTION_7_0(0);
  }
}

- (uint64_t)visibleRect
{
  if (result)
  {
    return *(result + 48);
  }

  return result;
}

- (uint64_t)engagedUrl
{
  if (result)
  {
    return *(result + 24);
  }

  return result;
}

- (uint64_t)isStalenessRotation
{
  if (a1)
  {
    return OUTLINED_FUNCTION_7_0(*(a1 + 72));
  }

  else
  {
    return OUTLINED_FUNCTION_7_0(0);
  }
}

- (uint64_t)bundleIds
{
  if (result)
  {
    return *(result + 16);
  }

  return result;
}

- (void)setBundleIds:(uint64_t)a1
{
  if (a1)
  {
    OUTLINED_FUNCTION_2(a1, a2, 16);
  }
}

@end