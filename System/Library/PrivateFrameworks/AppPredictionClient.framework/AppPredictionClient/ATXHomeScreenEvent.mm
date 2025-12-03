@interface ATXHomeScreenEvent
+ (id)eventForPageShownWithIndex:(unint64_t)index widgetsByStack:(id)stack blendingCacheIdentifier:(id)identifier;
+ (id)eventWithData:(id)data dataVersion:(unsigned int)version;
- (ATXHomeScreenEvent)initWithCoder:(id)coder;
- (ATXHomeScreenEvent)initWithProto:(id)proto;
- (ATXHomeScreenEvent)initWithProtoData:(id)data;
- (BOOL)checkAndReportDecodingFailureIfNeededFordouble:(double)fordouble key:(id)key coder:(id)coder errorDomain:(id)domain errorCode:(int64_t)code;
- (BOOL)checkAndReportDecodingFailureIfNeededForid:(id)forid key:(id)key coder:(id)coder errorDomain:(id)domain errorCode:(int64_t)code;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToATXHomeScreenEvent:(id)event;
- (NSDate)date;
- (id)blendingUICacheUpdateUUIDForUICacheConsumerSubType:(unsigned __int8)type;
- (id)encodeAsProto;
- (id)json;
- (id)jsonDict;
- (id)proto;
- (id)sessionProcessingOptionsForSessionType:(int64_t)type;
- (unsigned)feedbackConsumerSubType;
- (void)encodeWithCoder:(id)coder;
- (void)feedbackConsumerSubType;
- (void)updateUIFeedbackSession:(id)session uiCacheConsumerSubType:(unsigned __int8)type;
@end

@implementation ATXHomeScreenEvent

- (id)encodeAsProto
{
  proto = [(ATXHomeScreenEvent *)self proto];
  data = [proto data];

  return data;
}

- (id)proto
{
  v3 = objc_opt_new();
  [(ATXPBHomeScreenEvent *)v3 setDate:?];
  [(ATXPBHomeScreenEvent *)v3 setEventTypeString:?];
  [(ATXPBHomeScreenEvent *)v3 setReason:?];
  [(ATXPBHomeScreenEvent *)v3 setBlendingCacheId:?];
  [(ATXPBHomeScreenEvent *)v3 setStackId:?];
  v4 = ATXPBStackKindForKind(self->_stackKind);
  [(ATXPBHomeScreenEvent *)v3 setStackKind:v4];
  v5 = ATXPBStackLocationForLocation(self->_stackLocation);
  [(ATXPBHomeScreenEvent *)v3 setStackLocation:v5];
  [(ATXPBHomeScreenEvent *)v3 setWidgetBundleId:?];
  [(ATXPBHomeScreenEvent *)v3 setWidgetKind:?];
  v6 = ATXPBStackLayoutSizeForLayoutSize(self->_widgetSize);
  [(ATXPBHomeScreenEvent *)v3 setWidgetSize:v6];
  [(ATXPBHomeScreenEvent *)v3 setIntentDescription:?];
  [(ATXPBHomeScreenEvent *)v3 setWidgetUniqueId:?];
  [(ATXPBHomeScreenEvent *)v3 setAppBundleId:?];
  v7 = [(NSArray *)self->_suggestionIds copy];
  [(ATXPBHomeScreenEvent *)v3 setSuggestionIds:v7];

  proto = [(ATXHomeScreenEventMetadata *)self->_metadata proto];
  [(ATXPBHomeScreenEvent *)v3 setMetadata:proto];

  return v3;
}

- (NSDate)date
{
  v2 = [objc_alloc(MEMORY[0x1E695DF00]) initWithTimeIntervalSince1970:self->_absoluteDate];

  return v2;
}

+ (id)eventForPageShownWithIndex:(unint64_t)index widgetsByStack:(id)stack blendingCacheIdentifier:(id)identifier
{
  identifierCopy = identifier;
  stackCopy = stack;
  v9 = objc_opt_new();
  v10 = [MEMORY[0x1E695DF00] now];
  [v9 setDate:v10];

  [v9 setEventTypeString:@"HomeScreenPageShown"];
  [v9 setBlendingCacheId:identifierCopy];

  v11 = objc_opt_new();
  v12 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:index];
  [v11 setPageIndex:v12];

  [v11 setStacks:stackCopy];
  [v9 setMetadata:v11];

  return v9;
}

- (id)sessionProcessingOptionsForSessionType:(int64_t)type
{
  v3 = self->_eventTypeString;
  if (![(NSString *)v3 isEqualToString:@"Unknown"])
  {
    if ([(NSString *)v3 isEqualToString:@"Tapped"]|| [(NSString *)v3 isEqualToString:@"ContextMenuDismissOnce"]|| [(NSString *)v3 isEqualToString:@"ContextMenuNeverShowAgain"])
    {
      goto LABEL_6;
    }

    if ([(NSString *)v3 isEqualToString:@"WidgetAppeared"])
    {
      v4 = &unk_1F3E608E8;
      goto LABEL_7;
    }

    if ([(NSString *)v3 isEqualToString:@"WidgetDisappeared"])
    {
      v4 = &unk_1F3E60900;
      goto LABEL_7;
    }

    if ([(NSString *)v3 isEqualToString:@"SuggestionsAppeared"]|| [(NSString *)v3 isEqualToString:@"SuggestionsDisappeared"])
    {
LABEL_6:
      v4 = &unk_1F3E60918;
      goto LABEL_7;
    }

    if (![(NSString *)v3 isEqualToString:@"WidgetOccluded"])
    {
      [(NSString *)v3 isEqualToString:@"WidgetUnoccluded"];
    }
  }

  v4 = MEMORY[0x1E695E0F0];
LABEL_7:

  return v4;
}

- (id)blendingUICacheUpdateUUIDForUICacheConsumerSubType:(unsigned __int8)type
{
  v3 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:self->_blendingCacheId];

  return v3;
}

- (unsigned)feedbackConsumerSubType
{
  p_widgetBundleId = &self->_widgetBundleId;
  if ([(NSString *)self->_widgetBundleId isEqualToString:@"com.apple.proactive.appprediction.panel"])
  {
    v4 = ATXStackLocationIsTodayPage(self->_stackLocation) == 0;
    v5 = 37;
    v6 = 40;
    goto LABEL_5;
  }

  if ([(NSString *)*p_widgetBundleId isEqualToString:*MEMORY[0x1E698AFC0]])
  {
    v4 = ATXStackLocationIsTodayPage(self->_stackLocation) == 0;
    v5 = 36;
    v6 = 39;
LABEL_5:
    if (v4)
    {
      return v5;
    }

    else
    {
      return v6;
    }
  }

  v8 = __atxlog_handle_feedback();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    [(ATXHomeScreenEvent *)p_widgetBundleId feedbackConsumerSubType];
  }

  return 36;
}

- (void)updateUIFeedbackSession:(id)session uiCacheConsumerSubType:(unsigned __int8)type
{
  sessionCopy = session;
  v5 = self->_eventTypeString;
  if (![(NSString *)v5 isEqualToString:@"Unknown"])
  {
    if ([(NSString *)v5 isEqualToString:@"Tapped"])
    {

      v5 = [(ATXHomeScreenEvent *)self _uuidArrayFromStringArray:self->_suggestionIds];
      v6 = sessionCopy;
      v7 = v5;
      v8 = 0;
LABEL_7:
      v9 = 0;
LABEL_8:
      [v6 updateEngagedUUIDs:v7 rejectedUUIDs:v8 shownUUIDs:v9];
      goto LABEL_9;
    }

    if ([(NSString *)v5 isEqualToString:@"ContextMenuDismissOnce"]|| [(NSString *)v5 isEqualToString:@"ContextMenuNeverShowAgain"])
    {

      v5 = [(ATXHomeScreenEvent *)self _uuidArrayFromStringArray:self->_suggestionIds];
      v6 = sessionCopy;
      v7 = 0;
      v8 = v5;
      goto LABEL_7;
    }

    if (![(NSString *)v5 isEqualToString:@"WidgetAppeared"]&& ![(NSString *)v5 isEqualToString:@"WidgetDisappeared"])
    {
      if ([(NSString *)v5 isEqualToString:@"SuggestionsAppeared"])
      {

        v5 = [(ATXHomeScreenEvent *)self _uuidArrayFromStringArray:self->_suggestionIds];
        v6 = sessionCopy;
        v7 = 0;
        v8 = 0;
        v9 = v5;
        goto LABEL_8;
      }

      if (![(NSString *)v5 isEqualToString:@"SuggestionsDisappeared"]&& ![(NSString *)v5 isEqualToString:@"WidgetOccluded"])
      {
        [(NSString *)v5 isEqualToString:@"WidgetUnoccluded"];
      }
    }
  }

LABEL_9:

  [sessionCopy updateConsumerSubTypeIfUnset:{-[ATXHomeScreenEvent feedbackConsumerSubType](self, "feedbackConsumerSubType")}];
  v10 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:self->_blendingCacheId];
  [sessionCopy updateBlendingUICacheUpdateUUIDIfUnset:v10];

  sessionMetadata = [sessionCopy sessionMetadata];

  if (!sessionMetadata)
  {
    v12 = [[ATXHomeScreenSessionMetadata alloc] initWithWidgetUniqueId:self->_widgetUniqueId widgetBundleId:self->_widgetBundleId isWidgetInTodayView:ATXStackLocationIsTodayPage(self->_stackLocation)];
    [sessionCopy updateSessionMetadataIfUnset:v12];
  }
}

+ (id)eventWithData:(id)data dataVersion:(unsigned int)version
{
  if (version == 1)
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
  v40 = *MEMORY[0x1E69E9840];
  blendingCacheId = self->_blendingCacheId;
  if (!blendingCacheId)
  {
    blendingCacheId = @"nil";
  }

  v31[0] = blendingCacheId;
  v30[0] = @"blendingCacheId";
  v30[1] = @"date";
  v4 = MEMORY[0x1E696AD98];
  date = [(ATXHomeScreenEvent *)self date];
  [date timeIntervalSinceReferenceDate];
  v6 = [v4 numberWithDouble:?];
  v7 = v6;
  stackId = self->_stackId;
  if (!stackId)
  {
    stackId = @"nil";
  }

  v31[1] = v6;
  v31[2] = stackId;
  v30[2] = @"stackId";
  v30[3] = @"stackKind";
  v9 = ATXStringForStackKind(self->_stackKind);
  v10 = v9;
  if (v9)
  {
    v11 = v9;
  }

  else
  {
    v11 = @"nil";
  }

  v31[3] = v11;
  v30[4] = @"stackLocation";
  v12 = ATXStringForStackLocation(self->_stackLocation);
  v13 = v12;
  if (v12)
  {
    v14 = v12;
  }

  else
  {
    v14 = @"nil";
  }

  widgetUniqueId = self->_widgetUniqueId;
  if (!widgetUniqueId)
  {
    widgetUniqueId = @"nil";
  }

  v31[4] = v14;
  v31[5] = widgetUniqueId;
  v30[5] = @"widgetUniqueId";
  v30[6] = @"widgetBundleId";
  v32 = vbslq_s8(vceqzq_s64(*&self->_widgetBundleId), vdupq_n_s64(@"nil"), *&self->_widgetBundleId);
  v30[7] = @"widgetKind";
  v30[8] = @"isSuggestedWidget";
  v16 = [MEMORY[0x1E696AD98] numberWithBool:self->_isSuggestedWidget];
  v17 = v16;
  appBundleId = self->_appBundleId;
  if (!appBundleId)
  {
    appBundleId = @"nil";
  }

  v33 = v16;
  v34 = appBundleId;
  v30[9] = @"appBundleId";
  v30[10] = @"intentDescription";
  intentDescription = self->_intentDescription;
  if (!intentDescription)
  {
    intentDescription = @"nil";
  }

  eventTypeString = self->_eventTypeString;
  reason = self->_reason;
  if (!reason)
  {
    reason = @"nil";
  }

  v35 = intentDescription;
  v36 = reason;
  v30[11] = @"reason";
  v30[12] = @"suggestionIds";
  suggestionIds = self->_suggestionIds;
  metadata = self->_metadata;
  if (!suggestionIds)
  {
    suggestionIds = @"nil";
  }

  if (eventTypeString)
  {
    v24 = eventTypeString;
  }

  else
  {
    v24 = @"nil";
  }

  v37 = suggestionIds;
  v38 = v24;
  v30[13] = @"eventType";
  v30[14] = @"metadata";
  dictionaryRepresentation = [(ATXHomeScreenEventMetadata *)metadata dictionaryRepresentation];
  v26 = dictionaryRepresentation;
  if (dictionaryRepresentation)
  {
    v27 = dictionaryRepresentation;
  }

  else
  {
    v27 = @"nil";
  }

  v39 = v27;
  v28 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v31 forKeys:v30 count:15];

  return v28;
}

- (id)json
{
  v2 = MEMORY[0x1E696ACB0];
  jsonDict = [(ATXHomeScreenEvent *)self jsonDict];
  v4 = [v2 dataWithJSONObject:jsonDict options:1 error:0];

  return v4;
}

- (ATXHomeScreenEvent)initWithProtoData:(id)data
{
  if (data)
  {
    dataCopy = data;
    v5 = [[ATXPBHomeScreenEvent alloc] initWithData:dataCopy];

    self = [(ATXHomeScreenEvent *)self initWithProto:v5];
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (ATXHomeScreenEvent)initWithProto:(id)proto
{
  protoCopy = proto;
  if (!protoCopy)
  {
LABEL_9:
    selfCopy = 0;
    goto LABEL_10;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v35 = __atxlog_handle_default();
    if (os_log_type_enabled(v35, OS_LOG_TYPE_FAULT))
    {
      [(ATXHomeScreenEvent *)self initWithProto:v35];
    }

    goto LABEL_9;
  }

  v37.receiver = self;
  v37.super_class = ATXHomeScreenEvent;
  v5 = [(ATXHomeScreenEvent *)&v37 init];
  if (v5)
  {
    v6 = protoCopy;
    v5->_absoluteDate = [(ATXPBHomeScreenEvent *)v6 date];
    eventTypeString = [(ATXPBHomeScreenEvent *)v6 eventTypeString];
    eventTypeString = v5->_eventTypeString;
    v5->_eventTypeString = eventTypeString;

    reason = [(ATXPBHomeScreenEvent *)v6 reason];
    reason = v5->_reason;
    v5->_reason = reason;

    blendingCacheId = [(ATXPBHomeScreenEvent *)v6 blendingCacheId];
    blendingCacheId = v5->_blendingCacheId;
    v5->_blendingCacheId = blendingCacheId;

    stackId = [(ATXPBHomeScreenEvent *)v6 stackId];
    stackId = v5->_stackId;
    v5->_stackId = stackId;

    stackKind = [(ATXPBHomeScreenEvent *)v6 stackKind];
    v5->_stackKind = ATXStackKindForPBKind(stackKind);
    stackLocation = [(ATXPBHomeScreenEvent *)v6 stackLocation];
    v5->_stackLocation = ATXStackLocationForPBLocation(stackLocation);
    widgetBundleId = [(ATXPBHomeScreenEvent *)v6 widgetBundleId];
    widgetBundleId = v5->_widgetBundleId;
    v5->_widgetBundleId = widgetBundleId;

    widgetKind = [(ATXPBHomeScreenEvent *)v6 widgetKind];
    widgetKind = v5->_widgetKind;
    v5->_widgetKind = widgetKind;

    widgetSize = [(ATXPBHomeScreenEvent *)v6 widgetSize];
    v5->_widgetSize = ATXStackLayoutSizeForPBLayoutSize(widgetSize);
    intentDescription = [(ATXPBHomeScreenEvent *)v6 intentDescription];
    intentDescription = v5->_intentDescription;
    v5->_intentDescription = intentDescription;

    widgetUniqueId = [(ATXPBHomeScreenEvent *)v6 widgetUniqueId];
    widgetUniqueId = v5->_widgetUniqueId;
    v5->_widgetUniqueId = widgetUniqueId;

    appBundleId = [(ATXPBHomeScreenEvent *)v6 appBundleId];
    appBundleId = v5->_appBundleId;
    v5->_appBundleId = appBundleId;

    suggestionIds = [(ATXPBHomeScreenEvent *)v6 suggestionIds];
    suggestionIds = v5->_suggestionIds;
    v5->_suggestionIds = suggestionIds;

    v30 = [ATXHomeScreenEventMetadata alloc];
    metadata = [(ATXPBHomeScreenEvent *)v6 metadata];

    v32 = [(ATXHomeScreenEventMetadata *)v30 initWithProto:metadata];
    metadata = v5->_metadata;
    v5->_metadata = v32;
  }

  self = v5;
  selfCopy = self;
LABEL_10:

  return selfCopy;
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
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(ATXHomeScreenEvent *)self isEqualToATXHomeScreenEvent:v5];
  }

  return v6;
}

- (BOOL)isEqualToATXHomeScreenEvent:(id)event
{
  eventCopy = event;
  v5 = self->_absoluteDate - eventCopy[1];
  if (v5 < 0.0)
  {
    v5 = -v5;
  }

  if (v5 > 2.22044605e-16)
  {
    goto LABEL_51;
  }

  v6 = self->_eventTypeString;
  v7 = v6;
  if (v6 == *(eventCopy + 3))
  {
  }

  else
  {
    v8 = [(NSString *)v6 isEqual:?];

    if ((v8 & 1) == 0)
    {
LABEL_51:
      v39 = 0;
      goto LABEL_52;
    }
  }

  v9 = self->_reason;
  v10 = v9;
  if (v9 == *(eventCopy + 4))
  {
  }

  else
  {
    v11 = [(NSString *)v9 isEqual:?];

    if ((v11 & 1) == 0)
    {
      goto LABEL_51;
    }
  }

  v12 = self->_blendingCacheId;
  v13 = v12;
  if (v12 == *(eventCopy + 5))
  {
  }

  else
  {
    v14 = [(NSString *)v12 isEqual:?];

    if ((v14 & 1) == 0)
    {
      goto LABEL_51;
    }
  }

  v15 = self->_stackId;
  v16 = v15;
  if (v15 == *(eventCopy + 6))
  {
  }

  else
  {
    v17 = [(NSString *)v15 isEqual:?];

    if ((v17 & 1) == 0)
    {
      goto LABEL_51;
    }
  }

  v18 = self->_widgetBundleId;
  v19 = v18;
  if (v18 == *(eventCopy + 7))
  {
  }

  else
  {
    v20 = [(NSString *)v18 isEqual:?];

    if ((v20 & 1) == 0)
    {
      goto LABEL_51;
    }
  }

  v21 = self->_widgetUniqueId;
  v22 = v21;
  if (v21 == *(eventCopy + 14))
  {
  }

  else
  {
    v23 = [(NSString *)v21 isEqual:?];

    if ((v23 & 1) == 0)
    {
      goto LABEL_51;
    }
  }

  v24 = self->_intentDescription;
  v25 = v24;
  if (v24 == *(eventCopy + 13))
  {
  }

  else
  {
    v26 = [(NSString *)v24 isEqual:?];

    if ((v26 & 1) == 0)
    {
      goto LABEL_51;
    }
  }

  v27 = self->_suggestionIds;
  v28 = v27;
  if (v27 == *(eventCopy + 15))
  {
  }

  else
  {
    v29 = [(NSArray *)v27 isEqual:?];

    if ((v29 & 1) == 0)
    {
      goto LABEL_51;
    }
  }

  v30 = self->_metadata;
  v31 = v30;
  if (v30 == *(eventCopy + 16))
  {
  }

  else
  {
    v32 = [(ATXHomeScreenEventMetadata *)v30 isEqual:?];

    if (!v32)
    {
      goto LABEL_51;
    }
  }

  v33 = self->_widgetKind;
  v34 = v33;
  if (v33 == *(eventCopy + 8))
  {
  }

  else
  {
    v35 = [(NSString *)v33 isEqual:?];

    if ((v35 & 1) == 0)
    {
      goto LABEL_51;
    }
  }

  v36 = self->_appBundleId;
  v37 = v36;
  if (v36 == *(eventCopy + 9))
  {
  }

  else
  {
    v38 = [(NSString *)v36 isEqual:?];

    if ((v38 & 1) == 0)
    {
      goto LABEL_51;
    }
  }

  if (self->_widgetSize != *(eventCopy + 10) || self->_stackKind != *(eventCopy + 11))
  {
    goto LABEL_51;
  }

  v39 = self->_stackLocation == *(eventCopy + 12);
LABEL_52:

  return v39;
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
  encodeAsProto = [(ATXHomeScreenEvent *)self encodeAsProto];
  [coderCopy encodeObject:encodeAsProto forKey:@"protobufData"];
}

- (ATXHomeScreenEvent)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"protobufData"];

  v6 = [(ATXHomeScreenEvent *)self initWithProtoData:v5];
  return v6;
}

id __48__ATXHomeScreenEvent__uuidArrayFromStringArray___block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x1E696AFB0];
  v3 = a2;
  v4 = [[v2 alloc] initWithUUIDString:v3];

  return v4;
}

- (void)feedbackConsumerSubType
{
  v5 = *MEMORY[0x1E69E9840];
  v2 = *self;
  v3 = 138412290;
  v4 = v2;
  _os_log_error_impl(&dword_1BF549000, a2, OS_LOG_TYPE_ERROR, "Could not find consumerSubType for non-proactive widget bundle id: %@", &v3, 0xCu);
}

- (void)initWithProto:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = 138412290;
  v6 = v4;
  _os_log_fault_impl(&dword_1BF549000, a2, OS_LOG_TYPE_FAULT, "%@: tried to initialize with a non-ATXPBHomeScreenEvent proto", &v5, 0xCu);
}

@end