@interface PlatformTextFieldCoordinator
- (_TtC7SwiftUI28PlatformTextFieldCoordinator)init;
- (id)textField:(id)field editMenuForCharactersInRange:(_NSRange)range suggestedActions:(id)actions;
- (void)pressedReturnKey:(id)key;
- (void)primaryActionTriggered:(id)triggered;
- (void)textChanged:(id)changed;
- (void)textFieldDidBeginEditing:(id)editing;
- (void)textFieldDidEndEditing:(id)editing reason:(int64_t)reason;
- (void)textViewDidBeginEditing:(id)editing;
- (void)textViewDidChange:(id)change;
- (void)textViewDidChangeSelection:(void *)selection;
- (void)textViewDidEndEditing:(id)editing;
@end

@implementation PlatformTextFieldCoordinator

- (void)textViewDidChangeSelection:(void *)selection
{
  selectionCopy = selection;
  PlatformTextFieldCoordinator.didChangeSelection()();
}

- (void)primaryActionTriggered:(id)triggered
{
  selfCopy = self;
  PlatformTextFieldCoordinator.triggerPrimaryAction()();
}

- (void)pressedReturnKey:(id)key
{
  v4 = type metadata accessor for Notification();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Notification._unconditionallyBridgeFromObjectiveC(_:)();
  selfCopy = self;
  PlatformTextFieldCoordinator.pressedReturnKey(_:)();

  (*(v5 + 8))(v7, v4);
}

- (void)textChanged:(id)changed
{
  *(&self->super.super.isa + OBJC_IVAR____TtC7SwiftUI28PlatformTextFieldCoordinator_isUserEditing) = 1;
  changedCopy = changed;
  selfCopy = self;
  text = [changedCopy text];
  if (text)
  {
    v7 = text;
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

- (void)textFieldDidBeginEditing:(id)editing
{
  editingCopy = editing;
  selfCopy = self;
  specialized PlatformTextFieldCoordinator.textFieldDidBeginEditing(_:)(closure #1 in PlatformTextFieldCoordinator.didBeginEditing()partial apply);
}

- (void)textFieldDidEndEditing:(id)editing reason:(int64_t)reason
{
  editingCopy = editing;
  selfCopy = self;
  specialized PlatformTextFieldCoordinator.textFieldDidEndEditing(_:reason:)(closure #1 in PlatformTextFieldCoordinator.didEndEditing()partial apply);
}

- (id)textField:(id)field editMenuForCharactersInRange:(_NSRange)range suggestedActions:(id)actions
{
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIMenuElement);
  v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  selfCopy = self;
  PlatformTextFieldCoordinator.presentEditMenu(with:)(v8, v6);
  v10 = v9;

  return v10;
}

- (void)textViewDidChange:(id)change
{
  *(&self->super.super.isa + OBJC_IVAR____TtC7SwiftUI28PlatformTextFieldCoordinator_isUserEditing) = 1;
  changeCopy = change;
  selfCopy = self;
  attributedText = [changeCopy attributedText];
  if (attributedText)
  {
    v6 = attributedText;
    string = [attributedText string];

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

- (void)textViewDidBeginEditing:(id)editing
{
  editingCopy = editing;
  selfCopy = self;
  specialized PlatformTextFieldCoordinator.textFieldDidBeginEditing(_:)(partial apply for closure #1 in PlatformTextFieldCoordinator.didBeginEditing());
}

- (void)textViewDidEndEditing:(id)editing
{
  editingCopy = editing;
  selfCopy = self;
  specialized PlatformTextFieldCoordinator.textFieldDidEndEditing(_:reason:)(partial apply for closure #1 in PlatformTextFieldCoordinator.didEndEditing());
}

@end