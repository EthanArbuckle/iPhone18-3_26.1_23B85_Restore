@interface MusicTab.BarDelegate
- (BOOL)tabBarController:(id)controller shouldSelectTab:(id)tab;
- (_TtCC5Music8MusicTab11BarDelegate)init;
- (id)tabBarController:(id)controller displayedViewControllersForTab:(id)tab proposedViewControllers:(id)controllers;
- (unint64_t)tabBarController:(id)controller tab:(id)tab operationForAcceptingItemsFromDropSession:(id)session;
- (void)tabBarController:(id)controller didSelectTab:(id)tab previousTab:(id)previousTab;
- (void)tabBarController:(id)controller displayOrderDidChangeForGroup:(id)group;
- (void)tabBarController:(id)controller tab:(id)tab acceptItemsFromDropSession:(id)session;
- (void)tabBarController:(id)controller visibilityDidChangeForTabs:(id)tabs;
- (void)tabBarControllerDidEndEditing:(id)editing;
- (void)tabBarControllerWillBeginEditing:(id)editing;
@end

@implementation MusicTab.BarDelegate

- (void)tabBarController:(id)controller didSelectTab:(id)tab previousTab:(id)previousTab
{
  controllerCopy = controller;
  tabCopy = tab;
  previousTabCopy = previousTab;
  selfCopy = self;
  sub_10003EBC4(controllerCopy, tabCopy, previousTab);
}

- (BOOL)tabBarController:(id)controller shouldSelectTab:(id)tab
{
  controllerCopy = controller;
  tabCopy = tab;
  selfCopy = self;
  v9 = sub_1003CE700(controllerCopy, tabCopy);

  return v9 & 1;
}

- (id)tabBarController:(id)controller displayedViewControllersForTab:(id)tab proposedViewControllers:(id)controllers
{
  sub_100009F78(0, &qword_101183D40);
  v8 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  controllerCopy = controller;
  tabCopy = tab;
  selfCopy = self;
  sub_1003CE9C4(controllerCopy, tabCopy, v8);

  v12.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v12.super.isa;
}

- (void)tabBarControllerWillBeginEditing:(id)editing
{
  editingCopy = editing;
  selfCopy = self;
  sub_1003CDB28(editingCopy);
}

- (void)tabBarControllerDidEndEditing:(id)editing
{
  editingCopy = editing;
  selfCopy = self;
  sub_1003CDB9C(editingCopy);
}

- (void)tabBarController:(id)controller displayOrderDidChangeForGroup:(id)group
{
  controllerCopy = controller;
  groupCopy = group;
  managingTabGroup = [groupCopy managingTabGroup];
  if (!managingTabGroup)
  {
    managingTabGroup = groupCopy;
  }

  v8 = swift_dynamicCastObjCProtocolConditional();
  if (v8)
  {
    v9 = v8;
    if ([v8 respondsToSelector:"tabBarController:displayOrderDidChangeForGroup:"])
    {
      [v9 tabBarController:controllerCopy displayOrderDidChangeForGroup:groupCopy];
    }

    v10 = managingTabGroup;
  }

  else
  {
    v10 = controllerCopy;
    controllerCopy = groupCopy;
    groupCopy = managingTabGroup;
  }
}

- (void)tabBarController:(id)controller visibilityDidChangeForTabs:(id)tabs
{
  sub_100009F78(0, &qword_101181F70);
  v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  controllerCopy = controller;
  selfCopy = self;
  sub_1003CEAF0(controllerCopy, v6);
}

- (void)tabBarController:(id)controller tab:(id)tab acceptItemsFromDropSession:(id)session
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v10 = Strong;
    controllerCopy = controller;
    tabCopy = tab;
    swift_unknownObjectRetain();
    selfCopy = self;
    managingTabGroup = [tabCopy managingTabGroup];
    if (!managingTabGroup)
    {
      managingTabGroup = tabCopy;
    }

    v15 = swift_dynamicCastObjCProtocolConditional();
    if (v15)
    {
      v16 = v15;

      if ([v16 respondsToSelector:"tabBarController:tab:acceptItemsFromDropSession:"])
      {
        [v16 tabBarController:controllerCopy tab:tabCopy acceptItemsFromDropSession:session];
      }

      swift_unknownObjectRelease();
      managingTabGroup = selfCopy;
    }

    else
    {

      swift_unknownObjectRelease();
    }
  }
}

- (unint64_t)tabBarController:(id)controller tab:(id)tab operationForAcceptingItemsFromDropSession:(id)session
{
  controllerCopy = controller;
  tabCopy = tab;
  swift_unknownObjectRetain();
  selfCopy = self;
  v11 = sub_1003CE190(controllerCopy, tabCopy, session);

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