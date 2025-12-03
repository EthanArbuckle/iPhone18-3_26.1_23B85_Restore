@interface ATXNotificationSuggestionInteractionEvent
+ (id)eventWithData:(id)data dataVersion:(unsigned int)version;
- (ATXNotificationSuggestionInteractionEvent)initWithProto:(id)proto;
- (ATXNotificationSuggestionInteractionEvent)initWithProtoData:(id)data;
- (ATXNotificationSuggestionInteractionEvent)initWithSuggestionType:(int64_t)type eventType:(int64_t)eventType suggestionUUID:(id)d eventDate:(id)date;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToATXNotificationSuggestionInteractionEvent:(id)event;
- (id)encodeAsProto;
- (id)json;
- (id)jsonRawData;
- (id)proto;
@end

@implementation ATXNotificationSuggestionInteractionEvent

- (ATXNotificationSuggestionInteractionEvent)initWithSuggestionType:(int64_t)type eventType:(int64_t)eventType suggestionUUID:(id)d eventDate:(id)date
{
  dCopy = d;
  dateCopy = date;
  if (type)
  {
    if (eventType)
    {
      goto LABEL_3;
    }
  }

  else
  {
    [ATXNotificationSuggestionInteractionEvent initWithSuggestionType:eventType:suggestionUUID:eventDate:];
    if (eventType)
    {
LABEL_3:
      if (dCopy)
      {
        goto LABEL_4;
      }

LABEL_10:
      [ATXNotificationSuggestionInteractionEvent initWithSuggestionType:eventType:suggestionUUID:eventDate:];
      if (dateCopy)
      {
        goto LABEL_5;
      }

      goto LABEL_11;
    }
  }

  [ATXNotificationSuggestionInteractionEvent initWithSuggestionType:eventType:suggestionUUID:eventDate:];
  if (!dCopy)
  {
    goto LABEL_10;
  }

LABEL_4:
  if (dateCopy)
  {
    goto LABEL_5;
  }

LABEL_11:
  [ATXNotificationSuggestionInteractionEvent initWithSuggestionType:eventType:suggestionUUID:eventDate:];
LABEL_5:
  v16.receiver = self;
  v16.super_class = ATXNotificationSuggestionInteractionEvent;
  v13 = [(ATXNotificationSuggestionInteractionEvent *)&v16 init];
  v14 = v13;
  if (v13)
  {
    v13->_suggestionType = type;
    v13->_eventType = eventType;
    objc_storeStrong(&v13->_suggestionUUID, d);
    objc_storeStrong(&v14->_eventDate, date);
  }

  return v14;
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
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(ATXNotificationSuggestionInteractionEvent *)self isEqualToATXNotificationSuggestionInteractionEvent:v5];
  }

  return v6;
}

- (BOOL)isEqualToATXNotificationSuggestionInteractionEvent:(id)event
{
  eventCopy = event;
  if (__PAIR128__([eventCopy eventType], objc_msgSend(eventCopy, "suggestionType")) != *&self->_suggestionType)
  {
    goto LABEL_4;
  }

  v5 = self->_suggestionUUID;
  v6 = v5;
  if (v5 == eventCopy[3])
  {

    goto LABEL_7;
  }

  v7 = [(NSUUID *)v5 isEqual:?];

  if (v7)
  {
LABEL_7:
    [(NSDate *)self->_eventDate timeIntervalSinceReferenceDate];
    v11 = v10;
    eventDate = [eventCopy eventDate];
    [eventDate timeIntervalSinceReferenceDate];
    v8 = vabdd_f64(v11, v13) <= 2.22044605e-16;

    goto LABEL_5;
  }

LABEL_4:
  v8 = 0;
LABEL_5:

  return v8;
}

+ (id)eventWithData:(id)data dataVersion:(unsigned int)version
{
  dataCopy = data;
  v6 = [[self alloc] initWithProtoData:dataCopy];

  return v6;
}

- (id)jsonRawData
{
  v11[4] = *MEMORY[0x1E69E9840];
  v10[0] = @"suggestionType";
  suggestionType = self->_suggestionType;
  if (suggestionType >= 0xB)
  {
    v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", suggestionType, v10[0]];
  }

  else
  {
    v4 = off_1E80C2530[self->_suggestionType & 0xF];
  }

  v11[0] = v4;
  v10[1] = @"eventType";
  if (self->_eventType >= 0xA)
  {
    v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", self->_eventType];
  }

  else
  {
    v5 = off_1E80C2588[self->_eventType & 0xF];
  }

  v11[1] = v5;
  v10[2] = @"suggestionUUID";
  uUIDString = [(NSUUID *)self->_suggestionUUID UUIDString];
  v10[3] = @"eventDate";
  eventDate = self->_eventDate;
  v11[2] = uUIDString;
  v11[3] = eventDate;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:v10 count:4];

  return v8;
}

- (id)json
{
  v2 = MEMORY[0x1E696ACB0];
  jsonRawData = [(ATXNotificationSuggestionInteractionEvent *)self jsonRawData];
  v4 = [v2 dataWithJSONObject:jsonRawData options:1 error:0];

  return v4;
}

- (ATXNotificationSuggestionInteractionEvent)initWithProtoData:(id)data
{
  if (data)
  {
    dataCopy = data;
    v5 = [[ATXPBNotificationSuggestionInteractionEvent alloc] initWithData:dataCopy];

    self = [(ATXNotificationSuggestionInteractionEvent *)self initWithProto:v5];
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (id)encodeAsProto
{
  proto = [(ATXNotificationSuggestionInteractionEvent *)self proto];
  data = [proto data];

  return data;
}

- (ATXNotificationSuggestionInteractionEvent)initWithProto:(id)proto
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
    v15 = __atxlog_handle_notification_management();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
    {
      [(ATXDigestTimeline *)self initWithProto:v15];
    }

    goto LABEL_7;
  }

  v5 = protoCopy;
  suggestionType = [(ATXPBNotificationSuggestionInteractionEvent *)v5 suggestionType];
  eventType = [(ATXPBNotificationSuggestionInteractionEvent *)v5 eventType];
  v8 = objc_alloc(MEMORY[0x1E696AFB0]);
  suggestionUUID = [(ATXPBNotificationSuggestionInteractionEvent *)v5 suggestionUUID];
  v10 = [v8 initWithUUIDString:suggestionUUID];

  v11 = objc_alloc(MEMORY[0x1E695DF00]);
  secondsSinceReferenceDate = [(ATXPBNotificationSuggestionInteractionEvent *)v5 secondsSinceReferenceDate];

  v13 = [v11 initWithTimeIntervalSinceReferenceDate:secondsSinceReferenceDate];
  self = [(ATXNotificationSuggestionInteractionEvent *)self initWithSuggestionType:suggestionType eventType:eventType suggestionUUID:v10 eventDate:v13];

  selfCopy = self;
LABEL_8:

  return selfCopy;
}

- (id)proto
{
  v3 = objc_opt_new();
  [(ATXPBNotificationSuggestionInteractionEvent *)v3 setSuggestionType:?];
  [(ATXPBNotificationSuggestionInteractionEvent *)v3 setEventType:?];
  uUIDString = [(NSUUID *)self->_suggestionUUID UUIDString];
  [(ATXPBNotificationSuggestionInteractionEvent *)v3 setSuggestionUUID:uUIDString];

  [(NSDate *)self->_eventDate timeIntervalSinceReferenceDate];
  [(ATXPBNotificationSuggestionInteractionEvent *)v3 setSecondsSinceReferenceDate:v5];

  return v3;
}

- (void)initWithSuggestionType:eventType:suggestionUUID:eventDate:.cold.1()
{
  OUTLINED_FUNCTION_5();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_4();
  [v0 handleFailureInMethod:@"suggestionType" object:? file:? lineNumber:? description:?];
}

- (void)initWithSuggestionType:eventType:suggestionUUID:eventDate:.cold.2()
{
  OUTLINED_FUNCTION_5();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_4();
  [v0 handleFailureInMethod:@"eventType" object:? file:? lineNumber:? description:?];
}

- (void)initWithSuggestionType:eventType:suggestionUUID:eventDate:.cold.3()
{
  OUTLINED_FUNCTION_5();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_4();
  [v0 handleFailureInMethod:@"suggestionUUID" object:? file:? lineNumber:? description:?];
}

- (void)initWithSuggestionType:eventType:suggestionUUID:eventDate:.cold.4()
{
  OUTLINED_FUNCTION_5();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_4();
  [v0 handleFailureInMethod:@"eventDate" object:? file:? lineNumber:? description:?];
}

@end