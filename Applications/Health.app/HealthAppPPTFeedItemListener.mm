@interface HealthAppPPTFeedItemListener
- (_TtC6Health28HealthAppPPTFeedItemListener)init;
- (void)controllerDidChangeContent:(id)content;
@end

@implementation HealthAppPPTFeedItemListener

- (void)controllerDidChangeContent:(id)content
{
  contentCopy = content;
  selfCopy = self;
  sub_100043570(contentCopy);
}

- (_TtC6Health28HealthAppPPTFeedItemListener)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end