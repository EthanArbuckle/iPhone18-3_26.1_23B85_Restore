@interface ATXNotificationGroupEvent
+ (id)eventWithData:(id)a3 dataVersion:(unsigned int)a4;
- (ATXNotificationGroupEvent)initWithEventType:(int64_t)a3 uuid:(id)a4 eventDate:(id)a5;
- (ATXNotificationGroupEvent)initWithProto:(id)a3;
- (ATXNotificationGroupEvent)initWithProtoData:(id)a3;
- (id)encodeAsProto;
- (id)json;
- (id)jsonRawData;
- (id)proto;
@end

@implementation ATXNotificationGroupEvent

- (ATXNotificationGroupEvent)initWithEventType:(int64_t)a3 uuid:(id)a4 eventDate:(id)a5
{
  v10 = a4;
  v11 = a5;
  v12 = v11;
  if (a3)
  {
    if (v11)
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
    v13->_eventType = a3;
    objc_storeStrong(&v13->_uuid, a4);
    objc_storeStrong(&v14->_eventDate, a5);
  }

  return v14;
}

+ (id)eventWithData:(id)a3 dataVersion:(unsigned int)a4
{
  v5 = a3;
  v6 = [[a1 alloc] initWithProtoData:v5];

  return v6;
}

- (id)jsonRawData
{
  v9[3] = *MEMORY[0x1E69E9840];
  uuid = self->_uuid;
  if (uuid)
  {
    v4 = [(NSUUID *)uuid UUIDString];
  }

  else
  {
    v4 = @"nil";
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
  v9[1] = v4;
  v8[1] = @"uuid";
  v8[2] = @"eventDate";
  v9[2] = self->_eventDate;
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:v8 count:3];

  return v6;
}

- (id)json
{
  v2 = MEMORY[0x1E696ACB0];
  v3 = [(ATXNotificationGroupEvent *)self jsonRawData];
  v4 = [v2 dataWithJSONObject:v3 options:1 error:0];

  return v4;
}

- (ATXNotificationGroupEvent)initWithProtoData:(id)a3
{
  if (a3)
  {
    v4 = a3;
    v5 = [[ATXPBNotificationGroupEvent alloc] initWithData:v4];

    self = [(ATXNotificationGroupEvent *)self initWithProto:v5];
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
  v2 = [(ATXNotificationGroupEvent *)self proto];
  v3 = [v2 data];

  return v3;
}

- (ATXNotificationGroupEvent)initWithProto:(id)a3
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

  v5 = v4;
  v6 = [(ATXPBNotificationGroupEvent *)v5 eventType];
  v7 = objc_alloc(MEMORY[0x1E696AFB0]);
  v8 = [(ATXPBNotificationGroupEvent *)v5 uuid];
  v9 = [v7 initWithUUIDString:v8];

  v10 = objc_alloc(MEMORY[0x1E695DF00]);
  v11 = [(ATXPBNotificationGroupEvent *)v5 secondsSinceReferenceDate];

  v12 = [v10 initWithTimeIntervalSinceReferenceDate:v11];
  self = [(ATXNotificationGroupEvent *)self initWithEventType:v6 uuid:v9 eventDate:v12];

  v13 = self;
LABEL_8:

  return v13;
}

- (id)proto
{
  v3 = objc_opt_new();
  [(ATXPBNotificationGroupEvent *)v3 setEventType:?];
  v4 = [(NSUUID *)self->_uuid UUIDString];
  [(ATXPBNotificationGroupEvent *)v3 setUuid:v4];

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