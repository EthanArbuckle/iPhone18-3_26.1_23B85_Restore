@interface FMRecipient
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (_TtC6FindMy11FMRecipient)init;
- (id)copyWithZone:(void *)zone;
- (int64_t)hash;
@end

@implementation FMRecipient

- (id)copyWithZone:(void *)zone
{
  v4 = objc_allocWithZone(type metadata accessor for FMRecipient());
  selfCopy = self;
  v6 = sub_1001C8604(selfCopy);

  return v6;
}

- (int64_t)hash
{
  selfCopy = self;

  v3 = String.hashValue.getter();

  return v3;
}

- (BOOL)isEqual:(id)equal
{
  if (equal)
  {
    selfCopy = self;
    swift_unknownObjectRetain();
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v8, 0, sizeof(v8));
    selfCopy2 = self;
  }

  v6 = sub_1001C5C08(v8);

  sub_10000D2C0(v8);
  return v6 & 1;
}

- (NSString)description
{
  selfCopy = self;
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