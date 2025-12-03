@interface TabViewCoordinator_Phone
- (BOOL)tabBarController:(id)controller shouldSelectViewController:(id)viewController;
- (_TtC7SwiftUI24TabViewCoordinator_Phone)init;
- (id)tabBarController:(id)controller sidebar:(id)sidebar contextMenuConfigurationForTab:(id)tab;
- (unint64_t)tabBarController:(id)controller tab:(id)tab operationForAcceptingItemsFromDropSession:(id)session;
- (void)_tabElementGroup:(id)group didCustomizeDisplayOrder:(id)order;
- (void)_tabElementGroup:(id)group didSelectElement:(id)element;
- (void)_uip_tabBarController:(id)controller dropSessionDidUpdate:(id)update withDestinationTab:(id)tab;
- (void)tabBarController:(id)controller didSelectViewController:(id)viewController;
- (void)tabBarController:(id)controller sidebarVisibilityWillChange:(id)change animator:(id)animator;
- (void)tabBarController:(id)controller tab:(id)tab acceptItemsFromDropSession:(id)session;
- (void)tabBarController:(id)controller visibilityDidChangeForTabs:(id)tabs;
- (void)tabBarControllerDidEndEditing:(id)editing;
@end

@implementation TabViewCoordinator_Phone

- (BOOL)tabBarController:(id)controller shouldSelectViewController:(id)viewController
{
  selfCopy = self;
  selectedViewController = [controller selectedViewController];
  swift_unknownObjectWeakAssign();

  return 1;
}

- (void)tabBarController:(id)controller didSelectViewController:(id)viewController
{
  controllerCopy = controller;
  viewControllerCopy = viewController;
  selfCopy = self;
  TabViewCoordinator_Phone.tabBarController(_:didSelect:)(controllerCopy, viewControllerCopy);
}

- (unint64_t)tabBarController:(id)controller tab:(id)tab operationForAcceptingItemsFromDropSession:(id)session
{
  v7 = *(&self->super.super.isa + OBJC_IVAR____TtC7SwiftUI24TabViewCoordinator_Phone_tabCache);

  tabCopy = tab;
  swift_unknownObjectRetain();
  selfCopy = self;
  v10 = specialized TabViewCoordinator_Phone.operationToAcceptDropItems(from:onto:tabCache:)(tabCopy, v7);

  swift_unknownObjectRelease();

  return v10;
}

- (void)tabBarController:(id)controller tab:(id)tab acceptItemsFromDropSession:(id)session
{
  v8 = *(&self->super.super.isa + OBJC_IVAR____TtC7SwiftUI24TabViewCoordinator_Phone_tabCache);

  tabCopy = tab;
  swift_unknownObjectRetain();
  selfCopy = self;
  TabViewCoordinator_Phone.acceptDropItems(from:onto:tabCache:)(session, tabCopy, v8);

  swift_unknownObjectRelease();
}

- (void)_uip_tabBarController:(id)controller dropSessionDidUpdate:(id)update withDestinationTab:(id)tab
{
  controllerCopy = controller;
  swift_unknownObjectRetain();
  tabCopy = tab;
  selfCopy = self;
  specialized TabViewCoordinator_Phone._uip_tabBarController(_:dropSessionDidUpdate:withDestinationTab:)(tab);

  swift_unknownObjectRelease();
}

- (void)tabBarController:(id)controller visibilityDidChangeForTabs:(id)tabs
{
  type metadata accessor for Binding<TabViewCustomization>?(0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UITab);
  v8 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = OBJC_IVAR____TtC7SwiftUI24TabViewCoordinator_Phone_customization;
  swift_beginAccess();
  outlined init with copy of Binding<TabViewCustomization>?(self + v9, v7, type metadata accessor for Binding<TabViewCustomization>?);
  v10 = *(&self->super.super.isa + OBJC_IVAR____TtC7SwiftUI24TabViewCoordinator_Phone_tabCache);

  selfCopy = self;
  specialized TabViewCoordinator_Phone.updatedSidebarVisibility(for:customization:tabCache:)(v8, v7, v10);

  outlined destroy of Binding<TabViewCustomization>?(v7, type metadata accessor for Binding<TabViewCustomization>?);
}

- (void)tabBarControllerDidEndEditing:(id)editing
{
  editingCopy = editing;
  selfCopy = self;
  TabViewCoordinator_Phone.tabBarControllerDidEndEditing(_:)(editingCopy);
}

- (void)_tabElementGroup:(id)group didSelectElement:(id)element
{
  groupCopy = group;
  elementCopy = element;
  selfCopy = self;
  specialized TabViewCoordinator_Phone._tabElementGroup(_:didSelect:)(elementCopy);
}

- (void)_tabElementGroup:(id)group didCustomizeDisplayOrder:(id)order
{
  type metadata accessor for Binding<TabViewCustomization>?(0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = OBJC_IVAR____TtC7SwiftUI24TabViewCoordinator_Phone_customization;
  swift_beginAccess();
  outlined init with copy of Binding<TabViewCustomization>?(self + v10, v8, type metadata accessor for Binding<TabViewCustomization>?);
  v11 = *(&self->super.super.isa + OBJC_IVAR____TtC7SwiftUI24TabViewCoordinator_Phone_tabCache);

  groupCopy = group;
  selfCopy = self;
  specialized TabViewCoordinator_Phone.updatedOrder(within:newOrder:customization:tabCache:)(groupCopy, v9, v8, v11);

  outlined destroy of Binding<TabViewCustomization>?(v8, type metadata accessor for Binding<TabViewCustomization>?);
}

- (void)tabBarController:(id)controller sidebarVisibilityWillChange:(id)change animator:(id)animator
{
  controllerCopy = controller;
  changeCopy = change;
  swift_unknownObjectRetain();
  selfCopy = self;
  specialized TabViewCoordinator_Phone.tabBarController(_:sidebarVisibilityWillChange:animator:)(changeCopy);

  swift_unknownObjectRelease();
}

- (id)tabBarController:(id)controller sidebar:(id)sidebar contextMenuConfigurationForTab:(id)tab
{
  v7 = *(&self->super.super.isa + OBJC_IVAR____TtC7SwiftUI24TabViewCoordinator_Phone_tabCache);

  tabCopy = tab;
  selfCopy = self;
  v10 = TabViewCoordinator_Phone.contextMenu(for:tabCache:)(tabCopy, v7);

  return v10;
}

- (_TtC7SwiftUI24TabViewCoordinator_Phone)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end