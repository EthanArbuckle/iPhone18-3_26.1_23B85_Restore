@interface MusicTab.BarDelegate
- (BOOL)tabBarController:(id)a3 shouldSelectTab:(id)a4;
- (_TtCC5Music8MusicTab11BarDelegate)init;
- (id)tabBarController:(id)a3 displayedViewControllersForTab:(id)a4 proposedViewControllers:(id)a5;
- (unint64_t)tabBarController:(id)a3 tab:(id)a4 operationForAcceptingItemsFromDropSession:(id)a5;
- (void)tabBarController:(id)a3 didSelectTab:(id)a4 previousTab:(id)a5;
- (void)tabBarController:(id)a3 displayOrderDidChangeForGroup:(id)a4;
- (void)tabBarController:(id)a3 tab:(id)a4 acceptItemsFromDropSession:(id)a5;
- (void)tabBarController:(id)a3 visibilityDidChangeForTabs:(id)a4;
- (void)tabBarControllerDidEndEditing:(id)a3;
- (void)tabBarControllerWillBeginEditing:(id)a3;
@end

@implementation MusicTab.BarDelegate

- (void)tabBarController:(id)a3 didSelectTab:(id)a4 previousTab:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = self;
  sub_10003EBC4(v8, v9, a5);
}

- (BOOL)tabBarController:(id)a3 shouldSelectTab:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  v9 = sub_1003CE700(v6, v7);

  return v9 & 1;
}

- (id)tabBarController:(id)a3 displayedViewControllersForTab:(id)a4 proposedViewControllers:(id)a5
{
  sub_100009F78(0, &qword_101183D40);
  v8 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = a3;
  v10 = a4;
  v11 = self;
  sub_1003CE9C4(v9, v10, v8);

  v12.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v12.super.isa;
}

- (void)tabBarControllerWillBeginEditing:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1003CDB28(v4);
}

- (void)tabBarControllerDidEndEditing:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1003CDB9C(v4);
}

- (void)tabBarController:(id)a3 displayOrderDidChangeForGroup:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v6 managingTabGroup];
  if (!v7)
  {
    v7 = v6;
  }

  v8 = swift_dynamicCastObjCProtocolConditional();
  if (v8)
  {
    v9 = v8;
    if ([v8 respondsToSelector:"tabBarController:displayOrderDidChangeForGroup:"])
    {
      [v9 tabBarController:v5 displayOrderDidChangeForGroup:v6];
    }

    v10 = v7;
  }

  else
  {
    v10 = v5;
    v5 = v6;
    v6 = v7;
  }
}

- (void)tabBarController:(id)a3 visibilityDidChangeForTabs:(id)a4
{
  sub_100009F78(0, &qword_101181F70);
  v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = a3;
  v8 = self;
  sub_1003CEAF0(v7, v6);
}

- (void)tabBarController:(id)a3 tab:(id)a4 acceptItemsFromDropSession:(id)a5
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v10 = Strong;
    v11 = a3;
    v12 = a4;
    swift_unknownObjectRetain();
    v13 = self;
    v14 = [v12 managingTabGroup];
    if (!v14)
    {
      v14 = v12;
    }

    v15 = swift_dynamicCastObjCProtocolConditional();
    if (v15)
    {
      v16 = v15;

      if ([v16 respondsToSelector:"tabBarController:tab:acceptItemsFromDropSession:"])
      {
        [v16 tabBarController:v11 tab:v12 acceptItemsFromDropSession:a5];
      }

      swift_unknownObjectRelease();
      v14 = v13;
    }

    else
    {

      swift_unknownObjectRelease();
    }
  }
}

- (unint64_t)tabBarController:(id)a3 tab:(id)a4 operationForAcceptingItemsFromDropSession:(id)a5
{
  v8 = a3;
  v9 = a4;
  swift_unknownObjectRetain();
  v10 = self;
  v11 = sub_1003CE190(v8, v9, a5);

  swift_unknownObjectRelease();
  return v11;
}

- (_TtCC5Music8MusicTab11BarDelegate)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end