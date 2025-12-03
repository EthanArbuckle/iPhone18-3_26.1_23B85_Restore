@interface InstallationNSProgress
- (_TtC14MarketplaceKit22InstallationNSProgress)initWithParent:(id)parent userInfo:(id)info;
- (void)cancel;
- (void)pause;
- (void)resume;
@end

@implementation InstallationNSProgress

- (void)pause
{
  selfCopy = self;
  sub_1D965C628(1, 1);
}

- (void)resume
{
  selfCopy = self;
  sub_1D965C628(0, 1);
}

- (void)cancel
{
  selfCopy = self;
  sub_1D965C628(2, 1);
}

- (_TtC14MarketplaceKit22InstallationNSProgress)initWithParent:(id)parent userInfo:(id)info
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end