@interface ODRDatabaseChangeset
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation ODRDatabaseChangeset

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [+[ODRDatabaseChangeset allocWithZone:](ODRDatabaseChangeset init];
  v6 = [(NSMutableSet *)self->_deletedAssetPackURLs mutableCopyWithZone:zone];
  deletedAssetPackURLs = v5->_deletedAssetPackURLs;
  v5->_deletedAssetPackURLs = v6;

  v8 = [(NSMutableSet *)self->_deletedStorageIDs mutableCopyWithZone:zone];
  deletedStorageIDs = v5->_deletedStorageIDs;
  v5->_deletedStorageIDs = v8;

  return v5;
}

@end