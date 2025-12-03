@interface Library.Tab
- (id)musicTabBarController:(id)controller tab:(id)tab itemsForBeginningDragSession:(id)session;
- (id)tabBarController:(id)controller displayedViewControllersForTab:(id)tab proposedViewControllers:(id)controllers;
- (id)tabBarController:(id)controller sidebar:(id)sidebar itemForRequest:(id)request;
- (unint64_t)musicTabBarController:(id)controller sidebarAction:(id)action group:(id)group operationForAcceptingItemsFromDropSession:(id)session;
- (unint64_t)tabBarController:(id)controller tab:(id)tab operationForAcceptingItemsFromDropSession:(id)session;
- (void)dealloc;
- (void)musicTabBarController:(id)controller sidebarAction:(id)action group:(id)group acceptItemsFromDropSession:(id)session;
- (void)tabBarController:(id)controller didSelectTab:(id)tab previousTab:(id)previousTab;
- (void)tabBarController:(id)controller displayOrderDidChangeForGroup:(id)group;
- (void)tabBarController:(id)controller sidebar:(id)sidebar didEndDisplayingTab:(id)tab;
- (void)tabBarController:(id)controller sidebar:(id)sidebar willBeginDisplayingTab:(id)tab;
- (void)tabBarController:(id)controller tab:(id)tab acceptItemsFromDropSession:(id)session;
- (void)tabBarController:(id)controller visibilityDidChangeForTabs:(id)tabs;
@end

@implementation Library.Tab

- (void)dealloc
{
  selfCopy = self;
  v3 = *(**CloudLibrary.StatusObserver.shared.unsafeMutableAddressor() + 224);
  v4 = selfCopy;

  v3(v4, &off_1010AA668);

  v5.receiver = v4;
  v5.super_class = _s3TabCMa();
  [(Library.Tab *)&v5 dealloc];
}

- (id)musicTabBarController:(id)controller tab:(id)tab itemsForBeginningDragSession:(id)session
{
  controllerCopy = controller;
  tabCopy = tab;
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_1006AF5D0(tabCopy, session);

  swift_unknownObjectRelease();
  sub_1006B0DCC();
  v11.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v11.super.isa;
}

- (unint64_t)tabBarController:(id)controller tab:(id)tab operationForAcceptingItemsFromDropSession:(id)session
{
  controllerCopy = controller;
  tabCopy = tab;
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_1006ACE10(tabCopy, controllerCopy, &v16);
  if (v17)
  {
    sub_100059A8C(&v16, v18);
    v11 = v19;
    v12 = v20;
    v13 = sub_10000954C(v18, v19);
    v14 = sub_1006AF7B4(v13, tabCopy, session, v11, v12);

    swift_unknownObjectRelease();
    sub_10000959C(v18);
  }

  else
  {

    swift_unknownObjectRelease();
    sub_1000095E8(&v16, &unk_10119E610);
    return 0;
  }

  return v14;
}

- (void)tabBarController:(id)controller tab:(id)tab acceptItemsFromDropSession:(id)session
{
  controllerCopy = controller;
  tabCopy = tab;
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_1006AD904(controllerCopy, tabCopy, session);

  swift_unknownObjectRelease();
}

- (unint64_t)musicTabBarController:(id)controller sidebarAction:(id)action group:(id)group operationForAcceptingItemsFromDropSession:(id)session
{
  controllerCopy = controller;
  actionCopy = action;
  groupCopy = group;
  swift_unknownObjectRetain();
  selfCopy = self;
  v14 = sub_1006B03A0(controllerCopy, actionCopy, session);

  swift_unknownObjectRelease();
  return v14;
}

- (void)musicTabBarController:(id)controller sidebarAction:(id)action group:(id)group acceptItemsFromDropSession:(id)session
{
  controllerCopy = controller;
  actionCopy = action;
  groupCopy = group;
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_1006B05C4(controllerCopy, actionCopy, session);

  swift_unknownObjectRelease();
}

- (void)tabBarController:(id)controller visibilityDidChangeForTabs:(id)tabs
{
  sub_100009F78(0, &qword_101181F70);
  v5 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  selfCopy = self;
  sub_1003DCE8C(v5);
}

- (void)tabBarController:(id)controller displayOrderDidChangeForGroup:(id)group
{
  controllerCopy = controller;
  groupCopy = group;
  selfCopy = self;
  sub_1006E5330(groupCopy);
}

- (void)tabBarController:(id)controller didSelectTab:(id)tab previousTab:(id)previousTab
{
  controllerCopy = controller;
  tabCopy = tab;
  previousTabCopy = previousTab;
  selfCopy = self;
  sub_1006E55A0(tabCopy);
}

- (id)tabBarController:(id)controller displayedViewControllersForTab:(id)tab proposedViewControllers:(id)controllers
{
  sub_100009F78(0, &qword_101183D40);
  v8 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  controllerCopy = controller;
  tabCopy = tab;
  selfCopy = self;
  sub_1006E42D0(controllerCopy, tabCopy, v8);

  v12.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v12.super.isa;
}

- (id)tabBarController:(id)controller sidebar:(id)sidebar itemForRequest:(id)request
{
  controllerCopy = controller;
  sidebarCopy = sidebar;
  requestCopy = request;
  selfCopy = self;
  v12 = sub_1006E58A8(requestCopy);

  return v12;
}

- (void)tabBarController:(id)controller sidebar:(id)sidebar willBeginDisplayingTab:(id)tab
{
  swift_beginAccess();
  tabCopy = tab;
  selfCopy = self;
  sub_1003B4FFC(&v10, tabCopy);
  v9 = v10;
  swift_endAccess();
}

- (void)tabBarController:(id)controller sidebar:(id)sidebar didEndDisplayingTab:(id)tab
{
  swift_beginAccess();
  tabCopy = tab;
  selfCopy = self;
  v9 = sub_100196024(tabCopy);
  swift_endAccess();
}

@end