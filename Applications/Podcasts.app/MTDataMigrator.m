@interface MTDataMigrator
- (MTDataMigrator)init;
@end

@implementation MTDataMigrator

- (MTDataMigrator)init
{
  v3.receiver = self;
  v3.super_class = swift_getObjectType();
  return [(MTDataMigrator *)&v3 init];
}

@end