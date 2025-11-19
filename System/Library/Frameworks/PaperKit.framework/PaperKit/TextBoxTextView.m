@interface TextBoxTextView
- (NSArray)keyCommands;
- (NSUndoManager)undoManager;
- (_TtC8PaperKit15TextBoxTextView)initWithCoder:(id)a3;
- (_TtC8PaperKit15TextBoxTextView)initWithFrame:(CGRect)a3 textContainer:(id)a4;
- (void)autoFillDidInsertWithExplicitInvocationMode:(BOOL)a3;
- (void)insertText:(id)a3;
- (void)insertTextSuggestion:(id)a3;
@end

@implementation TextBoxTextView

- (_TtC8PaperKit15TextBoxTextView)initWithCoder:(id)a3
{
  swift_unknownObjectWeakInit();
  v4 = self + OBJC_IVAR____TtC8PaperKit15TextBoxTextView_formAutofillDelegate;
  *v4 = 0u;
  *(v4 + 1) = 0u;
  *(v4 + 4) = 0;
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (NSUndoManager)undoManager
{
  v2 = self;
  v3 = [(TextBoxTextView *)v2 nextResponder];
  if (v3 && (v4 = v3, type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for UIResponder), v5 = v2, v6 = static NSObject.== infix(_:_:)(), v4, v5, (v6 & 1) != 0))
  {
    v7 = 0;
  }

  else
  {
    v5 = [(TextBoxTextView *)v2 nextResponder];
    v7 = [(TextBoxTextView *)v5 undoManager];
  }

  return v7;
}

- (void)insertText:(id)a3
{
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;
  v7 = self;
  v8._countAndFlagsBits = v4;
  v8._object = v6;
  TextBoxTextView.insertText(_:)(v8);
}

- (void)insertTextSuggestion:(id)a3
{
  v5 = a3;
  v6 = self;
  TextBoxTextView.insert(_:)(a3);
}

- (void)autoFillDidInsertWithExplicitInvocationMode:(BOOL)a3
{
  v4 = self;
  TextBoxTextView.autoFillDidInsert(withExplicitInvocationMode:)(a3);
}

- (NSArray)keyCommands
{
  v2 = self;
  v3 = TextBoxTextView.keyCommands.getter();

  if (v3)
  {
    type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for UIKeyCommand);
    v4.super.isa = Array._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v4.super.isa = 0;
  }

  return v4.super.isa;
}

- (_TtC8PaperKit15TextBoxTextView)initWithFrame:(CGRect)a3 textContainer:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end