@interface TextBoxTextView
- (NSArray)keyCommands;
- (NSUndoManager)undoManager;
- (_TtC8PaperKit15TextBoxTextView)initWithCoder:(id)coder;
- (_TtC8PaperKit15TextBoxTextView)initWithFrame:(CGRect)frame textContainer:(id)container;
- (void)autoFillDidInsertWithExplicitInvocationMode:(BOOL)mode;
- (void)insertText:(id)text;
- (void)insertTextSuggestion:(id)suggestion;
@end

@implementation TextBoxTextView

- (_TtC8PaperKit15TextBoxTextView)initWithCoder:(id)coder
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
  selfCopy = self;
  nextResponder = [(TextBoxTextView *)selfCopy nextResponder];
  if (nextResponder && (v4 = nextResponder, type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for UIResponder), nextResponder2 = selfCopy, v6 = static NSObject.== infix(_:_:)(), v4, nextResponder2, (v6 & 1) != 0))
  {
    undoManager = 0;
  }

  else
  {
    nextResponder2 = [(TextBoxTextView *)selfCopy nextResponder];
    undoManager = [(TextBoxTextView *)nextResponder2 undoManager];
  }

  return undoManager;
}

- (void)insertText:(id)text
{
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;
  selfCopy = self;
  v8._countAndFlagsBits = v4;
  v8._object = v6;
  TextBoxTextView.insertText(_:)(v8);
}

- (void)insertTextSuggestion:(id)suggestion
{
  suggestionCopy = suggestion;
  selfCopy = self;
  TextBoxTextView.insert(_:)(suggestion);
}

- (void)autoFillDidInsertWithExplicitInvocationMode:(BOOL)mode
{
  selfCopy = self;
  TextBoxTextView.autoFillDidInsert(withExplicitInvocationMode:)(mode);
}

- (NSArray)keyCommands
{
  selfCopy = self;
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

- (_TtC8PaperKit15TextBoxTextView)initWithFrame:(CGRect)frame textContainer:(id)container
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end