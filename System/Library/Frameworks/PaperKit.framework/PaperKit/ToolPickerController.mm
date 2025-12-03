@interface ToolPickerController
- (_TtC8PaperKit20ToolPickerController)init;
- (void)handleSqueezeInteractionDidChangePaletteViewVisibilityNotification:(id)notification;
- (void)insertStickerFromItemProvider:(id)provider completionHandler:(id)handler;
- (void)stickerPickerViewControllerDidDismiss;
- (void)toolPickerDidHideNotification:(id)notification;
@end

@implementation ToolPickerController

- (void)handleSqueezeInteractionDidChangePaletteViewVisibilityNotification:(id)notification
{
  v4 = type metadata accessor for Notification();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Notification._unconditionallyBridgeFromObjectiveC(_:)();
  selfCopy = self;
  ToolPickerController.handleSqueezeInteractionDidChangePaletteViewVisibilityNotification(_:)();

  (*(v5 + 8))(v7, v4);
}

- (void)toolPickerDidHideNotification:(id)notification
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
  selfCopy = self;
  ToolPickerController.stickerPickerViewControllerDidDismiss()();
}

- (void)insertStickerFromItemProvider:(id)provider completionHandler:(id)handler
{
  v6 = _Block_copy(handler);
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  v8 = self + OBJC_IVAR____TtC8PaperKit20ToolPickerController_delegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v9 = *(v8 + 1);
    ObjectType = swift_getObjectType();
    v11 = *(v9 + 72);
    providerCopy = provider;
    selfCopy = self;
    v11(providerCopy, partial apply for thunk for @escaping @callee_unowned @convention(block) (@unowned ObjCBool) -> (), v7, ObjectType, v9);
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