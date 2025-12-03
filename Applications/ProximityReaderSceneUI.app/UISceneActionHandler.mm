@interface UISceneActionHandler
- (_TtC22ProximityReaderSceneUI20UISceneActionHandler)init;
- (id)_respondToActions:(id)actions forFBSScene:(id)scene inUIScene:(id)iScene fromTransitionContext:(id)context;
@end

@implementation UISceneActionHandler

- (id)_respondToActions:(id)actions forFBSScene:(id)scene inUIScene:(id)iScene fromTransitionContext:(id)context
{
  sub_10000D6F4();
  sub_10000D740();
  v10 = static Set._unconditionallyBridgeFromObjectiveC(_:)();
  sceneCopy = scene;
  iSceneCopy = iScene;
  contextCopy = context;
  selfCopy = self;
  sub_10000D264(v10, sceneCopy, iSceneCopy);

  v15.super.isa = Set._bridgeToObjectiveC()().super.isa;

  return v15.super.isa;
}

- (_TtC22ProximityReaderSceneUI20UISceneActionHandler)init
{
  ObjectType = swift_getObjectType();
  *(&self->super.isa + OBJC_IVAR____TtC22ProximityReaderSceneUI20UISceneActionHandler_action) = 0;
  v5.receiver = self;
  v5.super_class = ObjectType;
  return [(UISceneActionHandler *)&v5 init];
}

@end