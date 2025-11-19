@interface PreflightCacheInvalidationSource
+ (id)voidInvalidationSource;
- (PreflightCache)cache;
- (PreflightCacheInvalidationSource)initWithPreflightCache:(id)a3;
- (void)handleNotificationInServerQueue;
- (void)handleNotificationWithCompletion:(id)a3;
- (void)updateStatus;
@end

@implementation PreflightCacheInvalidationSource

- (PreflightCacheInvalidationSource)initWithPreflightCache:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = PreflightCacheInvalidationSource;
  v5 = [(PreflightCacheInvalidationSource *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_cache, v4);
    [(PreflightCacheInvalidationSource *)v6 updateStatus];
  }

  return v6;
}

+ (id)voidInvalidationSource
{
  if (voidInvalidationSource_onceToken != -1)
  {
    +[PreflightCacheInvalidationSource voidInvalidationSource];
  }

  v3 = voidInvalidationSource_voidInvalidationSource;

  return v3;
}

uint64_t __58__PreflightCacheInvalidationSource_voidInvalidationSource__block_invoke()
{
  voidInvalidationSource_voidInvalidationSource = [PreflightCacheInvalidationSource alloc];

  return MEMORY[0x2821F96F8]();
}

- (void)updateStatus
{
  v3 = [(PreflightCacheInvalidationSource *)self status]^ 1;

  [(PreflightCacheInvalidationSource *)self setStatus:v3];
}

- (void)handleNotificationWithCompletion:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __69__PreflightCacheInvalidationSource_handleNotificationWithCompletion___block_invoke;
  v6[3] = &unk_278A615D8;
  objc_copyWeak(&v8, &location);
  v5 = v4;
  v7 = v5;
  [DaemonUtils dispatchOnServer:v6];

  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);
}

uint64_t __69__PreflightCacheInvalidationSource_handleNotificationWithCompletion___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained handleNotificationInServerQueue];

  result = *(a1 + 32);
  if (result)
  {
    v4 = *(result + 16);

    return v4();
  }

  return result;
}

- (void)handleNotificationInServerQueue
{
  v3 = [(PreflightCacheInvalidationSource *)self status];
  [(PreflightCacheInvalidationSource *)self updateStatus];
  if (v3 != [(PreflightCacheInvalidationSource *)self status])
  {
    v5 = [(PreflightCacheInvalidationSource *)self cache];
    v4 = [(PreflightCacheInvalidationSource *)self invalidationReason];
    [v5 invalidateWithReason:v4];
  }
}

- (PreflightCache)cache
{
  WeakRetained = objc_loadWeakRetained(&self->_cache);

  return WeakRetained;
}

@end