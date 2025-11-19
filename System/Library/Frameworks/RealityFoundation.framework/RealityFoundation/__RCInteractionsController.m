@interface __RCInteractionsController
+ (void)__invokeCustomTriggerWithNamed:(id)a3 onEntityNamed:(id)a4 inSceneNamed:(id)a5;
+ (void)__registerCustomActionWithNamed:(id)a3 inSceneNamed:(id)a4 action:(id)a5;
- (_TtC17RealityFoundation26__RCInteractionsController)init;
@end

@implementation __RCInteractionsController

+ (void)__invokeCustomTriggerWithNamed:(id)a3 onEntityNamed:(id)a4 inSceneNamed:(id)a5
{
  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;
  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  specialized static __RCInteractionsController.__invokeCustomTrigger(named:onEntityNamed:inSceneNamed:)(v5, v7, v8, v9);
}

+ (void)__registerCustomActionWithNamed:(id)a3 inSceneNamed:(id)a4 action:(id)a5
{
  v5 = _Block_copy(a5);
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;
  v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = v10;
  v12 = swift_allocObject();
  *(v12 + 16) = v5;
  specialized static __RCInteractionsController.__registerCustomAction(named:inSceneNamed:action:)(v6, v8, v9, v11, partial apply for thunk for @escaping @callee_unowned @convention(block) (@unowned NSString) -> (), v12);
}

- (_TtC17RealityFoundation26__RCInteractionsController)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for __RCInteractionsController();
  return [(__RCInteractionsController *)&v3 init];
}

@end