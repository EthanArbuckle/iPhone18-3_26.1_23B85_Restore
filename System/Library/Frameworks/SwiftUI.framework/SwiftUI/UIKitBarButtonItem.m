@interface UIKitBarButtonItem
- (NSArray)accessibilityCustomActions;
- (_TtC7SwiftUI18UIKitBarButtonItem)init;
- (unint64_t)accessibilityTraits;
- (void)performAction:(id)a3;
@end

@implementation UIKitBarButtonItem

- (void)performAction:(id)a3
{
  type metadata accessor for ToolbarStorage.Item?(0, &lazy cache variable for type metadata for PlatformItemList.Item?, type metadata accessor for PlatformItemList.Item, MEMORY[0x1E69E6720]);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v14[-v7];
  if (a3)
  {
    v9 = self;
    swift_unknownObjectRetain();
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v15, 0, sizeof(v15));
    v10 = self;
  }

  v14[31] = 17;
  v11 = OBJC_IVAR____TtC7SwiftUI18UIKitBarButtonItem_platformItem;
  swift_beginAccess();
  _s7SwiftUI16PlatformItemListV0D0VSgWOcTm_0(self + v11, v8, &lazy cache variable for type metadata for PlatformItemList.Item?, type metadata accessor for PlatformItemList.Item, MEMORY[0x1E69E6720], type metadata accessor for ToolbarStorage.Item?);
  v12 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v13 = swift_allocObject();
  outlined init with take of PlatformItemList.Item?(v8, v13 + v12);
  static Update.enqueueAction(reason:_:)();

  _s7SwiftUI16PlatformItemListV0D0VSgWOhTm_2(v15, &lazy cache variable for type metadata for Any?, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6720], _ss23_ContiguousArrayStorageCyyXlGMaTm_0);
}

- (unint64_t)accessibilityTraits
{
  v2 = self;
  v3 = UIKitBarButtonItem.accessibilityTraits.getter();

  return v3;
}

- (NSArray)accessibilityCustomActions
{
  v2 = self;
  v3 = UIKitBarButtonItem.accessibilityCustomActions.getter();

  if (v3)
  {
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIAccessibilityCustomAction);
    v4.super.isa = Array._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v4.super.isa = 0;
  }

  return v4.super.isa;
}

- (_TtC7SwiftUI18UIKitBarButtonItem)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end