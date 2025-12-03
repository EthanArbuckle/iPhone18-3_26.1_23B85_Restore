@interface TranslateInputCard
- (BOOL)textView:(id)view shouldChangeTextInRange:(_NSRange)range replacementText:(id)text;
- (NSArray)keyCommands;
- (UITextInputMode)textInputMode;
- (void)closeButtonPressed;
- (void)pasted:(id)pasted;
- (void)selectedSegmentChanged;
- (void)textDroppableView:(id)view dropSessionDidEnter:(id)enter;
- (void)textViewDidBeginEditing:(id)editing;
- (void)textViewDidChange:(id)change;
@end

@implementation TranslateInputCard

- (UITextInputMode)textInputMode
{
  selfCopy = self;
  v3 = sub_100281128();

  return v3;
}

- (NSArray)keyCommands
{
  sub_100005AD4(&unk_1003AFCC0);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1002D95A0;
  v4 = objc_opt_self();
  selfCopy = self;
  *(v3 + 32) = [v4 keyCommandWithInput:UIKeyInputEscape modifierFlags:0 action:"closeButtonPressed"];

  sub_10000A2CC(0, &qword_1003BB710);
  v6.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v6.super.isa;
}

- (void)closeButtonPressed
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    [Strong closePressed];

    swift_unknownObjectRelease();
  }
}

- (void)selectedSegmentChanged
{
  selfCopy = self;
  sub_100282B34();
}

- (void)textViewDidBeginEditing:(id)editing
{
  editingCopy = editing;
  selfCopy = self;
  sub_100283610();
}

- (void)textViewDidChange:(id)change
{
  changeCopy = change;
  selfCopy = self;
  sub_100283084(changeCopy);
}

- (BOOL)textView:(id)view shouldChangeTextInRange:(_NSRange)range replacementText:(id)text
{
  v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = v8;
  viewCopy = view;
  selfCopy = self;
  LOBYTE(v7) = sub_1002836F4(viewCopy, v7, v9);

  return v7 & 1;
}

- (void)pasted:(id)pasted
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v4 = *(&self->super.super.super.isa + OBJC_IVAR____TtC17SequoiaTranslator18TranslateInputCard_instrumentation);
  selfCopy = self;
  v10 = v4;
  v6 = String.count.getter();

  v7 = *&v10[OBJC_IVAR____TtC17SequoiaTranslator25TypedInputInstrumentation_pastedCharacterCount];
  v8 = __OFADD__(v7, v6);
  v9 = v7 + v6;
  if (v8)
  {
    __break(1u);
  }

  else
  {
    *&v10[OBJC_IVAR____TtC17SequoiaTranslator25TypedInputInstrumentation_pastedCharacterCount] = v9;
  }
}

- (void)textDroppableView:(id)view dropSessionDidEnter:(id)enter
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    [Strong willBeginEditing];

    swift_unknownObjectRelease();
  }
}

@end