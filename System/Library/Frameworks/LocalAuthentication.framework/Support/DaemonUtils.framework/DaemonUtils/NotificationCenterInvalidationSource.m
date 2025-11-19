@interface NotificationCenterInvalidationSource
- (NotificationCenterInvalidationSource)initWithPreflightCache:(id)a3 notificationName:(id)a4;
- (id)invalidationReason;
- (void)dealloc;
@end

@implementation NotificationCenterInvalidationSource

- (NotificationCenterInvalidationSource)initWithPreflightCache:(id)a3 notificationName:(id)a4
{
  v7 = a4;
  v12.receiver = self;
  v12.super_class = NotificationCenterInvalidationSource;
  v8 = [(PreflightCacheInvalidationSource *)&v12 initWithPreflightCache:a3];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_notificationName, a4);
    v10 = [MEMORY[0x277CCAB98] defaultCenter];
    [v10 addObserver:v9 selector:sel__notification_ name:v7 object:0];
  }

  return v9;
}

- (void)dealloc
{
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  v4 = [(NotificationCenterInvalidationSource *)self notificationName];
  [v3 removeObserver:self name:v4 object:0];

  v5.receiver = self;
  v5.super_class = NotificationCenterInvalidationSource;
  [(NotificationCenterInvalidationSource *)&v5 dealloc];
}

- (id)invalidationReason
{
  v2 = MEMORY[0x277CCACA8];
  v3 = [(NotificationCenterInvalidationSource *)self notificationName];
  v4 = [v2 stringWithFormat:@"received %@", v3];

  return v4;
}

@end