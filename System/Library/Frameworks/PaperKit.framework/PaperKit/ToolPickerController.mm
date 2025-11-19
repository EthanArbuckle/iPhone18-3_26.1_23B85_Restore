@interface ToolPickerController
- (_TtC8PaperKit20ToolPickerController)init;
- (void)handleSqueezeInteractionDidChangePaletteViewVisibilityNotification:(id)a3;
- (void)insertStickerFromItemProvider:(id)a3 completionHandler:(id)a4;
- (void)stickerPickerViewControllerDidDismiss;
- (void)toolPickerDidHideNotification:(id)a3;
@end

@implementation ToolPickerController

- (void)handleSqueezeInteractionDidChangePaletteViewVisibilityNotification:(id)a3
{
  v4 = type metadata accessor for Notification();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Notification._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = self;
  ToolPickerController.handleSqueezeInteractionDidChangePaletteViewVisibilityNotification(_:)();

  (*(v5 + 8))(v7, v4);
}

- (void)toolPickerDidHideNotification:(id)a3
{
  v3 = type metadata accessor for Notification();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v7 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Notification._unconditionallyBridgeFromObjectiveC(_:)();
  specialized ToolPickerController.toolPickerDidHideNotification(_:)();
  (*(v4 + 8))(v6, v3);
}

- (void)stickerPickerViewControllerDidDismiss
{
  v2 = self;
  ToolPickerController.stickerPickerViewControllerDidDismiss()();
}

- (void)insertStickerFromItemProvider:(id)a3 completionHandler:(id)a4
{
  v6 = _Block_copy(a4);
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  v8 = self + OBJC_IVAR____TtC8PaperKit20ToolPickerController_delegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v9 = *(v8 + 1);
    ObjectType = swift_getObjectType();
    v11 = *(v9 + 72);
    v12 = a3;
    v13 = self;
    v11(v12, partial apply for thunk for @escaping @callee_unowned @convention(block) (@unowned ObjCBool) -> (), v7, ObjectType, v9);
    swift_unknownObjectRelease();
  }

  else
  {
  }
}

- (_TtC8PaperKit20ToolPickerController)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end