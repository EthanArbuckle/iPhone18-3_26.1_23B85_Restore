@interface CloudTabGroupAccountPropertiesStore
- (CloudTabGroupAccountPropertiesStore)initWithAccountStore:(id)a3 collection:(id)a4;
@end

@implementation CloudTabGroupAccountPropertiesStore

- (CloudTabGroupAccountPropertiesStore)initWithAccountStore:(id)a3 collection:(id)a4
{
  v7 = a4;
  v12.receiver = self;
  v12.super_class = CloudTabGroupAccountPropertiesStore;
  v8 = [(CloudBookmarkAccountPropertiesStore *)&v12 initWithAccountStore:a3];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_collection, a4);
    v10 = v9;
  }

  return v9;
}

@end