@interface FMPhoneNumberTableViewCell
- (BOOL)textField:(id)a3 shouldChangeCharactersInRange:(_NSRange)a4 replacementString:(id)a5;
- (BOOL)textView:(id)a3 shouldChangeTextInRange:(_NSRange)a4 replacementText:(id)a5;
- (_TtC6FindMy26FMPhoneNumberTableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (void)textFieldDidChangeWithSender:(id)a3;
- (void)textFieldDidEndEditing:(id)a3 reason:(int64_t)a4;
- (void)textViewDidChange:(id)a3;
@end

@implementation FMPhoneNumberTableViewCell

- (void)textFieldDidChangeWithSender:(id)a3
{
  v4 = self + OBJC_IVAR____TtC6FindMy26FMPhoneNumberTableViewCell_delegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v5 = *(v4 + 1);
    ObjectType = swift_getObjectType();
    (*(v5 + 8))(a3, ObjectType, v5);
    v7 = a3;
    v8 = self;
    swift_unknownObjectRelease();
  }

  else
  {
    v9 = a3;
    v10 = self;
  }

  sub_100092668();
}

- (void)textFieldDidEndEditing:(id)a3 reason:(int64_t)a4
{
  v5 = self + OBJC_IVAR____TtC6FindMy26FMPhoneNumberTableViewCell_delegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v6 = *(v5 + 1);
    ObjectType = swift_getObjectType();
    (*(v6 + 8))(a3, ObjectType, v6);

    swift_unknownObjectRelease();
  }
}

- (BOOL)textField:(id)a3 shouldChangeCharactersInRange:(_NSRange)a4 replacementString:(id)a5
{
  length = a4.length;
  location = a4.location;
  v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = v10;
  v12 = a3;
  v13 = self;
  LOBYTE(length) = sub_1000928A0(v12, location, length, v9, v11);

  return length & 1;
}

- (void)textViewDidChange:(id)a3
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    v6 = [Strong respondsToSelector:"textViewDidChange:"];
    v7 = a3;
    v8 = self;
    if (v6)
    {
      [v5 textViewDidChange:v7];
    }

    swift_unknownObjectRelease();
  }

  else
  {
    v9 = a3;
    v10 = self;
  }

  sub_100092668();
}

- (BOOL)textView:(id)a3 shouldChangeTextInRange:(_NSRange)a4 replacementText:(id)a5
{
  length = a4.length;
  location = a4.location;
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    v16 = a3;
    v17 = self;
LABEL_6:
    v15 = 0;
    goto LABEL_7;
  }

  v10 = Strong;
  v11 = [Strong respondsToSelector:"textView:shouldChangeTextInRange:replacementText:"];
  v12 = a3;
  v13 = self;
  if ((v11 & 1) == 0)
  {
    swift_unknownObjectRelease();
    goto LABEL_6;
  }

  v14 = String._bridgeToObjectiveC()();
  v15 = [v10 textView:v12 shouldChangeTextInRange:location replacementText:{length, v14}];
  swift_unknownObjectRelease();

LABEL_7:
  sub_100092668();

  return v15;
}

- (_TtC6FindMy26FMPhoneNumberTableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  if (a4)
  {
    a4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  return sub_100092CB0(a3, a4, v6);
}

@end