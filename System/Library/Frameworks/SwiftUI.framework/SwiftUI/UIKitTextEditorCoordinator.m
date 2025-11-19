@interface UIKitTextEditorCoordinator
- (BOOL)textView:(id)a3 shouldChangeTextInRanges:(id)a4 replacementText:(id)a5;
- (_TtC7SwiftUIP33_A90AD0DD13E6C72FFE734B65FAFF6EFF26UIKitTextEditorCoordinator)init;
- (id)textView:(id)a3 editMenuForTextInRanges:(id)a4 suggestedActions:(id)a5;
- (void)textViewDidChange:(id)a3;
- (void)textViewDidChangeSelection:(id)a3;
@end

@implementation UIKitTextEditorCoordinator

- (void)textViewDidChange:(id)a3
{
  v4 = a3;
  v5 = self;
  UIKitTextEditorCoordinator.textViewDidChange(_:)(v4);
}

- (BOOL)textView:(id)a3 shouldChangeTextInRanges:(id)a4 replacementText:(id)a5
{
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSValue);
  v7 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;
  v11 = a3;
  v12 = self;
  LOBYTE(v8) = UIKitTextEditorCoordinator.textView(_:shouldChangeTextInRanges:replacementText:)(v11, v7, v8, v10);

  return v8 & 1;
}

- (id)textView:(id)a3 editMenuForTextInRanges:(id)a4 suggestedActions:(id)a5
{
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIMenuElement);
  v7 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = a3;
  v9 = self;
  specialized UIKitTextEditorCoordinator.textView(_:editMenuForTextInRanges:suggestedActions:)(v8, v7);
  v11 = v10;

  return v11;
}

- (void)textViewDidChangeSelection:(id)a3
{
  v4 = a3;
  v5 = self;
  UIKitTextEditorCoordinator.textViewDidChangeSelection(_:)(v4);
}

- (_TtC7SwiftUIP33_A90AD0DD13E6C72FFE734B65FAFF6EFF26UIKitTextEditorCoordinator)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end