@interface UIKitMainMenuController
- (BOOL)canPerformAction:(SEL)a3 withSender:(id)a4;
- (void)_performMainMenuShortcutKeyCommand:(id)a3;
- (void)buildMenuWithBuilder:(id)a3;
- (void)delete:(id)a3;
@end

@implementation UIKitMainMenuController

- (void)buildMenuWithBuilder:(id)a3
{
  swift_unknownObjectRetain();
  v5 = self;
  UIKitMainMenuController.buildMenu(with:)(a3);
  swift_unknownObjectRelease();
}

- (void)delete:(id)a3
{
  if (a3)
  {
    v4 = self;
    swift_unknownObjectRetain();
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v6, 0, sizeof(v6));
    v5 = self;
  }

  UIKitMainMenuController.delete(_:)();

  _sypSgWOhTm_4(v6, &lazy cache variable for type metadata for Any?, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6720], type metadata accessor for _ContiguousArrayStorage<MenuBuilderInstruction>);
}

- (BOOL)canPerformAction:(SEL)a3 withSender:(id)a4
{
  if (a4)
  {
    v6 = self;
    swift_unknownObjectRetain();
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v10, 0, sizeof(v10));
    v7 = self;
  }

  v8 = UIKitMainMenuController.canPerformAction(_:withSender:)(a3, v10);

  _sypSgWOhTm_4(v10, &lazy cache variable for type metadata for Any?, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6720], type metadata accessor for _ContiguousArrayStorage<MenuBuilderInstruction>);
  return v8 & 1;
}

- (void)_performMainMenuShortcutKeyCommand:(id)a3
{
  v4 = a3;
  v5 = self;
  UIKitMainMenuController._performMainMenuShortcutKeyCommand(_:)(v4);
}

@end