@interface CloudBookmarkDatabaseAccessProvider
+ (id)bookmarkDatabaseAccessor;
+ (id)tabGroupDatabaseAccessorWithStoreOwner:(int64_t)owner;
@end

@implementation CloudBookmarkDatabaseAccessProvider

+ (id)bookmarkDatabaseAccessor
{
  v2 = [[WBBookmarkDBAccess alloc] initWithCollectionType:0];

  return v2;
}

+ (id)tabGroupDatabaseAccessorWithStoreOwner:(int64_t)owner
{
  v3 = [[WBBookmarkDBAccess alloc] initWithCollectionType:1 storeOwner:owner];

  return v3;
}

@end