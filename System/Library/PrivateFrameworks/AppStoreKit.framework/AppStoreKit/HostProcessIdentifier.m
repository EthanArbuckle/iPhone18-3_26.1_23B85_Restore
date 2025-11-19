@interface HostProcessIdentifier
- (NSString)hostBundleId;
- (_TtC11AppStoreKit21HostProcessIdentifier)init;
- (void)setHostBundleId:(id)a3;
@end

@implementation HostProcessIdentifier

- (NSString)hostBundleId
{
  v2 = self + OBJC_IVAR____TtC11AppStoreKit21HostProcessIdentifier_hostBundleId;
  swift_beginAccess();
  if (*(v2 + 1))
  {

    v3 = sub_1E1AF5DBC();
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setHostBundleId:(id)a3
{
  if (a3)
  {
    v4 = sub_1E1AF5DFC();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  v7 = (self + OBJC_IVAR____TtC11AppStoreKit21HostProcessIdentifier_hostBundleId);
  swift_beginAccess();
  *v7 = v4;
  v7[1] = v6;
}

- (_TtC11AppStoreKit21HostProcessIdentifier)init
{
  v3 = (self + OBJC_IVAR____TtC11AppStoreKit21HostProcessIdentifier_hostBundleId);
  v4 = type metadata accessor for HostProcessIdentifier();
  *v3 = 0;
  v3[1] = 0;
  v6.receiver = self;
  v6.super_class = v4;
  return [(HostProcessIdentifier *)&v6 init];
}

@end