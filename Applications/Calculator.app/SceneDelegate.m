@interface SceneDelegate
- (_TtC10Calculator13SceneDelegate)init;
- (void)sceneDidEnterBackground:(id)a3;
- (void)sceneWillEnterForeground:(id)a3;
- (void)sceneWillResignActive:;
- (void)windowScene:(id)a3 performActionForShortcutItem:(id)a4 completionHandler:(id)a5;
@end

@implementation SceneDelegate

- (_TtC10Calculator13SceneDelegate)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for SceneDelegate();
  return [(SceneDelegate *)&v3 init];
}

- (void)sceneWillEnterForeground:(id)a3
{
  v4 = objc_opt_self();
  v6 = self;
  [v4 preheatSystemSoundsForObject:?];
  if (qword_1001546E0 != -1)
  {
    swift_once();
  }

  v5 = qword_100160D30;
  if (([qword_100160D30 isActive] & 1) == 0)
  {
    [v5 activateWithCompletionBlock:0];
  }
}

- (void)windowScene:(id)a3 performActionForShortcutItem:(id)a4 completionHandler:(id)a5
{
  v7 = _Block_copy(a5);
  v8 = a4;
  v9 = self;
  v10 = sub_100082078(v8);
  v7[2](v7, v10 & 1);

  _Block_release(v7);
}

- (void)sceneDidEnterBackground:(id)a3
{
  v3 = qword_1001546E0;
  v5 = self;
  if (v3 != -1)
  {
    swift_once();
  }

  v4 = qword_100160D30;
  if ([qword_100160D30 isActive])
  {
    [v4 deactivate];
  }

  [objc_opt_self() cooldownSystemSoundsForObject:v5];
}

- (void)sceneWillResignActive:
{
  sub_100081850();
  v0 = sub_1000823C8();
  if (v0)
  {
    v1 = v0;
    v2 = [objc_opt_self() sharedApplication];
    v3 = [v2 shortcutItems];
    if (v3)
    {
      v4 = v3;
      sub_1000827A4();
      v5 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      v9 = v5;
      v6 = v1;
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((v9 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v9 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v8 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      if (v9)
      {
        v7.super.isa = Array._bridgeToObjectiveC()().super.isa;
      }

      else
      {
        v7.super.isa = 0;
      }

      [v2 setShortcutItems:v7.super.isa];
    }

    else
    {
      [v2 setShortcutItems:0];
    }
  }
}

@end