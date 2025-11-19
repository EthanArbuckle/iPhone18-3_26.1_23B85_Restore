@interface ATXPBAction
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addHeuristicMetadata:(id)a3;
- (void)addMenuItemPathComponent:(id)a3;
- (void)addParameterKeysForToolInvocation:(id)a3;
- (void)addPredictableParameterCombinations:(id)a3;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasCachedHash:(BOOL)a3;
- (void)setHasIsFutureMedia:(BOOL)a3;
- (void)setHasUserActivityHash:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation ATXPBAction

- (void)setHasIsFutureMedia:(BOOL)a3
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

- (void)setHasUserActivityHash:(BOOL)a3
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

- (void)addHeuristicMetadata:(id)a3
{
  v4 = a3;
  heuristicMetadatas = self->_heuristicMetadatas;
  v8 = v4;
  if (!heuristicMetadatas)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_heuristicMetadatas;
    self->_heuristicMetadatas = v6;

    v4 = v8;
    heuristicMetadatas = self->_heuristicMetadatas;
  }

  [(NSMutableArray *)heuristicMetadatas addObject:v4];
}

- (void)setHasCachedHash:(BOOL)a3
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

- (void)addPredictableParameterCombinations:(id)a3
{
  v4 = a3;
  predictableParameterCombinations = self->_predictableParameterCombinations;
  v8 = v4;
  if (!predictableParameterCombinations)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_predictableParameterCombinations;
    self->_predictableParameterCombinations = v6;

    v4 = v8;
    predictableParameterCombinations = self->_predictableParameterCombinations;
  }

  [(NSMutableArray *)predictableParameterCombinations addObject:v4];
}

- (void)addMenuItemPathComponent:(id)a3
{
  v4 = a3;
  menuItemPathComponents = self->_menuItemPathComponents;
  v8 = v4;
  if (!menuItemPathComponents)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_menuItemPathComponents;
    self->_menuItemPathComponents = v6;

    v4 = v8;
    menuItemPathComponents = self->_menuItemPathComponents;
  }

  [(NSMutableArray *)menuItemPathComponents addObject:v4];
}

- (void)addParameterKeysForToolInvocation:(id)a3
{
  v4 = a3;
  parameterKeysForToolInvocations = self->_parameterKeysForToolInvocations;
  v8 = v4;
  if (!parameterKeysForToolInvocations)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_parameterKeysForToolInvocations;
    self->_parameterKeysForToolInvocations = v6;

    v4 = v8;
    parameterKeysForToolInvocations = self->_parameterKeysForToolInvocations;
  }

  [(NSMutableArray *)parameterKeysForToolInvocations addObject:v4];
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = ATXPBAction;
  v4 = [(ATXPBAction *)&v8 description];
  v5 = [(ATXPBAction *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v53 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v4 = v3;
  bundleId = self->_bundleId;
  if (bundleId)
  {
    [v3 setObject:bundleId forKey:@"bundleId"];
  }

  if (*&self->_has)
  {
    v6 = [MEMORY[0x1E696AD98] numberWithLongLong:self->_actionType];
    [v4 setObject:v6 forKey:@"actionType"];
  }

  intent = self->_intent;
  if (intent)
  {
    [v4 setObject:intent forKey:@"intent"];
  }

  heuristic = self->_heuristic;
  if (heuristic)
  {
    [v4 setObject:heuristic forKey:@"heuristic"];
  }

  if ((*&self->_has & 8) != 0)
  {
    v9 = [MEMORY[0x1E696AD98] numberWithBool:self->_isFutureMedia];
    [v4 setObject:v9 forKey:@"isFutureMedia"];
  }

  title = self->_title;
  if (title)
  {
    [v4 setObject:title forKey:@"title"];
  }

  subtitle = self->_subtitle;
  if (subtitle)
  {
    [v4 setObject:subtitle forKey:@"subtitle"];
  }

  if ((*&self->_has & 4) != 0)
  {
    v12 = [MEMORY[0x1E696AD98] numberWithLongLong:self->_userActivityHash];
    [v4 setObject:v12 forKey:@"userActivityHash"];
  }

  activityString = self->_activityString;
  if (activityString)
  {
    [v4 setObject:activityString forKey:@"activityString"];
  }

  userActivityProxy = self->_userActivityProxy;
  if (userActivityProxy)
  {
    [v4 setObject:userActivityProxy forKey:@"userActivityProxy"];
  }

  itemIdentifier = self->_itemIdentifier;
  if (itemIdentifier)
  {
    [v4 setObject:itemIdentifier forKey:@"itemIdentifier"];
  }

  uuid = self->_uuid;
  if (uuid)
  {
    [v4 setObject:uuid forKey:@"uuid"];
  }

  languageCode = self->_languageCode;
  if (languageCode)
  {
    [v4 setObject:languageCode forKey:@"languageCode"];
  }

  contentAttributeSet = self->_contentAttributeSet;
  if (contentAttributeSet)
  {
    [v4 setObject:contentAttributeSet forKey:@"contentAttributeSet"];
  }

  criteria = self->_criteria;
  if (criteria)
  {
    v20 = [(ATXPBActionCriteria *)criteria dictionaryRepresentation];
    [v4 setObject:v20 forKey:@"criteria"];
  }

  routeInfo = self->_routeInfo;
  if (routeInfo)
  {
    v22 = [(ATXPBAVRouteInfo *)routeInfo dictionaryRepresentation];
    [v4 setObject:v22 forKey:@"routeInfo"];
  }

  if ([(NSMutableArray *)self->_heuristicMetadatas count])
  {
    v23 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSMutableArray count](self->_heuristicMetadatas, "count")}];
    v47 = 0u;
    v48 = 0u;
    v49 = 0u;
    v50 = 0u;
    v24 = self->_heuristicMetadatas;
    v25 = [(NSMutableArray *)v24 countByEnumeratingWithState:&v47 objects:v52 count:16];
    if (v25)
    {
      v26 = v25;
      v27 = *v48;
      do
      {
        for (i = 0; i != v26; ++i)
        {
          if (*v48 != v27)
          {
            objc_enumerationMutation(v24);
          }

          v29 = [*(*(&v47 + 1) + 8 * i) dictionaryRepresentation];
          [v23 addObject:v29];
        }

        v26 = [(NSMutableArray *)v24 countByEnumeratingWithState:&v47 objects:v52 count:16];
      }

      while (v26);
    }

    [v4 setObject:v23 forKey:@"heuristicMetadata"];
  }

  if ((*&self->_has & 2) != 0)
  {
    v30 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_cachedHash];
    [v4 setObject:v30 forKey:@"cachedHash"];
  }

  if ([(NSMutableArray *)self->_predictableParameterCombinations count])
  {
    v31 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSMutableArray count](self->_predictableParameterCombinations, "count")}];
    v43 = 0u;
    v44 = 0u;
    v45 = 0u;
    v46 = 0u;
    v32 = self->_predictableParameterCombinations;
    v33 = [(NSMutableArray *)v32 countByEnumeratingWithState:&v43 objects:v51 count:16];
    if (v33)
    {
      v34 = v33;
      v35 = *v44;
      do
      {
        for (j = 0; j != v34; ++j)
        {
          if (*v44 != v35)
          {
            objc_enumerationMutation(v32);
          }

          v37 = [*(*(&v43 + 1) + 8 * j) dictionaryRepresentation];
          [v31 addObject:v37];
        }

        v34 = [(NSMutableArray *)v32 countByEnumeratingWithState:&v43 objects:v51 count:16];
      }

      while (v34);
    }

    [v4 setObject:v31 forKey:@"predictableParameterCombinations"];
  }

  menuItemPathComponents = self->_menuItemPathComponents;
  if (menuItemPathComponents)
  {
    [v4 setObject:menuItemPathComponents forKey:@"menuItemPathComponent"];
  }

  toolInvocationID = self->_toolInvocationID;
  if (toolInvocationID)
  {
    [v4 setObject:toolInvocationID forKey:@"toolInvocationID"];
  }

  encodedToolInvocation = self->_encodedToolInvocation;
  if (encodedToolInvocation)
  {
    [v4 setObject:encodedToolInvocation forKey:@"encodedToolInvocation"];
  }

  parameterKeysForToolInvocations = self->_parameterKeysForToolInvocations;
  if (parameterKeysForToolInvocations)
  {
    [v4 setObject:parameterKeysForToolInvocations forKey:@"parameterKeysForToolInvocation"];
  }

  return v4;
}

- (void)writeTo:(id)a3
{
  v45 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (self->_bundleId)
  {
    PBDataWriterWriteStringField();
  }

  if (*&self->_has)
  {
    PBDataWriterWriteInt64Field();
  }

  if (self->_intent)
  {
    PBDataWriterWriteDataField();
  }

  if (self->_heuristic)
  {
    PBDataWriterWriteStringField();
  }

  if ((*&self->_has & 8) != 0)
  {
    PBDataWriterWriteBOOLField();
  }

  if (self->_title)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_subtitle)
  {
    PBDataWriterWriteStringField();
  }

  if ((*&self->_has & 4) != 0)
  {
    PBDataWriterWriteInt64Field();
  }

  if (self->_activityString)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_userActivityProxy)
  {
    PBDataWriterWriteDataField();
  }

  if (self->_itemIdentifier)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_uuid)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_languageCode)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_contentAttributeSet)
  {
    PBDataWriterWriteDataField();
  }

  if (self->_criteria)
  {
    PBDataWriterWriteSubmessage();
  }

  if (self->_routeInfo)
  {
    PBDataWriterWriteSubmessage();
  }

  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v5 = self->_heuristicMetadatas;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v37 objects:v44 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v38;
    do
    {
      v9 = 0;
      do
      {
        if (*v38 != v8)
        {
          objc_enumerationMutation(v5);
        }

        PBDataWriterWriteSubmessage();
        ++v9;
      }

      while (v7 != v9);
      v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v37 objects:v44 count:16];
    }

    while (v7);
  }

  if ((*&self->_has & 2) != 0)
  {
    PBDataWriterWriteFixed64Field();
  }

  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v10 = self->_predictableParameterCombinations;
  v11 = [(NSMutableArray *)v10 countByEnumeratingWithState:&v33 objects:v43 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v34;
    do
    {
      v14 = 0;
      do
      {
        if (*v34 != v13)
        {
          objc_enumerationMutation(v10);
        }

        PBDataWriterWriteSubmessage();
        ++v14;
      }

      while (v12 != v14);
      v12 = [(NSMutableArray *)v10 countByEnumeratingWithState:&v33 objects:v43 count:16];
    }

    while (v12);
  }

  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v15 = self->_menuItemPathComponents;
  v16 = [(NSMutableArray *)v15 countByEnumeratingWithState:&v29 objects:v42 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v30;
    do
    {
      v19 = 0;
      do
      {
        if (*v30 != v18)
        {
          objc_enumerationMutation(v15);
        }

        PBDataWriterWriteStringField();
        ++v19;
      }

      while (v17 != v19);
      v17 = [(NSMutableArray *)v15 countByEnumeratingWithState:&v29 objects:v42 count:16];
    }

    while (v17);
  }

  if (self->_toolInvocationID)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_encodedToolInvocation)
  {
    PBDataWriterWriteDataField();
  }

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v20 = self->_parameterKeysForToolInvocations;
  v21 = [(NSMutableArray *)v20 countByEnumeratingWithState:&v25 objects:v41 count:16];
  if (v21)
  {
    v22 = v21;
    v23 = *v26;
    do
    {
      v24 = 0;
      do
      {
        if (*v26 != v23)
        {
          objc_enumerationMutation(v20);
        }

        PBDataWriterWriteStringField();
        ++v24;
      }

      while (v22 != v24);
      v22 = [(NSMutableArray *)v20 countByEnumeratingWithState:&v25 objects:v41 count:16];
    }

    while (v22);
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  v21 = v4;
  if (self->_bundleId)
  {
    [v4 setBundleId:?];
    v4 = v21;
  }

  if (*&self->_has)
  {
    *(v4 + 1) = self->_actionType;
    *(v4 + 188) |= 1u;
  }

  if (self->_intent)
  {
    [v21 setIntent:?];
    v4 = v21;
  }

  if (self->_heuristic)
  {
    [v21 setHeuristic:?];
    v4 = v21;
  }

  if ((*&self->_has & 8) != 0)
  {
    *(v4 + 184) = self->_isFutureMedia;
    *(v4 + 188) |= 8u;
  }

  if (self->_title)
  {
    [v21 setTitle:?];
    v4 = v21;
  }

  if (self->_subtitle)
  {
    [v21 setSubtitle:?];
    v4 = v21;
  }

  if ((*&self->_has & 4) != 0)
  {
    *(v4 + 3) = self->_userActivityHash;
    *(v4 + 188) |= 4u;
  }

  if (self->_activityString)
  {
    [v21 setActivityString:?];
  }

  if (self->_userActivityProxy)
  {
    [v21 setUserActivityProxy:?];
  }

  if (self->_itemIdentifier)
  {
    [v21 setItemIdentifier:?];
  }

  if (self->_uuid)
  {
    [v21 setUuid:?];
  }

  if (self->_languageCode)
  {
    [v21 setLanguageCode:?];
  }

  if (self->_contentAttributeSet)
  {
    [v21 setContentAttributeSet:?];
  }

  if (self->_criteria)
  {
    [v21 setCriteria:?];
  }

  if (self->_routeInfo)
  {
    [v21 setRouteInfo:?];
  }

  if ([(ATXPBAction *)self heuristicMetadatasCount])
  {
    [v21 clearHeuristicMetadatas];
    v5 = [(ATXPBAction *)self heuristicMetadatasCount];
    if (v5)
    {
      v6 = v5;
      for (i = 0; i != v6; ++i)
      {
        v8 = [(ATXPBAction *)self heuristicMetadataAtIndex:i];
        [v21 addHeuristicMetadata:v8];
      }
    }
  }

  if ((*&self->_has & 2) != 0)
  {
    *(v21 + 2) = self->_cachedHash;
    *(v21 + 188) |= 2u;
  }

  if ([(ATXPBAction *)self predictableParameterCombinationsCount])
  {
    [v21 clearPredictableParameterCombinations];
    v9 = [(ATXPBAction *)self predictableParameterCombinationsCount];
    if (v9)
    {
      v10 = v9;
      for (j = 0; j != v10; ++j)
      {
        v12 = [(ATXPBAction *)self predictableParameterCombinationsAtIndex:j];
        [v21 addPredictableParameterCombinations:v12];
      }
    }
  }

  if ([(ATXPBAction *)self menuItemPathComponentsCount])
  {
    [v21 clearMenuItemPathComponents];
    v13 = [(ATXPBAction *)self menuItemPathComponentsCount];
    if (v13)
    {
      v14 = v13;
      for (k = 0; k != v14; ++k)
      {
        v16 = [(ATXPBAction *)self menuItemPathComponentAtIndex:k];
        [v21 addMenuItemPathComponent:v16];
      }
    }
  }

  if (self->_toolInvocationID)
  {
    [v21 setToolInvocationID:?];
  }

  if (self->_encodedToolInvocation)
  {
    [v21 setEncodedToolInvocation:?];
  }

  if ([(ATXPBAction *)self parameterKeysForToolInvocationsCount])
  {
    [v21 clearParameterKeysForToolInvocations];
    v17 = [(ATXPBAction *)self parameterKeysForToolInvocationsCount];
    if (v17)
    {
      v18 = v17;
      for (m = 0; m != v18; ++m)
      {
        v20 = [(ATXPBAction *)self parameterKeysForToolInvocationAtIndex:m];
        [v21 addParameterKeysForToolInvocation:v20];
      }
    }
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v81 = *MEMORY[0x1E69E9840];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_bundleId copyWithZone:a3];
  v7 = *(v5 + 40);
  *(v5 + 40) = v6;

  if (*&self->_has)
  {
    *(v5 + 8) = self->_actionType;
    *(v5 + 188) |= 1u;
  }

  v8 = [(NSData *)self->_intent copyWithZone:a3];
  v9 = *(v5 + 88);
  *(v5 + 88) = v8;

  v10 = [(NSString *)self->_heuristic copyWithZone:a3];
  v11 = *(v5 + 72);
  *(v5 + 72) = v10;

  if ((*&self->_has & 8) != 0)
  {
    *(v5 + 184) = self->_isFutureMedia;
    *(v5 + 188) |= 8u;
  }

  v12 = [(NSString *)self->_title copyWithZone:a3];
  v13 = *(v5 + 152);
  *(v5 + 152) = v12;

  v14 = [(NSString *)self->_subtitle copyWithZone:a3];
  v15 = *(v5 + 144);
  *(v5 + 144) = v14;

  if ((*&self->_has & 4) != 0)
  {
    *(v5 + 24) = self->_userActivityHash;
    *(v5 + 188) |= 4u;
  }

  v16 = [(NSString *)self->_activityString copyWithZone:a3];
  v17 = *(v5 + 32);
  *(v5 + 32) = v16;

  v18 = [(NSData *)self->_userActivityProxy copyWithZone:a3];
  v19 = *(v5 + 168);
  *(v5 + 168) = v18;

  v20 = [(NSString *)self->_itemIdentifier copyWithZone:a3];
  v21 = *(v5 + 96);
  *(v5 + 96) = v20;

  v22 = [(NSString *)self->_uuid copyWithZone:a3];
  v23 = *(v5 + 176);
  *(v5 + 176) = v22;

  v24 = [(NSString *)self->_languageCode copyWithZone:a3];
  v25 = *(v5 + 104);
  *(v5 + 104) = v24;

  v26 = [(NSData *)self->_contentAttributeSet copyWithZone:a3];
  v27 = *(v5 + 48);
  *(v5 + 48) = v26;

  v28 = [(ATXPBActionCriteria *)self->_criteria copyWithZone:a3];
  v29 = *(v5 + 56);
  *(v5 + 56) = v28;

  v30 = [(ATXPBAVRouteInfo *)self->_routeInfo copyWithZone:a3];
  v31 = *(v5 + 136);
  *(v5 + 136) = v30;

  v75 = 0u;
  v76 = 0u;
  v73 = 0u;
  v74 = 0u;
  v32 = self->_heuristicMetadatas;
  v33 = [(NSMutableArray *)v32 countByEnumeratingWithState:&v73 objects:v80 count:16];
  if (v33)
  {
    v34 = v33;
    v35 = *v74;
    do
    {
      v36 = 0;
      do
      {
        if (*v74 != v35)
        {
          objc_enumerationMutation(v32);
        }

        v37 = [*(*(&v73 + 1) + 8 * v36) copyWithZone:a3];
        [v5 addHeuristicMetadata:v37];

        ++v36;
      }

      while (v34 != v36);
      v34 = [(NSMutableArray *)v32 countByEnumeratingWithState:&v73 objects:v80 count:16];
    }

    while (v34);
  }

  if ((*&self->_has & 2) != 0)
  {
    *(v5 + 16) = self->_cachedHash;
    *(v5 + 188) |= 2u;
  }

  v71 = 0u;
  v72 = 0u;
  v69 = 0u;
  v70 = 0u;
  v38 = self->_predictableParameterCombinations;
  v39 = [(NSMutableArray *)v38 countByEnumeratingWithState:&v69 objects:v79 count:16];
  if (v39)
  {
    v40 = v39;
    v41 = *v70;
    do
    {
      v42 = 0;
      do
      {
        if (*v70 != v41)
        {
          objc_enumerationMutation(v38);
        }

        v43 = [*(*(&v69 + 1) + 8 * v42) copyWithZone:a3];
        [v5 addPredictableParameterCombinations:v43];

        ++v42;
      }

      while (v40 != v42);
      v40 = [(NSMutableArray *)v38 countByEnumeratingWithState:&v69 objects:v79 count:16];
    }

    while (v40);
  }

  v67 = 0u;
  v68 = 0u;
  v65 = 0u;
  v66 = 0u;
  v44 = self->_menuItemPathComponents;
  v45 = [(NSMutableArray *)v44 countByEnumeratingWithState:&v65 objects:v78 count:16];
  if (v45)
  {
    v46 = v45;
    v47 = *v66;
    do
    {
      v48 = 0;
      do
      {
        if (*v66 != v47)
        {
          objc_enumerationMutation(v44);
        }

        v49 = [*(*(&v65 + 1) + 8 * v48) copyWithZone:a3];
        [v5 addMenuItemPathComponent:v49];

        ++v48;
      }

      while (v46 != v48);
      v46 = [(NSMutableArray *)v44 countByEnumeratingWithState:&v65 objects:v78 count:16];
    }

    while (v46);
  }

  v50 = [(NSString *)self->_toolInvocationID copyWithZone:a3];
  v51 = *(v5 + 160);
  *(v5 + 160) = v50;

  v52 = [(NSData *)self->_encodedToolInvocation copyWithZone:a3];
  v53 = *(v5 + 64);
  *(v5 + 64) = v52;

  v63 = 0u;
  v64 = 0u;
  v61 = 0u;
  v62 = 0u;
  v54 = self->_parameterKeysForToolInvocations;
  v55 = [(NSMutableArray *)v54 countByEnumeratingWithState:&v61 objects:v77 count:16];
  if (v55)
  {
    v56 = v55;
    v57 = *v62;
    do
    {
      v58 = 0;
      do
      {
        if (*v62 != v57)
        {
          objc_enumerationMutation(v54);
        }

        v59 = [*(*(&v61 + 1) + 8 * v58) copyWithZone:{a3, v61}];
        [v5 addParameterKeysForToolInvocation:v59];

        ++v58;
      }

      while (v56 != v58);
      v56 = [(NSMutableArray *)v54 countByEnumeratingWithState:&v61 objects:v77 count:16];
    }

    while (v56);
  }

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_23;
  }

  bundleId = self->_bundleId;
  if (bundleId | *(v4 + 5))
  {
    if (![(NSString *)bundleId isEqual:?])
    {
      goto LABEL_23;
    }
  }

  if (*&self->_has)
  {
    if ((*(v4 + 188) & 1) == 0 || self->_actionType != *(v4 + 1))
    {
      goto LABEL_23;
    }
  }

  else if (*(v4 + 188))
  {
    goto LABEL_23;
  }

  intent = self->_intent;
  if (intent | *(v4 + 11) && ![(NSData *)intent isEqual:?])
  {
    goto LABEL_23;
  }

  heuristic = self->_heuristic;
  if (heuristic | *(v4 + 9))
  {
    if (![(NSString *)heuristic isEqual:?])
    {
      goto LABEL_23;
    }
  }

  if ((*&self->_has & 8) != 0)
  {
    if ((*(v4 + 188) & 8) == 0)
    {
      goto LABEL_23;
    }

    if (self->_isFutureMedia)
    {
      if ((*(v4 + 184) & 1) == 0)
      {
        goto LABEL_23;
      }
    }

    else if (*(v4 + 184))
    {
      goto LABEL_23;
    }
  }

  else if ((*(v4 + 188) & 8) != 0)
  {
    goto LABEL_23;
  }

  title = self->_title;
  if (title | *(v4 + 19) && ![(NSString *)title isEqual:?])
  {
    goto LABEL_23;
  }

  subtitle = self->_subtitle;
  if (subtitle | *(v4 + 18))
  {
    if (![(NSString *)subtitle isEqual:?])
    {
      goto LABEL_23;
    }
  }

  if ((*&self->_has & 4) != 0)
  {
    if ((*(v4 + 188) & 4) == 0 || self->_userActivityHash != *(v4 + 3))
    {
      goto LABEL_23;
    }
  }

  else if ((*(v4 + 188) & 4) != 0)
  {
    goto LABEL_23;
  }

  activityString = self->_activityString;
  if (activityString | *(v4 + 4) && ![(NSString *)activityString isEqual:?])
  {
    goto LABEL_23;
  }

  userActivityProxy = self->_userActivityProxy;
  if (userActivityProxy | *(v4 + 21))
  {
    if (![(NSData *)userActivityProxy isEqual:?])
    {
      goto LABEL_23;
    }
  }

  itemIdentifier = self->_itemIdentifier;
  if (itemIdentifier | *(v4 + 12))
  {
    if (![(NSString *)itemIdentifier isEqual:?])
    {
      goto LABEL_23;
    }
  }

  uuid = self->_uuid;
  if (uuid | *(v4 + 22))
  {
    if (![(NSString *)uuid isEqual:?])
    {
      goto LABEL_23;
    }
  }

  languageCode = self->_languageCode;
  if (languageCode | *(v4 + 13))
  {
    if (![(NSString *)languageCode isEqual:?])
    {
      goto LABEL_23;
    }
  }

  contentAttributeSet = self->_contentAttributeSet;
  if (contentAttributeSet | *(v4 + 6))
  {
    if (![(NSData *)contentAttributeSet isEqual:?])
    {
      goto LABEL_23;
    }
  }

  criteria = self->_criteria;
  if (criteria | *(v4 + 7))
  {
    if (![(ATXPBActionCriteria *)criteria isEqual:?])
    {
      goto LABEL_23;
    }
  }

  routeInfo = self->_routeInfo;
  if (routeInfo | *(v4 + 17))
  {
    if (![(ATXPBAVRouteInfo *)routeInfo isEqual:?])
    {
      goto LABEL_23;
    }
  }

  heuristicMetadatas = self->_heuristicMetadatas;
  if (heuristicMetadatas | *(v4 + 10))
  {
    if (![(NSMutableArray *)heuristicMetadatas isEqual:?])
    {
      goto LABEL_23;
    }
  }

  if ((*&self->_has & 2) == 0)
  {
    if ((*(v4 + 188) & 2) == 0)
    {
      goto LABEL_55;
    }

LABEL_23:
    v10 = 0;
    goto LABEL_24;
  }

  if ((*(v4 + 188) & 2) == 0 || self->_cachedHash != *(v4 + 2))
  {
    goto LABEL_23;
  }

LABEL_55:
  predictableParameterCombinations = self->_predictableParameterCombinations;
  if (predictableParameterCombinations | *(v4 + 16) && ![(NSMutableArray *)predictableParameterCombinations isEqual:?])
  {
    goto LABEL_23;
  }

  menuItemPathComponents = self->_menuItemPathComponents;
  if (menuItemPathComponents | *(v4 + 14))
  {
    if (![(NSMutableArray *)menuItemPathComponents isEqual:?])
    {
      goto LABEL_23;
    }
  }

  toolInvocationID = self->_toolInvocationID;
  if (toolInvocationID | *(v4 + 20))
  {
    if (![(NSString *)toolInvocationID isEqual:?])
    {
      goto LABEL_23;
    }
  }

  encodedToolInvocation = self->_encodedToolInvocation;
  if (encodedToolInvocation | *(v4 + 8))
  {
    if (![(NSData *)encodedToolInvocation isEqual:?])
    {
      goto LABEL_23;
    }
  }

  parameterKeysForToolInvocations = self->_parameterKeysForToolInvocations;
  if (parameterKeysForToolInvocations | *(v4 + 15))
  {
    v10 = [(NSMutableArray *)parameterKeysForToolInvocations isEqual:?];
  }

  else
  {
    v10 = 1;
  }

LABEL_24:

  return v10;
}

- (unint64_t)hash
{
  v27 = [(NSString *)self->_bundleId hash];
  if (*&self->_has)
  {
    v26 = 2654435761 * self->_actionType;
  }

  else
  {
    v26 = 0;
  }

  v25 = [(NSData *)self->_intent hash];
  v24 = [(NSString *)self->_heuristic hash];
  if ((*&self->_has & 8) != 0)
  {
    v23 = 2654435761 * self->_isFutureMedia;
  }

  else
  {
    v23 = 0;
  }

  v22 = [(NSString *)self->_title hash];
  v21 = [(NSString *)self->_subtitle hash];
  if ((*&self->_has & 4) != 0)
  {
    v3 = [(NSString *)self->_activityString hash];
  }

  else
  {
    v3 = [(NSString *)self->_activityString hash];
  }

  v4 = v3;
  v5 = [(NSData *)self->_userActivityProxy hash];
  v6 = [(NSString *)self->_itemIdentifier hash];
  v7 = [(NSString *)self->_uuid hash];
  v8 = [(NSString *)self->_languageCode hash];
  v9 = [(NSData *)self->_contentAttributeSet hash];
  v10 = [(ATXPBActionCriteria *)self->_criteria hash];
  v11 = [(ATXPBAVRouteInfo *)self->_routeInfo hash];
  v12 = [(NSMutableArray *)self->_heuristicMetadatas hash];
  if ((*&self->_has & 2) != 0)
  {
    v13 = 2654435761u * self->_cachedHash;
  }

  else
  {
    v13 = 0;
  }

  v14 = v26 ^ v27 ^ v25 ^ v24 ^ v23 ^ v22 ^ v21 ^ v20 ^ v4 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11;
  v15 = v12 ^ v13 ^ [(NSMutableArray *)self->_predictableParameterCombinations hash];
  v16 = v15 ^ [(NSMutableArray *)self->_menuItemPathComponents hash];
  v17 = v16 ^ [(NSString *)self->_toolInvocationID hash];
  v18 = v14 ^ v17 ^ [(NSData *)self->_encodedToolInvocation hash];
  return v18 ^ [(NSMutableArray *)self->_parameterKeysForToolInvocations hash];
}

- (void)mergeFrom:(id)a3
{
  v49 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (*(v4 + 5))
  {
    [(ATXPBAction *)self setBundleId:?];
  }

  if (*(v4 + 188))
  {
    self->_actionType = *(v4 + 1);
    *&self->_has |= 1u;
  }

  if (*(v4 + 11))
  {
    [(ATXPBAction *)self setIntent:?];
  }

  if (*(v4 + 9))
  {
    [(ATXPBAction *)self setHeuristic:?];
  }

  if ((*(v4 + 188) & 8) != 0)
  {
    self->_isFutureMedia = *(v4 + 184);
    *&self->_has |= 8u;
  }

  if (*(v4 + 19))
  {
    [(ATXPBAction *)self setTitle:?];
  }

  if (*(v4 + 18))
  {
    [(ATXPBAction *)self setSubtitle:?];
  }

  if ((*(v4 + 188) & 4) != 0)
  {
    self->_userActivityHash = *(v4 + 3);
    *&self->_has |= 4u;
  }

  if (*(v4 + 4))
  {
    [(ATXPBAction *)self setActivityString:?];
  }

  if (*(v4 + 21))
  {
    [(ATXPBAction *)self setUserActivityProxy:?];
  }

  if (*(v4 + 12))
  {
    [(ATXPBAction *)self setItemIdentifier:?];
  }

  if (*(v4 + 22))
  {
    [(ATXPBAction *)self setUuid:?];
  }

  if (*(v4 + 13))
  {
    [(ATXPBAction *)self setLanguageCode:?];
  }

  if (*(v4 + 6))
  {
    [(ATXPBAction *)self setContentAttributeSet:?];
  }

  criteria = self->_criteria;
  v6 = *(v4 + 7);
  if (criteria)
  {
    if (v6)
    {
      [(ATXPBActionCriteria *)criteria mergeFrom:?];
    }
  }

  else if (v6)
  {
    [(ATXPBAction *)self setCriteria:?];
  }

  routeInfo = self->_routeInfo;
  v8 = *(v4 + 17);
  if (routeInfo)
  {
    if (v8)
    {
      [(ATXPBAVRouteInfo *)routeInfo mergeFrom:?];
    }
  }

  else if (v8)
  {
    [(ATXPBAction *)self setRouteInfo:?];
  }

  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  v9 = *(v4 + 10);
  v10 = [v9 countByEnumeratingWithState:&v41 objects:v48 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v42;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v42 != v12)
        {
          objc_enumerationMutation(v9);
        }

        [(ATXPBAction *)self addHeuristicMetadata:*(*(&v41 + 1) + 8 * i)];
      }

      v11 = [v9 countByEnumeratingWithState:&v41 objects:v48 count:16];
    }

    while (v11);
  }

  if ((*(v4 + 188) & 2) != 0)
  {
    self->_cachedHash = *(v4 + 2);
    *&self->_has |= 2u;
  }

  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v14 = *(v4 + 16);
  v15 = [v14 countByEnumeratingWithState:&v37 objects:v47 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v38;
    do
    {
      for (j = 0; j != v16; ++j)
      {
        if (*v38 != v17)
        {
          objc_enumerationMutation(v14);
        }

        [(ATXPBAction *)self addPredictableParameterCombinations:*(*(&v37 + 1) + 8 * j)];
      }

      v16 = [v14 countByEnumeratingWithState:&v37 objects:v47 count:16];
    }

    while (v16);
  }

  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v19 = *(v4 + 14);
  v20 = [v19 countByEnumeratingWithState:&v33 objects:v46 count:16];
  if (v20)
  {
    v21 = v20;
    v22 = *v34;
    do
    {
      for (k = 0; k != v21; ++k)
      {
        if (*v34 != v22)
        {
          objc_enumerationMutation(v19);
        }

        [(ATXPBAction *)self addMenuItemPathComponent:*(*(&v33 + 1) + 8 * k)];
      }

      v21 = [v19 countByEnumeratingWithState:&v33 objects:v46 count:16];
    }

    while (v21);
  }

  if (*(v4 + 20))
  {
    [(ATXPBAction *)self setToolInvocationID:?];
  }

  if (*(v4 + 8))
  {
    [(ATXPBAction *)self setEncodedToolInvocation:?];
  }

  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v24 = *(v4 + 15);
  v25 = [v24 countByEnumeratingWithState:&v29 objects:v45 count:16];
  if (v25)
  {
    v26 = v25;
    v27 = *v30;
    do
    {
      for (m = 0; m != v26; ++m)
      {
        if (*v30 != v27)
        {
          objc_enumerationMutation(v24);
        }

        [(ATXPBAction *)self addParameterKeysForToolInvocation:*(*(&v29 + 1) + 8 * m), v29];
      }

      v26 = [v24 countByEnumeratingWithState:&v29 objects:v45 count:16];
    }

    while (v26);
  }
}

@end