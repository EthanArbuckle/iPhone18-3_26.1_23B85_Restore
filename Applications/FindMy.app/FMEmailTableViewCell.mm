@interface FMEmailTableViewCell
- (BOOL)textField:(id)a3 shouldChangeCharactersInRange:(_NSRange)a4 replacementString:(id)a5;
- (BOOL)textView:(id)a3 shouldChangeTextInRange:(_NSRange)a4 replacementText:(id)a5;
- (_TtC6FindMy20FMEmailTableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (void)textFieldDidChangeWithSender:(id)a3;
- (void)textFieldDidEndEditing:(id)a3 reason:(int64_t)a4;
- (void)textViewDidChange:(id)a3;
@end

@implementation FMEmailTableViewCell

- (void)textFieldDidChangeWithSender:(id)a3
{
  v4 = self + OBJC_IVAR____TtC6FindMy20FMEmailTableViewCell_delegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v5 = *(v4 + 1);
    ObjectType = swift_getObjectType();
    v7 = *(v5 + 8);
    v8 = a3;
    v9 = self;
    v7(v8, ObjectType, v5);
    swift_unknownObjectRelease();
  }

  else
  {
    v10 = a3;
    v11 = self;
  }

  sub_1003C28F0();
}

- (void)textFieldDidEndEditing:(id)a3 reason:(int64_t)a4
{
  v6 = self + OBJC_IVAR____TtC6FindMy20FMEmailTableViewCell_delegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v7 = *(v6 + 1);
    ObjectType = swift_getObjectType();
    v9 = *(v7 + 8);
    v10 = a3;
    v11 = self;
    v9(v10, ObjectType, v7);
    swift_unknownObjectRelease();
  }
}

- (BOOL)textField:(id)a3 shouldChangeCharactersInRange:(_NSRange)a4 replacementString:(id)a5
{
  length = a4.length;
  location = a4.location;
  v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = v10;
  v12 = self + OBJC_IVAR____TtC6FindMy20FMEmailTableViewCell_delegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v26 = location;
    v27 = length;
    v13 = *(v12 + 1);
    ObjectType = swift_getObjectType();
    v15 = *(v13 + 16);
    v16 = v11;
    v17 = v9;
    v18 = a3;
    v19 = a3;
    v20 = self;
    v21 = v19;
    a3 = v18;
    v22 = v15(v21, v26, v27, v17, v16, ObjectType, v13);
    swift_unknownObjectRelease();
  }

  else
  {
    v23 = a3;
    v24 = self;
    v22 = 0;
  }

  sub_1003C28F0();

  return v22 & 1;
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

  sub_1003C28F0();
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
  sub_1003C28F0();

  return v15;
}

- (_TtC6FindMy20FMEmailTableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
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

  return sub_1003C2E74(a3, a4, v6);
}

@end