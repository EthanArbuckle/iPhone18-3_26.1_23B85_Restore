@interface AAUICommandQueueRegistry
+ (id)sharedRegistry;
- (AAUICommandQueueRegistry)init;
- (id)commandQueue;
- (void)_appDidBecomeActive;
- (void)_appWillBecomeInactive;
- (void)_locked_cacheCommandQueueIfNeeded;
- (void)addCommandQueueTransaction:(id)a3;
- (void)removeCommandQueueTransaction:(id)a3;
@end

@implementation AAUICommandQueueRegistry

+ (id)sharedRegistry
{
  if (sharedRegistry_onceToken != -1)
  {
    +[AAUICommandQueueRegistry sharedRegistry];
  }

  v3 = sharedRegistry_registry;

  return v3;
}

uint64_t __42__AAUICommandQueueRegistry_sharedRegistry__block_invoke()
{
  sharedRegistry_registry = objc_alloc_init(AAUICommandQueueRegistry);

  return MEMORY[0x2821F96F8]();
}

- (AAUICommandQueueRegistry)init
{
  v10.receiver = self;
  v10.super_class = AAUICommandQueueRegistry;
  v2 = [(AAUICommandQueueRegistry *)&v10 init];
  if (v2)
  {
    v3 = [MEMORY[0x277CCAA50] weakObjectsHashTable];
    transactions = v2->_transactions;
    v2->_transactions = v3;

    v5 = MTLCreateSystemDefaultDevice();
    device = v2->_device;
    v2->_device = v5;

    v2->_lock._os_unfair_lock_opaque = 0;
    v7 = [MEMORY[0x277CCAB98] defaultCenter];
    [v7 addObserver:v2 selector:sel__appDidBecomeActive name:*MEMORY[0x277D76758] object:0];

    v8 = [MEMORY[0x277CCAB98] defaultCenter];
    [v8 addObserver:v2 selector:sel__appWillBecomeInactive name:*MEMORY[0x277D76660] object:0];
  }

  return v2;
}

- (void)_locked_cacheCommandQueueIfNeeded
{
  if (!self->_cachedCommandQueue)
  {
    v9 = v2;
    v10 = v3;
    if ([(NSHashTable *)self->_transactions count])
    {
      v5 = ACHLogDefault();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        *v8 = 0;
        _os_log_impl(&dword_23E4A3000, v5, OS_LOG_TYPE_DEFAULT, "[AAUICommandQueueRegistry] Creating new command queue", v8, 2u);
      }

      v6 = [(MTLDevice *)self->_device newCommandQueue];
      cachedCommandQueue = self->_cachedCommandQueue;
      self->_cachedCommandQueue = v6;
    }
  }
}

- (id)commandQueue
{
  os_unfair_lock_lock(&self->_lock);
  [(AAUICommandQueueRegistry *)self _locked_cacheCommandQueueIfNeeded];
  v3 = self->_cachedCommandQueue;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)addCommandQueueTransaction:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  [(NSHashTable *)self->_transactions addObject:v4];

  [(AAUICommandQueueRegistry *)self _locked_cacheCommandQueueIfNeeded];

  os_unfair_lock_unlock(&self->_lock);
}

- (void)removeCommandQueueTransaction:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  [(NSHashTable *)self->_transactions removeObject:v4];

  if (![(NSHashTable *)self->_transactions count])
  {
    v5 = ACHLogDefault();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&dword_23E4A3000, v5, OS_LOG_TYPE_DEFAULT, "[AAUICommandQueueRegistry] Removed last command queue transaction, clearing command queue", v7, 2u);
    }

    cachedCommandQueue = self->_cachedCommandQueue;
    self->_cachedCommandQueue = 0;
  }

  os_unfair_lock_unlock(&self->_lock);
}

- (void)_appDidBecomeActive
{
  v7 = *MEMORY[0x277D85DE8];
  os_unfair_lock_lock(&self->_lock);
  [(AAUICommandQueueRegistry *)self _locked_cacheCommandQueueIfNeeded];
  v3 = ACHLogDefault();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    cachedCommandQueue = self->_cachedCommandQueue;
    v5 = 138412290;
    v6 = cachedCommandQueue;
    _os_log_impl(&dword_23E4A3000, v3, OS_LOG_TYPE_DEFAULT, "[AAUICommandQueueRegistry] App entered foreground with command queue: %@", &v5, 0xCu);
  }

  os_unfair_lock_unlock(&self->_lock);
}

- (void)_appWillBecomeInactive
{
  os_unfair_lock_lock(&self->_lock);
  if (self->_cachedCommandQueue)
  {
    v3 = ACHLogDefault();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&dword_23E4A3000, v3, OS_LOG_TYPE_DEFAULT, "[AAUICommandQueueRegistry] App backgrounded, clearing command queue", v5, 2u);
    }

    cachedCommandQueue = self->_cachedCommandQueue;
    self->_cachedCommandQueue = 0;
  }

  os_unfair_lock_unlock(&self->_lock);
}

@end