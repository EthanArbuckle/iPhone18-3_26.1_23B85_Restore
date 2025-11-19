@interface Endpoint
- (BOOL)isEqual:(id)a3;
- (_TtC7Network8Endpoint)init;
- (id)copy;
- (id)copyWithZone:(void *)a3;
- (int64_t)hash;
- (void)dealloc;
@end

@implementation Endpoint

- (void)dealloc
{
  ObjectType = swift_getObjectType();
  v4 = *(&self->super.super.isa + OBJC_IVAR____TtC7Network8Endpoint_addressStorage);
  v5 = self;
  if (v4)
  {
    MEMORY[0x1865DF520](v4, -1, -1);
  }

  v6 = *(&self->super.super.isa + OBJC_IVAR____TtC7Network8Endpoint_ethernetAddressStorage);
  if (v6)
  {
    MEMORY[0x1865DF520](v6, -1, -1);
  }

  v7.receiver = self;
  v7.super_class = ObjectType;
  [(Endpoint *)&v7 dealloc];
}

- (int64_t)hash
{
  v2 = self;
  v3 = _s7Network8EndpointC4hashSivg_0();

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  if (a3)
  {
    v4 = self;
    swift_unknownObjectRetain();
    sub_182AD3AA8();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v8, 0, sizeof(v8));
    v5 = self;
  }

  v6 = Endpoint.isEqual(_:)(v8);

  sub_181F49A88(v8, &unk_1EA83A4F0);
  return v6 & 1;
}

- (id)copy
{
  v2 = self;
  v3 = sub_181B440D4();

  return v3;
}

- (id)copyWithZone:(void *)a3
{
  v3 = self;
  v4 = sub_181B440D4();

  return v4;
}

- (_TtC7Network8Endpoint)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end