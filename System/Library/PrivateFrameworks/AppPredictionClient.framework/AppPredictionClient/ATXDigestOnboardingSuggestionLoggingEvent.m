@interface ATXDigestOnboardingSuggestionLoggingEvent
+ (id)eventWithData:(id)a3 dataVersion:(unsigned int)a4;
- (ATXDigestOnboardingSuggestionLoggingEvent)initWithProto:(id)a3;
- (ATXDigestOnboardingSuggestionLoggingEvent)initWithProtoData:(id)a3;
- (ATXDigestOnboardingSuggestionLoggingEvent)initWithSessionUUID:(id)a3 outcome:(int)a4 timeToResolution:(double)a5;
- (id)encodeAsProto;
- (id)proto;
@end

@implementation ATXDigestOnboardingSuggestionLoggingEvent

- (ATXDigestOnboardingSuggestionLoggingEvent)initWithSessionUUID:(id)a3 outcome:(int)a4 timeToResolution:(double)a5
{
  v9 = a3;
  v13.receiver = self;
  v13.super_class = ATXDigestOnboardingSuggestionLoggingEvent;
  v10 = [(ATXDigestOnboardingSuggestionLoggingEvent *)&v13 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_sessionUUID, a3);
    v11->_outcome = a4;
    v11->_timeToResolution = a5;
  }

  return v11;
}

+ (id)eventWithData:(id)a3 dataVersion:(unsigned int)a4
{
  v5 = a3;
  v6 = [[a1 alloc] initWithProtoData:v5];

  return v6;
}

- (ATXDigestOnboardingSuggestionLoggingEvent)initWithProtoData:(id)a3
{
  v4 = a3;
  v5 = [[ATXPBDigestOnboardingSuggestionLoggingEvent alloc] initWithData:v4];

  v6 = [(ATXDigestOnboardingSuggestionLoggingEvent *)self initWithProto:v5];
  return v6;
}

- (id)encodeAsProto
{
  v2 = [(ATXDigestOnboardingSuggestionLoggingEvent *)self proto];
  v3 = [v2 data];

  return v3;
}

- (ATXDigestOnboardingSuggestionLoggingEvent)initWithProto:(id)a3
{
  v4 = a3;
  if (!v4)
  {
LABEL_7:
    v13 = 0;
    goto LABEL_8;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v14 = __atxlog_handle_notification_management();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
    {
      [(ATXDigestTimeline *)self initWithProto:v14];
    }

    goto LABEL_7;
  }

  v5 = MEMORY[0x1E696AFB0];
  v6 = v4;
  v7 = [v5 alloc];
  v8 = [v6 sessionUUID];
  v9 = [v7 initWithUUIDString:v8];

  v10 = [v6 digestOnboardingSuggestionOutcome];
  [v6 timeToResolution];
  v12 = v11;

  self = [(ATXDigestOnboardingSuggestionLoggingEvent *)self initWithSessionUUID:v9 outcome:v10 timeToResolution:v12];
  v13 = self;
LABEL_8:

  return v13;
}

- (id)proto
{
  v3 = objc_opt_new();
  v4 = [(NSUUID *)self->_sessionUUID UUIDString];
  [v3 setSessionUUID:v4];

  [v3 setDigestOnboardingSuggestionOutcome:self->_outcome];
  [v3 setTimeToResolution:self->_timeToResolution];

  return v3;
}

@end