@interface VibrationDataMigrator
- (BOOL)performMigration;
@end

@implementation VibrationDataMigrator

- (BOOL)performMigration
{
  v2 = objc_alloc_init(TLVibrationManager);
  v3 = [v2 _migrateLegacySettings];

  return v3;
}

@end