@interface PlatformTextFieldCoordinator
- (_TtC7SwiftUI28PlatformTextFieldCoordinator)init;
- (id)textField:(id)a3 editMenuForCharactersInRange:(_NSRange)a4 suggestedActions:(id)a5;
- (void)pressedReturnKey:(id)a3;
- (void)primaryActionTriggered:(id)a3;
- (void)textChanged:(id)a3;
- (void)textFieldDidBeginEditing:(id)a3;
- (void)textFieldDidEndEditing:(id)a3 reason:(int64_t)a4;
- (void)textViewDidBeginEditing:(id)a3;
- (void)textViewDidChange:(id)a3;
- (void)textViewDidChangeSelection:(void *)a1;
- (void)textViewDidEndEditing:(id)a3;
@end

@implementation PlatformTextFieldCoordinator

- (void)textViewDidChangeSelection:(void *)a1
{
  v1 = a1;
  PlatformTextFieldCoordinator.didChangeSelection()();
}

- (void)primaryActionTriggered:(id)a3
{
  v3 = self;
  PlatformTextFieldCoordinator.triggerPrimaryAction()();
}

- (void)pressedReturnKey:(id)a3
{
  v4 = type metadata accessor for Notification();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Notification._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = self;
  PlatformTextFieldCoordinator.pressedReturnKey(_:)();

  (*(v5 + 8))(v7, v4);
}

- (void)textChanged:(id)a3
{
  *(&self->super.super.isa + OBJC_IVAR____TtC7SwiftUI28PlatformTextFieldCoordinator_isUserEditing) = 1;
  v4 = a3;
  v5 = self;
  v6 = [v4 text];
  if (v6)
  {
    v7 = v6;
    v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v10 = v9;
  }

  else
  {
    v8 = 0;
    v10 = 0xE000000000000000;
  }

  v11._countAndFlagsBits = v8;
  v11._object = v10;
  PlatformTextFieldCoordinator.updateText(_:)(v11);
}

- (_TtC7SwiftUI28PlatformTextFieldCoordinator)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)textFieldDidBeginEditing:(id)a3
{
  v4 = a3;
  v5 = self;
  specialized PlatformTextFieldCoordinator.textFieldDidBeginEditing(_:)(closure #1 in PlatformTextFieldCoordinator.didBeginEditing()partial apply);
}

- (void)textFieldDidEndEditing:(id)a3 reason:(int64_t)a4
{
  v5 = a3;
  v6 = self;
  specialized PlatformTextFieldCoordinator.textFieldDidEndEditing(_:reason:)(closure #1 in PlatformTextFieldCoordinator.didEndEditing()partial apply);
}

- (id)textField:(id)a3 editMenuForCharactersInRange:(_NSRange)a4 suggestedActions:(id)a5
{
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIMenuElement);
  v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = self;
  PlatformTextFieldCoordinator.presentEditMenu(with:)(v8, v6);
  v10 = v9;

  return v10;
}

- (void)textViewDidChange:(id)a3
{
  *(&self->super.super.isa + OBJC_IVAR____TtC7SwiftUI28PlatformTextFieldCoordinator_isUserEditing) = 1;
  v4 = a3;
  v12 = self;
  v5 = [v4 attributedText];
  if (v5)
  {
    v6 = v5;
    v7 = [v5 string];

    v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v10 = v9;

    v11._countAndFlagsBits = v8;
    v11._object = v10;
    PlatformTextFieldCoordinator.updateText(_:)(v11);
  }

  else
  {
    __break(1u);
  }
}

- (void)textViewDidBeginEditing:(id)a3
{
  v4 = a3;
  v5 = self;
  specialized PlatformTextFieldCoordinator.textFieldDidBeginEditing(_:)(partial apply for closure #1 in PlatformTextFieldCoordinator.didBeginEditing());
}

- (void)textViewDidEndEditing:(id)a3
{
  v4 = a3;
  v5 = self;
  specialized PlatformTextFieldCoordinator.textFieldDidEndEditing(_:reason:)(partial apply for closure #1 in PlatformTextFieldCoordinator.didEndEditing());
}

@end