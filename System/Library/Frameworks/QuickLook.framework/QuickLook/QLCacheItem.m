@interface QLCacheItem
- (void)_performHandlers;
- (void)addCompletionHandler:(id)a3;
- (void)invalidate;
- (void)setItem:(id)a3;
@end

@implementation QLCacheItem

- (void)setItem:(id)a3
{
  objc_storeStrong(&self->_item, a3);
  if (self->_handlers && self->_item)
  {

    [(QLCacheItem *)self _performHandlers];
  }
}

- (void)addCompletionHandler:(id)a3
{
  aBlock = a3;
  v4 = [(QLCacheItem *)self item];

  if (v4)
  {
    v5 = [(QLCacheItem *)self item];
    v6 = [(QLCacheItem *)self item];
    v7 = [v6 fetcher];
    aBlock[2](aBlock, v5, v7);
  }

  else
  {
    v5 = self;
    objc_sync_enter(v5);
    handlers = v5->_handlers;
    if (!handlers)
    {
      v9 = objc_opt_new();
      v10 = v5->_handlers;
      v5->_handlers = v9;

      handlers = v5->_handlers;
    }

    v11 = _Block_copy(aBlock);
    [(NSMutableArray *)handlers addObject:v11];

    objc_sync_exit(v5);
  }
}

- (void)invalidate
{
  [(QLCacheItem *)self setItem:0];

  [(QLCacheItem *)self _performHandlers];
}

- (void)_performHandlers
{
  v17 = *MEMORY[0x277D85DE8];
  v2 = self;
  objc_sync_enter(v2);
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v3 = v2->_handlers;
  v4 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v4)
  {
    v5 = *v13;
    do
    {
      v6 = 0;
      do
      {
        if (*v13 != v5)
        {
          objc_enumerationMutation(v3);
        }

        v7 = *(*(&v12 + 1) + 8 * v6);
        v8 = [(QLCacheItem *)v2 item];
        v9 = [(QLCacheItem *)v2 item];
        v10 = [v9 fetcher];
        (*(v7 + 16))(v7, v8, v10);

        ++v6;
      }

      while (v4 != v6);
      v4 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v4);
  }

  [(NSMutableArray *)v2->_handlers removeAllObjects];
  objc_sync_exit(v2);

  v11 = *MEMORY[0x277D85DE8];
}

@end