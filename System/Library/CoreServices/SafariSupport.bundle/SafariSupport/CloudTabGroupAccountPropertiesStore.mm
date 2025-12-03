@interface CloudTabGroupAccountPropertiesStore
- (CloudTabGroupAccountPropertiesStore)initWithAccountStore:(id)store collection:(id)collection;
@end

@implementation CloudTabGroupAccountPropertiesStore

- (CloudTabGroupAccountPropertiesStore)initWithAccountStore:(id)store collection:(id)collection
{
  collectionCopy = collection;
  v12.receiver = self;
  v12.super_class = CloudTabGroupAccountPropertiesStore;
  v8 = [(CloudBookmarkAccountPropertiesStore *)&v12 initWithAccountStore:store];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_collection, collection);
    v10 = v9;
  }

  return v9;
}

@end