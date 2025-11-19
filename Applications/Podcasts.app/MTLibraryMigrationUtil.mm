@interface MTLibraryMigrationUtil
+ (void)migrateDatabasePropertiesToSharedContainerIfNeeded;
@end

@implementation MTLibraryMigrationUtil

+ (void)migrateDatabasePropertiesToSharedContainerIfNeeded
{
  [MTPreferences moveUserDefaultToSharedContainer:kMTLibraryMigrationVersion];
  v2 = kMTDetectedCorruptDB;

  [MTPreferences moveUserDefaultToSharedContainer:v2];
}

@end