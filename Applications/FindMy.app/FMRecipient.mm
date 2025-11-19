@interface FMRecipient
- (BOOL)isEqual:(id)a3;
- (NSString)description;
- (_TtC6FindMy11FMRecipient)init;
- (id)copyWithZone:(void *)a3;
- (int64_t)hash;
@end

@implementation FMRecipient

- (id)copyWithZone:(void *)a3
{
  v4 = objc_allocWithZone(type metadata accessor for FMRecipient());
  v5 = self;
  v6 = sub_1001C8604(v5);

  return v6;
}

- (int64_t)hash
{
  v2 = self;

  v3 = String.hashValue.getter();

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  if (a3)
  {
    v4 = self;
    swift_unknownObjectRetain();
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v8, 0, sizeof(v8));
    v5 = self;
  }

  v6 = sub_1001C5C08(v8);

  sub_10000D2C0(v8);
  return v6 & 1;
}

- (NSString)description
{
  v2 = self;
  sub_1001C704C();

  v3 = String._bridgeToObjectiveC()();

  return v3;
}

- (_TtC6FindMy11FMRecipient)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end