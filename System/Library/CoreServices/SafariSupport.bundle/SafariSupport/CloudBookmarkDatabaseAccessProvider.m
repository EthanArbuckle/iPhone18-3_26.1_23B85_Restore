@interface CloudBookmarkDatabaseAccessProvider
+ (id)bookmarkDatabaseAccessor;
+ (id)tabGroupDatabaseAccessorWithStoreOwner:(int64_t)a3;
@end

@implementation CloudBookmarkDatabaseAccessProvider

+ (id)bookmarkDatabaseAccessor
{
  v2 = [[WBBookmarkDBAccess alloc] initWithCollectionType:0];

  return v2;
}

+ (id)tabGroupDatabaseAccessorWithStoreOwner:(int64_t)a3
{
  v3 = [[WBBookmarkDBAccess alloc] initWithCollectionType:1 storeOwner:a3];

  return v3;
}

@end