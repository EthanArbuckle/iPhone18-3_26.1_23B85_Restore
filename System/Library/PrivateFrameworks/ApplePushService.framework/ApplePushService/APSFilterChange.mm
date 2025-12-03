@interface APSFilterChange
- (APSFilterChange)init;
- (APSFilterChange)initWithChange:(int64_t)change triggeringTopic:(id)topic;
- (NSString)triggeringTopic;
- (int64_t)topicGroupChange;
- (unint64_t)reason;
- (void)setReason:(unint64_t)reason;
- (void)setTopicGroupChange:(int64_t)change;
- (void)setTriggeringTopic:(id)topic;
@end

@implementation APSFilterChange

- (int64_t)topicGroupChange
{
  v3 = OBJC_IVAR___APSFilterChange_topicGroupChange;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setReason:(unint64_t)reason
{
  v5 = OBJC_IVAR___APSFilterChange_reason;
  swift_beginAccess();
  *(self + v5) = reason;
}

- (unint64_t)reason
{
  v3 = OBJC_IVAR___APSFilterChange_reason;
  swift_beginAccess();
  return *(self + v3);
}

- (NSString)triggeringTopic
{
  v2 = (self + OBJC_IVAR___APSFilterChange_triggeringTopic);
  swift_beginAccess();
  if (v2[1])
  {
    v3 = *v2;

    v4 = String._bridgeToObjectiveC()();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (APSFilterChange)initWithChange:(int64_t)change triggeringTopic:(id)topic
{
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;
  v9 = (self + OBJC_IVAR___APSFilterChange_triggeringTopic);
  *v9 = 0;
  v9[1] = 0;
  v10 = OBJC_IVAR___APSFilterChange_topicGroupChange;
  *(self + OBJC_IVAR___APSFilterChange_topicGroupChange) = 0;
  *(self + OBJC_IVAR___APSFilterChange_reason) = 0;
  swift_beginAccess();
  *(self + v10) = change;
  swift_beginAccess();
  *v9 = v6;
  v9[1] = v8;
  v12.receiver = self;
  v12.super_class = type metadata accessor for FilterChange();
  return [(APSFilterChange *)&v12 init];
}

- (void)setTriggeringTopic:(id)topic
{
  if (topic)
  {
    v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  v7 = (self + OBJC_IVAR___APSFilterChange_triggeringTopic);
  swift_beginAccess();
  v8 = v7[1];
  *v7 = v4;
  v7[1] = v6;
}

- (void)setTopicGroupChange:(int64_t)change
{
  v5 = OBJC_IVAR___APSFilterChange_topicGroupChange;
  swift_beginAccess();
  *(self + v5) = change;
}

- (APSFilterChange)init
{
  v2 = (self + OBJC_IVAR___APSFilterChange_triggeringTopic);
  *v2 = 0;
  v2[1] = 0;
  *(self + OBJC_IVAR___APSFilterChange_topicGroupChange) = 0;
  *(self + OBJC_IVAR___APSFilterChange_reason) = 0;
  v4.receiver = self;
  v4.super_class = type metadata accessor for FilterChange();
  return [(APSFilterChange *)&v4 init];
}

@end