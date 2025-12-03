@interface EKEphemeralCacheEventStoreProvider
- (EKEphemeralCacheEventStoreProvider)initWithCreationBlock:(id)block;
@end

@implementation EKEphemeralCacheEventStoreProvider

- (EKEphemeralCacheEventStoreProvider)initWithCreationBlock:(id)block
{
  blockCopy = block;
  v9.receiver = self;
  v9.super_class = EKEphemeralCacheEventStoreProvider;
  v5 = [(EKEphemeralCacheEventStoreProvider *)&v9 init];
  if (v5)
  {
    v6 = objc_alloc_init(EKTimedEventStorePurger);
    eventStorePurger = v5->_eventStorePurger;
    v5->_eventStorePurger = v6;

    [(EKTimedEventStorePurger *)v5->_eventStorePurger setPurgingAllowed:1];
    [(EKTimedEventStorePurger *)v5->_eventStorePurger setTimeout:10.0];
    [(EKTimedEventStorePurger *)v5->_eventStorePurger setCreationBlock:blockCopy];
  }

  return v5;
}

@end