@interface ODRDatabaseChangeset
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation ODRDatabaseChangeset

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [+[ODRDatabaseChangeset allocWithZone:](ODRDatabaseChangeset init];
  v6 = [(NSMutableSet *)self->_deletedAssetPackURLs mutableCopyWithZone:a3];
  deletedAssetPackURLs = v5->_deletedAssetPackURLs;
  v5->_deletedAssetPackURLs = v6;

  v8 = [(NSMutableSet *)self->_deletedStorageIDs mutableCopyWithZone:a3];
  deletedStorageIDs = v5->_deletedStorageIDs;
  v5->_deletedStorageIDs = v8;

  return v5;
}

@end