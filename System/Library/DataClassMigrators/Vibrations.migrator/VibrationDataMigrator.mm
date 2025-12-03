@interface VibrationDataMigrator
- (BOOL)performMigration;
@end

@implementation VibrationDataMigrator

- (BOOL)performMigration
{
  v2 = objc_alloc_init(TLVibrationManager);
  _migrateLegacySettings = [v2 _migrateLegacySettings];

  return _migrateLegacySettings;
}

@end