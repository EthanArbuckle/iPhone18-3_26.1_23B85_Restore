@interface ATXDigestOnboardingSuggestionLoggingEvent
+ (id)eventWithData:(id)data dataVersion:(unsigned int)version;
- (ATXDigestOnboardingSuggestionLoggingEvent)initWithProto:(id)proto;
- (ATXDigestOnboardingSuggestionLoggingEvent)initWithProtoData:(id)data;
- (ATXDigestOnboardingSuggestionLoggingEvent)initWithSessionUUID:(id)d outcome:(int)outcome timeToResolution:(double)resolution;
- (id)encodeAsProto;
- (id)proto;
@end

@implementation ATXDigestOnboardingSuggestionLoggingEvent

- (ATXDigestOnboardingSuggestionLoggingEvent)initWithSessionUUID:(id)d outcome:(int)outcome timeToResolution:(double)resolution
{
  dCopy = d;
  v13.receiver = self;
  v13.super_class = ATXDigestOnboardingSuggestionLoggingEvent;
  v10 = [(ATXDigestOnboardingSuggestionLoggingEvent *)&v13 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_sessionUUID, d);
    v11->_outcome = outcome;
    v11->_timeToResolution = resolution;
  }

  return v11;
}

+ (id)eventWithData:(id)data dataVersion:(unsigned int)version
{
  dataCopy = data;
  v6 = [[self alloc] initWithProtoData:dataCopy];

  return v6;
}

- (ATXDigestOnboardingSuggestionLoggingEvent)initWithProtoData:(id)data
{
  dataCopy = data;
  v5 = [[ATXPBDigestOnboardingSuggestionLoggingEvent alloc] initWithData:dataCopy];

  v6 = [(ATXDigestOnboardingSuggestionLoggingEvent *)self initWithProto:v5];
  return v6;
}

- (id)encodeAsProto
{
  proto = [(ATXDigestOnboardingSuggestionLoggingEvent *)self proto];
  data = [proto data];

  return data;
}

- (ATXDigestOnboardingSuggestionLoggingEvent)initWithProto:(id)proto
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
    v14 = __atxlog_handle_notification_management();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
    {
      [(ATXDigestTimeline *)self initWithProto:v14];
    }

    goto LABEL_7;
  }

  v5 = MEMORY[0x1E696AFB0];
  v6 = protoCopy;
  v7 = [v5 alloc];
  sessionUUID = [v6 sessionUUID];
  v9 = [v7 initWithUUIDString:sessionUUID];

  digestOnboardingSuggestionOutcome = [v6 digestOnboardingSuggestionOutcome];
  [v6 timeToResolution];
  v12 = v11;

  self = [(ATXDigestOnboardingSuggestionLoggingEvent *)self initWithSessionUUID:v9 outcome:digestOnboardingSuggestionOutcome timeToResolution:v12];
  selfCopy = self;
LABEL_8:

  return selfCopy;
}

- (id)proto
{
  v3 = objc_opt_new();
  uUIDString = [(NSUUID *)self->_sessionUUID UUIDString];
  [v3 setSessionUUID:uUIDString];

  [v3 setDigestOnboardingSuggestionOutcome:self->_outcome];
  [v3 setTimeToResolution:self->_timeToResolution];

  return v3;
}

@end