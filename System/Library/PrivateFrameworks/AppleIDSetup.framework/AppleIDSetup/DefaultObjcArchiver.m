@interface DefaultObjcArchiver
- (_TtC12AppleIDSetup19DefaultObjcArchiver)init;
- (id)initForWritingWithMutableData:(id)a3;
- (id)initRequiringSecureCoding:(BOOL)a3;
- (void)encodeObject:(id)a3 forKey:(id)a4;
@end

@implementation DefaultObjcArchiver

- (void)encodeObject:(id)a3 forKey:(id)a4
{
  if (a3)
  {
    v6 = a4;
    v7 = self;
    swift_unknownObjectRetain();
    sub_24075A754();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v10, 0, sizeof(v10));
    v8 = a4;
    v9 = self;
  }

  sub_24075A0B4();

  sub_2407555E4(v10);

  sub_2405B8A50(v10, &qword_27E4BA1E8, &qword_24076E1C0);
}

- (id)initRequiringSecureCoding:(BOOL)a3
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

- (id)initForWritingWithMutableData:(id)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end