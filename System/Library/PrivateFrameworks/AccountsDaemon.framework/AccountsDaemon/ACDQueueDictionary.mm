@interface ACDQueueDictionary
- (ACDQueueDictionary)init;
- (BOOL)isEmpty;
- (BOOL)isQueueEmptyForKey:(id)a3;
- (id)dequeueAllObjectsInQueueForKey:(id)a3;
- (id)dequeueFirstObjectInQueueForKey:(id)a3;
- (id)firstObjectInQueueForKey:(id)a3;
- (id)keyForRandomQueue;
- (void)addObject:(id)a3 toQueueForKey:(id)a4;
@end

@implementation ACDQueueDictionary

- (ACDQueueDictionary)init
{
  v6.receiver = self;
  v6.super_class = ACDQueueDictionary;
  v2 = [(ACDQueueDictionary *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
    allQueuesByID = v2->_allQueuesByID;
    v2->_allQueuesByID = v3;
  }

  return v2;
}

- (BOOL)isEmpty
{
  v15 = *MEMORY[0x277D85DE8];
  v2 = self;
  objc_sync_enter(v2);
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v3 = [(NSMutableDictionary *)v2->_allQueuesByID allKeys];
  v4 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = *v11;
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v11 != v5)
        {
          objc_enumerationMutation(v3);
        }

        if (![(ACDQueueDictionary *)v2 isQueueEmptyForKey:*(*(&v10 + 1) + 8 * i)])
        {
          v7 = 0;
          goto LABEL_11;
        }
      }

      v4 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

  v7 = 1;
LABEL_11:

  objc_sync_exit(v2);
  v8 = *MEMORY[0x277D85DE8];
  return v7;
}

- (BOOL)isQueueEmptyForKey:(id)a3
{
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  v6 = [(NSMutableDictionary *)v5->_allQueuesByID objectForKeyedSubscript:v4];
  v7 = [v6 count] == 0;

  objc_sync_exit(v5);
  return v7;
}

- (void)addObject:(id)a3 toQueueForKey:(id)a4
{
  v9 = a3;
  v6 = a4;
  v7 = self;
  objc_sync_enter(v7);
  v8 = [(NSMutableDictionary *)v7->_allQueuesByID objectForKeyedSubscript:v6];
  if (!v8)
  {
    v8 = objc_alloc_init(MEMORY[0x277CBEB18]);
  }

  if (v9)
  {
    [v8 addObject:v9];
  }

  [(NSMutableDictionary *)v7->_allQueuesByID setObject:v8 forKey:v6];

  objc_sync_exit(v7);
}

- (id)dequeueFirstObjectInQueueForKey:(id)a3
{
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  v6 = [(NSMutableDictionary *)v5->_allQueuesByID objectForKeyedSubscript:v4];
  v7 = [v6 firstObject];
  if (v7)
  {
    [v6 removeObjectAtIndex:0];
    [(NSMutableDictionary *)v5->_allQueuesByID setObject:v6 forKey:v4];
  }

  objc_sync_exit(v5);

  return v7;
}

- (id)firstObjectInQueueForKey:(id)a3
{
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  v6 = [(NSMutableDictionary *)v5->_allQueuesByID objectForKeyedSubscript:v4];
  v7 = [v6 firstObject];

  objc_sync_exit(v5);

  return v7;
}

- (id)dequeueAllObjectsInQueueForKey:(id)a3
{
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  v6 = [(NSMutableDictionary *)v5->_allQueuesByID objectForKeyedSubscript:v4];
  if (v6)
  {
    [(NSMutableDictionary *)v5->_allQueuesByID removeObjectForKey:v4];
  }

  objc_sync_exit(v5);

  return v6;
}

- (id)keyForRandomQueue
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = [(NSMutableDictionary *)v2->_allQueuesByID allKeys];
  v4 = [v3 firstObject];

  objc_sync_exit(v2);

  return v4;
}

@end