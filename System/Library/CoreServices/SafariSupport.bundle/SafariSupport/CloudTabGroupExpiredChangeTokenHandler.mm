@interface CloudTabGroupExpiredChangeTokenHandler
- (BOOL)itemWithServerIDIsFolder:(id)folder;
- (CloudTabGroupExpiredChangeTokenHandler)initWithCollection:(id)collection;
@end

@implementation CloudTabGroupExpiredChangeTokenHandler

- (CloudTabGroupExpiredChangeTokenHandler)initWithCollection:(id)collection
{
  collectionCopy = collection;
  v10.receiver = self;
  v10.super_class = CloudTabGroupExpiredChangeTokenHandler;
  v6 = [(CloudTabGroupExpiredChangeTokenHandler *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_collection, collection);
    v8 = v7;
  }

  return v7;
}

- (BOOL)itemWithServerIDIsFolder:(id)folder
{
  v3 = [(WebBookmarkCollection *)self->_collection bookmarkWithServerID:folder excludeDeletedBookmarks:1];
  isFolder = [v3 isFolder];

  return isFolder;
}

@end