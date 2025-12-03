@interface UIKitBarButtonItemGroup
- (_TtC7SwiftUI23UIKitBarButtonItemGroup)initWithBarButtonItems:(id)items representativeItem:(id)item;
@end

@implementation UIKitBarButtonItemGroup

- (_TtC7SwiftUI23UIKitBarButtonItemGroup)initWithBarButtonItems:(id)items representativeItem:(id)item
{
  ObjectType = swift_getObjectType();
  v8 = OBJC_IVAR____TtC7SwiftUI23UIKitBarButtonItemGroup_groupItem;
  v9 = type metadata accessor for ToolbarStorage.GroupItem(0);
  (*(*(v9 - 8) + 56))(self + v8, 1, 1, v9);
  *(&self->super.super.isa + OBJC_IVAR____TtC7SwiftUI23UIKitBarButtonItemGroup_edge) = 2;
  swift_unknownObjectWeakInit();
  v11.receiver = self;
  v11.super_class = ObjectType;
  return [(UIBarButtonItemGroup *)&v11 initWithBarButtonItems:items representativeItem:item];
}

@end