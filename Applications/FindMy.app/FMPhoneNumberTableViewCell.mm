@interface FMPhoneNumberTableViewCell
- (BOOL)textField:(id)field shouldChangeCharactersInRange:(_NSRange)range replacementString:(id)string;
- (BOOL)textView:(id)view shouldChangeTextInRange:(_NSRange)range replacementText:(id)text;
- (_TtC6FindMy26FMPhoneNumberTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (void)textFieldDidChangeWithSender:(id)sender;
- (void)textFieldDidEndEditing:(id)editing reason:(int64_t)reason;
- (void)textViewDidChange:(id)change;
@end

@implementation FMPhoneNumberTableViewCell

- (void)textFieldDidChangeWithSender:(id)sender
{
  v4 = self + OBJC_IVAR____TtC6FindMy26FMPhoneNumberTableViewCell_delegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v5 = *(v4 + 1);
    ObjectType = swift_getObjectType();
    (*(v5 + 8))(sender, ObjectType, v5);
    senderCopy = sender;
    selfCopy = self;
    swift_unknownObjectRelease();
  }

  else
  {
    senderCopy2 = sender;
    selfCopy2 = self;
  }

  sub_100092668();
}

- (void)textFieldDidEndEditing:(id)editing reason:(int64_t)reason
{
  v5 = self + OBJC_IVAR____TtC6FindMy26FMPhoneNumberTableViewCell_delegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v6 = *(v5 + 1);
    ObjectType = swift_getObjectType();
    (*(v6 + 8))(editing, ObjectType, v6);

    swift_unknownObjectRelease();
  }
}

- (BOOL)textField:(id)field shouldChangeCharactersInRange:(_NSRange)range replacementString:(id)string
{
  length = range.length;
  location = range.location;
  v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = v10;
  fieldCopy = field;
  selfCopy = self;
  LOBYTE(length) = sub_1000928A0(fieldCopy, location, length, v9, v11);

  return length & 1;
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

  sub_100092668();
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
  sub_100092668();

  return v15;
}

- (_TtC6FindMy26FMPhoneNumberTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
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

  return sub_100092CB0(style, identifier, v6);
}

@end