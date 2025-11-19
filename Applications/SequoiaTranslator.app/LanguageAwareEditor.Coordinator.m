@interface LanguageAwareEditor.Coordinator
- (BOOL)textView:(id)a3 shouldChangeTextInRange:(_NSRange)a4 replacementText:(id)a5;
- (_TtCV17SequoiaTranslator19LanguageAwareEditor11Coordinator)init;
- (void)textDroppableView:(id)a3 dropSessionDidEnter:(id)a4;
- (void)textViewDidBeginEditing:(id)a3;
- (void)textViewDidChange:(id)a3;
@end

@implementation LanguageAwareEditor.Coordinator

- (BOOL)textView:(id)a3 shouldChangeTextInRange:(_NSRange)a4 replacementText:(id)a5
{
  v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = v8;
  v10 = a3;
  v11 = self;
  LOBYTE(v7) = sub_1001355B8(v10, v7, v9);

  return v7 & 1;
}

- (void)textViewDidChange:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1001348A8(v4);
}

- (void)textDroppableView:(id)a3 dropSessionDidEnter:(id)a4
{
  objc_opt_self();
  v6 = swift_dynamicCastObjCClass();
  if (v6)
  {
    v7 = v6;
    v11 = a3;
    swift_unknownObjectRetain();
    v8 = self;
    v9 = [v7 delegate];
    if (v9)
    {
      v10 = v9;
      if ([v9 respondsToSelector:"textViewDidChange:"])
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

- (void)textViewDidBeginEditing:(id)a3
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
      v9 = a3;
      v10 = self;
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