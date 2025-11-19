@interface CloudTabGroupExpiredChangeTokenHandler
- (BOOL)itemWithServerIDIsFolder:(id)a3;
- (CloudTabGroupExpiredChangeTokenHandler)initWithCollection:(id)a3;
@end

@implementation CloudTabGroupExpiredChangeTokenHandler

- (CloudTabGroupExpiredChangeTokenHandler)initWithCollection:(id)a3
{
  v5 = a3;
  v10.receiver = self;
  v10.super_class = CloudTabGroupExpiredChangeTokenHandler;
  v6 = [(CloudTabGroupExpiredChangeTokenHandler *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_collection, a3);
    v8 = v7;
  }

  return v7;
}

- (BOOL)itemWithServerIDIsFolder:(id)a3
{
  v3 = [(WebBookmarkCollection *)self->_collection bookmarkWithServerID:a3 excludeDeletedBookmarks:1];
  v4 = [v3 isFolder];

  return v4;
}

@end