@interface BLBookletMigrationInfo
- (NSString)storeIDString;
@end

@implementation BLBookletMigrationInfo

- (NSString)storeIDString
{
  v2 = [NSNumber numberWithLongLong:[(BLBookletMigrationInfo *)self storeID]];
  v3 = [v2 stringValue];

  return v3;
}

@end