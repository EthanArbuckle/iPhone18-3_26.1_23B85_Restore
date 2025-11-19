@interface EKSharedEventStoreProvider
- (EKSharedEventStoreProvider)initWithEventStore:(id)a3;
@end

@implementation EKSharedEventStoreProvider

- (EKSharedEventStoreProvider)initWithEventStore:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = EKSharedEventStoreProvider;
  v6 = [(EKSharedEventStoreProvider *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_sharedEventStore, a3);
  }

  return v7;
}

@end