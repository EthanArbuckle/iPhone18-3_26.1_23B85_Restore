@interface UIKitMainMenuController
- (BOOL)canPerformAction:(SEL)action withSender:(id)sender;
- (void)_performMainMenuShortcutKeyCommand:(id)command;
- (void)buildMenuWithBuilder:(id)builder;
- (void)delete:(id)delete;
@end

@implementation UIKitMainMenuController

- (void)buildMenuWithBuilder:(id)builder
{
  swift_unknownObjectRetain();
  selfCopy = self;
  UIKitMainMenuController.buildMenu(with:)(builder);
  swift_unknownObjectRelease();
}

- (void)delete:(id)delete
{
  if (delete)
  {
    selfCopy = self;
    swift_unknownObjectRetain();
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v6, 0, sizeof(v6));
    selfCopy2 = self;
  }

  UIKitMainMenuController.delete(_:)();

  _sypSgWOhTm_4(v6, &lazy cache variable for type metadata for Any?, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6720], type metadata accessor for _ContiguousArrayStorage<MenuBuilderInstruction>);
}

- (BOOL)canPerformAction:(SEL)action withSender:(id)sender
{
  if (sender)
  {
    selfCopy = self;
    swift_unknownObjectRetain();
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v10, 0, sizeof(v10));
    selfCopy2 = self;
  }

  v8 = UIKitMainMenuController.canPerformAction(_:withSender:)(action, v10);

  _sypSgWOhTm_4(v10, &lazy cache variable for type metadata for Any?, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6720], type metadata accessor for _ContiguousArrayStorage<MenuBuilderInstruction>);
  return v8 & 1;
}

- (void)_performMainMenuShortcutKeyCommand:(id)command
{
  commandCopy = command;
  selfCopy = self;
  UIKitMainMenuController._performMainMenuShortcutKeyCommand(_:)(commandCopy);
}

@end