@interface FRArticleNotificationFeedPersonalizerFactory
- (FRArticleNotificationFeedPersonalizerFactory)init;
- (FRArticleNotificationFeedPersonalizerFactory)initWithTranslationProvider:(id)a3;
- (id)newFeedPersonalizerWithAggregateStore:(id)a3 appConfigurationManager:(id)a4 todayPrivateData:(id)a5;
@end

@implementation FRArticleNotificationFeedPersonalizerFactory

- (FRArticleNotificationFeedPersonalizerFactory)initWithTranslationProvider:(id)a3
{
  ObjectType = swift_getObjectType();
  *(&self->super.isa + OBJC_IVAR___FRArticleNotificationFeedPersonalizerFactory_translationProvider) = a3;
  v7.receiver = self;
  v7.super_class = ObjectType;
  swift_unknownObjectRetain();
  return [(FRArticleNotificationFeedPersonalizerFactory *)&v7 init];
}

- (id)newFeedPersonalizerWithAggregateStore:(id)a3 appConfigurationManager:(id)a4 todayPrivateData:(id)a5
{
  v6 = a3;
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v7 = self;
  v8 = sub_100007140(v6);

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return v8;
}

- (FRArticleNotificationFeedPersonalizerFactory)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end