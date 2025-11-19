@interface AKSharedGroupsMembershipInfo
- (AKSharedGroupsMembershipInfo)init;
- (BOOL)isEqual:(id)a3;
@end

@implementation AKSharedGroupsMembershipInfo

- (AKSharedGroupsMembershipInfo)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
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

  v6 = sub_1001C67F0(v8);

  sub_1001C726C(v8);
  return v6 & 1;
}

@end