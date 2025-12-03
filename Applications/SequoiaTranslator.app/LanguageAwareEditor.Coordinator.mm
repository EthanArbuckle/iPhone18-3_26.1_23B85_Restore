@interface LanguageAwareEditor.Coordinator
- (BOOL)textView:(id)view shouldChangeTextInRange:(_NSRange)range replacementText:(id)text;
- (_TtCV17SequoiaTranslator19LanguageAwareEditor11Coordinator)init;
- (void)textDroppableView:(id)view dropSessionDidEnter:(id)enter;
- (void)textViewDidBeginEditing:(id)editing;
- (void)textViewDidChange:(id)change;
@end

@implementation LanguageAwareEditor.Coordinator

- (BOOL)textView:(id)view shouldChangeTextInRange:(_NSRange)range replacementText:(id)text
{
  v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = v8;
  viewCopy = view;
  selfCopy = self;
  LOBYTE(v7) = sub_1001355B8(viewCopy, v7, v9);

  return v7 & 1;
}

- (void)textViewDidChange:(id)change
{
  changeCopy = change;
  selfCopy = self;
  sub_1001348A8(changeCopy);
}

- (void)textDroppableView:(id)view dropSessionDidEnter:(id)enter
{
  objc_opt_self();
  v6 = swift_dynamicCastObjCClass();
  if (v6)
  {
    v7 = v6;
    viewCopy = view;
    swift_unknownObjectRetain();
    selfCopy = self;
    delegate = [v7 delegate];
    if (delegate)
    {
      v10 = delegate;
      if ([delegate respondsToSelector:"textViewDidChange:"])
      {
        [v10 textViewDidChange:v7];
      }

      swift_unknownObjectRelease();

      swift_unknownObjectRelease();
    }

    else
    {
      swift_unknownObjectRelease();
    }
  }
}

- (void)textViewDidBeginEditing:(id)editing
{
  type metadata accessor for LanguageAwareTextView();
  v5 = swift_dynamicCastClass();
  if (v5)
  {
    v6 = v5;
    v7 = self + OBJC_IVAR____TtCV17SequoiaTranslator19LanguageAwareEditor11Coordinator_languageAwareEditor;
    v8 = *&v7[*(type metadata accessor for LanguageAwareEditor(0) + 64)];
    if (v8)
    {
      editingCopy = editing;
      selfCopy = self;
      sub_10001AD18(v8);
      v8(v6);
      sub_10001ABE4(v8);
    }
  }
}

- (_TtCV17SequoiaTranslator19LanguageAwareEditor11Coordinator)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end