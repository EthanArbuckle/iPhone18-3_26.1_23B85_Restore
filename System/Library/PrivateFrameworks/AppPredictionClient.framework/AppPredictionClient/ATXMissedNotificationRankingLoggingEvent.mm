@interface ATXMissedNotificationRankingLoggingEvent
+ (id)eventWithData:(id)data dataVersion:(unsigned int)version;
- (ATXMissedNotificationRankingLoggingEvent)initWithCoder:(id)coder;
- (ATXMissedNotificationRankingLoggingEvent)initWithMissedNotificationRanking:(id)ranking eventType:(int64_t)type timestamp:(double)timestamp;
- (ATXMissedNotificationRankingLoggingEvent)initWithProto:(id)proto;
- (ATXMissedNotificationRankingLoggingEvent)initWithProtoData:(id)data;
- (id)encodeAsProto;
- (id)initFromJSON:(id)n;
- (id)json;
- (id)jsonRepresentation;
- (id)proto;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ATXMissedNotificationRankingLoggingEvent

- (ATXMissedNotificationRankingLoggingEvent)initWithMissedNotificationRanking:(id)ranking eventType:(int64_t)type timestamp:(double)timestamp
{
  rankingCopy = ranking;
  v13.receiver = self;
  v13.super_class = ATXMissedNotificationRankingLoggingEvent;
  v10 = [(ATXMissedNotificationRankingLoggingEvent *)&v13 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_missedNotificationRanking, ranking);
    v11->_eventType = type;
    v11->_timestamp = timestamp;
  }

  return v11;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  encodeAsProto = [(ATXMissedNotificationRankingLoggingEvent *)self encodeAsProto];
  [coderCopy encodeObject:encodeAsProto forKey:@"protobufData"];
}

- (ATXMissedNotificationRankingLoggingEvent)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"protobufData"];

  if (v5)
  {
    self = [(ATXMissedNotificationRankingLoggingEvent *)self initWithProtoData:v5];
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
  proto = [(ATXMissedNotificationRankingLoggingEvent *)self proto];
  data = [proto data];

  return data;
}

- (ATXMissedNotificationRankingLoggingEvent)initWithProto:(id)proto
{
  protoCopy = proto;
  v15.receiver = self;
  v15.super_class = ATXMissedNotificationRankingLoggingEvent;
  v5 = [(ATXMissedNotificationRankingLoggingEvent *)&v15 init];
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
  v7 = [ATXMissedNotificationRanking alloc];
  missedNotificationRanking = [v6 missedNotificationRanking];
  v9 = [(ATXMissedNotificationRanking *)v7 initWithProto:missedNotificationRanking];
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

- (ATXMissedNotificationRankingLoggingEvent)initWithProtoData:(id)data
{
  if (data)
  {
    dataCopy = data;
    v5 = [[ATXPBMissedNotificationRankingLoggingEvent alloc] initWithData:dataCopy];

    self = [(ATXMissedNotificationRankingLoggingEvent *)self initWithProto:v5];
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
  [v3 setEventType:{-[ATXMissedNotificationRankingLoggingEvent eventType](self, "eventType")}];
  [(ATXMissedNotificationRankingLoggingEvent *)self timestamp];
  [v3 setTimestamp:?];
  missedNotificationRanking = [(ATXMissedNotificationRankingLoggingEvent *)self missedNotificationRanking];
  proto = [missedNotificationRanking proto];
  [v3 setMissedNotificationRanking:proto];

  return v3;
}

- (id)initFromJSON:(id)n
{
  nCopy = n;
  v5 = [[ATXPBMissedNotificationRankingLoggingEvent alloc] initFromJSON:nCopy];

  v6 = [(ATXMissedNotificationRankingLoggingEvent *)self initWithProto:v5];
  return v6;
}

- (id)jsonRepresentation
{
  proto = [(ATXMissedNotificationRankingLoggingEvent *)self proto];
  jsonRepresentation = [proto jsonRepresentation];

  return jsonRepresentation;
}

- (id)json
{
  v2 = MEMORY[0x1E696ACB0];
  jsonDict = [(ATXMissedNotificationRankingLoggingEvent *)self jsonDict];
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