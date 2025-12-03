@interface ShowCollectionAction
- (ShowCollectionAction)initWithCollectionStorage:(id)storage;
@end

@implementation ShowCollectionAction

- (ShowCollectionAction)initWithCollectionStorage:(id)storage
{
  storageCopy = storage;
  v9.receiver = self;
  v9.super_class = ShowCollectionAction;
  v6 = [(ShowCollectionAction *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_collectionStorage, storage);
  }

  return v7;
}

@end