@interface ATXHomeScreenEvent
+ (id)eventForPageShownWithIndex:(unint64_t)a3 widgetsByStack:(id)a4 blendingCacheIdentifier:(id)a5;
+ (id)eventWithData:(id)a3 dataVersion:(unsigned int)a4;
- (ATXHomeScreenEvent)initWithCoder:(id)a3;
- (ATXHomeScreenEvent)initWithProto:(id)a3;
- (ATXHomeScreenEvent)initWithProtoData:(id)a3;
- (BOOL)checkAndReportDecodingFailureIfNeededFordouble:(double)a3 key:(id)a4 coder:(id)a5 errorDomain:(id)a6 errorCode:(int64_t)a7;
- (BOOL)checkAndReportDecodingFailureIfNeededForid:(id)a3 key:(id)a4 coder:(id)a5 errorDomain:(id)a6 errorCode:(int64_t)a7;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToATXHomeScreenEvent:(id)a3;
- (NSDate)date;
- (id)blendingUICacheUpdateUUIDForUICacheConsumerSubType:(unsigned __int8)a3;
- (id)encodeAsProto;
- (id)json;
- (id)jsonDict;
- (id)proto;
- (id)sessionProcessingOptionsForSessionType:(int64_t)a3;
- (unsigned)feedbackConsumerSubType;
- (void)encodeWithCoder:(id)a3;
- (void)feedbackConsumerSubType;
- (void)updateUIFeedbackSession:(id)a3 uiCacheConsumerSubType:(unsigned __int8)a4;
@end

@implementation ATXHomeScreenEvent

- (id)encodeAsProto
{
  v2 = [(ATXHomeScreenEvent *)self proto];
  v3 = [v2 data];

  return v3;
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

  v8 = [(ATXHomeScreenEventMetadata *)self->_metadata proto];
  [(ATXPBHomeScreenEvent *)v3 setMetadata:v8];

  return v3;
}

- (NSDate)date
{
  v2 = [objc_alloc(MEMORY[0x1E695DF00]) initWithTimeIntervalSince1970:self->_absoluteDate];

  return v2;
}

+ (id)eventForPageShownWithIndex:(unint64_t)a3 widgetsByStack:(id)a4 blendingCacheIdentifier:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = objc_opt_new();
  v10 = [MEMORY[0x1E695DF00] now];
  [v9 setDate:v10];

  [v9 setEventTypeString:@"HomeScreenPageShown"];
  [v9 setBlendingCacheId:v7];

  v11 = objc_opt_new();
  v12 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3];
  [v11 setPageIndex:v12];

  [v11 setStacks:v8];
  [v9 setMetadata:v11];

  return v9;
}

- (id)sessionProcessingOptionsForSessionType:(int64_t)a3
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

- (id)blendingUICacheUpdateUUIDForUICacheConsumerSubType:(unsigned __int8)a3
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

- (void)updateUIFeedbackSession:(id)a3 uiCacheConsumerSubType:(unsigned __int8)a4
{
  v13 = a3;
  v5 = self->_eventTypeString;
  if (![(NSString *)v5 isEqualToString:@"Unknown"])
  {
    if ([(NSString *)v5 isEqualToString:@"Tapped"])
    {

      v5 = [(ATXHomeScreenEvent *)self _uuidArrayFromStringArray:self->_suggestionIds];
      v6 = v13;
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
      v6 = v13;
      v7 = 0;
      v8 = v5;
      goto LABEL_7;
    }

    if (![(NSString *)v5 isEqualToString:@"WidgetAppeared"]&& ![(NSString *)v5 isEqualToString:@"WidgetDisappeared"])
    {
      if ([(NSString *)v5 isEqualToString:@"SuggestionsAppeared"])
      {

        v5 = [(ATXHomeScreenEvent *)self _uuidArrayFromStringArray:self->_suggestionIds];
        v6 = v13;
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

  [v13 updateConsumerSubTypeIfUnset:{-[ATXHomeScreenEvent feedbackConsumerSubType](self, "feedbackConsumerSubType")}];
  v10 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:self->_blendingCacheId];
  [v13 updateBlendingUICacheUpdateUUIDIfUnset:v10];

  v11 = [v13 sessionMetadata];

  if (!v11)
  {
    v12 = [[ATXHomeScreenSessionMetadata alloc] initWithWidgetUniqueId:self->_widgetUniqueId widgetBundleId:self->_widgetBundleId isWidgetInTodayView:ATXStackLocationIsTodayPage(self->_stackLocation)];
    [v13 updateSessionMetadataIfUnset:v12];
  }
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
  v5 = [(ATXHomeScreenEvent *)self date];
  [v5 timeIntervalSinceReferenceDate];
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
  v25 = [(ATXHomeScreenEventMetadata *)metadata dictionaryRepresentation];
  v26 = v25;
  if (v25)
  {
    v27 = v25;
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
  v3 = [(ATXHomeScreenEvent *)self jsonDict];
  v4 = [v2 dataWithJSONObject:v3 options:1 error:0];

  return v4;
}

- (ATXHomeScreenEvent)initWithProtoData:(id)a3
{
  if (a3)
  {
    v4 = a3;
    v5 = [[ATXPBHomeScreenEvent alloc] initWithData:v4];

    self = [(ATXHomeScreenEvent *)self initWithProto:v5];
    v6 = self;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (ATXHomeScreenEvent)initWithProto:(id)a3
{
  v4 = a3;
  if (!v4)
  {
LABEL_9:
    v34 = 0;
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
    v6 = v4;
    v5->_absoluteDate = [(ATXPBHomeScreenEvent *)v6 date];
    v7 = [(ATXPBHomeScreenEvent *)v6 eventTypeString];
    eventTypeString = v5->_eventTypeString;
    v5->_eventTypeString = v7;

    v9 = [(ATXPBHomeScreenEvent *)v6 reason];
    reason = v5->_reason;
    v5->_reason = v9;

    v11 = [(ATXPBHomeScreenEvent *)v6 blendingCacheId];
    blendingCacheId = v5->_blendingCacheId;
    v5->_blendingCacheId = v11;

    v13 = [(ATXPBHomeScreenEvent *)v6 stackId];
    stackId = v5->_stackId;
    v5->_stackId = v13;

    v15 = [(ATXPBHomeScreenEvent *)v6 stackKind];
    v5->_stackKind = ATXStackKindForPBKind(v15);
    v16 = [(ATXPBHomeScreenEvent *)v6 stackLocation];
    v5->_stackLocation = ATXStackLocationForPBLocation(v16);
    v17 = [(ATXPBHomeScreenEvent *)v6 widgetBundleId];
    widgetBundleId = v5->_widgetBundleId;
    v5->_widgetBundleId = v17;

    v19 = [(ATXPBHomeScreenEvent *)v6 widgetKind];
    widgetKind = v5->_widgetKind;
    v5->_widgetKind = v19;

    v21 = [(ATXPBHomeScreenEvent *)v6 widgetSize];
    v5->_widgetSize = ATXStackLayoutSizeForPBLayoutSize(v21);
    v22 = [(ATXPBHomeScreenEvent *)v6 intentDescription];
    intentDescription = v5->_intentDescription;
    v5->_intentDescription = v22;

    v24 = [(ATXPBHomeScreenEvent *)v6 widgetUniqueId];
    widgetUniqueId = v5->_widgetUniqueId;
    v5->_widgetUniqueId = v24;

    v26 = [(ATXPBHomeScreenEvent *)v6 appBundleId];
    appBundleId = v5->_appBundleId;
    v5->_appBundleId = v26;

    v28 = [(ATXPBHomeScreenEvent *)v6 suggestionIds];
    suggestionIds = v5->_suggestionIds;
    v5->_suggestionIds = v28;

    v30 = [ATXHomeScreenEventMetadata alloc];
    v31 = [(ATXPBHomeScreenEvent *)v6 metadata];

    v32 = [(ATXHomeScreenEventMetadata *)v30 initWithProto:v31];
    metadata = v5->_metadata;
    v5->_metadata = v32;
  }

  self = v5;
  v34 = self;
LABEL_10:

  return v34;
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
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(ATXHomeScreenEvent *)self isEqualToATXHomeScreenEvent:v5];
  }

  return v6;
}

- (BOOL)isEqualToATXHomeScreenEvent:(id)a3
{
  v4 = a3;
  v5 = self->_absoluteDate - v4[1];
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
  if (v6 == *(v4 + 3))
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
  if (v9 == *(v4 + 4))
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
  if (v12 == *(v4 + 5))
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
  if (v15 == *(v4 + 6))
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
  if (v18 == *(v4 + 7))
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
  if (v21 == *(v4 + 14))
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
  if (v24 == *(v4 + 13))
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
  if (v27 == *(v4 + 15))
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
  if (v30 == *(v4 + 16))
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
  if (v33 == *(v4 + 8))
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
  if (v36 == *(v4 + 9))
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

  if (self->_widgetSize != *(v4 + 10) || self->_stackKind != *(v4 + 11))
  {
    goto LABEL_51;
  }

  v39 = self->_stackLocation == *(v4 + 12);
LABEL_52:

  return v39;
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
  v5 = [(ATXHomeScreenEvent *)self encodeAsProto];
  [v4 encodeObject:v5 forKey:@"protobufData"];
}

- (ATXHomeScreenEvent)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"protobufData"];

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
  v2 = *a1;
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