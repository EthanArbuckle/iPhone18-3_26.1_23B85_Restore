@interface ClarityUISceneDelegate
- (_TtC7AppleTV22ClarityUISceneDelegate)init;
- (void)scene:(id)scene willConnectToSession:(id)session options:(id)options;
@end

@implementation ClarityUISceneDelegate

- (void)scene:(id)scene willConnectToSession:(id)session options:(id)options
{
  sceneCopy = scene;
  sessionCopy = session;
  optionsCopy = options;
  selfCopy = self;
  sub_100009D24(sceneCopy);
}

- (_TtC7AppleTV22ClarityUISceneDelegate)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for ClarityUISceneDelegate();
  return [(ClarityUISceneDelegate *)&v3 init];
}

@end