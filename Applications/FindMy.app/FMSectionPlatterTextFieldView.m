@interface FMSectionPlatterTextFieldView
- (BOOL)textField:(id)a3 shouldChangeCharactersInRange:(_NSRange)a4 replacementString:(id)a5;
- (_TtC6FindMy29FMSectionPlatterTextFieldView)initWithFrame:(CGRect)a3;
- (void)textFieldDidChangeWithSender:(id)a3;
- (void)traitCollectionDidChange:(id)a3;
@end

@implementation FMSectionPlatterTextFieldView

- (void)traitCollectionDidChange:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_10041CC6C();
}

- (BOOL)textField:(id)a3 shouldChangeCharactersInRange:(_NSRange)a4 replacementString:(id)a5
{
  length = a4.length;
  location = a4.location;
  v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = v10;
  v12 = self + OBJC_IVAR____TtC6FindMy29FMSectionPlatterTextFieldView_delegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v13 = *(v12 + 1);
    ObjectType = swift_getObjectType();
    v19 = *(v13 + 8);
    v15 = a3;
    v16 = self;
    v17 = v19(v15, location, length, v9, v11, ObjectType, v13);
    swift_unknownObjectRelease();
  }

  else
  {
    v17 = 0;
  }

  return v17 & 1;
}

- (void)textFieldDidChangeWithSender:(id)a3
{
  v5 = self + OBJC_IVAR____TtC6FindMy29FMSectionPlatterTextFieldView_delegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v6 = *(v5 + 1);
    ObjectType = swift_getObjectType();
    v8 = *(v6 + 16);
    v9 = a3;
    v10 = self;
    v8(v9, ObjectType, v6);
    swift_unknownObjectRelease();
  }
}

- (_TtC6FindMy29FMSectionPlatterTextFieldView)initWithFrame:(CGRect)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end