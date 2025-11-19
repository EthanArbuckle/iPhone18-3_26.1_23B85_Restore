@interface KeyboardUpdatingTextView.Coordinator
- (BOOL)textView:(id)a3 shouldChangeTextInRange:(_NSRange)a4 replacementText:(id)a5;
- (_TtCV17SequoiaTranslator24KeyboardUpdatingTextView11Coordinator)init;
- (void)preferredContentSizeChanged:(id)a3;
- (void)textDroppableView:(id)a3 dropSessionDidEnter:(id)a4;
- (void)textViewDidChange:(id)a3;
- (void)textViewDidEndEditing:(id)a3;
@end

@implementation KeyboardUpdatingTextView.Coordinator

- (BOOL)textView:(id)a3 shouldChangeTextInRange:(_NSRange)a4 replacementText:(id)a5
{
  length = a4.length;
  location = a4.location;
  v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = v10;
  v12 = a3;
  v13 = self;
  LOBYTE(length) = sub_10012F68C(v12, location, length, v9, v11);

  return length & 1;
}

- (void)textViewDidEndEditing:(id)a3
{
  v4 = a3;
  v3 = String._bridgeToObjectiveC()();
  [v4 setText:v3];
}

- (void)textViewDidChange:(id)a3
{
  type metadata accessor for KeyboardUpdatingTextViewUIKit();
  v5 = swift_dynamicCastClass();
  if (v5)
  {
    v6 = v5;
    v7 = self + OBJC_IVAR____TtCV17SequoiaTranslator24KeyboardUpdatingTextView11Coordinator_keyboardUpdatingTextView;
    v8 = *&v7[*(type metadata accessor for KeyboardUpdatingTextView(0) + 32)];
    v9 = a3;
    v10 = self;
    v8(v6);
  }
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

- (void)preferredContentSizeChanged:(id)a3
{
  v4 = type metadata accessor for Notification();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Notification._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = self;
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