@interface ATXNotificationGroupEvent
+ (id)eventWithData:(id)data dataVersion:(unsigned int)version;
- (ATXNotificationGroupEvent)initWithEventType:(int64_t)type uuid:(id)uuid eventDate:(id)date;
- (ATXNotificationGroupEvent)initWithProto:(id)proto;
- (ATXNotificationGroupEvent)initWithProtoData:(id)data;
- (id)encodeAsProto;
- (id)json;
- (id)jsonRawData;
- (id)proto;
@end

@implementation ATXNotificationGroupEvent

- (ATXNotificationGroupEvent)initWithEventType:(int64_t)type uuid:(id)uuid eventDate:(id)date
{
  uuidCopy = uuid;
  dateCopy = date;
  v12 = dateCopy;
  if (type)
  {
    if (dateCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    [ATXNotificationGroupEvent initWithEventType:a2 uuid:self eventDate:?];
    if (v12)
    {
      goto LABEL_3;
    }
  }

  [ATXNotificationGroupEvent initWithEventType:a2 uuid:self eventDate:?];
LABEL_3:
  v16.receiver = self;
  v16.super_class = ATXNotificationGroupEvent;
  v13 = [(ATXNotificationGroupEvent *)&v16 init];
  v14 = v13;
  if (v13)
  {
    v13->_eventType = type;
    objc_storeStrong(&v13->_uuid, uuid);
    objc_storeStrong(&v14->_eventDate, date);
  }

  return v14;
}

+ (id)eventWithData:(id)data dataVersion:(unsigned int)version
{
  dataCopy = data;
  v6 = [[self alloc] initWithProtoData:dataCopy];

  return v6;
}

- (id)jsonRawData
{
  v9[3] = *MEMORY[0x1E69E9840];
  uuid = self->_uuid;
  if (uuid)
  {
    uUIDString = [(NSUUID *)uuid UUIDString];
  }

  else
  {
    uUIDString = @"nil";
  }

  v8[0] = @"eventType";
  if (self->_eventType >= 0x16)
  {
    v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", self->_eventType, v8[0]];
  }

  else
  {
    v5 = off_1E80C1CE0[self->_eventType & 0x1F];
  }

  v9[0] = v5;
  v9[1] = uUIDString;
  v8[1] = @"uuid";
  v8[2] = @"eventDate";
  v9[2] = self->_eventDate;
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:v8 count:3];

  return v6;
}

- (id)json
{
  v2 = MEMORY[0x1E696ACB0];
  jsonRawData = [(ATXNotificationGroupEvent *)self jsonRawData];
  v4 = [v2 dataWithJSONObject:jsonRawData options:1 error:0];

  return v4;
}

- (ATXNotificationGroupEvent)initWithProtoData:(id)data
{
  if (data)
  {
    dataCopy = data;
    v5 = [[ATXPBNotificationGroupEvent alloc] initWithData:dataCopy];

    self = [(ATXNotificationGroupEvent *)self initWithProto:v5];
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
  proto = [(ATXNotificationGroupEvent *)self proto];
  data = [proto data];

  return data;
}

- (ATXNotificationGroupEvent)initWithProto:(id)proto
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

  v5 = protoCopy;
  eventType = [(ATXPBNotificationGroupEvent *)v5 eventType];
  v7 = objc_alloc(MEMORY[0x1E696AFB0]);
  uuid = [(ATXPBNotificationGroupEvent *)v5 uuid];
  v9 = [v7 initWithUUIDString:uuid];

  v10 = objc_alloc(MEMORY[0x1E695DF00]);
  secondsSinceReferenceDate = [(ATXPBNotificationGroupEvent *)v5 secondsSinceReferenceDate];

  v12 = [v10 initWithTimeIntervalSinceReferenceDate:secondsSinceReferenceDate];
  self = [(ATXNotificationGroupEvent *)self initWithEventType:eventType uuid:v9 eventDate:v12];

  selfCopy = self;
LABEL_8:

  return selfCopy;
}

- (id)proto
{
  v3 = objc_opt_new();
  [(ATXPBNotificationGroupEvent *)v3 setEventType:?];
  uUIDString = [(NSUUID *)self->_uuid UUIDString];
  [(ATXPBNotificationGroupEvent *)v3 setUuid:uUIDString];

  [(NSDate *)self->_eventDate timeIntervalSinceReferenceDate];
  [(ATXPBNotificationGroupEvent *)v3 setSecondsSinceReferenceDate:v5];

  return v3;
}

- (void)initWithEventType:(uint64_t)a1 uuid:(uint64_t)a2 eventDate:.cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"ATXNotificationGroupEvent.m" lineNumber:21 description:{@"Invalid parameter not satisfying: %@", @"eventType"}];
}

- (void)initWithEventType:(uint64_t)a1 uuid:(uint64_t)a2 eventDate:.cold.2(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"ATXNotificationGroupEvent.m" lineNumber:22 description:{@"Invalid parameter not satisfying: %@", @"eventDate"}];
}

@end