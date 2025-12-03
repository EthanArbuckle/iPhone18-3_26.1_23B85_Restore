@interface ATXUserNotificationDigestLoggingEvent
+ (id)eventWithData:(id)data dataVersion:(unsigned int)version;
- (ATXUserNotificationDigestLoggingEvent)initWithCoder:(id)coder;
- (ATXUserNotificationDigestLoggingEvent)initWithNotificationDigest:(id)digest eventType:(int64_t)type timestamp:(double)timestamp;
- (ATXUserNotificationDigestLoggingEvent)initWithProto:(id)proto;
- (ATXUserNotificationDigestLoggingEvent)initWithProtoData:(id)data;
- (id)encodeAsProto;
- (id)initFromJSON:(id)n;
- (id)json;
- (id)jsonRepresentation;
- (id)proto;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ATXUserNotificationDigestLoggingEvent

- (ATXUserNotificationDigestLoggingEvent)initWithNotificationDigest:(id)digest eventType:(int64_t)type timestamp:(double)timestamp
{
  digestCopy = digest;
  v13.receiver = self;
  v13.super_class = ATXUserNotificationDigestLoggingEvent;
  v10 = [(ATXUserNotificationDigestLoggingEvent *)&v13 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_notificationDigest, digest);
    v11->_eventType = type;
    v11->_timestamp = timestamp;
  }

  return v11;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  encodeAsProto = [(ATXUserNotificationDigestLoggingEvent *)self encodeAsProto];
  [coderCopy encodeObject:encodeAsProto forKey:@"protobufData"];
}

- (ATXUserNotificationDigestLoggingEvent)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"protobufData"];

  if (v5)
  {
    self = [(ATXUserNotificationDigestLoggingEvent *)self initWithProtoData:v5];
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
  proto = [(ATXUserNotificationDigestLoggingEvent *)self proto];
  data = [proto data];

  return data;
}

- (ATXUserNotificationDigestLoggingEvent)initWithProto:(id)proto
{
  protoCopy = proto;
  v15.receiver = self;
  v15.super_class = ATXUserNotificationDigestLoggingEvent;
  v5 = [(ATXUserNotificationDigestLoggingEvent *)&v15 init];
  if (!v5)
  {
    goto LABEL_5;
  }

  if (!protoCopy)
  {
LABEL_9:
    v12 = 0;
    goto LABEL_10;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v13 = __atxlog_handle_notification_management();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
    {
      [(ATXDigestTimeline *)v5 initWithProto:v13];
    }

    goto LABEL_9;
  }

  v6 = protoCopy;
  v7 = [ATXUserNotificationDigest alloc];
  digest = [v6 digest];
  v9 = [(ATXUserNotificationDigest *)v7 initWithProto:digest];
  notificationDigest = v5->_notificationDigest;
  v5->_notificationDigest = v9;

  [v6 timestamp];
  v5->_timestamp = v11;
  LODWORD(v7) = [v6 eventType];

  v5->_eventType = v7;
LABEL_5:
  v12 = v5;
LABEL_10:

  return v12;
}

- (ATXUserNotificationDigestLoggingEvent)initWithProtoData:(id)data
{
  if (data)
  {
    dataCopy = data;
    v5 = [[ATXPBUserNotificationDigestLoggingEvent alloc] initWithData:dataCopy];

    self = [(ATXUserNotificationDigestLoggingEvent *)self initWithProto:v5];
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (id)proto
{
  v3 = objc_opt_new();
  [v3 setEventType:{-[ATXUserNotificationDigestLoggingEvent eventType](self, "eventType")}];
  [(ATXUserNotificationDigestLoggingEvent *)self timestamp];
  [v3 setTimestamp:?];
  notificationDigest = [(ATXUserNotificationDigestLoggingEvent *)self notificationDigest];
  proto = [notificationDigest proto];
  [v3 setDigest:proto];

  return v3;
}

- (id)initFromJSON:(id)n
{
  nCopy = n;
  v5 = [[ATXPBUserNotificationDigestLoggingEvent alloc] initFromJSON:nCopy];

  v6 = [(ATXUserNotificationDigestLoggingEvent *)self initWithProto:v5];
  return v6;
}

- (id)jsonRepresentation
{
  proto = [(ATXUserNotificationDigestLoggingEvent *)self proto];
  jsonRepresentation = [proto jsonRepresentation];

  return jsonRepresentation;
}

- (id)json
{
  v2 = MEMORY[0x1E696ACB0];
  jsonDict = [(ATXUserNotificationDigestLoggingEvent *)self jsonDict];
  v4 = [v2 dataWithJSONObject:jsonDict options:1 error:0];

  return v4;
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

@end