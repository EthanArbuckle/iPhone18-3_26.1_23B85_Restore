@interface KeyboardUpdatingTextView.Coordinator
- (BOOL)textView:(id)view shouldChangeTextInRange:(_NSRange)range replacementText:(id)text;
- (_TtCV17SequoiaTranslator24KeyboardUpdatingTextView11Coordinator)init;
- (void)preferredContentSizeChanged:(id)changed;
- (void)textDroppableView:(id)view dropSessionDidEnter:(id)enter;
- (void)textViewDidChange:(id)change;
- (void)textViewDidEndEditing:(id)editing;
@end

@implementation KeyboardUpdatingTextView.Coordinator

- (BOOL)textView:(id)view shouldChangeTextInRange:(_NSRange)range replacementText:(id)text
{
  length = range.length;
  location = range.location;
  v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = v10;
  viewCopy = view;
  selfCopy = self;
  LOBYTE(length) = sub_10012F68C(viewCopy, location, length, v9, v11);

  return length & 1;
}

- (void)textViewDidEndEditing:(id)editing
{
  editingCopy = editing;
  v3 = String._bridgeToObjectiveC()();
  [editingCopy setText:v3];
}

- (void)textViewDidChange:(id)change
{
  type metadata accessor for KeyboardUpdatingTextViewUIKit();
  v5 = swift_dynamicCastClass();
  if (v5)
  {
    v6 = v5;
    v7 = self + OBJC_IVAR____TtCV17SequoiaTranslator24KeyboardUpdatingTextView11Coordinator_keyboardUpdatingTextView;
    v8 = *&v7[*(type metadata accessor for KeyboardUpdatingTextView(0) + 32)];
    changeCopy = change;
    selfCopy = self;
    v8(v6);
  }
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

- (void)preferredContentSizeChanged:(id)changed
{
  v4 = type metadata accessor for Notification();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Notification._unconditionallyBridgeFromObjectiveC(_:)();
  selfCopy = self;
  sub_10012FEDC();

  (*(v5 + 8))(v7, v4);
}

- (_TtCV17SequoiaTranslator24KeyboardUpdatingTextView11Coordinator)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end