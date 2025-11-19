@interface XPCWrapper
- (_TtC14IdentityLookup10XPCWrapper)init;
- (_TtC14IdentityLookup10XPCWrapper)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation XPCWrapper

- (void)encodeWithCoder:(id)a3
{
  v4 = *(&self->super.isa + OBJC_IVAR____TtC14IdentityLookup10XPCWrapper_data);
  v5 = *&self->data[OBJC_IVAR____TtC14IdentityLookup10XPCWrapper_data];
  v6 = a3;
  v9 = self;
  sub_238A5C83C(v4, v5);
  v7 = sub_238A61A2C();
  sub_238A5DC94(v4, v5);
  v8 = sub_238A61B9C();
  [v6 encodeObject:v7 forKey:v8];
}

- (_TtC14IdentityLookup10XPCWrapper)initWithCoder:(id)a3
{
  sub_238A5EA94();
  v5 = a3;
  v6 = sub_238A61D2C();
  if (v6)
  {
    v7 = v6;
    v8 = sub_238A61A3C();
    v10 = v9;

    v11 = (self + OBJC_IVAR____TtC14IdentityLookup10XPCWrapper_data);
    *v11 = v8;
    v11[1] = v10;
    v14.receiver = self;
    v14.super_class = type metadata accessor for XPCWrapper();
    v12 = [(XPCWrapper *)&v14 init];
  }

  else
  {

    type metadata accessor for XPCWrapper();
    swift_deallocPartialClassInstance();
    return 0;
  }

  return v12;
}

- (_TtC14IdentityLookup10XPCWrapper)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end