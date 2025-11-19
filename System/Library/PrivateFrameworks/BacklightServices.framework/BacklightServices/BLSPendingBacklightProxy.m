@interface BLSPendingBacklightProxy
- (BLSPendingBacklightProxy)init;
- (BOOL)deviceSupportsAlwaysOn;
- (BOOL)isAlwaysOnEnabled;
- (BOOL)isTransitioning;
- (id)performChangeRequest:(id)a3;
- (int64_t)backlightState;
- (int64_t)flipbookState;
- (void)addObserver:(id)a3;
- (void)removeObserver:(id)a3;
- (void)replaceWithBacklightProxy:(id)a3;
@end

@implementation BLSPendingBacklightProxy

- (BOOL)isAlwaysOnEnabled
{
  os_unfair_lock_lock(&self->_lock);
  replacementBacklightProxy = self->_replacementBacklightProxy;
  if (replacementBacklightProxy)
  {
    v4 = [(BLSBacklightProxy *)replacementBacklightProxy isAlwaysOnEnabled];
  }

  else
  {
    v4 = 0;
  }

  os_unfair_lock_unlock(&self->_lock);
  return v4;
}

- (int64_t)backlightState
{
  os_unfair_lock_lock(&self->_lock);
  replacementBacklightProxy = self->_replacementBacklightProxy;
  if (replacementBacklightProxy)
  {
    v4 = [(BLSBacklightProxy *)replacementBacklightProxy backlightState];
  }

  else
  {
    v4 = 0;
  }

  os_unfair_lock_unlock(&self->_lock);
  return v4;
}

- (BLSPendingBacklightProxy)init
{
  v9.receiver = self;
  v9.super_class = BLSPendingBacklightProxy;
  v2 = [(BLSPendingBacklightProxy *)&v9 init];
  v3 = v2;
  if (v2)
  {
    v2->_lock._os_unfair_lock_opaque = 0;
    v4 = [MEMORY[0x277CBEB18] array];
    requests = v3->_requests;
    v3->_requests = v4;

    v6 = [objc_alloc(MEMORY[0x277CCAA50]) initWithOptions:517 capacity:2];
    observers = v3->_observers;
    v3->_observers = v6;
  }

  return v3;
}

- (int64_t)flipbookState
{
  os_unfair_lock_lock(&self->_lock);
  replacementBacklightProxy = self->_replacementBacklightProxy;
  if (replacementBacklightProxy)
  {
    v4 = [(BLSBacklightProxy *)replacementBacklightProxy flipbookState];
  }

  else
  {
    v4 = 0;
  }

  os_unfair_lock_unlock(&self->_lock);
  return v4;
}

- (BOOL)isTransitioning
{
  os_unfair_lock_lock(&self->_lock);
  replacementBacklightProxy = self->_replacementBacklightProxy;
  if (replacementBacklightProxy)
  {
    v4 = [(BLSBacklightProxy *)replacementBacklightProxy isTransitioning];
  }

  else
  {
    v4 = 1;
  }

  os_unfair_lock_unlock(&self->_lock);
  return v4;
}

- (BOOL)deviceSupportsAlwaysOn
{
  os_unfair_lock_lock(&self->_lock);
  replacementBacklightProxy = self->_replacementBacklightProxy;
  if (replacementBacklightProxy)
  {
    v4 = [(BLSBacklightProxy *)replacementBacklightProxy deviceSupportsAlwaysOn];
  }

  else
  {
    v4 = 0;
  }

  os_unfair_lock_unlock(&self->_lock);
  return v4;
}

- (void)addObserver:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  replacementBacklightProxy = self->_replacementBacklightProxy;
  if (replacementBacklightProxy)
  {
    [(BLSBacklightProxy *)replacementBacklightProxy addObserver:v4];
  }

  else
  {
    [(NSHashTable *)self->_observers addObject:v4];
  }

  os_unfair_lock_unlock(&self->_lock);
}

- (void)removeObserver:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  replacementBacklightProxy = self->_replacementBacklightProxy;
  if (replacementBacklightProxy)
  {
    [(BLSBacklightProxy *)replacementBacklightProxy removeObserver:v4];
  }

  else
  {
    [(NSHashTable *)self->_observers removeObject:v4];
  }

  os_unfair_lock_unlock(&self->_lock);
}

- (id)performChangeRequest:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  replacementBacklightProxy = self->_replacementBacklightProxy;
  if (replacementBacklightProxy)
  {
    v6 = replacementBacklightProxy;
    os_unfair_lock_unlock(&self->_lock);
    v7 = [(BLSBacklightProxy *)v6 performChangeRequest:v4];
  }

  else
  {
    requests = self->_requests;
    v9 = 0;
    [(NSMutableArray *)requests addObject:v4];

    os_unfair_lock_unlock(&self->_lock);
    v7 = 0;
  }

  return v7;
}

- (void)replaceWithBacklightProxy:(id)a3
{
  v39 = *MEMORY[0x277D85DE8];
  v5 = a3;
  os_unfair_lock_lock(&self->_lock);
  objc_storeStrong(&self->_replacementBacklightProxy, a3);
  v6 = [(NSHashTable *)self->_observers allObjects];
  observers = self->_observers;
  self->_observers = 0;

  v8 = self->_requests;
  requests = self->_requests;
  self->_requests = 0;

  os_unfair_lock_unlock(&self->_lock);
  v10 = bls_assertions_log();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134218496;
    v34 = self;
    v35 = 1024;
    v36 = [v6 count];
    v37 = 1024;
    v38 = [(NSMutableArray *)v8 count];
    _os_log_debug_impl(&dword_21FE25000, v10, OS_LOG_TYPE_DEBUG, "%p backlight proxy setup, will set %u observers, perform %u requests", buf, 0x18u);
  }

  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v11 = v6;
  v12 = [v11 countByEnumeratingWithState:&v27 objects:v32 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v28;
    do
    {
      v15 = 0;
      do
      {
        if (*v28 != v14)
        {
          objc_enumerationMutation(v11);
        }

        [v5 addObserver:*(*(&v27 + 1) + 8 * v15++)];
      }

      while (v13 != v15);
      v13 = [v11 countByEnumeratingWithState:&v27 objects:v32 count:16];
    }

    while (v13);
  }

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v16 = v8;
  v17 = [(NSMutableArray *)v16 countByEnumeratingWithState:&v23 objects:v31 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v24;
    do
    {
      v20 = 0;
      do
      {
        if (*v24 != v19)
        {
          objc_enumerationMutation(v16);
        }

        v21 = [v5 performChangeRequest:{*(*(&v23 + 1) + 8 * v20++), v23}];
      }

      while (v18 != v20);
      v18 = [(NSMutableArray *)v16 countByEnumeratingWithState:&v23 objects:v31 count:16];
    }

    while (v18);
  }

  v22 = *MEMORY[0x277D85DE8];
}

@end