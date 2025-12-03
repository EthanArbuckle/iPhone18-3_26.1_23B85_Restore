@interface ATXSpotlightEvent
+ (id)actionSuggestionContextMenuDismissOnceEventWithSuggestionId:(id)id actionBlendingCacheId:(id)cacheId date:(id)date;
+ (id)actionSuggestionDismissedEventWithSuggestionId:(id)id actionBlendingCacheId:(id)cacheId date:(id)date;
+ (id)actionSuggestionTappedEventWithSuggestion:(id)suggestion actionBlendingCacheId:(id)id currentQuery:(id)query date:(id)date;
+ (id)appSuggestionTappedEventWithSuggestion:(id)suggestion appBlendingCacheId:(id)id currentQuery:(id)query date:(id)date;
+ (id)documentSuggestionDismissedWithPaths:(id)paths date:(id)date;
+ (id)documentSuggestionTappedWithPath:(id)path date:(id)date;
+ (id)eventWithData:(id)data dataVersion:(unsigned int)version;
+ (id)searchResultTappedWithEngagedBundleId:(id)id searchedActionType:(unint64_t)type date:(id)date;
+ (id)suggestionsAppearedEventWithAppSuggestionIds:(id)ids actionSuggestionIds:(id)suggestionIds appBlendingCacheId:(id)id actionBlendingCacheId:(id)cacheId date:(id)date;
+ (id)viewAppearedEventWithSFFeedback:(id)feedback date:(id)date;
+ (id)viewDisappearedEventWithDidSearch:(BOOL)search date:(id)date;
- (ATXSpotlightEvent)initWithAbsoluteDate:(double)date eventType:(int)type appConsumerSubType:(id)subType actionConsumerSubType:(id)consumerSubType appBlendingCacheId:(id)id actionBlendingCacheId:(id)cacheId appSuggestionIds:(id)ids actionSuggestionIds:(id)self0 documentSuggestionIds:(id)self1 metadata:(id)self2;
- (ATXSpotlightEvent)initWithCoder:(id)coder;
- (ATXSpotlightEvent)initWithDate:(id)date eventType:(int)type appConsumerSubType:(id)subType actionConsumerSubType:(id)consumerSubType appBlendingCacheId:(id)id actionBlendingCacheId:(id)cacheId appSuggestionIds:(id)ids actionSuggestionIds:(id)self0 documentSuggestionIds:(id)self1 metadata:(id)self2;
- (ATXSpotlightEvent)initWithProto:(id)proto;
- (ATXSpotlightEvent)initWithProtoData:(id)data;
- (BOOL)checkAndReportDecodingFailureIfNeededFordouble:(double)fordouble key:(id)key coder:(id)coder errorDomain:(id)domain errorCode:(int64_t)code;
- (BOOL)checkAndReportDecodingFailureIfNeededForid:(id)forid key:(id)key coder:(id)coder errorDomain:(id)domain errorCode:(int64_t)code;
- (BOOL)checkAndReportDecodingFailureIfNeededForint32_t:(int)forint32_t key:(id)key coder:(id)coder errorDomain:(id)domain errorCode:(int64_t)code;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToATXSpotlightEvent:(id)event;
- (NSDate)date;
- (id)blendingUICacheUpdateUUIDForUICacheConsumerSubType:(unsigned __int8)type;
- (id)encodeAsProto;
- (id)json;
- (id)jsonDict;
- (id)proto;
- (id)sessionIdentifierForSessionType:(int64_t)type uiCacheConsumerSubType:(unsigned __int8)subType;
- (id)sessionProcessingOptionsForSessionType:(int64_t)type;
- (unint64_t)hash;
- (void)_updateActionUIFeedbackSession:(id)session;
- (void)_updateAppUIFeedbackSession:(id)session;
- (void)encodeWithCoder:(id)coder;
- (void)updateUIFeedbackSession:(id)session uiCacheConsumerSubType:(unsigned __int8)type;
@end

@implementation ATXSpotlightEvent

- (ATXSpotlightEvent)initWithDate:(id)date eventType:(int)type appConsumerSubType:(id)subType actionConsumerSubType:(id)consumerSubType appBlendingCacheId:(id)id actionBlendingCacheId:(id)cacheId appSuggestionIds:(id)ids actionSuggestionIds:(id)self0 documentSuggestionIds:(id)self1 metadata:(id)self2
{
  metadataCopy = metadata;
  documentSuggestionIdsCopy = documentSuggestionIds;
  suggestionIdsCopy = suggestionIds;
  idsCopy = ids;
  cacheIdCopy = cacheId;
  idCopy = id;
  consumerSubTypeCopy = consumerSubType;
  subTypeCopy = subType;
  [date timeIntervalSince1970];
  v26 = [(ATXSpotlightEvent *)self initWithAbsoluteDate:type eventType:subTypeCopy appConsumerSubType:consumerSubTypeCopy actionConsumerSubType:idCopy appBlendingCacheId:cacheIdCopy actionBlendingCacheId:idsCopy appSuggestionIds:suggestionIdsCopy actionSuggestionIds:documentSuggestionIdsCopy documentSuggestionIds:metadataCopy metadata:?];

  return v26;
}

- (ATXSpotlightEvent)initWithAbsoluteDate:(double)date eventType:(int)type appConsumerSubType:(id)subType actionConsumerSubType:(id)consumerSubType appBlendingCacheId:(id)id actionBlendingCacheId:(id)cacheId appSuggestionIds:(id)ids actionSuggestionIds:(id)self0 documentSuggestionIds:(id)self1 metadata:(id)self2
{
  subTypeCopy = subType;
  consumerSubTypeCopy = consumerSubType;
  idCopy = id;
  cacheIdCopy = cacheId;
  idsCopy = ids;
  suggestionIdsCopy = suggestionIds;
  documentSuggestionIdsCopy = documentSuggestionIds;
  metadataCopy = metadata;
  v41.receiver = self;
  v41.super_class = ATXSpotlightEvent;
  v25 = [(ATXSpotlightEvent *)&v41 init];
  v26 = v25;
  if (v25)
  {
    v25->_absoluteDate = date;
    v25->_eventType = type;
    objc_storeStrong(&v25->_appConsumerSubType, subType);
    objc_storeStrong(&v26->_actionConsumerSubType, consumerSubType);
    v27 = [idCopy copy];
    appBlendingCacheId = v26->_appBlendingCacheId;
    v26->_appBlendingCacheId = v27;

    v29 = [cacheIdCopy copy];
    actionBlendingCacheId = v26->_actionBlendingCacheId;
    v26->_actionBlendingCacheId = v29;

    v31 = [idsCopy copy];
    appSuggestionIds = v26->_appSuggestionIds;
    v26->_appSuggestionIds = v31;

    v33 = [suggestionIdsCopy copy];
    actionSuggestionIds = v26->_actionSuggestionIds;
    v26->_actionSuggestionIds = v33;

    v35 = [documentSuggestionIdsCopy copy];
    documentSuggestionIds = v26->_documentSuggestionIds;
    v26->_documentSuggestionIds = v35;

    objc_storeStrong(&v26->_metadata, metadata);
  }

  return v26;
}

- (NSDate)date
{
  v2 = [objc_alloc(MEMORY[0x1E695DF00]) initWithTimeIntervalSince1970:self->_absoluteDate];

  return v2;
}

- (id)sessionProcessingOptionsForSessionType:(int64_t)type
{
  if (type)
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

- (id)sessionIdentifierForSessionType:(int64_t)type uiCacheConsumerSubType:(unsigned __int8)subType
{
  v4 = @"spotlight-action";
  if (subType != 21)
  {
    v4 = 0;
  }

  if (subType == 9)
  {
    return @"spotlight-app";
  }

  else
  {
    return v4;
  }
}

- (id)blendingUICacheUpdateUUIDForUICacheConsumerSubType:(unsigned __int8)type
{
  if (type == 21)
  {
    p_actionBlendingCacheId = &self->_actionBlendingCacheId;
    if (self->_actionBlendingCacheId)
    {
LABEL_4:
      v4 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:*p_actionBlendingCacheId];
      goto LABEL_7;
    }
  }

  else if (type == 9)
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

- (void)updateUIFeedbackSession:(id)session uiCacheConsumerSubType:(unsigned __int8)type
{
  typeCopy = type;
  sessionCopy = session;
  v7 = sessionCopy;
  if (typeCopy == 21)
  {
    v8 = sessionCopy;
    sessionCopy = [(ATXSpotlightEvent *)self _updateActionUIFeedbackSession:sessionCopy];
  }

  else
  {
    if (typeCopy != 9)
    {
      goto LABEL_6;
    }

    v8 = sessionCopy;
    sessionCopy = [(ATXSpotlightEvent *)self _updateAppUIFeedbackSession:sessionCopy];
  }

  v7 = v8;
LABEL_6:

  MEMORY[0x1EEE66BB8](sessionCopy, v7);
}

- (void)_updateAppUIFeedbackSession:(id)session
{
  sessionCopy = session;
  eventType = self->_eventType;
  if (eventType <= 4)
  {
    if (eventType <= 2)
    {
      if (eventType == 1)
      {
        v10 = [MEMORY[0x1E698B028] consumerSubtypeForString:self->_appConsumerSubType found:0];
        sessionMetadata = [[ATXSpotlightSessionMetadata alloc] initWithAppConsumerSubType:v10 actionConsumerSubType:21];
        [sessionCopy updateConsumerSubTypeIfUnset:v10];
        [sessionCopy updateSessionMetadataIfUnset:sessionMetadata];
        goto LABEL_17;
      }

      if (eventType != 2)
      {
        goto LABEL_18;
      }

      sessionMetadata = [sessionCopy sessionMetadata];
      didSearchDuringSession = [(ATXSpotlightEventMetadata *)self->_metadata didSearchDuringSession];
      -[ATXSpotlightSessionMetadata setDidSearchDuringSession:](sessionMetadata, "setDidSearchDuringSession:", [didSearchDuringSession BOOLValue]);
      goto LABEL_14;
    }

    if (eventType == 3)
    {
      v11 = [(ATXSpotlightEvent *)self _stringArrayToUUIDArray:self->_appSuggestionIds];
      [sessionCopy updateEngagedUUIDs:0 rejectedUUIDs:0 shownUUIDs:v11];

      sessionMetadata = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:self->_appBlendingCacheId];
      [sessionCopy updateBlendingUICacheUpdateUUIDIfUnset:sessionMetadata];
      goto LABEL_17;
    }

    v7 = [(ATXSpotlightEvent *)self _stringArrayToUUIDArray:self->_appSuggestionIds];
    [sessionCopy updateEngagedUUIDs:v7 rejectedUUIDs:0 shownUUIDs:0];

    sessionMetadata = [sessionCopy sessionMetadata];
    engagedAppString = [(ATXSpotlightEventMetadata *)self->_metadata engagedAppString];
LABEL_13:
    didSearchDuringSession = engagedAppString;
    [(ATXSpotlightSessionMetadata *)sessionMetadata setEngagedAppString:engagedAppString];
LABEL_14:

    goto LABEL_17;
  }

  if (eventType >= 8)
  {
    if (eventType != 8)
    {
      goto LABEL_18;
    }

    sessionMetadata = [sessionCopy sessionMetadata];
    searchEngagedBundleId = [(ATXSpotlightEventMetadata *)self->_metadata searchEngagedBundleId];

    if (searchEngagedBundleId)
    {
      engagedAppString = [(ATXSpotlightEventMetadata *)self->_metadata searchEngagedBundleId];
      goto LABEL_13;
    }
  }

  else
  {
    sessionMetadata = [(ATXSpotlightEvent *)self _stringArrayToUUIDArray:self->_appSuggestionIds];
    [sessionCopy updateEngagedUUIDs:0 rejectedUUIDs:sessionMetadata shownUUIDs:0];
  }

LABEL_17:

LABEL_18:
}

- (void)_updateActionUIFeedbackSession:(id)session
{
  sessionCopy = session;
  eventType = self->_eventType;
  if (eventType <= 4)
  {
    if (eventType > 2)
    {
      if (eventType == 3)
      {
        v10 = [(ATXSpotlightEvent *)self _stringArrayToUUIDArray:self->_actionSuggestionIds];
        [sessionCopy updateEngagedUUIDs:0 rejectedUUIDs:0 shownUUIDs:v10];

        sessionMetadata = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:self->_actionBlendingCacheId];
        [sessionCopy updateBlendingUICacheUpdateUUIDIfUnset:sessionMetadata];
        goto LABEL_16;
      }

      sessionMetadata = [sessionCopy sessionMetadata];
      engagedAppString = [(ATXSpotlightEventMetadata *)self->_metadata engagedAppString];
      [(ATXSpotlightSessionMetadata *)sessionMetadata setEngagedAppString:engagedAppString];

      didSearchDuringSession = [(ATXSpotlightEvent *)self _stringArrayToUUIDArray:self->_actionSuggestionIds];
      [sessionCopy updateEngagedUUIDs:didSearchDuringSession rejectedUUIDs:0 shownUUIDs:0];
    }

    else
    {
      if (eventType == 1)
      {
        v9 = [MEMORY[0x1E698B028] consumerSubtypeForString:self->_actionConsumerSubType found:0];
        sessionMetadata = [[ATXSpotlightSessionMetadata alloc] initWithAppConsumerSubType:9 actionConsumerSubType:v9];
        [sessionCopy updateConsumerSubTypeIfUnset:v9];
        [sessionCopy updateSessionMetadataIfUnset:sessionMetadata];
        goto LABEL_16;
      }

      if (eventType != 2)
      {
        goto LABEL_17;
      }

      sessionMetadata = [sessionCopy sessionMetadata];
      didSearchDuringSession = [(ATXSpotlightEventMetadata *)self->_metadata didSearchDuringSession];
      -[ATXSpotlightSessionMetadata setDidSearchDuringSession:](sessionMetadata, "setDidSearchDuringSession:", [didSearchDuringSession BOOLValue]);
    }

    goto LABEL_13;
  }

  if (eventType >= 8)
  {
    if (eventType != 8)
    {
      goto LABEL_17;
    }

    sessionMetadata = [sessionCopy sessionMetadata];
    searchEngagedBundleId = [(ATXSpotlightEventMetadata *)self->_metadata searchEngagedBundleId];

    if (searchEngagedBundleId)
    {
      didSearchDuringSession = [(ATXSpotlightEventMetadata *)self->_metadata searchEngagedBundleId];
      [(ATXSpotlightSessionMetadata *)sessionMetadata setEngagedAppString:didSearchDuringSession];
LABEL_13:
    }
  }

  else
  {
    sessionMetadata = [(ATXSpotlightEvent *)self _stringArrayToUUIDArray:self->_actionSuggestionIds];
    [sessionCopy updateEngagedUUIDs:0 rejectedUUIDs:sessionMetadata shownUUIDs:0];
  }

LABEL_16:

LABEL_17:
}

+ (id)eventWithData:(id)data dataVersion:(unsigned int)version
{
  if (version == 2)
  {
    dataCopy = data;
    v6 = [[self alloc] initWithProtoData:dataCopy];
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
  date = [(ATXSpotlightEvent *)self date];
  [date timeIntervalSinceReferenceDate];
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
  jsonDict = [(ATXSpotlightEvent *)self jsonDict];
  v4 = [v2 dataWithJSONObject:jsonDict options:1 error:0];

  return v4;
}

- (BOOL)checkAndReportDecodingFailureIfNeededForid:(id)forid key:(id)key coder:(id)coder errorDomain:(id)domain errorCode:(int64_t)code
{
  v22[1] = *MEMORY[0x1E69E9840];
  keyCopy = key;
  coderCopy = coder;
  domainCopy = domain;
  if (!forid)
  {
    error = [coderCopy error];

    if (error)
    {
      v14 = 1;
      goto LABEL_7;
    }

    if (([coderCopy containsValueForKey:keyCopy] & 1) == 0)
    {
      v16 = objc_alloc(MEMORY[0x1E696ABC0]);
      v21 = *MEMORY[0x1E696A578];
      v17 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Failed to decode key %@", keyCopy, v21];
      v22[0] = v17;
      v14 = 1;
      v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v22 forKeys:&v21 count:1];
      v19 = [v16 initWithDomain:domainCopy code:code userInfo:v18];

      [coderCopy failWithError:v19];
      goto LABEL_7;
    }
  }

  v14 = 0;
LABEL_7:

  return v14;
}

- (BOOL)checkAndReportDecodingFailureIfNeededForint32_t:(int)forint32_t key:(id)key coder:(id)coder errorDomain:(id)domain errorCode:(int64_t)code
{
  v22[1] = *MEMORY[0x1E69E9840];
  keyCopy = key;
  coderCopy = coder;
  domainCopy = domain;
  if (!forint32_t)
  {
    error = [coderCopy error];

    if (error)
    {
      v14 = 1;
      goto LABEL_7;
    }

    if (([coderCopy containsValueForKey:keyCopy] & 1) == 0)
    {
      v16 = objc_alloc(MEMORY[0x1E696ABC0]);
      v21 = *MEMORY[0x1E696A578];
      v17 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Failed to decode key %@", keyCopy, v21];
      v22[0] = v17;
      v14 = 1;
      v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v22 forKeys:&v21 count:1];
      v19 = [v16 initWithDomain:domainCopy code:code userInfo:v18];

      [coderCopy failWithError:v19];
      goto LABEL_7;
    }
  }

  v14 = 0;
LABEL_7:

  return v14;
}

- (BOOL)checkAndReportDecodingFailureIfNeededFordouble:(double)fordouble key:(id)key coder:(id)coder errorDomain:(id)domain errorCode:(int64_t)code
{
  v22[1] = *MEMORY[0x1E69E9840];
  keyCopy = key;
  coderCopy = coder;
  domainCopy = domain;
  if (fordouble == 0.0)
  {
    error = [coderCopy error];

    if (error)
    {
      v14 = 1;
      goto LABEL_7;
    }

    if (([coderCopy containsValueForKey:keyCopy] & 1) == 0)
    {
      v16 = objc_alloc(MEMORY[0x1E696ABC0]);
      v21 = *MEMORY[0x1E696A578];
      v17 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Failed to decode key %@", keyCopy, v21];
      v22[0] = v17;
      v14 = 1;
      v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v22 forKeys:&v21 count:1];
      v19 = [v16 initWithDomain:domainCopy code:code userInfo:v18];

      [coderCopy failWithError:v19];
      goto LABEL_7;
    }
  }

  v14 = 0;
LABEL_7:

  return v14;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  encodeAsProto = [(ATXSpotlightEvent *)self encodeAsProto];
  [coderCopy encodeObject:encodeAsProto forKey:@"protobufData"];
}

- (ATXSpotlightEvent)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"protobufData"];

  v6 = [(ATXSpotlightEvent *)self initWithProtoData:v5];
  return v6;
}

- (ATXSpotlightEvent)initWithProtoData:(id)data
{
  if (data)
  {
    dataCopy = data;
    v5 = [[ATXPBSpotlightEvent alloc] initWithData:dataCopy];

    self = [(ATXSpotlightEvent *)self initWithProto:v5];
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (ATXSpotlightEvent)initWithProto:(id)proto
{
  protoCopy = proto;
  if (!protoCopy)
  {
LABEL_7:
    selfCopy = 0;
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

  v5 = protoCopy;
  date = [(ATXPBSpotlightEvent *)v5 date];
  eventType = [(ATXPBSpotlightEvent *)v5 eventType];
  appConsumerSubType = [(ATXPBSpotlightEvent *)v5 appConsumerSubType];
  actionConsumerSubType = [(ATXPBSpotlightEvent *)v5 actionConsumerSubType];
  appBlendingCacheId = [(ATXPBSpotlightEvent *)v5 appBlendingCacheId];
  actionBlendingCacheId = [(ATXPBSpotlightEvent *)v5 actionBlendingCacheId];
  appSuggestionIds = [(ATXPBSpotlightEvent *)v5 appSuggestionIds];
  actionSuggestionIds = [(ATXPBSpotlightEvent *)v5 actionSuggestionIds];
  documentSuggestionIds = [(ATXPBSpotlightEvent *)v5 documentSuggestionIds];
  v11 = [ATXSpotlightEventMetadata alloc];
  metadata = [(ATXPBSpotlightEvent *)v5 metadata];

  v13 = [(ATXSpotlightEventMetadata *)v11 initWithProto:metadata];
  self = [(ATXSpotlightEvent *)self initWithAbsoluteDate:eventType eventType:appConsumerSubType appConsumerSubType:actionConsumerSubType actionConsumerSubType:appBlendingCacheId appBlendingCacheId:actionBlendingCacheId actionBlendingCacheId:appSuggestionIds appSuggestionIds:date actionSuggestionIds:actionSuggestionIds documentSuggestionIds:documentSuggestionIds metadata:v13];

  selfCopy = self;
LABEL_8:

  return selfCopy;
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

  proto = [(ATXSpotlightEventMetadata *)self->_metadata proto];
  [(ATXPBSpotlightEvent *)v3 setMetadata:proto];

  v7 = [(NSArray *)self->_documentSuggestionIds copy];
  [(ATXPBSpotlightEvent *)v3 setDocumentSuggestionIds:v7];

  return v3;
}

- (id)encodeAsProto
{
  proto = [(ATXSpotlightEvent *)self proto];
  data = [proto data];

  return data;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(ATXSpotlightEvent *)self isEqualToATXSpotlightEvent:v5];
  }

  return v6;
}

- (BOOL)isEqualToATXSpotlightEvent:(id)event
{
  eventCopy = event;
  v5 = eventCopy;
  v6 = self->_absoluteDate - eventCopy[1];
  if (v6 < 0.0)
  {
    v6 = -v6;
  }

  if (v6 > 2.22044605e-16)
  {
    goto LABEL_23;
  }

  eventType = self->_eventType;
  if (eventType != [eventCopy eventType])
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

+ (id)viewAppearedEventWithSFFeedback:(id)feedback date:(id)date
{
  feedbackCopy = feedback;
  v6 = MEMORY[0x1E698B028];
  v7 = feedbackCopy;
  dateCopy = date;
  viewAppearEvent = [v7 viewAppearEvent];
  v10 = 4;
  if (viewAppearEvent > 21)
  {
    if (viewAppearEvent == 22)
    {
      goto LABEL_15;
    }

    if (viewAppearEvent == 23 || viewAppearEvent == 29)
    {
      v10 = 7;
      goto LABEL_15;
    }
  }

  else
  {
    if ((viewAppearEvent - 4) < 2 || viewAppearEvent == 0)
    {
      goto LABEL_15;
    }

    if (viewAppearEvent == 2)
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
  viewAppearEvent2 = [v15 viewAppearEvent];
  if (viewAppearEvent2 > 0x1E)
  {
    goto LABEL_24;
  }

  if (((1 << viewAppearEvent2) & 0x40400031) != 0)
  {
LABEL_17:
    v17 = 18;
    goto LABEL_18;
  }

  if (viewAppearEvent2 != 2)
  {
    if (viewAppearEvent2 == 23)
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
  v19 = [[ATXSpotlightEvent alloc] initWithDate:dateCopy eventType:1 appConsumerSubType:v13 actionConsumerSubType:v18 appBlendingCacheId:0 actionBlendingCacheId:0 appSuggestionIds:0 actionSuggestionIds:0 documentSuggestionIds:0 metadata:0];

  return v19;
}

+ (id)viewDisappearedEventWithDidSearch:(BOOL)search date:(id)date
{
  searchCopy = search;
  dateCopy = date;
  v6 = objc_opt_new();
  v7 = [MEMORY[0x1E696AD98] numberWithBool:searchCopy];
  [v6 setDidSearchDuringSession:v7];

  v8 = [[ATXSpotlightEvent alloc] initWithDate:dateCopy eventType:2 appConsumerSubType:0 actionConsumerSubType:0 appBlendingCacheId:0 actionBlendingCacheId:0 appSuggestionIds:0 actionSuggestionIds:0 documentSuggestionIds:0 metadata:v6];

  return v8;
}

+ (id)suggestionsAppearedEventWithAppSuggestionIds:(id)ids actionSuggestionIds:(id)suggestionIds appBlendingCacheId:(id)id actionBlendingCacheId:(id)cacheId date:(id)date
{
  dateCopy = date;
  cacheIdCopy = cacheId;
  idCopy = id;
  suggestionIdsCopy = suggestionIds;
  idsCopy = ids;
  v16 = [[ATXSpotlightEvent alloc] initWithDate:dateCopy eventType:3 appConsumerSubType:0 actionConsumerSubType:0 appBlendingCacheId:idCopy actionBlendingCacheId:cacheIdCopy appSuggestionIds:idsCopy actionSuggestionIds:suggestionIdsCopy documentSuggestionIds:0 metadata:0];

  return v16;
}

+ (id)appSuggestionTappedEventWithSuggestion:(id)suggestion appBlendingCacheId:(id)id currentQuery:(id)query date:(id)date
{
  v21[1] = *MEMORY[0x1E69E9840];
  dateCopy = date;
  queryCopy = query;
  idCopy = id;
  suggestionCopy = suggestion;
  v13 = objc_opt_new();
  [v13 setQueryAtEngagement:queryCopy];

  bundleIdExecutableObject = [suggestionCopy bundleIdExecutableObject];
  [v13 setEngagedAppString:bundleIdExecutableObject];
  v15 = [ATXSpotlightEvent alloc];
  uuid = [suggestionCopy uuid];

  uUIDString = [uuid UUIDString];
  v21[0] = uUIDString;
  v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:v21 count:1];
  v19 = [(ATXSpotlightEvent *)v15 initWithDate:dateCopy eventType:4 appConsumerSubType:0 actionConsumerSubType:0 appBlendingCacheId:idCopy actionBlendingCacheId:0 appSuggestionIds:v18 actionSuggestionIds:0 documentSuggestionIds:0 metadata:v13];

  return v19;
}

+ (id)actionSuggestionTappedEventWithSuggestion:(id)suggestion actionBlendingCacheId:(id)id currentQuery:(id)query date:(id)date
{
  v22[1] = *MEMORY[0x1E69E9840];
  dateCopy = date;
  queryCopy = query;
  idCopy = id;
  suggestionCopy = suggestion;
  v13 = objc_opt_new();
  [v13 setQueryAtEngagement:queryCopy];

  atxActionExecutableObject = [suggestionCopy atxActionExecutableObject];
  bundleId = [atxActionExecutableObject bundleId];
  [v13 setEngagedAppString:bundleId];

  v16 = [ATXSpotlightEvent alloc];
  uuid = [suggestionCopy uuid];

  uUIDString = [uuid UUIDString];
  v22[0] = uUIDString;
  v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:v22 count:1];
  v20 = [(ATXSpotlightEvent *)v16 initWithDate:dateCopy eventType:4 appConsumerSubType:0 actionConsumerSubType:0 appBlendingCacheId:0 actionBlendingCacheId:idCopy appSuggestionIds:0 actionSuggestionIds:v19 documentSuggestionIds:0 metadata:v13];

  return v20;
}

+ (id)actionSuggestionContextMenuDismissOnceEventWithSuggestionId:(id)id actionBlendingCacheId:(id)cacheId date:(id)date
{
  v14[1] = *MEMORY[0x1E69E9840];
  dateCopy = date;
  cacheIdCopy = cacheId;
  idCopy = id;
  v10 = [ATXSpotlightEvent alloc];
  v14[0] = idCopy;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:1];

  v12 = [(ATXSpotlightEvent *)v10 initWithDate:dateCopy eventType:6 appConsumerSubType:0 actionConsumerSubType:0 appBlendingCacheId:0 actionBlendingCacheId:cacheIdCopy appSuggestionIds:0 actionSuggestionIds:v11 documentSuggestionIds:0 metadata:0];

  return v12;
}

+ (id)actionSuggestionDismissedEventWithSuggestionId:(id)id actionBlendingCacheId:(id)cacheId date:(id)date
{
  v14[1] = *MEMORY[0x1E69E9840];
  dateCopy = date;
  cacheIdCopy = cacheId;
  idCopy = id;
  v10 = [ATXSpotlightEvent alloc];
  v14[0] = idCopy;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:1];

  v12 = [(ATXSpotlightEvent *)v10 initWithDate:dateCopy eventType:5 appConsumerSubType:0 actionConsumerSubType:0 appBlendingCacheId:0 actionBlendingCacheId:cacheIdCopy appSuggestionIds:0 actionSuggestionIds:v11 documentSuggestionIds:0 metadata:0];

  return v12;
}

+ (id)searchResultTappedWithEngagedBundleId:(id)id searchedActionType:(unint64_t)type date:(id)date
{
  dateCopy = date;
  idCopy = id;
  v9 = objc_opt_new();
  [v9 setSearchEngagedBundleId:idCopy];

  v10 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:type];
  [v9 setSearchEngagedActionType:v10];

  v11 = [[ATXSpotlightEvent alloc] initWithDate:dateCopy eventType:8 appConsumerSubType:0 actionConsumerSubType:0 appBlendingCacheId:0 actionBlendingCacheId:0 appSuggestionIds:0 actionSuggestionIds:0 documentSuggestionIds:0 metadata:v9];

  return v11;
}

+ (id)documentSuggestionTappedWithPath:(id)path date:(id)date
{
  v11[1] = *MEMORY[0x1E69E9840];
  dateCopy = date;
  pathCopy = path;
  v7 = [ATXSpotlightEvent alloc];
  v11[0] = pathCopy;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:1];

  v9 = [(ATXSpotlightEvent *)v7 initWithDate:dateCopy eventType:4 appConsumerSubType:0 actionConsumerSubType:0 appBlendingCacheId:0 actionBlendingCacheId:0 appSuggestionIds:0 actionSuggestionIds:0 documentSuggestionIds:v8 metadata:0];

  return v9;
}

+ (id)documentSuggestionDismissedWithPaths:(id)paths date:(id)date
{
  dateCopy = date;
  pathsCopy = paths;
  v7 = [[ATXSpotlightEvent alloc] initWithDate:dateCopy eventType:5 appConsumerSubType:0 actionConsumerSubType:0 appBlendingCacheId:0 actionBlendingCacheId:0 appSuggestionIds:0 actionSuggestionIds:0 documentSuggestionIds:pathsCopy metadata:0];

  return v7;
}

- (void)initWithProto:.cold.1()
{
  v0 = objc_opt_class();
  v1 = NSStringFromClass(v0);
  OUTLINED_FUNCTION_0(&dword_1BF549000, v2, v3, "%@: tried to initialize with a non-ATXPBSpotlightEvent proto", v4, v5, v6, v7, 2u);
}

@end