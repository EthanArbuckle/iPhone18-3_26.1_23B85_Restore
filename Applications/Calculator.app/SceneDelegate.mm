@interface SceneDelegate
- (_TtC10Calculator13SceneDelegate)init;
- (void)sceneDidEnterBackground:(id)background;
- (void)sceneWillEnterForeground:(id)foreground;
- (void)sceneWillResignActive:;
- (void)windowScene:(id)scene performActionForShortcutItem:(id)item completionHandler:(id)handler;
@end

@implementation SceneDelegate

- (_TtC10Calculator13SceneDelegate)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for SceneDelegate();
  return [(SceneDelegate *)&v3 init];
}

- (void)sceneWillEnterForeground:(id)foreground
{
  v4 = objc_opt_self();
  selfCopy = self;
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

- (void)windowScene:(id)scene performActionForShortcutItem:(id)item completionHandler:(id)handler
{
  v7 = _Block_copy(handler);
  itemCopy = item;
  selfCopy = self;
  v10 = sub_100082078(itemCopy);
  v7[2](v7, v10 & 1);

  _Block_release(v7);
}

- (void)sceneDidEnterBackground:(id)background
{
  v3 = qword_1001546E0;
  selfCopy = self;
  if (v3 != -1)
  {
    swift_once();
  }

  v4 = qword_100160D30;
  if ([qword_100160D30 isActive])
  {
    [v4 deactivate];
  }

  [objc_opt_self() cooldownSystemSoundsForObject:selfCopy];
}

- (void)sceneWillResignActive:
{
  sub_100081850();
  v0 = sub_1000823C8();
  if (v0)
  {
    v1 = v0;
    sharedApplication = [objc_opt_self() sharedApplication];
    shortcutItems = [sharedApplication shortcutItems];
    if (shortcutItems)
    {
      v4 = shortcutItems;
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

      [sharedApplication setShortcutItems:v7.super.isa];
    }

    else
    {
      [sharedApplication setShortcutItems:0];
    }
  }
}

@end