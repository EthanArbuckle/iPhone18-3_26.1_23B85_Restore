@interface ACDQueueDictionary
- (ACDQueueDictionary)init;
- (BOOL)isEmpty;
- (BOOL)isQueueEmptyForKey:(id)key;
- (id)dequeueAllObjectsInQueueForKey:(id)key;
- (id)dequeueFirstObjectInQueueForKey:(id)key;
- (id)firstObjectInQueueForKey:(id)key;
- (id)keyForRandomQueue;
- (void)addObject:(id)object toQueueForKey:(id)key;
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
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  allKeys = [(NSMutableDictionary *)selfCopy->_allQueuesByID allKeys];
  v4 = [allKeys countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = *v11;
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v11 != v5)
        {
          objc_enumerationMutation(allKeys);
        }

        if (![(ACDQueueDictionary *)selfCopy isQueueEmptyForKey:*(*(&v10 + 1) + 8 * i)])
        {
          v7 = 0;
          goto LABEL_11;
        }
      }

      v4 = [allKeys countByEnumeratingWithState:&v10 objects:v14 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

  v7 = 1;
LABEL_11:

  objc_sync_exit(selfCopy);
  v8 = *MEMORY[0x277D85DE8];
  return v7;
}

- (BOOL)isQueueEmptyForKey:(id)key
{
  keyCopy = key;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v6 = [(NSMutableDictionary *)selfCopy->_allQueuesByID objectForKeyedSubscript:keyCopy];
  v7 = [v6 count] == 0;

  objc_sync_exit(selfCopy);
  return v7;
}

- (void)addObject:(id)object toQueueForKey:(id)key
{
  objectCopy = object;
  keyCopy = key;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v8 = [(NSMutableDictionary *)selfCopy->_allQueuesByID objectForKeyedSubscript:keyCopy];
  if (!v8)
  {
    v8 = objc_alloc_init(MEMORY[0x277CBEB18]);
  }

  if (objectCopy)
  {
    [v8 addObject:objectCopy];
  }

  [(NSMutableDictionary *)selfCopy->_allQueuesByID setObject:v8 forKey:keyCopy];

  objc_sync_exit(selfCopy);
}

- (id)dequeueFirstObjectInQueueForKey:(id)key
{
  keyCopy = key;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v6 = [(NSMutableDictionary *)selfCopy->_allQueuesByID objectForKeyedSubscript:keyCopy];
  firstObject = [v6 firstObject];
  if (firstObject)
  {
    [v6 removeObjectAtIndex:0];
    [(NSMutableDictionary *)selfCopy->_allQueuesByID setObject:v6 forKey:keyCopy];
  }

  objc_sync_exit(selfCopy);

  return firstObject;
}

- (id)firstObjectInQueueForKey:(id)key
{
  keyCopy = key;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v6 = [(NSMutableDictionary *)selfCopy->_allQueuesByID objectForKeyedSubscript:keyCopy];
  firstObject = [v6 firstObject];

  objc_sync_exit(selfCopy);

  return firstObject;
}

- (id)dequeueAllObjectsInQueueForKey:(id)key
{
  keyCopy = key;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v6 = [(NSMutableDictionary *)selfCopy->_allQueuesByID objectForKeyedSubscript:keyCopy];
  if (v6)
  {
    [(NSMutableDictionary *)selfCopy->_allQueuesByID removeObjectForKey:keyCopy];
  }

  objc_sync_exit(selfCopy);

  return v6;
}

- (id)keyForRandomQueue
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  allKeys = [(NSMutableDictionary *)selfCopy->_allQueuesByID allKeys];
  firstObject = [allKeys firstObject];

  objc_sync_exit(selfCopy);

  return firstObject;
}

@end