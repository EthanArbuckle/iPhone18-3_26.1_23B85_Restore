@interface LibraryTabGroupManager
- (BOOL)tabBarController:(id)controller shouldSelectTab:(id)tab;
- (_TtC8ShelfKit22LibraryTabGroupManager)init;
- (id)tabBarController:(id)controller displayedViewControllersForTab:(id)tab proposedViewControllers:(id)controllers;
- (id)tabBarController:(id)controller sidebar:(id)sidebar itemForRequest:(id)request;
- (void)dealloc;
- (void)tabBarController:(id)controller didSelectTab:(id)tab previousTab:(id)previousTab;
- (void)tabBarController:(id)controller displayOrderDidChangeForGroup:(id)group;
- (void)tabBarController:(id)controller sidebar:(id)sidebar updateItem:(id)item;
- (void)tabBarController:(id)controller visibilityDidChangeForTabs:(id)tabs;
@end

@implementation LibraryTabGroupManager

- (void)dealloc
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_500EB0);
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v7 = &v10 - v6;
  (*(v4 + 16))(&v10 - v6, self + OBJC_IVAR____TtC8ShelfKit22LibraryTabGroupManager_tabsContinuation, v3, v5);
  selfCopy = self;
  sub_3ED724();
  (*(v4 + 8))(v7, v3);
  v9 = type metadata accessor for LibraryTabGroupManager();
  v10.receiver = selfCopy;
  v10.super_class = v9;
  [(LibraryTabGroupManager *)&v10 dealloc];
}

- (_TtC8ShelfKit22LibraryTabGroupManager)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (BOOL)tabBarController:(id)controller shouldSelectTab:(id)tab
{
  controllerCopy = controller;
  tabCopy = tab;
  selfCopy = self;
  v9 = sub_2FD3EC();

  return v9 & 1;
}

- (void)tabBarController:(id)controller didSelectTab:(id)tab previousTab:(id)previousTab
{
  controllerCopy = controller;
  tabCopy = tab;
  selfCopy = self;
  previousTabCopy = previousTab;
  managingTabGroup = [tabCopy managingTabGroup];
  if (managingTabGroup)
  {
    v12 = managingTabGroup;
    identifier = [tabCopy identifier];
    if (!identifier)
    {
      sub_3ED244();
      identifier = sub_3ED204();
    }

    [v12 setDefaultChildIdentifier:identifier];

    selfCopy = identifier;
  }

  else
  {
    v12 = previousTabCopy;
  }
}

- (id)tabBarController:(id)controller displayedViewControllersForTab:(id)tab proposedViewControllers:(id)controllers
{
  sub_36174(0, &qword_502180);
  v8 = sub_3ED584();
  controllerCopy = controller;
  tabCopy = tab;
  selfCopy = self;
  _s8ShelfKit22LibraryTabGroupManagerC16tabBarController_27displayedViewControllersFor08proposedkL0SaySo06UIViewI0CGSo05UITabhI0C_So0P0CAItF_0(controllerCopy, tabCopy, v8);

  v12.super.isa = sub_3ED574().super.isa;

  return v12.super.isa;
}

- (void)tabBarController:(id)controller visibilityDidChangeForTabs:(id)tabs
{
  sub_36174(0, &qword_4EA748);
  v6 = sub_3ED584();
  controllerCopy = controller;
  selfCopy = self;
  sub_2FDB6C(v6);
}

- (void)tabBarController:(id)controller displayOrderDidChangeForGroup:(id)group
{
  controllerCopy = controller;
  groupCopy = group;
  selfCopy = self;
  sub_2FEF60(groupCopy);
}

- (id)tabBarController:(id)controller sidebar:(id)sidebar itemForRequest:(id)request
{
  controllerCopy = controller;
  sidebarCopy = sidebar;
  requestCopy = request;
  selfCopy = self;
  v12 = sub_2FFA8C(requestCopy);

  return v12;
}

- (void)tabBarController:(id)controller sidebar:(id)sidebar updateItem:(id)item
{
  controllerCopy = controller;
  sidebarCopy = sidebar;
  itemCopy = item;
  selfCopy = self;
  sub_2FFFB8(itemCopy);
}

@end