@interface ATXUserNotificationLoggingEvent
+ (id)eventWithData:(id)a3 dataVersion:(unsigned int)a4;
- (ATXUserNotificationLoggingEvent)initWithCoder:(id)a3;
- (ATXUserNotificationLoggingEvent)initWithProto:(id)a3;
- (ATXUserNotificationLoggingEvent)initWithProtoData:(id)a3;
- (BOOL)eventCausesNotificationNonprominence;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToATXUserNotificationLoggingEvent:(id)a3;
- (NSString)description;
- (id)copyWithZone:(_NSZone *)a3;
- (id)encodeAsProto;
- (id)initFromJSON:(id)a3;
- (id)initFromUserNotification:(id)a3 eventType:(int64_t)a4 timestamp:(double)a5 deliveryReason:(unint64_t)a6 deliveryUI:(unint64_t)a7;
- (id)initFromUserNotification:(id)a3 eventType:(int64_t)a4 timestamp:(double)a5 deliveryReason:(unint64_t)a6 deliveryUI:(unint64_t)a7 modeUUID:(id)a8;
- (id)jsonRepresentation;
- (id)proto;
- (void)encodeWithCoder:(id)a3;
@end

@implementation ATXUserNotificationLoggingEvent

- (id)encodeAsProto
{
  v2 = [(ATXUserNotificationLoggingEvent *)self proto];
  v3 = [v2 data];

  return v3;
}

- (id)proto
{
  v3 = objc_opt_new();
  v4 = [(ATXUserNotification *)self->_notification proto];
  [v3 setNotification:v4];

  [v3 setEventType:LODWORD(self->_eventType)];
  [v3 setTimestamp:self->_timestamp];
  v5 = [(NSUUID *)self->_modeUUID UUIDString];
  [v3 setModeIdentifier:v5];

  [v3 setDeliveryReason:LODWORD(self->_deliveryReason)];
  [v3 setDeliveryUI:LODWORD(self->_deliveryUI)];

  return v3;
}

- (id)initFromUserNotification:(id)a3 eventType:(int64_t)a4 timestamp:(double)a5 deliveryReason:(unint64_t)a6 deliveryUI:(unint64_t)a7
{
  v12 = MEMORY[0x1E69C5AB0];
  v13 = a3;
  v14 = [v12 currentModeUUID];
  v15 = [(ATXUserNotificationLoggingEvent *)self initFromUserNotification:v13 eventType:a4 timestamp:a6 deliveryReason:a7 deliveryUI:v14 modeUUID:a5];

  return v15;
}

- (id)initFromUserNotification:(id)a3 eventType:(int64_t)a4 timestamp:(double)a5 deliveryReason:(unint64_t)a6 deliveryUI:(unint64_t)a7 modeUUID:(id)a8
{
  v14 = a3;
  v15 = a8;
  v20.receiver = self;
  v20.super_class = ATXUserNotificationLoggingEvent;
  v16 = [(ATXUserNotificationLoggingEvent *)&v20 init];
  if (v16)
  {
    v17 = [v14 copy];
    notification = v16->_notification;
    v16->_notification = v17;

    v16->_eventType = a4;
    v16->_timestamp = a5;
    v16->_deliveryReason = a6;
    v16->_deliveryUI = a7;
    objc_storeStrong(&v16->_modeUUID, a8);
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
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(ATXUserNotificationLoggingEvent *)self isEqualToATXUserNotificationLoggingEvent:v5];
  }

  return v6;
}

- (BOOL)isEqualToATXUserNotificationLoggingEvent:(id)a3
{
  v4 = a3;
  v5 = self->_notification;
  v6 = v5;
  if (v5 == v4[1])
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

  if (self->_eventType != v4[2])
  {
LABEL_9:
    v9 = 0;
    goto LABEL_10;
  }

  v8 = self->_timestamp - *(v4 + 3);
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

  v9 = [(NSUUID *)self->_modeUUID UUIDString];
  v10 = [v3 initWithFormat:@"Notification event: user notification: %@, event: %@, timestamp: %f, deliveryReason: %@, deliveryUI: %@, mode: %@", notification, v5, *&timestamp, v7, v8, v9];

  return v10;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [ATXUserNotificationLoggingEvent allocWithZone:a3];
  notification = self->_notification;
  eventType = self->_eventType;
  timestamp = self->_timestamp;
  deliveryReason = self->_deliveryReason;
  deliveryUI = self->_deliveryUI;
  modeUUID = self->_modeUUID;

  return [(ATXUserNotificationLoggingEvent *)v4 initFromUserNotification:notification eventType:eventType timestamp:deliveryReason deliveryReason:deliveryUI deliveryUI:modeUUID modeUUID:timestamp];
}

- (id)initFromJSON:(id)a3
{
  v4 = a3;
  v5 = [[ATXPBUserNotificationLoggingEvent alloc] initFromJSON:v4];

  v6 = [(ATXUserNotificationLoggingEvent *)self initWithProto:v5];
  return v6;
}

- (id)jsonRepresentation
{
  v2 = [(ATXUserNotificationLoggingEvent *)self proto];
  v3 = [v2 jsonRepresentation];

  return v3;
}

- (ATXUserNotificationLoggingEvent)initWithProtoData:(id)a3
{
  if (a3)
  {
    v4 = a3;
    v5 = [[ATXPBUserNotificationLoggingEvent alloc] initWithData:v4];

    self = [(ATXUserNotificationLoggingEvent *)self initWithProto:v5];
    v6 = self;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (ATXUserNotificationLoggingEvent)initWithProto:(id)a3
{
  v4 = a3;
  if (v4)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [v5 notification];

      if (!v6)
      {
LABEL_14:

        goto LABEL_15;
      }

      v7 = [v5 notification];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      if (isKindOfClass)
      {
        v9 = [ATXUserNotification alloc];
        v10 = [v5 notification];
        v11 = [(ATXUserNotification *)v9 initWithProto:v10];

        v12 = [v5 eventType];
        [v5 timestamp];
        v14 = v13;
        v15 = [v5 deliveryReason];
        v16 = [v5 deliveryUI];
        v17 = [v5 modeIdentifier];
        if (v17)
        {
          v18 = objc_alloc(MEMORY[0x1E696AFB0]);
          v19 = [v5 modeIdentifier];
          v20 = [v18 initWithUUIDString:v19];
          self = [(ATXUserNotificationLoggingEvent *)self initFromUserNotification:v11 eventType:v12 timestamp:v15 deliveryReason:v16 deliveryUI:v20 modeUUID:v14];
        }

        else
        {
          self = [(ATXUserNotificationLoggingEvent *)self initFromUserNotification:v11 eventType:v12 timestamp:v15 deliveryReason:v16 deliveryUI:0 modeUUID:v14];
        }

        v6 = self;
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

    v6 = 0;
    goto LABEL_14;
  }

  v6 = 0;
LABEL_15:

  return v6;
}

+ (id)eventWithData:(id)a3 dataVersion:(unsigned int)a4
{
  v5 = a3;
  v6 = [[a1 alloc] initWithProtoData:v5];

  return v6;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(ATXUserNotificationLoggingEvent *)self encodeAsProto];
  [v4 encodeObject:v5 forKey:@"protobufData"];
}

- (ATXUserNotificationLoggingEvent)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"protobufData"];

  if (v5)
  {
    self = [(ATXUserNotificationLoggingEvent *)self initWithProtoData:v5];
    v6 = self;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

@end