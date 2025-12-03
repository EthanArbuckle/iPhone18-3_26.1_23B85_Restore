@interface SearchTextInputSourceTextField
- (BOOL)textField:(id)field shouldChangeCharactersInRange:(_NSRange)range replacementString:(id)string;
- (_TtC22SubscribePageExtension30SearchTextInputSourceTextField)init;
- (void)textFieldDidChangeSelection:(id)selection;
- (void)textFieldDidEdit:(id)edit;
@end

@implementation SearchTextInputSourceTextField

- (void)textFieldDidEdit:(id)edit
{
  selfCopy = self;
  sub_1001C6A10(selfCopy);
}

- (BOOL)textField:(id)field shouldChangeCharactersInRange:(_NSRange)range replacementString:(id)string
{
  length = range.length;
  sub_100753094();
  fieldCopy = field;
  selfCopy = self;
  LOBYTE(length) = sub_1001C6D38(fieldCopy, v10, length);

  return length & 1;
}

- (void)textFieldDidChangeSelection:(id)selection
{
  swift_getObjectType();
  v4 = swift_conformsToProtocol2();
  if (v4 && selection)
  {
    v5 = v4;
    ObjectType = swift_getObjectType();
    v7 = *(v5 + 16);
    selectionCopy = selection;
    v7(0, 0, ObjectType, v5);
  }
}

- (_TtC22SubscribePageExtension30SearchTextInputSourceTextField)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end