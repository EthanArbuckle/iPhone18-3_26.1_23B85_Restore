@interface ATXUserNotificationLoggingEvent
+ (id)eventWithData:(id)data dataVersion:(unsigned int)version;
- (ATXUserNotificationLoggingEvent)initWithCoder:(id)coder;
- (ATXUserNotificationLoggingEvent)initWithProto:(id)proto;
- (ATXUserNotificationLoggingEvent)initWithProtoData:(id)data;
- (BOOL)eventCausesNotificationNonprominence;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToATXUserNotificationLoggingEvent:(id)event;
- (NSString)description;
- (id)copyWithZone:(_NSZone *)zone;
- (id)encodeAsProto;
- (id)initFromJSON:(id)n;
- (id)initFromUserNotification:(id)notification eventType:(int64_t)type timestamp:(double)timestamp deliveryReason:(unint64_t)reason deliveryUI:(unint64_t)i;
- (id)initFromUserNotification:(id)notification eventType:(int64_t)type timestamp:(double)timestamp deliveryReason:(unint64_t)reason deliveryUI:(unint64_t)i modeUUID:(id)d;
- (id)jsonRepresentation;
- (id)proto;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ATXUserNotificationLoggingEvent

- (id)encodeAsProto
{
  proto = [(ATXUserNotificationLoggingEvent *)self proto];
  data = [proto data];

  return data;
}

- (id)proto
{
  v3 = objc_opt_new();
  proto = [(ATXUserNotification *)self->_notification proto];
  [v3 setNotification:proto];

  [v3 setEventType:LODWORD(self->_eventType)];
  [v3 setTimestamp:self->_timestamp];
  uUIDString = [(NSUUID *)self->_modeUUID UUIDString];
  [v3 setModeIdentifier:uUIDString];

  [v3 setDeliveryReason:LODWORD(self->_deliveryReason)];
  [v3 setDeliveryUI:LODWORD(self->_deliveryUI)];

  return v3;
}

- (id)initFromUserNotification:(id)notification eventType:(int64_t)type timestamp:(double)timestamp deliveryReason:(unint64_t)reason deliveryUI:(unint64_t)i
{
  v12 = MEMORY[0x1E69C5AB0];
  notificationCopy = notification;
  currentModeUUID = [v12 currentModeUUID];
  v15 = [(ATXUserNotificationLoggingEvent *)self initFromUserNotification:notificationCopy eventType:type timestamp:reason deliveryReason:i deliveryUI:currentModeUUID modeUUID:timestamp];

  return v15;
}

- (id)initFromUserNotification:(id)notification eventType:(int64_t)type timestamp:(double)timestamp deliveryReason:(unint64_t)reason deliveryUI:(unint64_t)i modeUUID:(id)d
{
  notificationCopy = notification;
  dCopy = d;
  v20.receiver = self;
  v20.super_class = ATXUserNotificationLoggingEvent;
  v16 = [(ATXUserNotificationLoggingEvent *)&v20 init];
  if (v16)
  {
    v17 = [notificationCopy copy];
    notification = v16->_notification;
    v16->_notification = v17;

    v16->_eventType = type;
    v16->_timestamp = timestamp;
    v16->_deliveryReason = reason;
    v16->_deliveryUI = i;
    objc_storeStrong(&v16->_modeUUID, d);
  }

  return v16;
}

- (BOOL)eventCausesNotificationNonprominence
{
  eventType = self->_eventType;
  v3 = eventType > 0x11;
  v4 = (1 << eventType) & 0x20440;
  return !v3 && v4 != 0 || [(ATXUserNotificationLoggingEvent *)self eventCausesNotificationInactivity];
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
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(ATXUserNotificationLoggingEvent *)self isEqualToATXUserNotificationLoggingEvent:v5];
  }

  return v6;
}

- (BOOL)isEqualToATXUserNotificationLoggingEvent:(id)event
{
  eventCopy = event;
  v5 = self->_notification;
  v6 = v5;
  if (v5 == eventCopy[1])
  {
  }

  else
  {
    v7 = [(ATXUserNotification *)v5 isEqual:?];

    if (!v7)
    {
      goto LABEL_9;
    }
  }

  if (self->_eventType != eventCopy[2])
  {
LABEL_9:
    v9 = 0;
    goto LABEL_10;
  }

  v8 = self->_timestamp - *(eventCopy + 3);
  if (v8 < 0.0)
  {
    v8 = -v8;
  }

  v9 = v8 <= 0.1;
LABEL_10:

  return v9;
}

- (NSString)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  notification = self->_notification;
  if (self->_eventType >= 0x1C)
  {
    v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", self->_eventType];
  }

  else
  {
    v5 = off_1E80C1E78[self->_eventType & 0x1F];
  }

  timestamp = self->_timestamp;
  if (self->_deliveryReason >= 8)
  {
    v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", self->_deliveryReason];
  }

  else
  {
    v7 = off_1E80C1F58[self->_deliveryReason & 7];
  }

  if (self->_deliveryUI >= 8)
  {
    v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", self->_deliveryUI];
  }

  else
  {
    v8 = off_1E80C1F98[self->_deliveryUI & 7];
  }

  uUIDString = [(NSUUID *)self->_modeUUID UUIDString];
  v10 = [v3 initWithFormat:@"Notification event: user notification: %@, event: %@, timestamp: %f, deliveryReason: %@, deliveryUI: %@, mode: %@", notification, v5, *&timestamp, v7, v8, uUIDString];

  return v10;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [ATXUserNotificationLoggingEvent allocWithZone:zone];
  notification = self->_notification;
  eventType = self->_eventType;
  timestamp = self->_timestamp;
  deliveryReason = self->_deliveryReason;
  deliveryUI = self->_deliveryUI;
  modeUUID = self->_modeUUID;

  return [(ATXUserNotificationLoggingEvent *)v4 initFromUserNotification:notification eventType:eventType timestamp:deliveryReason deliveryReason:deliveryUI deliveryUI:modeUUID modeUUID:timestamp];
}

- (id)initFromJSON:(id)n
{
  nCopy = n;
  v5 = [[ATXPBUserNotificationLoggingEvent alloc] initFromJSON:nCopy];

  v6 = [(ATXUserNotificationLoggingEvent *)self initWithProto:v5];
  return v6;
}

- (id)jsonRepresentation
{
  proto = [(ATXUserNotificationLoggingEvent *)self proto];
  jsonRepresentation = [proto jsonRepresentation];

  return jsonRepresentation;
}

- (ATXUserNotificationLoggingEvent)initWithProtoData:(id)data
{
  if (data)
  {
    dataCopy = data;
    v5 = [[ATXPBUserNotificationLoggingEvent alloc] initWithData:dataCopy];

    self = [(ATXUserNotificationLoggingEvent *)self initWithProto:v5];
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (ATXUserNotificationLoggingEvent)initWithProto:(id)proto
{
  protoCopy = proto;
  if (protoCopy)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = protoCopy;
      selfCopy = [v5 notification];

      if (!selfCopy)
      {
LABEL_14:

        goto LABEL_15;
      }

      notification = [v5 notification];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      if (isKindOfClass)
      {
        v9 = [ATXUserNotification alloc];
        notification2 = [v5 notification];
        v11 = [(ATXUserNotification *)v9 initWithProto:notification2];

        eventType = [v5 eventType];
        [v5 timestamp];
        v14 = v13;
        deliveryReason = [v5 deliveryReason];
        deliveryUI = [v5 deliveryUI];
        modeIdentifier = [v5 modeIdentifier];
        if (modeIdentifier)
        {
          v18 = objc_alloc(MEMORY[0x1E696AFB0]);
          modeIdentifier2 = [v5 modeIdentifier];
          v20 = [v18 initWithUUIDString:modeIdentifier2];
          self = [(ATXUserNotificationLoggingEvent *)self initFromUserNotification:v11 eventType:eventType timestamp:deliveryReason deliveryReason:deliveryUI deliveryUI:v20 modeUUID:v14];
        }

        else
        {
          self = [(ATXUserNotificationLoggingEvent *)self initFromUserNotification:v11 eventType:eventType timestamp:deliveryReason deliveryReason:deliveryUI deliveryUI:0 modeUUID:v14];
        }

        selfCopy = self;
        goto LABEL_14;
      }

      v21 = __atxlog_handle_notification_management();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_FAULT))
      {
        [ATXMissedNotificationRanking initWithProto:];
      }
    }

    else
    {
      v5 = __atxlog_handle_notification_management();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
      {
        [ATXMissedNotificationRanking initWithProto:];
      }
    }

    selfCopy = 0;
    goto LABEL_14;
  }

  selfCopy = 0;
LABEL_15:

  return selfCopy;
}

+ (id)eventWithData:(id)data dataVersion:(unsigned int)version
{
  dataCopy = data;
  v6 = [[self alloc] initWithProtoData:dataCopy];

  return v6;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  encodeAsProto = [(ATXUserNotificationLoggingEvent *)self encodeAsProto];
  [coderCopy encodeObject:encodeAsProto forKey:@"protobufData"];
}

- (ATXUserNotificationLoggingEvent)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"protobufData"];

  if (v5)
  {
    self = [(ATXUserNotificationLoggingEvent *)self initWithProtoData:v5];
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

@end