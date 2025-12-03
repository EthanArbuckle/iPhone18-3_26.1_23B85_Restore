@interface NotificationCenterInvalidationSource
- (NotificationCenterInvalidationSource)initWithPreflightCache:(id)cache notificationName:(id)name;
- (id)invalidationReason;
- (void)dealloc;
@end

@implementation NotificationCenterInvalidationSource

- (NotificationCenterInvalidationSource)initWithPreflightCache:(id)cache notificationName:(id)name
{
  nameCopy = name;
  v12.receiver = self;
  v12.super_class = NotificationCenterInvalidationSource;
  v8 = [(PreflightCacheInvalidationSource *)&v12 initWithPreflightCache:cache];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_notificationName, name);
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:v9 selector:sel__notification_ name:nameCopy object:0];
  }

  return v9;
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  notificationName = [(NotificationCenterInvalidationSource *)self notificationName];
  [defaultCenter removeObserver:self name:notificationName object:0];

  v5.receiver = self;
  v5.super_class = NotificationCenterInvalidationSource;
  [(NotificationCenterInvalidationSource *)&v5 dealloc];
}

- (id)invalidationReason
{
  v2 = MEMORY[0x277CCACA8];
  notificationName = [(NotificationCenterInvalidationSource *)self notificationName];
  v4 = [v2 stringWithFormat:@"received %@", notificationName];

  return v4;
}

@end