@interface QLCacheItem
- (void)_performHandlers;
- (void)addCompletionHandler:(id)handler;
- (void)invalidate;
- (void)setItem:(id)item;
@end

@implementation QLCacheItem

- (void)setItem:(id)item
{
  objc_storeStrong(&self->_item, item);
  if (self->_handlers && self->_item)
  {

    [(QLCacheItem *)self _performHandlers];
  }
}

- (void)addCompletionHandler:(id)handler
{
  aBlock = handler;
  item = [(QLCacheItem *)self item];

  if (item)
  {
    selfCopy = [(QLCacheItem *)self item];
    item2 = [(QLCacheItem *)self item];
    fetcher = [item2 fetcher];
    aBlock[2](aBlock, selfCopy, fetcher);
  }

  else
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    handlers = selfCopy->_handlers;
    if (!handlers)
    {
      v9 = objc_opt_new();
      v10 = selfCopy->_handlers;
      selfCopy->_handlers = v9;

      handlers = selfCopy->_handlers;
    }

    v11 = _Block_copy(aBlock);
    [(NSMutableArray *)handlers addObject:v11];

    objc_sync_exit(selfCopy);
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
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v3 = selfCopy->_handlers;
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
        item = [(QLCacheItem *)selfCopy item];
        item2 = [(QLCacheItem *)selfCopy item];
        fetcher = [item2 fetcher];
        (*(v7 + 16))(v7, item, fetcher);

        ++v6;
      }

      while (v4 != v6);
      v4 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v4);
  }

  [(NSMutableArray *)selfCopy->_handlers removeAllObjects];
  objc_sync_exit(selfCopy);

  v11 = *MEMORY[0x277D85DE8];
}

@end