@interface MigratorDistributorIDTask
- (id)copyConfiguration;
- (void)main;
@end

@implementation MigratorDistributorIDTask

- (id)copyConfiguration
{
  v2 = objc_allocWithZone(MigratorConfiguration);

  return sub_1002C0A10(v2, @"DistributorID");
}

- (void)main
{
  selfCopy = self;
  sub_100141684();
  sub_100141C74();
}

@end