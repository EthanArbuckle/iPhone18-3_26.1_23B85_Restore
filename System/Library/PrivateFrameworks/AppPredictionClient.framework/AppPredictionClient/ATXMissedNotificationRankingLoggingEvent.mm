@interface ATXMissedNotificationRankingLoggingEvent
+ (id)eventWithData:(id)a3 dataVersion:(unsigned int)a4;
- (ATXMissedNotificationRankingLoggingEvent)initWithCoder:(id)a3;
- (ATXMissedNotificationRankingLoggingEvent)initWithMissedNotificationRanking:(id)a3 eventType:(int64_t)a4 timestamp:(double)a5;
- (ATXMissedNotificationRankingLoggingEvent)initWithProto:(id)a3;
- (ATXMissedNotificationRankingLoggingEvent)initWithProtoData:(id)a3;
- (id)encodeAsProto;
- (id)initFromJSON:(id)a3;
- (id)json;
- (id)jsonRepresentation;
- (id)proto;
- (void)encodeWithCoder:(id)a3;
@end

@implementation ATXMissedNotificationRankingLoggingEvent

- (ATXMissedNotificationRankingLoggingEvent)initWithMissedNotificationRanking:(id)a3 eventType:(int64_t)a4 timestamp:(double)a5
{
  v9 = a3;
  v13.receiver = self;
  v13.super_class = ATXMissedNotificationRankingLoggingEvent;
  v10 = [(ATXMissedNotificationRankingLoggingEvent *)&v13 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_missedNotificationRanking, a3);
    v11->_eventType = a4;
    v11->_timestamp = a5;
  }

  return v11;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(ATXMissedNotificationRankingLoggingEvent *)self encodeAsProto];
  [v4 encodeObject:v5 forKey:@"protobufData"];
}

- (ATXMissedNotificationRankingLoggingEvent)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"protobufData"];

  if (v5)
  {
    self = [(ATXMissedNotificationRankingLoggingEvent *)self initWithProtoData:v5];
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
  v2 = [(ATXMissedNotificationRankingLoggingEvent *)self proto];
  v3 = [v2 data];

  return v3;
}

- (ATXMissedNotificationRankingLoggingEvent)initWithProto:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = ATXMissedNotificationRankingLoggingEvent;
  v5 = [(ATXMissedNotificationRankingLoggingEvent *)&v15 init];
  if (!v5)
  {
    goto LABEL_5;
  }

  if (!v4)
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

  v6 = v4;
  v7 = [ATXMissedNotificationRanking alloc];
  v8 = [v6 missedNotificationRanking];
  v9 = [(ATXMissedNotificationRanking *)v7 initWithProto:v8];
  missedNotificationRanking = v5->_missedNotificationRanking;
  v5->_missedNotificationRanking = v9;

  [v6 timestamp];
  v5->_timestamp = v11;
  LODWORD(v7) = [v6 eventType];

  v5->_eventType = v7;
LABEL_5:
  v12 = v5;
LABEL_10:

  return v12;
}

- (ATXMissedNotificationRankingLoggingEvent)initWithProtoData:(id)a3
{
  if (a3)
  {
    v4 = a3;
    v5 = [[ATXPBMissedNotificationRankingLoggingEvent alloc] initWithData:v4];

    self = [(ATXMissedNotificationRankingLoggingEvent *)self initWithProto:v5];
    v6 = self;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)proto
{
  v3 = objc_opt_new();
  [v3 setEventType:{-[ATXMissedNotificationRankingLoggingEvent eventType](self, "eventType")}];
  [(ATXMissedNotificationRankingLoggingEvent *)self timestamp];
  [v3 setTimestamp:?];
  v4 = [(ATXMissedNotificationRankingLoggingEvent *)self missedNotificationRanking];
  v5 = [v4 proto];
  [v3 setMissedNotificationRanking:v5];

  return v3;
}

- (id)initFromJSON:(id)a3
{
  v4 = a3;
  v5 = [[ATXPBMissedNotificationRankingLoggingEvent alloc] initFromJSON:v4];

  v6 = [(ATXMissedNotificationRankingLoggingEvent *)self initWithProto:v5];
  return v6;
}

- (id)jsonRepresentation
{
  v2 = [(ATXMissedNotificationRankingLoggingEvent *)self proto];
  v3 = [v2 jsonRepresentation];

  return v3;
}

- (id)json
{
  v2 = MEMORY[0x1E696ACB0];
  v3 = [(ATXMissedNotificationRankingLoggingEvent *)self jsonDict];
  v4 = [v2 dataWithJSONObject:v3 options:1 error:0];

  return v4;
}

+ (id)eventWithData:(id)a3 dataVersion:(unsigned int)a4
{
  if (a4 == 1)
  {
    v5 = a3;
    v6 = [[a1 alloc] initWithProtoData:v5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

@end