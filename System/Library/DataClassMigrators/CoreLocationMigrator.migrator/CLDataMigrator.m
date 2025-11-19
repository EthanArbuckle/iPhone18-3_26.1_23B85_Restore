@interface CLDataMigrator
- (BOOL)performMigration;
@end

@implementation CLDataMigrator

- (BOOL)performMigration
{
  v2 = CLInternalPerformMigration();
  v3 = "succeeded";
  if (!v2)
  {
    v3 = "failed";
  }

  fprintf(__stderrp, "CoreLocation migration: %s\n", v3);
  return 1;
}

@end