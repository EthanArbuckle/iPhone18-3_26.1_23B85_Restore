@interface UISceneActionHandler
- (_TtC22ProximityReaderSceneUI20UISceneActionHandler)init;
- (id)_respondToActions:(id)a3 forFBSScene:(id)a4 inUIScene:(id)a5 fromTransitionContext:(id)a6;
@end

@implementation UISceneActionHandler

- (id)_respondToActions:(id)a3 forFBSScene:(id)a4 inUIScene:(id)a5 fromTransitionContext:(id)a6
{
  sub_10000D6F4();
  sub_10000D740();
  v10 = static Set._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = self;
  sub_10000D264(v10, v11, v12);

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