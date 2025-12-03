@interface ShareSheetSceneActionHandler
- (_TtC16SharingUIService28ShareSheetSceneActionHandler)init;
- (id)_respondToActions:(id)actions forFBSScene:(id)scene inUIScene:(id)iScene fromTransitionContext:(id)context;
@end

@implementation ShareSheetSceneActionHandler

- (id)_respondToActions:(id)actions forFBSScene:(id)scene inUIScene:(id)iScene fromTransitionContext:(id)context
{
  sub_10000A598(0, &qword_1000471C0, BSAction_ptr);
  sub_100010614();
  v10 = static Set._unconditionallyBridgeFromObjectiveC(_:)();
  sceneCopy = scene;
  iSceneCopy = iScene;
  contextCopy = context;
  selfCopy = self;
  sub_100010FEC(v10);

  v15.super.isa = Set._bridgeToObjectiveC()().super.isa;

  return v15.super.isa;
}

- (_TtC16SharingUIService28ShareSheetSceneActionHandler)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end