@interface ATXSpotlightEvent
+ (id)actionSuggestionContextMenuDismissOnceEventWithSuggestionId:(id)a3 actionBlendingCacheId:(id)a4 date:(id)a5;
+ (id)actionSuggestionDismissedEventWithSuggestionId:(id)a3 actionBlendingCacheId:(id)a4 date:(id)a5;
+ (id)actionSuggestionTappedEventWithSuggestion:(id)a3 actionBlendingCacheId:(id)a4 currentQuery:(id)a5 date:(id)a6;
+ (id)appSuggestionTappedEventWithSuggestion:(id)a3 appBlendingCacheId:(id)a4 currentQuery:(id)a5 date:(id)a6;
+ (id)documentSuggestionDismissedWithPaths:(id)a3 date:(id)a4;
+ (id)documentSuggestionTappedWithPath:(id)a3 date:(id)a4;
+ (id)eventWithData:(id)a3 dataVersion:(unsigned int)a4;
+ (id)searchResultTappedWithEngagedBundleId:(id)a3 searchedActionType:(unint64_t)a4 date:(id)a5;
+ (id)suggestionsAppearedEventWithAppSuggestionIds:(id)a3 actionSuggestionIds:(id)a4 appBlendingCacheId:(id)a5 actionBlendingCacheId:(id)a6 date:(id)a7;
+ (id)viewAppearedEventWithSFFeedback:(id)a3 date:(id)a4;
+ (id)viewDisappearedEventWithDidSearch:(BOOL)a3 date:(id)a4;
- (ATXSpotlightEvent)initWithAbsoluteDate:(double)a3 eventType:(int)a4 appConsumerSubType:(id)a5 actionConsumerSubType:(id)a6 appBlendingCacheId:(id)a7 actionBlendingCacheId:(id)a8 appSuggestionIds:(id)a9 actionSuggestionIds:(id)a10 documentSuggestionIds:(id)a11 metadata:(id)a12;
- (ATXSpotlightEvent)initWithCoder:(id)a3;
- (ATXSpotlightEvent)initWithDate:(id)a3 eventType:(int)a4 appConsumerSubType:(id)a5 actionConsumerSubType:(id)a6 appBlendingCacheId:(id)a7 actionBlendingCacheId:(id)a8 appSuggestionIds:(id)a9 actionSuggestionIds:(id)a10 documentSuggestionIds:(id)a11 metadata:(id)a12;
- (ATXSpotlightEvent)initWithProto:(id)a3;
- (ATXSpotlightEvent)initWithProtoData:(id)a3;
- (BOOL)checkAndReportDecodingFailureIfNeededFordouble:(double)a3 key:(id)a4 coder:(id)a5 errorDomain:(id)a6 errorCode:(int64_t)a7;
- (BOOL)checkAndReportDecodingFailureIfNeededForid:(id)a3 key:(id)a4 coder:(id)a5 errorDomain:(id)a6 errorCode:(int64_t)a7;
- (BOOL)checkAndReportDecodingFailureIfNeededForint32_t:(int)a3 key:(id)a4 coder:(id)a5 errorDomain:(id)a6 errorCode:(int64_t)a7;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToATXSpotlightEvent:(id)a3;
- (NSDate)date;
- (id)blendingUICacheUpdateUUIDForUICacheConsumerSubType:(unsigned __int8)a3;
- (id)encodeAsProto;
- (id)json;
- (id)jsonDict;
- (id)proto;
- (id)sessionIdentifierForSessionType:(int64_t)a3 uiCacheConsumerSubType:(unsigned __int8)a4;
- (id)sessionProcessingOptionsForSessionType:(int64_t)a3;
- (unint64_t)hash;
- (void)_updateActionUIFeedbackSession:(id)a3;
- (void)_updateAppUIFeedbackSession:(id)a3;
- (void)encodeWithCoder:(id)a3;
- (void)updateUIFeedbackSession:(id)a3 uiCacheConsumerSubType:(unsigned __int8)a4;
@end

@implementation ATXSpotlightEvent

- (ATXSpotlightEvent)initWithDate:(id)a3 eventType:(int)a4 appConsumerSubType:(id)a5 actionConsumerSubType:(id)a6 appBlendingCacheId:(id)a7 actionBlendingCacheId:(id)a8 appSuggestionIds:(id)a9 actionSuggestionIds:(id)a10 documentSuggestionIds:(id)a11 metadata:(id)a12
{
  v18 = a12;
  v19 = a11;
  v20 = a10;
  v21 = a9;
  v22 = a8;
  v23 = a7;
  v24 = a6;
  v25 = a5;
  [a3 timeIntervalSince1970];
  v26 = [(ATXSpotlightEvent *)self initWithAbsoluteDate:a4 eventType:v25 appConsumerSubType:v24 actionConsumerSubType:v23 appBlendingCacheId:v22 actionBlendingCacheId:v21 appSuggestionIds:v20 actionSuggestionIds:v19 documentSuggestionIds:v18 metadata:?];

  return v26;
}

- (ATXSpotlightEvent)initWithAbsoluteDate:(double)a3 eventType:(int)a4 appConsumerSubType:(id)a5 actionConsumerSubType:(id)a6 appBlendingCacheId:(id)a7 actionBlendingCacheId:(id)a8 appSuggestionIds:(id)a9 actionSuggestionIds:(id)a10 documentSuggestionIds:(id)a11 metadata:(id)a12
{
  v39 = a5;
  v38 = a6;
  v40 = a7;
  v20 = a8;
  v21 = a9;
  v22 = a10;
  v23 = a11;
  v24 = a12;
  v41.receiver = self;
  v41.super_class = ATXSpotlightEvent;
  v25 = [(ATXSpotlightEvent *)&v41 init];
  v26 = v25;
  if (v25)
  {
    v25->_absoluteDate = a3;
    v25->_eventType = a4;
    objc_storeStrong(&v25->_appConsumerSubType, a5);
    objc_storeStrong(&v26->_actionConsumerSubType, a6);
    v27 = [v40 copy];
    appBlendingCacheId = v26->_appBlendingCacheId;
    v26->_appBlendingCacheId = v27;

    v29 = [v20 copy];
    actionBlendingCacheId = v26->_actionBlendingCacheId;
    v26->_actionBlendingCacheId = v29;

    v31 = [v21 copy];
    appSuggestionIds = v26->_appSuggestionIds;
    v26->_appSuggestionIds = v31;

    v33 = [v22 copy];
    actionSuggestionIds = v26->_actionSuggestionIds;
    v26->_actionSuggestionIds = v33;

    v35 = [v23 copy];
    documentSuggestionIds = v26->_documentSuggestionIds;
    v26->_documentSuggestionIds = v35;

    objc_storeStrong(&v26->_metadata, a12);
  }

  return v26;
}

- (NSDate)date
{
  v2 = [objc_alloc(MEMORY[0x1E695DF00]) initWithTimeIntervalSince1970:self->_absoluteDate];

  return v2;
}

- (id)sessionProcessingOptionsForSessionType:(int64_t)a3
{
  if (a3)
  {
    return MEMORY[0x1E695E0F0];
  }

  v3 = self->_eventType - 1;
  if (v3 > 7)
  {
    return MEMORY[0x1E695E0F0];
  }

  else
  {
    return qword_1E80C6828[v3];
  }
}

- (id)sessionIdentifierForSessionType:(int64_t)a3 uiCacheConsumerSubType:(unsigned __int8)a4
{
  v4 = @"spotlight-action";
  if (a4 != 21)
  {
    v4 = 0;
  }

  if (a4 == 9)
  {
    return @"spotlight-app";
  }

  else
  {
    return v4;
  }
}

- (id)blendingUICacheUpdateUUIDForUICacheConsumerSubType:(unsigned __int8)a3
{
  if (a3 == 21)
  {
    p_actionBlendingCacheId = &self->_actionBlendingCacheId;
    if (self->_actionBlendingCacheId)
    {
LABEL_4:
      v4 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:*p_actionBlendingCacheId];
      goto LABEL_7;
    }
  }

  else if (a3 == 9)
  {
    p_actionBlendingCacheId = &self->_appBlendingCacheId;
    if (self->_appBlendingCacheId)
    {
      goto LABEL_4;
    }
  }

  v4 = 0;
LABEL_7:

  return v4;
}

- (void)updateUIFeedbackSession:(id)a3 uiCacheConsumerSubType:(unsigned __int8)a4
{
  v4 = a4;
  v6 = a3;
  v7 = v6;
  if (v4 == 21)
  {
    v8 = v6;
    v6 = [(ATXSpotlightEvent *)self _updateActionUIFeedbackSession:v6];
  }

  else
  {
    if (v4 != 9)
    {
      goto LABEL_6;
    }

    v8 = v6;
    v6 = [(ATXSpotlightEvent *)self _updateAppUIFeedbackSession:v6];
  }

  v7 = v8;
LABEL_6:

  MEMORY[0x1EEE66BB8](v6, v7);
}

- (void)_updateAppUIFeedbackSession:(id)a3
{
  v12 = a3;
  eventType = self->_eventType;
  if (eventType <= 4)
  {
    if (eventType <= 2)
    {
      if (eventType == 1)
      {
        v10 = [MEMORY[0x1E698B028] consumerSubtypeForString:self->_appConsumerSubType found:0];
        v5 = [[ATXSpotlightSessionMetadata alloc] initWithAppConsumerSubType:v10 actionConsumerSubType:21];
        [v12 updateConsumerSubTypeIfUnset:v10];
        [v12 updateSessionMetadataIfUnset:v5];
        goto LABEL_17;
      }

      if (eventType != 2)
      {
        goto LABEL_18;
      }

      v5 = [v12 sessionMetadata];
      v6 = [(ATXSpotlightEventMetadata *)self->_metadata didSearchDuringSession];
      -[ATXSpotlightSessionMetadata setDidSearchDuringSession:](v5, "setDidSearchDuringSession:", [v6 BOOLValue]);
      goto LABEL_14;
    }

    if (eventType == 3)
    {
      v11 = [(ATXSpotlightEvent *)self _stringArrayToUUIDArray:self->_appSuggestionIds];
      [v12 updateEngagedUUIDs:0 rejectedUUIDs:0 shownUUIDs:v11];

      v5 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:self->_appBlendingCacheId];
      [v12 updateBlendingUICacheUpdateUUIDIfUnset:v5];
      goto LABEL_17;
    }

    v7 = [(ATXSpotlightEvent *)self _stringArrayToUUIDArray:self->_appSuggestionIds];
    [v12 updateEngagedUUIDs:v7 rejectedUUIDs:0 shownUUIDs:0];

    v5 = [v12 sessionMetadata];
    v8 = [(ATXSpotlightEventMetadata *)self->_metadata engagedAppString];
LABEL_13:
    v6 = v8;
    [(ATXSpotlightSessionMetadata *)v5 setEngagedAppString:v8];
LABEL_14:

    goto LABEL_17;
  }

  if (eventType >= 8)
  {
    if (eventType != 8)
    {
      goto LABEL_18;
    }

    v5 = [v12 sessionMetadata];
    v9 = [(ATXSpotlightEventMetadata *)self->_metadata searchEngagedBundleId];

    if (v9)
    {
      v8 = [(ATXSpotlightEventMetadata *)self->_metadata searchEngagedBundleId];
      goto LABEL_13;
    }
  }

  else
  {
    v5 = [(ATXSpotlightEvent *)self _stringArrayToUUIDArray:self->_appSuggestionIds];
    [v12 updateEngagedUUIDs:0 rejectedUUIDs:v5 shownUUIDs:0];
  }

LABEL_17:

LABEL_18:
}

- (void)_updateActionUIFeedbackSession:(id)a3
{
  v11 = a3;
  eventType = self->_eventType;
  if (eventType <= 4)
  {
    if (eventType > 2)
    {
      if (eventType == 3)
      {
        v10 = [(ATXSpotlightEvent *)self _stringArrayToUUIDArray:self->_actionSuggestionIds];
        [v11 updateEngagedUUIDs:0 rejectedUUIDs:0 shownUUIDs:v10];

        v5 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:self->_actionBlendingCacheId];
        [v11 updateBlendingUICacheUpdateUUIDIfUnset:v5];
        goto LABEL_16;
      }

      v5 = [v11 sessionMetadata];
      v7 = [(ATXSpotlightEventMetadata *)self->_metadata engagedAppString];
      [(ATXSpotlightSessionMetadata *)v5 setEngagedAppString:v7];

      v6 = [(ATXSpotlightEvent *)self _stringArrayToUUIDArray:self->_actionSuggestionIds];
      [v11 updateEngagedUUIDs:v6 rejectedUUIDs:0 shownUUIDs:0];
    }

    else
    {
      if (eventType == 1)
      {
        v9 = [MEMORY[0x1E698B028] consumerSubtypeForString:self->_actionConsumerSubType found:0];
        v5 = [[ATXSpotlightSessionMetadata alloc] initWithAppConsumerSubType:9 actionConsumerSubType:v9];
        [v11 updateConsumerSubTypeIfUnset:v9];
        [v11 updateSessionMetadataIfUnset:v5];
        goto LABEL_16;
      }

      if (eventType != 2)
      {
        goto LABEL_17;
      }

      v5 = [v11 sessionMetadata];
      v6 = [(ATXSpotlightEventMetadata *)self->_metadata didSearchDuringSession];
      -[ATXSpotlightSessionMetadata setDidSearchDuringSession:](v5, "setDidSearchDuringSession:", [v6 BOOLValue]);
    }

    goto LABEL_13;
  }

  if (eventType >= 8)
  {
    if (eventType != 8)
    {
      goto LABEL_17;
    }

    v5 = [v11 sessionMetadata];
    v8 = [(ATXSpotlightEventMetadata *)self->_metadata searchEngagedBundleId];

    if (v8)
    {
      v6 = [(ATXSpotlightEventMetadata *)self->_metadata searchEngagedBundleId];
      [(ATXSpotlightSessionMetadata *)v5 setEngagedAppString:v6];
LABEL_13:
    }
  }

  else
  {
    v5 = [(ATXSpotlightEvent *)self _stringArrayToUUIDArray:self->_actionSuggestionIds];
    [v11 updateEngagedUUIDs:0 rejectedUUIDs:v5 shownUUIDs:0];
  }

LABEL_16:

LABEL_17:
}

+ (id)eventWithData:(id)a3 dataVersion:(unsigned int)a4
{
  if (a4 == 2)
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
  v19 = *MEMORY[0x1E69E9840];
  v14[0] = @"date";
  v3 = MEMORY[0x1E696AD98];
  v4 = [(ATXSpotlightEvent *)self date];
  [v4 timeIntervalSinceReferenceDate];
  v5 = [v3 numberWithDouble:?];
  v15[0] = v5;
  v14[1] = @"eventType";
  v6 = self->_eventType - 1;
  if (v6 >= 8)
  {
    v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", self->_eventType];
  }

  else
  {
    v7 = off_1E80C6868[v6];
  }

  documentSuggestionIds = @"nil";
  v9 = vdupq_n_s64(@"nil");
  v10 = vbslq_s8(vceqzq_s64(*&self->_appBlendingCacheId), v9, *&self->_appBlendingCacheId);
  v11 = vbslq_s8(vceqzq_s64(*&self->_appSuggestionIds), v9, *&self->_appSuggestionIds);
  v15[1] = v7;
  v14[2] = @"appBlendingCacheId";
  v14[3] = @"actionBlendingCacheId";
  v14[4] = @"appSuggestionIds";
  v14[5] = @"actionSuggestionIds";
  v16 = v10;
  v17 = v11;
  v14[6] = @"documentSuggestionIds";
  if (self->_documentSuggestionIds)
  {
    documentSuggestionIds = self->_documentSuggestionIds;
  }

  v18 = documentSuggestionIds;
  v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:v14 count:7];

  return v12;
}

- (id)json
{
  v2 = MEMORY[0x1E696ACB0];
  v3 = [(ATXSpotlightEvent *)self jsonDict];
  v4 = [v2 dataWithJSONObject:v3 options:1 error:0];

  return v4;
}

- (BOOL)checkAndReportDecodingFailureIfNeededForid:(id)a3 key:(id)a4 coder:(id)a5 errorDomain:(id)a6 errorCode:(int64_t)a7
{
  v22[1] = *MEMORY[0x1E69E9840];
  v11 = a4;
  v12 = a5;
  v13 = a6;
  if (!a3)
  {
    v15 = [v12 error];

    if (v15)
    {
      v14 = 1;
      goto LABEL_7;
    }

    if (([v12 containsValueForKey:v11] & 1) == 0)
    {
      v16 = objc_alloc(MEMORY[0x1E696ABC0]);
      v21 = *MEMORY[0x1E696A578];
      v17 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Failed to decode key %@", v11, v21];
      v22[0] = v17;
      v14 = 1;
      v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v22 forKeys:&v21 count:1];
      v19 = [v16 initWithDomain:v13 code:a7 userInfo:v18];

      [v12 failWithError:v19];
      goto LABEL_7;
    }
  }

  v14 = 0;
LABEL_7:

  return v14;
}

- (BOOL)checkAndReportDecodingFailureIfNeededForint32_t:(int)a3 key:(id)a4 coder:(id)a5 errorDomain:(id)a6 errorCode:(int64_t)a7
{
  v22[1] = *MEMORY[0x1E69E9840];
  v11 = a4;
  v12 = a5;
  v13 = a6;
  if (!a3)
  {
    v15 = [v12 error];

    if (v15)
    {
      v14 = 1;
      goto LABEL_7;
    }

    if (([v12 containsValueForKey:v11] & 1) == 0)
    {
      v16 = objc_alloc(MEMORY[0x1E696ABC0]);
      v21 = *MEMORY[0x1E696A578];
      v17 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Failed to decode key %@", v11, v21];
      v22[0] = v17;
      v14 = 1;
      v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v22 forKeys:&v21 count:1];
      v19 = [v16 initWithDomain:v13 code:a7 userInfo:v18];

      [v12 failWithError:v19];
      goto LABEL_7;
    }
  }

  v14 = 0;
LABEL_7:

  return v14;
}

- (BOOL)checkAndReportDecodingFailureIfNeededFordouble:(double)a3 key:(id)a4 coder:(id)a5 errorDomain:(id)a6 errorCode:(int64_t)a7
{
  v22[1] = *MEMORY[0x1E69E9840];
  v11 = a4;
  v12 = a5;
  v13 = a6;
  if (a3 == 0.0)
  {
    v15 = [v12 error];

    if (v15)
    {
      v14 = 1;
      goto LABEL_7;
    }

    if (([v12 containsValueForKey:v11] & 1) == 0)
    {
      v16 = objc_alloc(MEMORY[0x1E696ABC0]);
      v21 = *MEMORY[0x1E696A578];
      v17 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Failed to decode key %@", v11, v21];
      v22[0] = v17;
      v14 = 1;
      v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v22 forKeys:&v21 count:1];
      v19 = [v16 initWithDomain:v13 code:a7 userInfo:v18];

      [v12 failWithError:v19];
      goto LABEL_7;
    }
  }

  v14 = 0;
LABEL_7:

  return v14;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(ATXSpotlightEvent *)self encodeAsProto];
  [v4 encodeObject:v5 forKey:@"protobufData"];
}

- (ATXSpotlightEvent)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"protobufData"];

  v6 = [(ATXSpotlightEvent *)self initWithProtoData:v5];
  return v6;
}

- (ATXSpotlightEvent)initWithProtoData:(id)a3
{
  if (a3)
  {
    v4 = a3;
    v5 = [[ATXPBSpotlightEvent alloc] initWithData:v4];

    self = [(ATXSpotlightEvent *)self initWithProto:v5];
    v6 = self;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (ATXSpotlightEvent)initWithProto:(id)a3
{
  v4 = a3;
  if (!v4)
  {
LABEL_7:
    v14 = 0;
    goto LABEL_8;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v15 = __atxlog_handle_default();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
    {
      [ATXSpotlightEvent initWithProto:];
    }

    goto LABEL_7;
  }

  v5 = v4;
  v6 = [(ATXPBSpotlightEvent *)v5 date];
  v20 = [(ATXPBSpotlightEvent *)v5 eventType];
  v19 = [(ATXPBSpotlightEvent *)v5 appConsumerSubType];
  v7 = [(ATXPBSpotlightEvent *)v5 actionConsumerSubType];
  v8 = [(ATXPBSpotlightEvent *)v5 appBlendingCacheId];
  v18 = [(ATXPBSpotlightEvent *)v5 actionBlendingCacheId];
  v9 = [(ATXPBSpotlightEvent *)v5 appSuggestionIds];
  v17 = [(ATXPBSpotlightEvent *)v5 actionSuggestionIds];
  v10 = [(ATXPBSpotlightEvent *)v5 documentSuggestionIds];
  v11 = [ATXSpotlightEventMetadata alloc];
  v12 = [(ATXPBSpotlightEvent *)v5 metadata];

  v13 = [(ATXSpotlightEventMetadata *)v11 initWithProto:v12];
  self = [(ATXSpotlightEvent *)self initWithAbsoluteDate:v20 eventType:v19 appConsumerSubType:v7 actionConsumerSubType:v8 appBlendingCacheId:v18 actionBlendingCacheId:v9 appSuggestionIds:v6 actionSuggestionIds:v17 documentSuggestionIds:v10 metadata:v13];

  v14 = self;
LABEL_8:

  return v14;
}

- (id)proto
{
  v3 = objc_opt_new();
  [(ATXPBSpotlightEvent *)v3 setDate:?];
  [(ATXPBSpotlightEvent *)v3 setAppConsumerSubType:?];
  [(ATXPBSpotlightEvent *)v3 setActionConsumerSubType:?];
  [(ATXPBSpotlightEvent *)v3 setEventType:?];
  [(ATXPBSpotlightEvent *)v3 setAppBlendingCacheId:?];
  [(ATXPBSpotlightEvent *)v3 setActionBlendingCacheId:?];
  v4 = [(NSArray *)self->_appSuggestionIds copy];
  [(ATXPBSpotlightEvent *)v3 setAppSuggestionIds:v4];

  v5 = [(NSArray *)self->_actionSuggestionIds copy];
  [(ATXPBSpotlightEvent *)v3 setActionSuggestionIds:v5];

  v6 = [(ATXSpotlightEventMetadata *)self->_metadata proto];
  [(ATXPBSpotlightEvent *)v3 setMetadata:v6];

  v7 = [(NSArray *)self->_documentSuggestionIds copy];
  [(ATXPBSpotlightEvent *)v3 setDocumentSuggestionIds:v7];

  return v3;
}

- (id)encodeAsProto
{
  v2 = [(ATXSpotlightEvent *)self proto];
  v3 = [v2 data];

  return v3;
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
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(ATXSpotlightEvent *)self isEqualToATXSpotlightEvent:v5];
  }

  return v6;
}

- (BOOL)isEqualToATXSpotlightEvent:(id)a3
{
  v4 = a3;
  v5 = v4;
  v6 = self->_absoluteDate - v4[1];
  if (v6 < 0.0)
  {
    v6 = -v6;
  }

  if (v6 > 2.22044605e-16)
  {
    goto LABEL_23;
  }

  eventType = self->_eventType;
  if (eventType != [v4 eventType])
  {
    goto LABEL_23;
  }

  v8 = self->_appBlendingCacheId;
  v9 = v8;
  if (v8 == *(v5 + 5))
  {
  }

  else
  {
    v10 = [(NSString *)v8 isEqual:?];

    if ((v10 & 1) == 0)
    {
      goto LABEL_23;
    }
  }

  v11 = self->_actionBlendingCacheId;
  v12 = v11;
  if (v11 == *(v5 + 6))
  {
  }

  else
  {
    v13 = [(NSString *)v11 isEqual:?];

    if ((v13 & 1) == 0)
    {
      goto LABEL_23;
    }
  }

  v14 = self->_appSuggestionIds;
  v15 = v14;
  if (v14 == *(v5 + 7))
  {
  }

  else
  {
    v16 = [(NSArray *)v14 isEqual:?];

    if ((v16 & 1) == 0)
    {
      goto LABEL_23;
    }
  }

  v17 = self->_actionSuggestionIds;
  v18 = v17;
  if (v17 == *(v5 + 8))
  {
  }

  else
  {
    v19 = [(NSArray *)v17 isEqual:?];

    if ((v19 & 1) == 0)
    {
      goto LABEL_23;
    }
  }

  v20 = self->_metadata;
  v21 = v20;
  if (v20 == *(v5 + 10))
  {
  }

  else
  {
    v22 = [(ATXSpotlightEventMetadata *)v20 isEqual:?];

    if (!v22)
    {
LABEL_23:
      v23 = 0;
      goto LABEL_24;
    }
  }

  v25 = self->_documentSuggestionIds;
  v26 = v25;
  if (v25 == *(v5 + 9))
  {
    v23 = 1;
  }

  else
  {
    v23 = [(NSArray *)v25 isEqual:?];
  }

LABEL_24:
  return v23;
}

- (unint64_t)hash
{
  v3 = self->_eventType - self->_absoluteDate + 32 * self->_absoluteDate;
  v4 = [(NSString *)self->_appBlendingCacheId hash]- v3 + 32 * v3;
  v5 = [(NSString *)self->_actionBlendingCacheId hash]- v4 + 32 * v4;
  v6 = [(NSArray *)self->_appSuggestionIds hash]- v5 + 32 * v5;
  v7 = [(NSArray *)self->_actionSuggestionIds hash]- v6 + 32 * v6;
  v8 = [(ATXSpotlightEventMetadata *)self->_metadata hash]- v7 + 32 * v7;
  return [(NSArray *)self->_documentSuggestionIds hash]- v8 + 32 * v8;
}

id __45__ATXSpotlightEvent__stringArrayToUUIDArray___block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x1E696AFB0];
  v3 = a2;
  v4 = [[v2 alloc] initWithUUIDString:v3];

  return v4;
}

+ (id)viewAppearedEventWithSFFeedback:(id)a3 date:(id)a4
{
  v5 = a3;
  v6 = MEMORY[0x1E698B028];
  v7 = v5;
  v8 = a4;
  v9 = [v7 viewAppearEvent];
  v10 = 4;
  if (v9 > 21)
  {
    if (v9 == 22)
    {
      goto LABEL_15;
    }

    if (v9 == 23 || v9 == 29)
    {
      v10 = 7;
      goto LABEL_15;
    }
  }

  else
  {
    if ((v9 - 4) < 2 || v9 == 0)
    {
      goto LABEL_15;
    }

    if (v9 == 2)
    {
      v10 = 8;
      goto LABEL_15;
    }
  }

  v12 = __atxlog_handle_feedback();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
  {
    [ATXSpotlightEvent(Initializers) viewAppearedEventWithSFFeedback:v7 date:?];
  }

  v10 = 4;
LABEL_15:

  v13 = [v6 stringForConsumerSubtype:v10];
  v14 = MEMORY[0x1E698B028];
  v15 = v7;
  v16 = [v15 viewAppearEvent];
  if (v16 > 0x1E)
  {
    goto LABEL_24;
  }

  if (((1 << v16) & 0x40400031) != 0)
  {
LABEL_17:
    v17 = 18;
    goto LABEL_18;
  }

  if (v16 != 2)
  {
    if (v16 == 23)
    {
      v17 = 19;
      goto LABEL_18;
    }

LABEL_24:
    v21 = __atxlog_handle_feedback();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_FAULT))
    {
      [ATXSpotlightEvent(Initializers) viewAppearedEventWithSFFeedback:v15 date:?];
    }

    goto LABEL_17;
  }

  v17 = 20;
LABEL_18:

  v18 = [v14 stringForConsumerSubtype:v17];
  v19 = [[ATXSpotlightEvent alloc] initWithDate:v8 eventType:1 appConsumerSubType:v13 actionConsumerSubType:v18 appBlendingCacheId:0 actionBlendingCacheId:0 appSuggestionIds:0 actionSuggestionIds:0 documentSuggestionIds:0 metadata:0];

  return v19;
}

+ (id)viewDisappearedEventWithDidSearch:(BOOL)a3 date:(id)a4
{
  v4 = a3;
  v5 = a4;
  v6 = objc_opt_new();
  v7 = [MEMORY[0x1E696AD98] numberWithBool:v4];
  [v6 setDidSearchDuringSession:v7];

  v8 = [[ATXSpotlightEvent alloc] initWithDate:v5 eventType:2 appConsumerSubType:0 actionConsumerSubType:0 appBlendingCacheId:0 actionBlendingCacheId:0 appSuggestionIds:0 actionSuggestionIds:0 documentSuggestionIds:0 metadata:v6];

  return v8;
}

+ (id)suggestionsAppearedEventWithAppSuggestionIds:(id)a3 actionSuggestionIds:(id)a4 appBlendingCacheId:(id)a5 actionBlendingCacheId:(id)a6 date:(id)a7
{
  v11 = a7;
  v12 = a6;
  v13 = a5;
  v14 = a4;
  v15 = a3;
  v16 = [[ATXSpotlightEvent alloc] initWithDate:v11 eventType:3 appConsumerSubType:0 actionConsumerSubType:0 appBlendingCacheId:v13 actionBlendingCacheId:v12 appSuggestionIds:v15 actionSuggestionIds:v14 documentSuggestionIds:0 metadata:0];

  return v16;
}

+ (id)appSuggestionTappedEventWithSuggestion:(id)a3 appBlendingCacheId:(id)a4 currentQuery:(id)a5 date:(id)a6
{
  v21[1] = *MEMORY[0x1E69E9840];
  v9 = a6;
  v10 = a5;
  v11 = a4;
  v12 = a3;
  v13 = objc_opt_new();
  [v13 setQueryAtEngagement:v10];

  v14 = [v12 bundleIdExecutableObject];
  [v13 setEngagedAppString:v14];
  v15 = [ATXSpotlightEvent alloc];
  v16 = [v12 uuid];

  v17 = [v16 UUIDString];
  v21[0] = v17;
  v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:v21 count:1];
  v19 = [(ATXSpotlightEvent *)v15 initWithDate:v9 eventType:4 appConsumerSubType:0 actionConsumerSubType:0 appBlendingCacheId:v11 actionBlendingCacheId:0 appSuggestionIds:v18 actionSuggestionIds:0 documentSuggestionIds:0 metadata:v13];

  return v19;
}

+ (id)actionSuggestionTappedEventWithSuggestion:(id)a3 actionBlendingCacheId:(id)a4 currentQuery:(id)a5 date:(id)a6
{
  v22[1] = *MEMORY[0x1E69E9840];
  v9 = a6;
  v10 = a5;
  v11 = a4;
  v12 = a3;
  v13 = objc_opt_new();
  [v13 setQueryAtEngagement:v10];

  v14 = [v12 atxActionExecutableObject];
  v15 = [v14 bundleId];
  [v13 setEngagedAppString:v15];

  v16 = [ATXSpotlightEvent alloc];
  v17 = [v12 uuid];

  v18 = [v17 UUIDString];
  v22[0] = v18;
  v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:v22 count:1];
  v20 = [(ATXSpotlightEvent *)v16 initWithDate:v9 eventType:4 appConsumerSubType:0 actionConsumerSubType:0 appBlendingCacheId:0 actionBlendingCacheId:v11 appSuggestionIds:0 actionSuggestionIds:v19 documentSuggestionIds:0 metadata:v13];

  return v20;
}

+ (id)actionSuggestionContextMenuDismissOnceEventWithSuggestionId:(id)a3 actionBlendingCacheId:(id)a4 date:(id)a5
{
  v14[1] = *MEMORY[0x1E69E9840];
  v7 = a5;
  v8 = a4;
  v9 = a3;
  v10 = [ATXSpotlightEvent alloc];
  v14[0] = v9;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:1];

  v12 = [(ATXSpotlightEvent *)v10 initWithDate:v7 eventType:6 appConsumerSubType:0 actionConsumerSubType:0 appBlendingCacheId:0 actionBlendingCacheId:v8 appSuggestionIds:0 actionSuggestionIds:v11 documentSuggestionIds:0 metadata:0];

  return v12;
}

+ (id)actionSuggestionDismissedEventWithSuggestionId:(id)a3 actionBlendingCacheId:(id)a4 date:(id)a5
{
  v14[1] = *MEMORY[0x1E69E9840];
  v7 = a5;
  v8 = a4;
  v9 = a3;
  v10 = [ATXSpotlightEvent alloc];
  v14[0] = v9;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:1];

  v12 = [(ATXSpotlightEvent *)v10 initWithDate:v7 eventType:5 appConsumerSubType:0 actionConsumerSubType:0 appBlendingCacheId:0 actionBlendingCacheId:v8 appSuggestionIds:0 actionSuggestionIds:v11 documentSuggestionIds:0 metadata:0];

  return v12;
}

+ (id)searchResultTappedWithEngagedBundleId:(id)a3 searchedActionType:(unint64_t)a4 date:(id)a5
{
  v7 = a5;
  v8 = a3;
  v9 = objc_opt_new();
  [v9 setSearchEngagedBundleId:v8];

  v10 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a4];
  [v9 setSearchEngagedActionType:v10];

  v11 = [[ATXSpotlightEvent alloc] initWithDate:v7 eventType:8 appConsumerSubType:0 actionConsumerSubType:0 appBlendingCacheId:0 actionBlendingCacheId:0 appSuggestionIds:0 actionSuggestionIds:0 documentSuggestionIds:0 metadata:v9];

  return v11;
}

+ (id)documentSuggestionTappedWithPath:(id)a3 date:(id)a4
{
  v11[1] = *MEMORY[0x1E69E9840];
  v5 = a4;
  v6 = a3;
  v7 = [ATXSpotlightEvent alloc];
  v11[0] = v6;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:1];

  v9 = [(ATXSpotlightEvent *)v7 initWithDate:v5 eventType:4 appConsumerSubType:0 actionConsumerSubType:0 appBlendingCacheId:0 actionBlendingCacheId:0 appSuggestionIds:0 actionSuggestionIds:0 documentSuggestionIds:v8 metadata:0];

  return v9;
}

+ (id)documentSuggestionDismissedWithPaths:(id)a3 date:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [[ATXSpotlightEvent alloc] initWithDate:v5 eventType:5 appConsumerSubType:0 actionConsumerSubType:0 appBlendingCacheId:0 actionBlendingCacheId:0 appSuggestionIds:0 actionSuggestionIds:0 documentSuggestionIds:v6 metadata:0];

  return v7;
}

- (void)initWithProto:.cold.1()
{
  v0 = objc_opt_class();
  v1 = NSStringFromClass(v0);
  OUTLINED_FUNCTION_0(&dword_1BF549000, v2, v3, "%@: tried to initialize with a non-ATXPBSpotlightEvent proto", v4, v5, v6, v7, 2u);
}

@end