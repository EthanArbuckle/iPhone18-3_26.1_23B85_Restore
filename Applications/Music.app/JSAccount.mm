@interface JSAccount
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (int64_t)hash;
@end

@implementation JSAccount

- (NSString)description
{
  selfCopy = self;
  JSAccount.description.getter();

  v3 = String._bridgeToObjectiveC()();

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

  v6 = JSAccount.isEqual(_:)(v8);

  sub_1000095E8(v8, &unk_101183F30);
  return v6 & 1;
}

- (int64_t)hash
{
  selfCopy = self;
  v3 = String.hashValue.getter();

  return v3;
}

@end