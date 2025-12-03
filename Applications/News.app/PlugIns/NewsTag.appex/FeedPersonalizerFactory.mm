@interface FeedPersonalizerFactory
- (_TtC7NewsTag23FeedPersonalizerFactory)init;
- (id)newFeedPersonalizerWithAggregateStore:(id)store appConfigurationManager:(id)manager todayPrivateData:(id)data;
@end

@implementation FeedPersonalizerFactory

- (id)newFeedPersonalizerWithAggregateStore:(id)store appConfigurationManager:(id)manager todayPrivateData:(id)data
{
  storeCopy = store;
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  selfCopy = self;
  v8 = sub_10006D048(storeCopy);

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return v8;
}

- (_TtC7NewsTag23FeedPersonalizerFactory)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end