@interface BLBookletMigrationInfo
- (NSString)storeIDString;
@end

@implementation BLBookletMigrationInfo

- (NSString)storeIDString
{
  v2 = [NSNumber numberWithLongLong:[(BLBookletMigrationInfo *)self storeID]];
  stringValue = [v2 stringValue];

  return stringValue;
}

@end