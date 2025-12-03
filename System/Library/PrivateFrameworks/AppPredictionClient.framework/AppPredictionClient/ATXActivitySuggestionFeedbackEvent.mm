@interface ATXActivitySuggestionFeedbackEvent
+ (id)eventWithData:(id)data dataVersion:(unsigned int)version;
- (ATXActivitySuggestionFeedbackEvent)initWithEventDate:(id)date activity:(id)activity acceptedTriggers:(id)triggers eventType:(unint64_t)type suggestionType:(unint64_t)suggestionType location:(unint64_t)location;
- (ATXActivitySuggestionFeedbackEvent)initWithProto:(id)proto;
- (ATXActivitySuggestionFeedbackEvent)initWithProtoData:(id)data;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToATXActivitySuggestionFeedbackEvent:(id)event;
- (NSString)description;
- (id)activityDescription;
- (id)encodeAsProto;
- (id)json;
- (id)jsonDict;
- (id)proto;
@end

@implementation ATXActivitySuggestionFeedbackEvent

- (ATXActivitySuggestionFeedbackEvent)initWithEventDate:(id)date activity:(id)activity acceptedTriggers:(id)triggers eventType:(unint64_t)type suggestionType:(unint64_t)suggestionType location:(unint64_t)location
{
  dateCopy = date;
  activityCopy = activity;
  triggersCopy = triggers;
  v23.receiver = self;
  v23.super_class = ATXActivitySuggestionFeedbackEvent;
  v18 = [(ATXActivitySuggestionFeedbackEvent *)&v23 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_eventDate, date);
    v19->_eventType = type;
    v19->_suggestionType = suggestionType;
    objc_storeStrong(&v19->_activity, activity);
    v20 = [triggersCopy copy];
    acceptedTriggers = v19->_acceptedTriggers;
    v19->_acceptedTriggers = v20;

    v19->_location = location;
  }

  return v19;
}

- (ATXActivitySuggestionFeedbackEvent)initWithProtoData:(id)data
{
  if (data)
  {
    dataCopy = data;
    v5 = [[ATXPBActivitySuggestionFeedbackEvent alloc] initWithData:dataCopy];

    self = [(ATXActivitySuggestionFeedbackEvent *)self initWithProto:v5];
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (ATXActivitySuggestionFeedbackEvent)initWithProto:(id)proto
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
    v19 = __atxlog_handle_default();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_FAULT))
    {
      [(ATXActivitySuggestionFeedbackEvent *)self initWithProto:v19];
    }

    goto LABEL_7;
  }

  v5 = MEMORY[0x1E695DF00];
  v6 = protoCopy;
  v28 = [[v5 alloc] initWithTimeIntervalSinceReferenceDate:-[ATXPBActivitySuggestionFeedbackEvent date](v6)];
  activity = [(ATXPBActivitySuggestionFeedbackEvent *)v6 activity];
  v26 = [ATXActivity alloc];
  modeUUID = [(ATXPBActivity *)activity modeUUID];
  type = [(ATXPBActivity *)activity type];
  origin = [(ATXPBActivity *)activity origin];
  originBundleId = [(ATXPBActivity *)activity originBundleId];
  originAnchorType = [(ATXPBActivity *)activity originAnchorType];
  suggestionUUID = [(ATXPBActivity *)activity suggestionUUID];
  serializedTriggers = [(ATXPBActivity *)activity serializedTriggers];
  v12 = ATXDeserializeTriggers();
  uiLocation = [(ATXPBActivity *)activity uiLocation];
  LOBYTE(v22) = [(ATXPBActivity *)activity shouldSuggestTriggers];
  LOBYTE(v21) = 0;
  v27 = [(ATXActivity *)v26 initWithModeUUID:modeUUID userModeName:0 activityType:type origin:origin originBundleId:originBundleId originAnchorType:originAnchorType allowsSmartEntry:v21 suggestionUUID:suggestionUUID triggers:v12 location:uiLocation shouldSuggestTriggers:v22];

  serializedAcceptedTriggers = [(ATXPBActivitySuggestionFeedbackEvent *)v6 serializedAcceptedTriggers];
  v15 = ATXDeserializeTriggers();
  eventType = [(ATXPBActivitySuggestionFeedbackEvent *)v6 eventType];
  suggestionType = [(ATXPBActivitySuggestionFeedbackEvent *)v6 suggestionType];
  LODWORD(suggestionUUID) = [(ATXPBActivitySuggestionFeedbackEvent *)v6 location];

  self = [(ATXActivitySuggestionFeedbackEvent *)self initWithEventDate:v28 activity:v27 acceptedTriggers:v15 eventType:eventType suggestionType:suggestionType location:suggestionUUID];
  selfCopy = self;
LABEL_8:

  return selfCopy;
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
  modeUUID = [(ATXActivity *)v5 modeUUID];
  [(ATXPBActivity *)v6 setModeUUID:modeUUID];

  suggestionUUID = [(ATXActivity *)v5 suggestionUUID];
  [(ATXPBActivity *)v6 setSuggestionUUID:suggestionUUID];

  [(ATXPBActivity *)v6 setOrigin:?];
  originBundleId = [(ATXActivity *)v5 originBundleId];
  [(ATXPBActivity *)v6 setOriginBundleId:originBundleId];

  originAnchorType = [(ATXActivity *)v5 originAnchorType];
  [(ATXPBActivity *)v6 setOriginAnchorType:originAnchorType];

  triggers = [(ATXActivity *)v5 triggers];
  v12 = ATXSerializeTriggers();
  [(ATXPBActivity *)v6 setSerializedTriggers:v12];

  LOBYTE(triggers) = [(ATXActivity *)v5 shouldSuggestTriggers];
  [(ATXPBActivity *)v6 setShouldSuggestTriggers:triggers];
  [(ATXPBActivitySuggestionFeedbackEvent *)v3 setActivity:v6];

  v13 = ATXSerializeTriggers();
  [(ATXPBActivitySuggestionFeedbackEvent *)v3 setSerializedAcceptedTriggers:v13];

  return v3;
}

- (id)encodeAsProto
{
  proto = [(ATXActivitySuggestionFeedbackEvent *)self proto];
  data = [proto data];

  return data;
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
  v3 = objc_opt_new();
  v4 = [(NSDate *)self->_eventDate description];
  [v3 setObject:v4 forKeyedSubscript:@"eventDate"];

  activityDescription = [(ATXActivitySuggestionFeedbackEvent *)self activityDescription];
  [v3 setObject:activityDescription forKeyedSubscript:@"activity"];

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
  jsonDict = [(ATXActivitySuggestionFeedbackEvent *)self jsonDict];
  v4 = [v2 dataWithJSONObject:jsonDict options:1 error:0];

  return v4;
}

- (NSString)description
{
  v2 = MEMORY[0x1E696AEC0];
  jsonDict = [(ATXActivitySuggestionFeedbackEvent *)self jsonDict];
  v4 = [v2 stringWithFormat:@"%@", jsonDict];

  return v4;
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
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(ATXActivitySuggestionFeedbackEvent *)self isEqualToATXActivitySuggestionFeedbackEvent:v5];
  }

  return v6;
}

- (BOOL)isEqualToATXActivitySuggestionFeedbackEvent:(id)event
{
  eventCopy = event;
  eventType = self->_eventType;
  if (eventType == [eventCopy eventType] && (suggestionType = self->_suggestionType, suggestionType == objc_msgSend(eventCopy, "suggestionType")))
  {
    eventDate = self->_eventDate;
    eventDate = [eventCopy eventDate];
    if ([(NSDate *)eventDate isEqualToDate:eventDate])
    {
      activity = self->_activity;
      activity = [eventCopy activity];
      if ([(ATXActivity *)activity isEqual:activity])
      {
        location = self->_location;
        v12 = location == [eventCopy location];
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
  modeUUID = [(ATXActivity *)self->_activity modeUUID];
  activityType = [(ATXActivity *)self->_activity activityType];
  location = [(ATXActivity *)self->_activity location];
  shouldSuggestTriggers = [(ATXActivity *)self->_activity shouldSuggestTriggers];
  triggers = [(ATXActivity *)self->_activity triggers];
  suggestionUUID = [(ATXActivity *)self->_activity suggestionUUID];
  localizedSuggestionReason = [(ATXActivity *)self->_activity localizedSuggestionReason];
  v11 = [v3 stringWithFormat:@"<modeUUID = %@, activityType = %lu, location = %lu, shouldSuggestTriggers = %d, triggers = %@, suggestionUUID = %@, localizedSuggestionReason = %@>", modeUUID, activityType, location, shouldSuggestTriggers, triggers, suggestionUUID, localizedSuggestionReason];

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