@interface ATXAppDirectoryEvent
+ (id)_objectForKey:(id)a3 classType:(Class)a4 fromMetadata:(id)a5;
+ (id)appDirectoryEventWithEventType:(unint64_t)a3 metadata:(id)a4;
+ (id)eventWithData:(id)a3 dataVersion:(unsigned int)a4;
- (ATXAppDirectoryEvent)initWithAbsoluteDate:(double)a3 eventType:(unint64_t)a4 categoryID:(id)a5 categoryIndex:(id)a6 bundleId:(id)a7 bundleIndex:(id)a8 searchQueryLength:(id)a9 searchTab:(id)a10 blendingCacheUUID:(id)a11 shownSuggestionIds:(id)a12 engagedSuggestionIds:(id)a13 metadata:(id)a14;
- (ATXAppDirectoryEvent)initWithCoder:(id)a3;
- (ATXAppDirectoryEvent)initWithDate:(id)a3 eventType:(unint64_t)a4 categoryID:(id)a5 categoryIndex:(id)a6 bundleId:(id)a7 bundleIndex:(id)a8 searchQueryLength:(id)a9 searchTab:(id)a10 blendingCacheUUID:(id)a11 shownSuggestionIds:(id)a12 engagedSuggestionIds:(id)a13 metadata:(id)a14;
- (ATXAppDirectoryEvent)initWithProto:(id)a3;
- (ATXAppDirectoryEvent)initWithProtoData:(id)a3;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToATXAppDirectoryEvent:(id)a3;
- (NSDate)date;
- (id)encodeAsProto;
- (id)json;
- (id)jsonDict;
- (id)proto;
- (id)sessionProcessingOptionsForSessionType:(int64_t)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
- (void)updateUIFeedbackSession:(id)a3 uiCacheConsumerSubType:(unsigned __int8)a4;
@end

@implementation ATXAppDirectoryEvent

+ (id)appDirectoryEventWithEventType:(unint64_t)a3 metadata:(id)a4
{
  v6 = a4;
  v7 = [a1 _objectForKey:@"kATXAppDirectoryLoggingDate" classType:objc_opt_class() fromMetadata:v6];
  if (v7)
  {
    v8 = [a1 _objectForKey:@"kATXAppDirectoryLoggingCategoryID" classType:objc_opt_class() fromMetadata:v6];
    v9 = [a1 _objectForKey:@"kATXAppDirectoryLoggingCategoryIndex" classType:objc_opt_class() fromMetadata:v6];
    v10 = [a1 _objectForKey:@"kATXAppDirectoryLoggingBundleID" classType:objc_opt_class() fromMetadata:v6];
    v11 = [a1 _objectForKey:@"kATXAppDirectoryLoggingBundleIndex" classType:objc_opt_class() fromMetadata:v6];
    v12 = [a1 _objectForKey:@"kATXAppDirectoryLoggingSearchQueryLength" classType:objc_opt_class() fromMetadata:v6];
    v13 = [a1 _objectForKey:@"kATXAppDirectoryLoggingSearchTab" classType:objc_opt_class() fromMetadata:v6];
    v14 = [[ATXAppDirectoryEvent alloc] initWithDate:v7 eventType:a3 categoryID:v8 categoryIndex:v9 bundleId:v10 bundleIndex:v11 searchQueryLength:v12 searchTab:v13 blendingCacheUUID:0 shownSuggestionIds:0 engagedSuggestionIds:0 metadata:0];
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (ATXAppDirectoryEvent)initWithDate:(id)a3 eventType:(unint64_t)a4 categoryID:(id)a5 categoryIndex:(id)a6 bundleId:(id)a7 bundleIndex:(id)a8 searchQueryLength:(id)a9 searchTab:(id)a10 blendingCacheUUID:(id)a11 shownSuggestionIds:(id)a12 engagedSuggestionIds:(id)a13 metadata:(id)a14
{
  v18 = a14;
  v19 = a13;
  v20 = a12;
  v21 = a11;
  v22 = a10;
  v23 = a9;
  v24 = a8;
  v25 = a7;
  v26 = a6;
  v27 = a5;
  [a3 timeIntervalSince1970];
  v32 = [(ATXAppDirectoryEvent *)self initWithAbsoluteDate:a4 eventType:v27 categoryID:v26 categoryIndex:v25 bundleId:v24 bundleIndex:v23 searchQueryLength:v22 searchTab:v21 blendingCacheUUID:v20 shownSuggestionIds:v19 engagedSuggestionIds:v18 metadata:?];

  return v32;
}

- (ATXAppDirectoryEvent)initWithAbsoluteDate:(double)a3 eventType:(unint64_t)a4 categoryID:(id)a5 categoryIndex:(id)a6 bundleId:(id)a7 bundleIndex:(id)a8 searchQueryLength:(id)a9 searchTab:(id)a10 blendingCacheUUID:(id)a11 shownSuggestionIds:(id)a12 engagedSuggestionIds:(id)a13 metadata:(id)a14
{
  v36 = a5;
  obj = a6;
  v35 = a6;
  v29 = a7;
  v34 = a7;
  v33 = a8;
  v32 = a9;
  v31 = a10;
  v20 = a11;
  v21 = a12;
  v22 = a13;
  v23 = a14;
  v37.receiver = self;
  v37.super_class = ATXAppDirectoryEvent;
  v24 = [(ATXAppDirectoryEvent *)&v37 init];
  v25 = v24;
  if (v24)
  {
    v24->_absoluteDate = a3;
    v24->_eventType = a4;
    objc_storeStrong(&v24->_categoryID, a5);
    objc_storeStrong(&v25->_categoryIndex, obj);
    objc_storeStrong(&v25->_bundleId, v29);
    objc_storeStrong(&v25->_bundleIndex, a8);
    objc_storeStrong(&v25->_searchQueryLength, a9);
    objc_storeStrong(&v25->_searchTab, a10);
    objc_storeStrong(&v25->_blendingCacheUUID, a11);
    objc_storeStrong(&v25->_shownSuggestionIds, a12);
    objc_storeStrong(&v25->_engagedSuggestionIds, a13);
    objc_storeStrong(&v25->_metadata, a14);
  }

  return v25;
}

- (NSDate)date
{
  v2 = [objc_alloc(MEMORY[0x1E695DF00]) initWithTimeIntervalSince1970:self->_absoluteDate];

  return v2;
}

+ (id)_objectForKey:(id)a3 classType:(Class)a4 fromMetadata:(id)a5
{
  v5 = [a5 objectForKey:a3];
  if (v5 && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)sessionProcessingOptionsForSessionType:(int64_t)a3
{
  v3 = self->_eventType - 1;
  if (v3 > 8)
  {
    return &unk_1F3E60978;
  }

  else
  {
    return qword_1E80C3D68[v3];
  }
}

- (void)updateUIFeedbackSession:(id)a3 uiCacheConsumerSubType:(unsigned __int8)a4
{
  v13 = a3;
  v5 = [v13 sessionMetadata];

  if (v5)
  {
    v6 = [v13 sessionMetadata];
  }

  else
  {
    v6 = objc_opt_new();
    [v13 updateSessionMetadataIfUnset:v6];
  }

  eventType = self->_eventType;
  if (eventType <= 6)
  {
    if ((eventType - 3) >= 2 && eventType != 6)
    {
      goto LABEL_17;
    }

    [v13 updateEngagedUUIDs:self->_engagedSuggestionIds rejectedUUIDs:0 shownUUIDs:self->_shownSuggestionIds];
    [v6 setEngagedBundleId:self->_bundleId];
    v9 = [(ATXAppDirectoryEventMetadata *)self->_metadata bundleIdInTopAppsVisible];
    [v6 setEngagedBundleIdInTopAppsVisible:v9];

    goto LABEL_11;
  }

  if (eventType == 8)
  {
    metadata = self->_metadata;
    if (metadata)
    {
      v11 = [(ATXAppDirectoryEventMetadata *)metadata userLaunchedAppBeforeLeaving];
      v12 = [v11 BOOLValue];

      if ((v12 & 1) == 0)
      {
        [v13 updateEngagedUUIDs:0 rejectedUUIDs:0 shownUUIDs:self->_shownSuggestionIds];
LABEL_11:
        [v13 updateConsumerSubTypeIfUnset:35];
        [v13 updateBlendingUICacheUpdateUUIDIfUnset:self->_blendingCacheUUID];
      }
    }
  }

  else if (eventType == 7)
  {
    [v6 setDidSearchDuringSession:1];
  }

LABEL_17:
}

+ (id)eventWithData:(id)a3 dataVersion:(unsigned int)a4
{
  if (a4 == 1)
  {
    v5 = a3;
    v6 = [[a1 alloc] initWithProtoData:v5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)jsonDict
{
  v31 = *MEMORY[0x1E69E9840];
  v3 = [(NSArray *)self->_shownSuggestionIds _pas_mappedArrayWithTransform:&__block_literal_global_60];
  v4 = [(NSArray *)self->_engagedSuggestionIds _pas_mappedArrayWithTransform:&__block_literal_global_33_1];
  v22[0] = @"date";
  v5 = MEMORY[0x1E696AD98];
  v6 = [(ATXAppDirectoryEvent *)self date];
  [v6 timeIntervalSinceReferenceDate];
  v7 = [v5 numberWithDouble:?];
  v23[0] = v7;
  v22[1] = @"eventType";
  v8 = NSStringForATXAppDirectoryInteractionEvent(self->_eventType);
  v9 = vdupq_n_s64(@"nil");
  v10 = vbslq_s8(vceqzq_s64(*&self->_categoryID), v9, *&self->_categoryID);
  v11 = vbslq_s8(vceqzq_s64(*&self->_bundleId), v9, *&self->_bundleId);
  v23[1] = v8;
  v22[2] = @"categoryID";
  v22[3] = @"categoryIndex";
  v22[4] = @"bundleId";
  v22[5] = @"bundleIndex";
  v24 = v10;
  v25 = v11;
  v22[6] = @"searchQueryLength";
  v22[7] = @"searchTab";
  v26 = vbslq_s8(vceqzq_s64(*&self->_searchQueryLength), v9, *&self->_searchQueryLength);
  v22[8] = @"blendingCacheUUID";
  v12 = [(NSUUID *)self->_blendingCacheUUID UUIDString];
  v13 = v12;
  if (v12)
  {
    v14 = v12;
  }

  else
  {
    v14 = @"nil";
  }

  if (v3)
  {
    v15 = v3;
  }

  else
  {
    v15 = @"nil";
  }

  v27 = v14;
  v28 = v15;
  v22[9] = @"shownSuggestionIds";
  v22[10] = @"engagedSuggestionIds";
  if (v4)
  {
    v16 = v4;
  }

  else
  {
    v16 = @"nil";
  }

  v29 = v16;
  v22[11] = @"metadata";
  v17 = [(ATXAppDirectoryEventMetadata *)self->_metadata jsonDict];
  v18 = v17;
  if (v17)
  {
    v19 = v17;
  }

  else
  {
    v19 = @"nil";
  }

  v30 = v19;
  v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v23 forKeys:v22 count:12];

  return v20;
}

- (id)json
{
  v2 = MEMORY[0x1E696ACB0];
  v3 = [(ATXAppDirectoryEvent *)self jsonDict];
  v4 = [v2 dataWithJSONObject:v3 options:1 error:0];

  return v4;
}

- (ATXAppDirectoryEvent)initWithProtoData:(id)a3
{
  if (a3)
  {
    v4 = a3;
    v5 = [[ATXPBAppDirectoryEvent alloc] initWithData:v4];

    self = [(ATXAppDirectoryEvent *)self initWithProto:v5];
    v6 = self;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (ATXAppDirectoryEvent)initWithProto:(id)a3
{
  v4 = a3;
  if (!v4)
  {
LABEL_10:
    v8 = 0;
    goto LABEL_33;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v7 = __atxlog_handle_default();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      [(ATXAppDirectoryEvent *)self initWithProto:v7];
    }

    goto LABEL_10;
  }

  v5 = v4;
  if ([(ATXPBAppDirectoryEvent *)v5 hasDate]&& (v6 = [(ATXPBAppDirectoryEvent *)v5 date], [(ATXPBAppDirectoryEvent *)v5 hasEventType]))
  {
    v25 = [(ATXPBAppDirectoryEvent *)v5 eventType];
    if ([(ATXPBAppDirectoryEvent *)v5 hasCategoryID])
    {
      v26 = [objc_alloc(MEMORY[0x1E696AD98]) initWithUnsignedInteger:-[ATXPBAppDirectoryEvent categoryID](v5)];
    }

    else
    {
      v26 = 0;
    }

    if ([(ATXPBAppDirectoryEvent *)v5 hasCategoryIndex])
    {
      v24 = [objc_alloc(MEMORY[0x1E696AD98]) initWithUnsignedInteger:-[ATXPBAppDirectoryEvent categoryIndex](v5)];
    }

    else
    {
      v24 = 0;
    }

    if ([(ATXPBAppDirectoryEvent *)v5 hasBundleId])
    {
      v23 = [(ATXPBAppDirectoryEvent *)v5 bundleId];
    }

    else
    {
      v23 = 0;
    }

    if ([(ATXPBAppDirectoryEvent *)v5 hasBundleIndex])
    {
      v22 = [objc_alloc(MEMORY[0x1E696AD98]) initWithUnsignedInteger:-[ATXPBAppDirectoryEvent bundleIndex](v5)];
    }

    else
    {
      v22 = 0;
    }

    if ([(ATXPBAppDirectoryEvent *)v5 hasSearchQueryLength])
    {
      v21 = [objc_alloc(MEMORY[0x1E696AD98]) initWithUnsignedInteger:-[ATXPBAppDirectoryEvent searchQueryLength](v5)];
    }

    else
    {
      v21 = 0;
    }

    if ([(ATXPBAppDirectoryEvent *)v5 hasSearchTab])
    {
      v9 = [objc_alloc(MEMORY[0x1E696AD98]) initWithUnsignedInteger:-[ATXPBAppDirectoryEvent searchTab](v5)];
    }

    else
    {
      v9 = 0;
    }

    if ([(ATXPBAppDirectoryEvent *)v5 hasBlendingCacheId])
    {
      v10 = objc_alloc(MEMORY[0x1E696AFB0]);
      v11 = [(ATXPBAppDirectoryEvent *)v5 blendingCacheId];
      v12 = [v10 initWithUUIDString:v11];
    }

    else
    {
      v12 = 0;
    }

    v13 = [(ATXPBAppDirectoryEvent *)v5 shownSuggestionIds];
    v20 = [v13 _pas_mappedArrayWithTransform:&__block_literal_global_79];

    v14 = [(ATXPBAppDirectoryEvent *)v5 engagedSuggestionIds];
    v19 = [v14 _pas_mappedArrayWithTransform:&__block_literal_global_81_0];

    v15 = [ATXAppDirectoryEventMetadata alloc];
    v16 = [(ATXPBAppDirectoryEvent *)v5 metadata];
    v17 = [(ATXAppDirectoryEventMetadata *)v15 initWithProto:v16];

    self = [(ATXAppDirectoryEvent *)self initWithAbsoluteDate:v25 eventType:v26 categoryID:v24 categoryIndex:v23 bundleId:v22 bundleIndex:v21 searchQueryLength:v6 searchTab:v9 blendingCacheUUID:v12 shownSuggestionIds:v20 engagedSuggestionIds:v19 metadata:v17];
    v8 = self;
  }

  else
  {
    v8 = 0;
  }

LABEL_33:
  return v8;
}

id __38__ATXAppDirectoryEvent_initWithProto___block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x1E696AFB0];
  v3 = a2;
  v4 = [[v2 alloc] initWithUUIDString:v3];

  return v4;
}

id __38__ATXAppDirectoryEvent_initWithProto___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x1E696AFB0];
  v3 = a2;
  v4 = [[v2 alloc] initWithUUIDString:v3];

  return v4;
}

- (id)proto
{
  v38 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  [(ATXPBAppDirectoryEvent *)v3 setDate:?];
  [(ATXPBAppDirectoryEvent *)v3 setEventType:?];
  categoryID = self->_categoryID;
  if (categoryID)
  {
    [(ATXPBAppDirectoryEvent *)v3 setCategoryID:?];
  }

  categoryIndex = self->_categoryIndex;
  if (categoryIndex)
  {
    [(ATXPBAppDirectoryEvent *)v3 setCategoryIndex:?];
  }

  bundleId = self->_bundleId;
  if (bundleId)
  {
    [(ATXPBAppDirectoryEvent *)v3 setBundleId:?];
  }

  bundleIndex = self->_bundleIndex;
  if (bundleIndex)
  {
    [(ATXPBAppDirectoryEvent *)v3 setBundleIndex:?];
  }

  searchQueryLength = self->_searchQueryLength;
  if (searchQueryLength)
  {
    [(ATXPBAppDirectoryEvent *)v3 setSearchQueryLength:?];
  }

  searchTab = self->_searchTab;
  if (searchTab)
  {
    [(ATXPBAppDirectoryEvent *)v3 setSearchTab:?];
  }

  blendingCacheUUID = self->_blendingCacheUUID;
  if (blendingCacheUUID)
  {
    v11 = [(NSUUID *)blendingCacheUUID UUIDString];
    [(ATXPBAppDirectoryEvent *)v3 setBlendingCacheId:v11];
  }

  if (self->_shownSuggestionIds)
  {
    v12 = objc_opt_new();
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    v13 = self->_shownSuggestionIds;
    v14 = [(NSArray *)v13 countByEnumeratingWithState:&v32 objects:v37 count:16];
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

          v18 = [*(*(&v32 + 1) + 8 * i) UUIDString];
          [v12 addObject:v18];
        }

        v15 = [(NSArray *)v13 countByEnumeratingWithState:&v32 objects:v37 count:16];
      }

      while (v15);
    }

    [(ATXPBAppDirectoryEvent *)v3 setShownSuggestionIds:v12];
  }

  if (self->_engagedSuggestionIds)
  {
    v19 = objc_opt_new();
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v20 = self->_engagedSuggestionIds;
    v21 = [(NSArray *)v20 countByEnumeratingWithState:&v28 objects:v36 count:16];
    if (v21)
    {
      v22 = v21;
      v23 = *v29;
      do
      {
        for (j = 0; j != v22; ++j)
        {
          if (*v29 != v23)
          {
            objc_enumerationMutation(v20);
          }

          v25 = [*(*(&v28 + 1) + 8 * j) UUIDString];
          [v19 addObject:v25];
        }

        v22 = [(NSArray *)v20 countByEnumeratingWithState:&v28 objects:v36 count:16];
      }

      while (v22);
    }

    [(ATXPBAppDirectoryEvent *)v3 setEngagedSuggestionIds:v19];
  }

  v26 = [(ATXAppDirectoryEventMetadata *)self->_metadata proto];
  [(ATXPBAppDirectoryEvent *)v3 setMetadata:v26];

  return v3;
}

- (id)encodeAsProto
{
  v2 = [(ATXAppDirectoryEvent *)self proto];
  v3 = [v2 data];

  return v3;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(ATXAppDirectoryEvent *)self encodeAsProto];
  [v4 encodeObject:v5 forKey:@"protobufData"];
}

- (ATXAppDirectoryEvent)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"protobufData"];

  v6 = [(ATXAppDirectoryEvent *)self initWithProtoData:v5];
  return v6;
}

- (unint64_t)hash
{
  v3 = self->_eventType - self->_absoluteDate + 32 * self->_absoluteDate;
  v4 = [(NSNumber *)self->_categoryID hash]- v3 + 32 * v3;
  v5 = [(NSNumber *)self->_categoryIndex hash]- v4 + 32 * v4;
  v6 = [(NSString *)self->_bundleId hash]- v5 + 32 * v5;
  v7 = [(NSNumber *)self->_bundleIndex hash]- v6 + 32 * v6;
  v8 = [(NSNumber *)self->_searchQueryLength hash]- v7 + 32 * v7;
  v9 = [(NSNumber *)self->_searchTab hash]- v8 + 32 * v8;
  v10 = [(NSUUID *)self->_blendingCacheUUID hash]- v9 + 32 * v9;
  v11 = [(NSArray *)self->_shownSuggestionIds hash]- v10 + 32 * v10;
  v12 = [(NSArray *)self->_engagedSuggestionIds hash]- v11 + 32 * v11;
  return [(ATXAppDirectoryEventMetadata *)self->_metadata hash]- v12 + 32 * v12;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(ATXAppDirectoryEvent *)self isEqualToATXAppDirectoryEvent:v5];
  }

  return v6;
}

- (BOOL)isEqualToATXAppDirectoryEvent:(id)a3
{
  v4 = a3;
  v5 = v4;
  v6 = self->_absoluteDate - *(v4 + 1);
  if (v6 < 0.0)
  {
    v6 = -v6;
  }

  if (v6 > 2.22044605e-16 || self->_eventType != v4[2])
  {
    goto LABEL_39;
  }

  v7 = self->_categoryID;
  v8 = v7;
  if (v7 == v5[3])
  {
  }

  else
  {
    v9 = [(NSNumber *)v7 isEqual:?];

    if ((v9 & 1) == 0)
    {
      goto LABEL_39;
    }
  }

  v10 = self->_categoryIndex;
  v11 = v10;
  if (v10 == v5[4])
  {
  }

  else
  {
    v12 = [(NSNumber *)v10 isEqual:?];

    if ((v12 & 1) == 0)
    {
      goto LABEL_39;
    }
  }

  v13 = self->_bundleId;
  v14 = v13;
  if (v13 == v5[5])
  {
  }

  else
  {
    v15 = [(NSString *)v13 isEqual:?];

    if ((v15 & 1) == 0)
    {
      goto LABEL_39;
    }
  }

  v16 = self->_bundleIndex;
  v17 = v16;
  if (v16 == v5[6])
  {
  }

  else
  {
    v18 = [(NSNumber *)v16 isEqual:?];

    if ((v18 & 1) == 0)
    {
      goto LABEL_39;
    }
  }

  v19 = self->_searchQueryLength;
  v20 = v19;
  if (v19 == v5[7])
  {
  }

  else
  {
    v21 = [(NSNumber *)v19 isEqual:?];

    if ((v21 & 1) == 0)
    {
      goto LABEL_39;
    }
  }

  v22 = self->_searchTab;
  v23 = v22;
  if (v22 == v5[8])
  {
  }

  else
  {
    v24 = [(NSNumber *)v22 isEqual:?];

    if ((v24 & 1) == 0)
    {
      goto LABEL_39;
    }
  }

  v25 = self->_blendingCacheUUID;
  v26 = v25;
  if (v25 == v5[9])
  {
  }

  else
  {
    v27 = [(NSUUID *)v25 isEqual:?];

    if ((v27 & 1) == 0)
    {
      goto LABEL_39;
    }
  }

  v28 = self->_shownSuggestionIds;
  v29 = v28;
  if (v28 == v5[10])
  {
  }

  else
  {
    v30 = [(NSArray *)v28 isEqual:?];

    if ((v30 & 1) == 0)
    {
      goto LABEL_39;
    }
  }

  v31 = self->_engagedSuggestionIds;
  v32 = v31;
  if (v31 == v5[11])
  {
  }

  else
  {
    v33 = [(NSArray *)v31 isEqual:?];

    if ((v33 & 1) == 0)
    {
LABEL_39:
      v34 = 0;
      goto LABEL_40;
    }
  }

  v36 = self->_metadata;
  v37 = v36;
  if (v36 == v5[12])
  {
    v34 = 1;
  }

  else
  {
    v34 = [(ATXAppDirectoryEventMetadata *)v36 isEqual:?];
  }

LABEL_40:
  return v34;
}

- (void)initWithProto:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = 138412290;
  v6 = v4;
  _os_log_fault_impl(&dword_1BF549000, a2, OS_LOG_TYPE_FAULT, "%@: tried to initialize with a non-ATXPBAppDirectoryEvent proto", &v5, 0xCu);
}

@end