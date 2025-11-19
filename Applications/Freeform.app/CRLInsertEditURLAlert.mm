@interface CRLInsertEditURLAlert
- (BOOL)textField:(id)a3 shouldChangeCharactersInRange:(_NSRange)a4 replacementString:(id)a5;
- (BOOL)textFieldShouldClear:(id)a3;
- (BOOL)textFieldShouldReturn:(id)a3;
- (_TtC8Freeform21CRLInsertEditURLAlert)init;
- (void)showAlertFrom:(id)a3;
@end

@implementation CRLInsertEditURLAlert

- (void)showAlertFrom:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1009DD894(v4);
}

- (_TtC8Freeform21CRLInsertEditURLAlert)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (BOOL)textField:(id)a3 shouldChangeCharactersInRange:(_NSRange)a4 replacementString:(id)a5
{
  length = a4.length;
  location = a4.location;
  v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = v10;
  v12 = a3;
  v13 = self;
  sub_1009DEB20(v12, location, length, v9, v11);

  return 1;
}

- (BOOL)textFieldShouldClear:(id)a3
{
  v3 = *(&self->super.isa + OBJC_IVAR____TtC8Freeform21CRLInsertEditURLAlert_replaceAction);
  if (v3)
  {
    [v3 setEnabled:0];
  }

  return 1;
}

- (BOOL)textFieldShouldReturn:(id)a3
{
  v4 = a3;
  v5 = self;
  LOBYTE(self) = sub_1009DEE1C(v4);

  return self & 1;
}

@end