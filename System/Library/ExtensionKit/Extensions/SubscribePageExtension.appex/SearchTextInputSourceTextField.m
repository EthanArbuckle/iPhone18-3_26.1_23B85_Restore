@interface SearchTextInputSourceTextField
- (BOOL)textField:(id)a3 shouldChangeCharactersInRange:(_NSRange)a4 replacementString:(id)a5;
- (_TtC22SubscribePageExtension30SearchTextInputSourceTextField)init;
- (void)textFieldDidChangeSelection:(id)a3;
- (void)textFieldDidEdit:(id)a3;
@end

@implementation SearchTextInputSourceTextField

- (void)textFieldDidEdit:(id)a3
{
  v3 = self;
  sub_1001C6A10(v3);
}

- (BOOL)textField:(id)a3 shouldChangeCharactersInRange:(_NSRange)a4 replacementString:(id)a5
{
  length = a4.length;
  sub_100753094();
  v8 = a3;
  v9 = self;
  LOBYTE(length) = sub_1001C6D38(v8, v10, length);

  return length & 1;
}

- (void)textFieldDidChangeSelection:(id)a3
{
  swift_getObjectType();
  v4 = swift_conformsToProtocol2();
  if (v4 && a3)
  {
    v5 = v4;
    ObjectType = swift_getObjectType();
    v7 = *(v5 + 16);
    v8 = a3;
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