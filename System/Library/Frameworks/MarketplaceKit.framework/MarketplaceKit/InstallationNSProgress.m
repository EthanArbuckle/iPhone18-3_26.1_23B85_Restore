@interface InstallationNSProgress
- (_TtC14MarketplaceKit22InstallationNSProgress)initWithParent:(id)a3 userInfo:(id)a4;
- (void)cancel;
- (void)pause;
- (void)resume;
@end

@implementation InstallationNSProgress

- (void)pause
{
  v2 = self;
  sub_1D965C628(1, 1);
}

- (void)resume
{
  v2 = self;
  sub_1D965C628(0, 1);
}

- (void)cancel
{
  v2 = self;
  sub_1D965C628(2, 1);
}

- (_TtC14MarketplaceKit22InstallationNSProgress)initWithParent:(id)a3 userInfo:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end