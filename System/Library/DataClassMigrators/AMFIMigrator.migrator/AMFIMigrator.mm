@interface AMFIMigrator
- (BOOL)performMigration;
@end

@implementation AMFIMigrator

- (BOOL)performMigration
{
  _DMLogFunc();
  v2 = AMFIInitiateDataMigration() == 0;
  _DMLogFunc();
  return v2;
}

@end