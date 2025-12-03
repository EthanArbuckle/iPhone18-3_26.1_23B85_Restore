@interface ContentFetcher
- (_TtC4Tips14ContentFetcher)init;
- (void)appController:(id)controller loadingContent:(BOOL)content;
@end

@implementation ContentFetcher

- (void)appController:(id)controller loadingContent:(BOOL)content
{
  controllerCopy = controller;
  selfCopy = self;
  sub_100063CC0(controllerCopy, content);
}

- (_TtC4Tips14ContentFetcher)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end