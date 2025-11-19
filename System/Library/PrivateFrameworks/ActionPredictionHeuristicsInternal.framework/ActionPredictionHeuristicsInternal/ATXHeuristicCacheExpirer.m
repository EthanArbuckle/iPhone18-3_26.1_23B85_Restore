@interface ATXHeuristicCacheExpirer
- (ATXHeuristicCacheExpirer)init;
- (void)dealloc;
- (void)expire;
- (void)startExpiring:(id)a3 cache:(id)a4;
- (void)stopExpiring:(id)a3 cache:(id)a4;
@end

@implementation ATXHeuristicCacheExpirer

- (void)dealloc
{
  [(ATXHeuristicCacheExpirer *)self _stop];
  pthread_mutex_destroy(&self->_lock);
  v3.receiver = self;
  v3.super_class = ATXHeuristicCacheExpirer;
  [(ATXHeuristicCacheExpirer *)&v3 dealloc];
}

- (ATXHeuristicCacheExpirer)init
{
  v6.receiver = self;
  v6.super_class = ATXHeuristicCacheExpirer;
  v2 = [(ATXHeuristicCacheExpirer *)&v6 init];
  if (v2)
  {
    v3 = objc_opt_new();
    expirationEntries = v2->_expirationEntries;
    v2->_expirationEntries = v3;

    pthread_mutex_init(&v2->_lock, 0);
  }

  return v2;
}

- (void)startExpiring:(id)a3 cache:(id)a4
{
  if (a4)
  {
    v6 = a4;
    v7 = a3;
    pthread_mutex_lock(&self->_lock);
    expirationEntries = self->_expirationEntries;
    v9 = [[ATXHeuristicCacheExpirationEntry alloc] initWithHeuristic:v7 cache:v6];

    [(NSMutableSet *)expirationEntries addObject:v9];
    if ([(NSMutableSet *)self->_expirationEntries count])
    {
      [(ATXHeuristicCacheExpirer *)self _start];
    }

    pthread_mutex_unlock(&self->_lock);
  }
}

- (void)stopExpiring:(id)a3 cache:(id)a4
{
  if (a4)
  {
    v6 = a4;
    v7 = a3;
    pthread_mutex_lock(&self->_lock);
    expirationEntries = self->_expirationEntries;
    v9 = [[ATXHeuristicCacheExpirationEntry alloc] initWithHeuristic:v7 cache:v6];

    [(NSMutableSet *)expirationEntries removeObject:v9];
    if (![(NSMutableSet *)self->_expirationEntries count])
    {
      [(ATXHeuristicCacheExpirer *)self _stop];
    }

    pthread_mutex_unlock(&self->_lock);
  }
}

- (void)expire
{
  v20 = *MEMORY[0x277D85DE8];
  pthread_mutex_lock(&self->_lock);
  v3 = self->_expirationEntries;
  v4 = objc_opt_new();
  expirationEntries = self->_expirationEntries;
  self->_expirationEntries = v4;

  pthread_mutex_unlock(&self->_lock);
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v6 = v3;
  v7 = [(NSMutableSet *)v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v16;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v15 + 1) + 8 * i);
        v12 = [v11 cache];
        v13 = [v11 heuristicName];
        [v12 _expire:v13 postNotification:1];
      }

      v8 = [(NSMutableSet *)v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v8);
  }

  v14 = *MEMORY[0x277D85DE8];
}

@end