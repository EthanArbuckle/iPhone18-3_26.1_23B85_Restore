@interface FeedPersonalizerFactory
- (_TtC7NewsTag23FeedPersonalizerFactory)init;
- (id)newFeedPersonalizerWithAggregateStore:(id)a3 appConfigurationManager:(id)a4 todayPrivateData:(id)a5;
@end

@implementation FeedPersonalizerFactory

- (id)newFeedPersonalizerWithAggregateStore:(id)a3 appConfigurationManager:(id)a4 todayPrivateData:(id)a5
{
  v6 = a3;
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v7 = self;
  v8 = sub_10006D048(v6);

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