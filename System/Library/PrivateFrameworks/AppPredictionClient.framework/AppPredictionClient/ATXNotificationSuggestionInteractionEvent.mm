@interface ATXNotificationSuggestionInteractionEvent
+ (id)eventWithData:(id)a3 dataVersion:(unsigned int)a4;
- (ATXNotificationSuggestionInteractionEvent)initWithProto:(id)a3;
- (ATXNotificationSuggestionInteractionEvent)initWithProtoData:(id)a3;
- (ATXNotificationSuggestionInteractionEvent)initWithSuggestionType:(int64_t)a3 eventType:(int64_t)a4 suggestionUUID:(id)a5 eventDate:(id)a6;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToATXNotificationSuggestionInteractionEvent:(id)a3;
- (id)encodeAsProto;
- (id)json;
- (id)jsonRawData;
- (id)proto;
@end

@implementation ATXNotificationSuggestionInteractionEvent

- (ATXNotificationSuggestionInteractionEvent)initWithSuggestionType:(int64_t)a3 eventType:(int64_t)a4 suggestionUUID:(id)a5 eventDate:(id)a6
{
  v11 = a5;
  v12 = a6;
  if (a3)
  {
    if (a4)
    {
      goto LABEL_3;
    }
  }

  else
  {
    [ATXNotificationSuggestionInteractionEvent initWithSuggestionType:eventType:suggestionUUID:eventDate:];
    if (a4)
    {
LABEL_3:
      if (v11)
      {
        goto LABEL_4;
      }

LABEL_10:
      [ATXNotificationSuggestionInteractionEvent initWithSuggestionType:eventType:suggestionUUID:eventDate:];
      if (v12)
      {
        goto LABEL_5;
      }

      goto LABEL_11;
    }
  }

  [ATXNotificationSuggestionInteractionEvent initWithSuggestionType:eventType:suggestionUUID:eventDate:];
  if (!v11)
  {
    goto LABEL_10;
  }

LABEL_4:
  if (v12)
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
    v13->_suggestionType = a3;
    v13->_eventType = a4;
    objc_storeStrong(&v13->_suggestionUUID, a5);
    objc_storeStrong(&v14->_eventDate, a6);
  }

  return v14;
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
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(ATXNotificationSuggestionInteractionEvent *)self isEqualToATXNotificationSuggestionInteractionEvent:v5];
  }

  return v6;
}

- (BOOL)isEqualToATXNotificationSuggestionInteractionEvent:(id)a3
{
  v4 = a3;
  if (__PAIR128__([v4 eventType], objc_msgSend(v4, "suggestionType")) != *&self->_suggestionType)
  {
    goto LABEL_4;
  }

  v5 = self->_suggestionUUID;
  v6 = v5;
  if (v5 == v4[3])
  {

    goto LABEL_7;
  }

  v7 = [(NSUUID *)v5 isEqual:?];

  if (v7)
  {
LABEL_7:
    [(NSDate *)self->_eventDate timeIntervalSinceReferenceDate];
    v11 = v10;
    v12 = [v4 eventDate];
    [v12 timeIntervalSinceReferenceDate];
    v8 = vabdd_f64(v11, v13) <= 2.22044605e-16;

    goto LABEL_5;
  }

LABEL_4:
  v8 = 0;
LABEL_5:

  return v8;
}

+ (id)eventWithData:(id)a3 dataVersion:(unsigned int)a4
{
  v5 = a3;
  v6 = [[a1 alloc] initWithProtoData:v5];

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
  v6 = [(NSUUID *)self->_suggestionUUID UUIDString];
  v10[3] = @"eventDate";
  eventDate = self->_eventDate;
  v11[2] = v6;
  v11[3] = eventDate;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:v10 count:4];

  return v8;
}

- (id)json
{
  v2 = MEMORY[0x1E696ACB0];
  v3 = [(ATXNotificationSuggestionInteractionEvent *)self jsonRawData];
  v4 = [v2 dataWithJSONObject:v3 options:1 error:0];

  return v4;
}

- (ATXNotificationSuggestionInteractionEvent)initWithProtoData:(id)a3
{
  if (a3)
  {
    v4 = a3;
    v5 = [[ATXPBNotificationSuggestionInteractionEvent alloc] initWithData:v4];

    self = [(ATXNotificationSuggestionInteractionEvent *)self initWithProto:v5];
    v6 = self;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)encodeAsProto
{
  v2 = [(ATXNotificationSuggestionInteractionEvent *)self proto];
  v3 = [v2 data];

  return v3;
}

- (ATXNotificationSuggestionInteractionEvent)initWithProto:(id)a3
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
    v15 = __atxlog_handle_notification_management();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
    {
      [(ATXDigestTimeline *)self initWithProto:v15];
    }

    goto LABEL_7;
  }

  v5 = v4;
  v6 = [(ATXPBNotificationSuggestionInteractionEvent *)v5 suggestionType];
  v7 = [(ATXPBNotificationSuggestionInteractionEvent *)v5 eventType];
  v8 = objc_alloc(MEMORY[0x1E696AFB0]);
  v9 = [(ATXPBNotificationSuggestionInteractionEvent *)v5 suggestionUUID];
  v10 = [v8 initWithUUIDString:v9];

  v11 = objc_alloc(MEMORY[0x1E695DF00]);
  v12 = [(ATXPBNotificationSuggestionInteractionEvent *)v5 secondsSinceReferenceDate];

  v13 = [v11 initWithTimeIntervalSinceReferenceDate:v12];
  self = [(ATXNotificationSuggestionInteractionEvent *)self initWithSuggestionType:v6 eventType:v7 suggestionUUID:v10 eventDate:v13];

  v14 = self;
LABEL_8:

  return v14;
}

- (id)proto
{
  v3 = objc_opt_new();
  [(ATXPBNotificationSuggestionInteractionEvent *)v3 setSuggestionType:?];
  [(ATXPBNotificationSuggestionInteractionEvent *)v3 setEventType:?];
  v4 = [(NSUUID *)self->_suggestionUUID UUIDString];
  [(ATXPBNotificationSuggestionInteractionEvent *)v3 setSuggestionUUID:v4];

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