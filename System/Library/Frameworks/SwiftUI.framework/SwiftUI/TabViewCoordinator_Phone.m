@interface TabViewCoordinator_Phone
- (BOOL)tabBarController:(id)a3 shouldSelectViewController:(id)a4;
- (_TtC7SwiftUI24TabViewCoordinator_Phone)init;
- (id)tabBarController:(id)a3 sidebar:(id)a4 contextMenuConfigurationForTab:(id)a5;
- (unint64_t)tabBarController:(id)a3 tab:(id)a4 operationForAcceptingItemsFromDropSession:(id)a5;
- (void)_tabElementGroup:(id)a3 didCustomizeDisplayOrder:(id)a4;
- (void)_tabElementGroup:(id)a3 didSelectElement:(id)a4;
- (void)_uip_tabBarController:(id)a3 dropSessionDidUpdate:(id)a4 withDestinationTab:(id)a5;
- (void)tabBarController:(id)a3 didSelectViewController:(id)a4;
- (void)tabBarController:(id)a3 sidebarVisibilityWillChange:(id)a4 animator:(id)a5;
- (void)tabBarController:(id)a3 tab:(id)a4 acceptItemsFromDropSession:(id)a5;
- (void)tabBarController:(id)a3 visibilityDidChangeForTabs:(id)a4;
- (void)tabBarControllerDidEndEditing:(id)a3;
@end

@implementation TabViewCoordinator_Phone

- (BOOL)tabBarController:(id)a3 shouldSelectViewController:(id)a4
{
  v5 = self;
  v6 = [a3 selectedViewController];
  swift_unknownObjectWeakAssign();

  return 1;
}

- (void)tabBarController:(id)a3 didSelectViewController:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  TabViewCoordinator_Phone.tabBarController(_:didSelect:)(v6, v7);
}

- (unint64_t)tabBarController:(id)a3 tab:(id)a4 operationForAcceptingItemsFromDropSession:(id)a5
{
  v7 = *(&self->super.super.isa + OBJC_IVAR____TtC7SwiftUI24TabViewCoordinator_Phone_tabCache);

  v8 = a4;
  swift_unknownObjectRetain();
  v9 = self;
  v10 = specialized TabViewCoordinator_Phone.operationToAcceptDropItems(from:onto:tabCache:)(v8, v7);

  swift_unknownObjectRelease();

  return v10;
}

- (void)tabBarController:(id)a3 tab:(id)a4 acceptItemsFromDropSession:(id)a5
{
  v8 = *(&self->super.super.isa + OBJC_IVAR____TtC7SwiftUI24TabViewCoordinator_Phone_tabCache);

  v9 = a4;
  swift_unknownObjectRetain();
  v10 = self;
  TabViewCoordinator_Phone.acceptDropItems(from:onto:tabCache:)(a5, v9, v8);

  swift_unknownObjectRelease();
}

- (void)_uip_tabBarController:(id)a3 dropSessionDidUpdate:(id)a4 withDestinationTab:(id)a5
{
  v7 = a3;
  swift_unknownObjectRetain();
  v8 = a5;
  v9 = self;
  specialized TabViewCoordinator_Phone._uip_tabBarController(_:dropSessionDidUpdate:withDestinationTab:)(a5);

  swift_unknownObjectRelease();
}

- (void)tabBarController:(id)a3 visibilityDidChangeForTabs:(id)a4
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

  v11 = self;
  specialized TabViewCoordinator_Phone.updatedSidebarVisibility(for:customization:tabCache:)(v8, v7, v10);

  outlined destroy of Binding<TabViewCustomization>?(v7, type metadata accessor for Binding<TabViewCustomization>?);
}

- (void)tabBarControllerDidEndEditing:(id)a3
{
  v4 = a3;
  v5 = self;
  TabViewCoordinator_Phone.tabBarControllerDidEndEditing(_:)(v4);
}

- (void)_tabElementGroup:(id)a3 didSelectElement:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  specialized TabViewCoordinator_Phone._tabElementGroup(_:didSelect:)(v7);
}

- (void)_tabElementGroup:(id)a3 didCustomizeDisplayOrder:(id)a4
{
  type metadata accessor for Binding<TabViewCustomization>?(0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = OBJC_IVAR____TtC7SwiftUI24TabViewCoordinator_Phone_customization;
  swift_beginAccess();
  outlined init with copy of Binding<TabViewCustomization>?(self + v10, v8, type metadata accessor for Binding<TabViewCustomization>?);
  v11 = *(&self->super.super.isa + OBJC_IVAR____TtC7SwiftUI24TabViewCoordinator_Phone_tabCache);

  v12 = a3;
  v13 = self;
  specialized TabViewCoordinator_Phone.updatedOrder(within:newOrder:customization:tabCache:)(v12, v9, v8, v11);

  outlined destroy of Binding<TabViewCustomization>?(v8, type metadata accessor for Binding<TabViewCustomization>?);
}

- (void)tabBarController:(id)a3 sidebarVisibilityWillChange:(id)a4 animator:(id)a5
{
  v7 = a3;
  v8 = a4;
  swift_unknownObjectRetain();
  v9 = self;
  specialized TabViewCoordinator_Phone.tabBarController(_:sidebarVisibilityWillChange:animator:)(v8);

  swift_unknownObjectRelease();
}

- (id)tabBarController:(id)a3 sidebar:(id)a4 contextMenuConfigurationForTab:(id)a5
{
  v7 = *(&self->super.super.isa + OBJC_IVAR____TtC7SwiftUI24TabViewCoordinator_Phone_tabCache);

  v8 = a5;
  v9 = self;
  v10 = TabViewCoordinator_Phone.contextMenu(for:tabCache:)(v8, v7);

  return v10;
}

- (_TtC7SwiftUI24TabViewCoordinator_Phone)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end