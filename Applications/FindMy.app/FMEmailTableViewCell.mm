@interface FMEmailTableViewCell
- (BOOL)textField:(id)field shouldChangeCharactersInRange:(_NSRange)range replacementString:(id)string;
- (BOOL)textView:(id)view shouldChangeTextInRange:(_NSRange)range replacementText:(id)text;
- (_TtC6FindMy20FMEmailTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (void)textFieldDidChangeWithSender:(id)sender;
- (void)textFieldDidEndEditing:(id)editing reason:(int64_t)reason;
- (void)textViewDidChange:(id)change;
@end

@implementation FMEmailTableViewCell

- (void)textFieldDidChangeWithSender:(id)sender
{
  v4 = self + OBJC_IVAR____TtC6FindMy20FMEmailTableViewCell_delegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v5 = *(v4 + 1);
    ObjectType = swift_getObjectType();
    v7 = *(v5 + 8);
    senderCopy = sender;
    selfCopy = self;
    v7(senderCopy, ObjectType, v5);
    swift_unknownObjectRelease();
  }

  else
  {
    senderCopy2 = sender;
    selfCopy2 = self;
  }

  sub_1003C28F0();
}

- (void)textFieldDidEndEditing:(id)editing reason:(int64_t)reason
{
  v6 = self + OBJC_IVAR____TtC6FindMy20FMEmailTableViewCell_delegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v7 = *(v6 + 1);
    ObjectType = swift_getObjectType();
    v9 = *(v7 + 8);
    editingCopy = editing;
    selfCopy = self;
    v9(editingCopy, ObjectType, v7);
    swift_unknownObjectRelease();
  }
}

- (BOOL)textField:(id)field shouldChangeCharactersInRange:(_NSRange)range replacementString:(id)string
{
  length = range.length;
  location = range.location;
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
    fieldCopy = field;
    fieldCopy2 = field;
    selfCopy = self;
    v21 = fieldCopy2;
    field = fieldCopy;
    v22 = v15(v21, v26, v27, v17, v16, ObjectType, v13);
    swift_unknownObjectRelease();
  }

  else
  {
    fieldCopy3 = field;
    selfCopy2 = self;
    v22 = 0;
  }

  sub_1003C28F0();

  return v22 & 1;
}

- (void)textViewDidChange:(id)change
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    v6 = [Strong respondsToSelector:"textViewDidChange:"];
    changeCopy = change;
    selfCopy = self;
    if (v6)
    {
      [v5 textViewDidChange:changeCopy];
    }

    swift_unknownObjectRelease();
  }

  else
  {
    changeCopy2 = change;
    selfCopy2 = self;
  }

  sub_1003C28F0();
}

- (BOOL)textView:(id)view shouldChangeTextInRange:(_NSRange)range replacementText:(id)text
{
  length = range.length;
  location = range.location;
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    viewCopy = view;
    selfCopy = self;
LABEL_6:
    v15 = 0;
    goto LABEL_7;
  }

  v10 = Strong;
  v11 = [Strong respondsToSelector:"textView:shouldChangeTextInRange:replacementText:"];
  viewCopy2 = view;
  selfCopy2 = self;
  if ((v11 & 1) == 0)
  {
    swift_unknownObjectRelease();
    goto LABEL_6;
  }

  v14 = String._bridgeToObjectiveC()();
  v15 = [v10 textView:viewCopy2 shouldChangeTextInRange:location replacementText:{length, v14}];
  swift_unknownObjectRelease();

LABEL_7:
  sub_1003C28F0();

  return v15;
}

- (_TtC6FindMy20FMEmailTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  if (identifier)
  {
    identifier = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  return sub_1003C2E74(style, identifier, v6);
}

@end