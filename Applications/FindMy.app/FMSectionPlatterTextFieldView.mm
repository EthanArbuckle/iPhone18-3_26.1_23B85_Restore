@interface FMSectionPlatterTextFieldView
- (BOOL)textField:(id)field shouldChangeCharactersInRange:(_NSRange)range replacementString:(id)string;
- (_TtC6FindMy29FMSectionPlatterTextFieldView)initWithFrame:(CGRect)frame;
- (void)textFieldDidChangeWithSender:(id)sender;
- (void)traitCollectionDidChange:(id)change;
@end

@implementation FMSectionPlatterTextFieldView

- (void)traitCollectionDidChange:(id)change
{
  changeCopy = change;
  selfCopy = self;
  sub_10041CC6C();
}

- (BOOL)textField:(id)field shouldChangeCharactersInRange:(_NSRange)range replacementString:(id)string
{
  length = range.length;
  location = range.location;
  v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = v10;
  v12 = self + OBJC_IVAR____TtC6FindMy29FMSectionPlatterTextFieldView_delegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v13 = *(v12 + 1);
    ObjectType = swift_getObjectType();
    v19 = *(v13 + 8);
    fieldCopy = field;
    selfCopy = self;
    v17 = v19(fieldCopy, location, length, v9, v11, ObjectType, v13);
    swift_unknownObjectRelease();
  }

  else
  {
    v17 = 0;
  }

  return v17 & 1;
}

- (void)textFieldDidChangeWithSender:(id)sender
{
  v5 = self + OBJC_IVAR____TtC6FindMy29FMSectionPlatterTextFieldView_delegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v6 = *(v5 + 1);
    ObjectType = swift_getObjectType();
    v8 = *(v6 + 16);
    senderCopy = sender;
    selfCopy = self;
    v8(senderCopy, ObjectType, v6);
    swift_unknownObjectRelease();
  }
}

- (_TtC6FindMy29FMSectionPlatterTextFieldView)initWithFrame:(CGRect)frame
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end