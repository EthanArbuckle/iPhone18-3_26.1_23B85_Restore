@interface ATXActivitySuggestionFeedbackEvent
+ (id)eventWithData:(id)a3 dataVersion:(unsigned int)a4;
- (ATXActivitySuggestionFeedbackEvent)initWithEventDate:(id)a3 activity:(id)a4 acceptedTriggers:(id)a5 eventType:(unint64_t)a6 suggestionType:(unint64_t)a7 location:(unint64_t)a8;
- (ATXActivitySuggestionFeedbackEvent)initWithProto:(id)a3;
- (ATXActivitySuggestionFeedbackEvent)initWithProtoData:(id)a3;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToATXActivitySuggestionFeedbackEvent:(id)a3;
- (NSString)description;
- (id)activityDescription;
- (id)encodeAsProto;
- (id)json;
- (id)jsonDict;
- (id)proto;
@end

@implementation ATXActivitySuggestionFeedbackEvent

- (ATXActivitySuggestionFeedbackEvent)initWithEventDate:(id)a3 activity:(id)a4 acceptedTriggers:(id)a5 eventType:(unint64_t)a6 suggestionType:(unint64_t)a7 location:(unint64_t)a8
{
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v23.receiver = self;
  v23.super_class = ATXActivitySuggestionFeedbackEvent;
  v18 = [(ATXActivitySuggestionFeedbackEvent *)&v23 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_eventDate, a3);
    v19->_eventType = a6;
    v19->_suggestionType = a7;
    objc_storeStrong(&v19->_activity, a4);
    v20 = [v17 copy];
    acceptedTriggers = v19->_acceptedTriggers;
    v19->_acceptedTriggers = v20;

    v19->_location = a8;
  }

  return v19;
}

- (ATXActivitySuggestionFeedbackEvent)initWithProtoData:(id)a3
{
  if (a3)
  {
    v4 = a3;
    v5 = [[ATXPBActivitySuggestionFeedbackEvent alloc] initWithData:v4];

    self = [(ATXActivitySuggestionFeedbackEvent *)self initWithProto:v5];
    v6 = self;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (ATXActivitySuggestionFeedbackEvent)initWithProto:(id)a3
{
  v4 = a3;
  if (!v4)
  {
LABEL_7:
    v18 = 0;
    goto LABEL_8;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v19 = __atxlog_handle_default();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_FAULT))
    {
      [(ATXActivitySuggestionFeedbackEvent *)self initWithProto:v19];
    }

    goto LABEL_7;
  }

  v5 = MEMORY[0x1E695DF00];
  v6 = v4;
  v28 = [[v5 alloc] initWithTimeIntervalSinceReferenceDate:-[ATXPBActivitySuggestionFeedbackEvent date](v6)];
  v7 = [(ATXPBActivitySuggestionFeedbackEvent *)v6 activity];
  v26 = [ATXActivity alloc];
  v25 = [(ATXPBActivity *)v7 modeUUID];
  v24 = [(ATXPBActivity *)v7 type];
  v23 = [(ATXPBActivity *)v7 origin];
  v8 = [(ATXPBActivity *)v7 originBundleId];
  v9 = [(ATXPBActivity *)v7 originAnchorType];
  v10 = [(ATXPBActivity *)v7 suggestionUUID];
  v11 = [(ATXPBActivity *)v7 serializedTriggers];
  v12 = ATXDeserializeTriggers();
  v13 = [(ATXPBActivity *)v7 uiLocation];
  LOBYTE(v22) = [(ATXPBActivity *)v7 shouldSuggestTriggers];
  LOBYTE(v21) = 0;
  v27 = [(ATXActivity *)v26 initWithModeUUID:v25 userModeName:0 activityType:v24 origin:v23 originBundleId:v8 originAnchorType:v9 allowsSmartEntry:v21 suggestionUUID:v10 triggers:v12 location:v13 shouldSuggestTriggers:v22];

  v14 = [(ATXPBActivitySuggestionFeedbackEvent *)v6 serializedAcceptedTriggers];
  v15 = ATXDeserializeTriggers();
  v16 = [(ATXPBActivitySuggestionFeedbackEvent *)v6 eventType];
  v17 = [(ATXPBActivitySuggestionFeedbackEvent *)v6 suggestionType];
  LODWORD(v10) = [(ATXPBActivitySuggestionFeedbackEvent *)v6 location];

  self = [(ATXActivitySuggestionFeedbackEvent *)self initWithEventDate:v28 activity:v27 acceptedTriggers:v15 eventType:v16 suggestionType:v17 location:v10];
  v18 = self;
LABEL_8:

  return v18;
}

- (id)proto
{
  v3 = objc_opt_new();
  [(ATXPBActivitySuggestionFeedbackEvent *)v3 setEventType:?];
  [(NSDate *)self->_eventDate timeIntervalSinceReferenceDate];
  [(ATXPBActivitySuggestionFeedbackEvent *)v3 setDate:v4];
  [(ATXPBActivitySuggestionFeedbackEvent *)v3 setSuggestionType:?];
  [(ATXPBActivitySuggestionFeedbackEvent *)v3 setLocation:?];
  v5 = self->_activity;
  v6 = objc_alloc_init(ATXPBActivity);
  [(ATXPBActivity *)v6 setUiLocation:?];
  [(ATXPBActivity *)v6 setType:?];
  v7 = [(ATXActivity *)v5 modeUUID];
  [(ATXPBActivity *)v6 setModeUUID:v7];

  v8 = [(ATXActivity *)v5 suggestionUUID];
  [(ATXPBActivity *)v6 setSuggestionUUID:v8];

  [(ATXPBActivity *)v6 setOrigin:?];
  v9 = [(ATXActivity *)v5 originBundleId];
  [(ATXPBActivity *)v6 setOriginBundleId:v9];

  v10 = [(ATXActivity *)v5 originAnchorType];
  [(ATXPBActivity *)v6 setOriginAnchorType:v10];

  v11 = [(ATXActivity *)v5 triggers];
  v12 = ATXSerializeTriggers();
  [(ATXPBActivity *)v6 setSerializedTriggers:v12];

  LOBYTE(v11) = [(ATXActivity *)v5 shouldSuggestTriggers];
  [(ATXPBActivity *)v6 setShouldSuggestTriggers:v11];
  [(ATXPBActivitySuggestionFeedbackEvent *)v3 setActivity:v6];

  v13 = ATXSerializeTriggers();
  [(ATXPBActivitySuggestionFeedbackEvent *)v3 setSerializedAcceptedTriggers:v13];

  return v3;
}

- (id)encodeAsProto
{
  v2 = [(ATXActivitySuggestionFeedbackEvent *)self proto];
  v3 = [v2 data];

  return v3;
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
  v3 = objc_opt_new();
  v4 = [(NSDate *)self->_eventDate description];
  [v3 setObject:v4 forKeyedSubscript:@"eventDate"];

  v5 = [(ATXActivitySuggestionFeedbackEvent *)self activityDescription];
  [v3 setObject:v5 forKeyedSubscript:@"activity"];

  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_eventType];
  [v3 setObject:v6 forKeyedSubscript:@"eventType"];

  v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_suggestionType];
  [v3 setObject:v7 forKeyedSubscript:@"suggestionType"];

  v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_location];
  [v3 setObject:v8 forKeyedSubscript:@"location"];

  v9 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[NSArray count](self->_acceptedTriggers, "count")}];
  [v3 setObject:v9 forKeyedSubscript:@"acceptedTriggersCount"];

  return v3;
}

- (id)json
{
  v2 = MEMORY[0x1E696ACB0];
  v3 = [(ATXActivitySuggestionFeedbackEvent *)self jsonDict];
  v4 = [v2 dataWithJSONObject:v3 options:1 error:0];

  return v4;
}

- (NSString)description
{
  v2 = MEMORY[0x1E696AEC0];
  v3 = [(ATXActivitySuggestionFeedbackEvent *)self jsonDict];
  v4 = [v2 stringWithFormat:@"%@", v3];

  return v4;
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
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(ATXActivitySuggestionFeedbackEvent *)self isEqualToATXActivitySuggestionFeedbackEvent:v5];
  }

  return v6;
}

- (BOOL)isEqualToATXActivitySuggestionFeedbackEvent:(id)a3
{
  v4 = a3;
  eventType = self->_eventType;
  if (eventType == [v4 eventType] && (suggestionType = self->_suggestionType, suggestionType == objc_msgSend(v4, "suggestionType")))
  {
    eventDate = self->_eventDate;
    v8 = [v4 eventDate];
    if ([(NSDate *)eventDate isEqualToDate:v8])
    {
      activity = self->_activity;
      v10 = [v4 activity];
      if ([(ATXActivity *)activity isEqual:v10])
      {
        location = self->_location;
        v12 = location == [v4 location];
      }

      else
      {
        v12 = 0;
      }
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (id)activityDescription
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [(ATXActivity *)self->_activity modeUUID];
  v5 = [(ATXActivity *)self->_activity activityType];
  v6 = [(ATXActivity *)self->_activity location];
  v7 = [(ATXActivity *)self->_activity shouldSuggestTriggers];
  v8 = [(ATXActivity *)self->_activity triggers];
  v9 = [(ATXActivity *)self->_activity suggestionUUID];
  v10 = [(ATXActivity *)self->_activity localizedSuggestionReason];
  v11 = [v3 stringWithFormat:@"<modeUUID = %@, activityType = %lu, location = %lu, shouldSuggestTriggers = %d, triggers = %@, suggestionUUID = %@, localizedSuggestionReason = %@>", v4, v5, v6, v7, v8, v9, v10];

  return v11;
}

- (void)initWithProto:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = 138412290;
  v6 = v4;
  _os_log_fault_impl(&dword_1BF549000, a2, OS_LOG_TYPE_FAULT, "%@: tried to initialize with a non-ATXPBActivitySuggestionFeedbackEvent proto", &v5, 0xCu);
}

@end