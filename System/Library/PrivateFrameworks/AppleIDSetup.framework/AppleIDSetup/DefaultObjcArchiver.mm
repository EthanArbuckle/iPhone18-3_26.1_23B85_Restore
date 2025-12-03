@interface DefaultObjcArchiver
- (_TtC12AppleIDSetup19DefaultObjcArchiver)init;
- (id)initForWritingWithMutableData:(id)data;
- (id)initRequiringSecureCoding:(BOOL)coding;
- (void)encodeObject:(id)object forKey:(id)key;
@end

@implementation DefaultObjcArchiver

- (void)encodeObject:(id)object forKey:(id)key
{
  if (object)
  {
    keyCopy = key;
    selfCopy = self;
    swift_unknownObjectRetain();
    sub_24075A754();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v10, 0, sizeof(v10));
    keyCopy2 = key;
    selfCopy2 = self;
  }

  sub_24075A0B4();

  sub_2407555E4(v10);

  sub_2405B8A50(v10, &qword_27E4BA1E8, &qword_24076E1C0);
}

- (id)initRequiringSecureCoding:(BOOL)coding
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC12AppleIDSetup19DefaultObjcArchiver)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (id)initForWritingWithMutableData:(id)data
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end