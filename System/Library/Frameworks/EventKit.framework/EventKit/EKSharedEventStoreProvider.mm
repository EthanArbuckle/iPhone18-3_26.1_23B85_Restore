@interface EKSharedEventStoreProvider
- (EKSharedEventStoreProvider)initWithEventStore:(id)store;
@end

@implementation EKSharedEventStoreProvider

- (EKSharedEventStoreProvider)initWithEventStore:(id)store
{
  storeCopy = store;
  v9.receiver = self;
  v9.super_class = EKSharedEventStoreProvider;
  v6 = [(EKSharedEventStoreProvider *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_sharedEventStore, store);
  }

  return v7;
}

@end