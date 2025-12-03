@interface UIKitTextEditorCoordinator
- (BOOL)textView:(id)view shouldChangeTextInRanges:(id)ranges replacementText:(id)text;
- (_TtC7SwiftUIP33_A90AD0DD13E6C72FFE734B65FAFF6EFF26UIKitTextEditorCoordinator)init;
- (id)textView:(id)view editMenuForTextInRanges:(id)ranges suggestedActions:(id)actions;
- (void)textViewDidChange:(id)change;
- (void)textViewDidChangeSelection:(id)selection;
@end

@implementation UIKitTextEditorCoordinator

- (void)textViewDidChange:(id)change
{
  changeCopy = change;
  selfCopy = self;
  UIKitTextEditorCoordinator.textViewDidChange(_:)(changeCopy);
}

- (BOOL)textView:(id)view shouldChangeTextInRanges:(id)ranges replacementText:(id)text
{
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSValue);
  v7 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;
  viewCopy = view;
  selfCopy = self;
  LOBYTE(v8) = UIKitTextEditorCoordinator.textView(_:shouldChangeTextInRanges:replacementText:)(viewCopy, v7, v8, v10);

  return v8 & 1;
}

- (id)textView:(id)view editMenuForTextInRanges:(id)ranges suggestedActions:(id)actions
{
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIMenuElement);
  v7 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  viewCopy = view;
  selfCopy = self;
  specialized UIKitTextEditorCoordinator.textView(_:editMenuForTextInRanges:suggestedActions:)(viewCopy, v7);
  v11 = v10;

  return v11;
}

- (void)textViewDidChangeSelection:(id)selection
{
  selectionCopy = selection;
  selfCopy = self;
  UIKitTextEditorCoordinator.textViewDidChangeSelection(_:)(selectionCopy);
}

- (_TtC7SwiftUIP33_A90AD0DD13E6C72FFE734B65FAFF6EFF26UIKitTextEditorCoordinator)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end