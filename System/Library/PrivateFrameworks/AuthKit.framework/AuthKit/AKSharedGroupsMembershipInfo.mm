@interface AKSharedGroupsMembershipInfo
- (AKSharedGroupsMembershipInfo)init;
- (BOOL)isEqual:(id)equal;
@end

@implementation AKSharedGroupsMembershipInfo

- (AKSharedGroupsMembershipInfo)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
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

  v6 = sub_1001C67F0(v8);

  sub_1001C726C(v8);
  return v6 & 1;
}

@end