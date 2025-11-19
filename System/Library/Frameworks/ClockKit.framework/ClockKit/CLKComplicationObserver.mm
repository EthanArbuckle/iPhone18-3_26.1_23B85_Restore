@interface CLKComplicationObserver
+ (id)sharedObserver;
- (CLKComplicationObserver)init;
- (void)complicationListDidChange;
- (void)reloadOrExtendForBundleID:(id)a3;
- (void)setHomeScreenComplicationCountSet:(id)a3;
- (void)wakeSessionWillBeginForBundleID:(id)a3;
- (void)wakeSessionWillEndForBundleID:(id)a3;
@end

@implementation CLKComplicationObserver

+ (id)sharedObserver
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __41__CLKComplicationObserver_sharedObserver__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (sharedObserver_onceToken != -1)
  {
    dispatch_once(&sharedObserver_onceToken, block);
  }

  v2 = sharedObserver___observer;

  return v2;
}

uint64_t __41__CLKComplicationObserver_sharedObserver__block_invoke(uint64_t a1)
{
  v1 = objc_alloc_init(*(a1 + 32));
  v2 = sharedObserver___observer;
  sharedObserver___observer = v1;

  return MEMORY[0x2821F96F8](v1, v2);
}

- (CLKComplicationObserver)init
{
  v8.receiver = self;
  v8.super_class = CLKComplicationObserver;
  v2 = [(CLKComplicationObserver *)&v8 init];
  if (v2)
  {
    v3 = [MEMORY[0x277CCAA50] hashTableWithOptions:517];
    wakeSessionObservers = v2->_wakeSessionObservers;
    v2->_wakeSessionObservers = v3;

    v5 = [MEMORY[0x277CCAA50] hashTableWithOptions:517];
    observers = v2->_observers;
    v2->_observers = v5;
  }

  return v2;
}

- (void)wakeSessionWillBeginForBundleID:(id)a3
{
  v27 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(NSHashTable *)self->_wakeSessionObservers allObjects];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v21 objects:v26 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v22;
    do
    {
      v9 = 0;
      do
      {
        if (*v22 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [*(*(&v21 + 1) + 8 * v9++) complicationWillBeginWakeSessionForBundleIdentifier:v4];
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v21 objects:v26 count:16];
    }

    while (v7);
  }

  v10 = [(NSHashTable *)self->_observers allObjects];

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v11 = v10;
  v12 = [v11 countByEnumeratingWithState:&v17 objects:v25 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v18;
    do
    {
      v15 = 0;
      do
      {
        if (*v18 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v17 + 1) + 8 * v15);
        if (objc_opt_respondsToSelector())
        {
          [v16 complicationWillBeginWakeSessionForBundleIdentifier:{v4, v17}];
        }

        ++v15;
      }

      while (v13 != v15);
      v13 = [v11 countByEnumeratingWithState:&v17 objects:v25 count:16];
    }

    while (v13);
  }
}

- (void)wakeSessionWillEndForBundleID:(id)a3
{
  v27 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(NSHashTable *)self->_wakeSessionObservers allObjects];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v21 objects:v26 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v22;
    do
    {
      v9 = 0;
      do
      {
        if (*v22 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [*(*(&v21 + 1) + 8 * v9++) complicationWillEndWakeSessionForBundleIdentifier:v4];
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v21 objects:v26 count:16];
    }

    while (v7);
  }

  v10 = [(NSHashTable *)self->_observers allObjects];

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v11 = v10;
  v12 = [v11 countByEnumeratingWithState:&v17 objects:v25 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v18;
    do
    {
      v15 = 0;
      do
      {
        if (*v18 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v17 + 1) + 8 * v15);
        if (objc_opt_respondsToSelector())
        {
          [v16 complicationWillEndWakeSessionForBundleIdentifier:{v4, v17}];
        }

        ++v15;
      }

      while (v13 != v15);
      v13 = [v11 countByEnumeratingWithState:&v17 objects:v25 count:16];
    }

    while (v13);
  }
}

- (void)reloadOrExtendForBundleID:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(NSHashTable *)self->_observers allObjects];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      v9 = 0;
      do
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v11 + 1) + 8 * v9);
        if (objc_opt_respondsToSelector())
        {
          [v10 complicationDidReloadOrExtendForBundleIdentifier:v4];
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }
}

- (void)complicationListDidChange
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __52__CLKComplicationObserver_complicationListDidChange__block_invoke;
  block[3] = &unk_278A1F1B8;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __52__CLKComplicationObserver_complicationListDidChange__block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v1 = [*(*(a1 + 32) + 16) allObjects];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v2 = [v1 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v8;
    do
    {
      v5 = 0;
      do
      {
        if (*v8 != v4)
        {
          objc_enumerationMutation(v1);
        }

        v6 = *(*(&v7 + 1) + 8 * v5);
        if (objc_opt_respondsToSelector())
        {
          [v6 complicationListDidChange];
        }

        ++v5;
      }

      while (v3 != v5);
      v3 = [v1 countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v3);
  }
}

- (void)setHomeScreenComplicationCountSet:(id)a3
{
  v4 = [a3 copy];
  homeScreenComplicationCountSet = self->_homeScreenComplicationCountSet;
  self->_homeScreenComplicationCountSet = v4;

  [(CLKComplicationObserver *)self complicationListDidChange];
}

@end