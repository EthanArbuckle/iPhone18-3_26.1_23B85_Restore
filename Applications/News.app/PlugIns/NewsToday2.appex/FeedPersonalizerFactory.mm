@interface FeedPersonalizerFactory
- (_TtC10NewsToday223FeedPersonalizerFactory)init;
- (id)newFeedPersonalizerWithAggregateStore:(id)store appConfigurationManager:(id)manager todayPrivateData:(id)data;
@end

@implementation FeedPersonalizerFactory

- (id)newFeedPersonalizerWithAggregateStore:(id)store appConfigurationManager:(id)manager todayPrivateData:(id)data
{
  storeCopy = store;
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  selfCopy = self;
  v8 = sub_1000AF1FC(storeCopy);

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return v8;
}

- (_TtC10NewsToday223FeedPersonalizerFactory)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end