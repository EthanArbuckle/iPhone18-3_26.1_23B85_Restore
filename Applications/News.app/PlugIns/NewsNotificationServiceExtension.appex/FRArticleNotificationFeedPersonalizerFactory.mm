@interface FRArticleNotificationFeedPersonalizerFactory
- (FRArticleNotificationFeedPersonalizerFactory)init;
- (FRArticleNotificationFeedPersonalizerFactory)initWithTranslationProvider:(id)provider;
- (id)newFeedPersonalizerWithAggregateStore:(id)store appConfigurationManager:(id)manager todayPrivateData:(id)data;
@end

@implementation FRArticleNotificationFeedPersonalizerFactory

- (FRArticleNotificationFeedPersonalizerFactory)initWithTranslationProvider:(id)provider
{
  ObjectType = swift_getObjectType();
  *(&self->super.isa + OBJC_IVAR___FRArticleNotificationFeedPersonalizerFactory_translationProvider) = provider;
  v7.receiver = self;
  v7.super_class = ObjectType;
  swift_unknownObjectRetain();
  return [(FRArticleNotificationFeedPersonalizerFactory *)&v7 init];
}

- (id)newFeedPersonalizerWithAggregateStore:(id)store appConfigurationManager:(id)manager todayPrivateData:(id)data
{
  storeCopy = store;
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  selfCopy = self;
  v8 = sub_100007140(storeCopy);

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