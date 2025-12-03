@interface MKCircle
- (BOOL)isEqual:(id)equal;
- (int64_t)hash;
@end

@implementation MKCircle

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

  v6 = MKCircle.isEqual(_:)(v8);

  sub_10000D2C0(v8);
  return v6;
}

- (int64_t)hash
{
  selfCopy = self;
  v3 = MKCircle.hash.getter();

  return v3;
}

@end