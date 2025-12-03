@interface CRLInsertEditURLAlert
- (BOOL)textField:(id)field shouldChangeCharactersInRange:(_NSRange)range replacementString:(id)string;
- (BOOL)textFieldShouldClear:(id)clear;
- (BOOL)textFieldShouldReturn:(id)return;
- (_TtC8Freeform21CRLInsertEditURLAlert)init;
- (void)showAlertFrom:(id)from;
@end

@implementation CRLInsertEditURLAlert

- (void)showAlertFrom:(id)from
{
  fromCopy = from;
  selfCopy = self;
  sub_1009DD894(fromCopy);
}

- (_TtC8Freeform21CRLInsertEditURLAlert)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (BOOL)textField:(id)field shouldChangeCharactersInRange:(_NSRange)range replacementString:(id)string
{
  length = range.length;
  location = range.location;
  v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = v10;
  fieldCopy = field;
  selfCopy = self;
  sub_1009DEB20(fieldCopy, location, length, v9, v11);

  return 1;
}

- (BOOL)textFieldShouldClear:(id)clear
{
  v3 = *(&self->super.isa + OBJC_IVAR____TtC8Freeform21CRLInsertEditURLAlert_replaceAction);
  if (v3)
  {
    [v3 setEnabled:0];
  }

  return 1;
}

- (BOOL)textFieldShouldReturn:(id)return
{
  returnCopy = return;
  selfCopy = self;
  LOBYTE(self) = sub_1009DEE1C(returnCopy);

  return self & 1;
}

@end