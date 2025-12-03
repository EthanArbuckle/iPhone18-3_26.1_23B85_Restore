@interface QLNotificationCenter
+ (id)sharedInstance;
- (BOOL)_tryPostingNotificationName:(id)name userInfo:(id)info;
- (QLNotificationCenter)init;
- (int64_t)_indexOfObserver:(id)observer;
- (void)_bufferNotificationName:(id)name userInfo:(id)info;
- (void)_sendEnqueuedNotifications;
- (void)postNotificationName:(id)name userInfo:(id)info;
- (void)registerObserver:(id)observer;
- (void)setRemoteNotificationCenter:(id)center;
- (void)unregisterObserver:(id)observer;
@end

@implementation QLNotificationCenter

- (QLNotificationCenter)init
{
  v8.receiver = self;
  v8.super_class = QLNotificationCenter;
  v2 = [(QLNotificationCenter *)&v8 init];
  if (v2)
  {
    v3 = objc_opt_new();
    bufferedNotifications = v2->_bufferedNotifications;
    v2->_bufferedNotifications = v3;

    weakObjectsPointerArray = [MEMORY[0x277CCAC18] weakObjectsPointerArray];
    observers = v2->_observers;
    v2->_observers = weakObjectsPointerArray;
  }

  return v2;
}

+ (id)sharedInstance
{
  v2 = _QLNotificationCenterSharedInstance;
  if (!_QLNotificationCenterSharedInstance)
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __38__QLNotificationCenter_sharedInstance__block_invoke;
    block[3] = &__block_descriptor_40_e5_v8__0l;
    block[4] = self;
    if (sharedInstance_onceToken != -1)
    {
      dispatch_once(&sharedInstance_onceToken, block);
    }

    v2 = _QLNotificationCenterSharedInstance;
  }

  return v2;
}

uint64_t __38__QLNotificationCenter_sharedInstance__block_invoke(uint64_t a1)
{
  v1 = objc_alloc_init(*(a1 + 32));
  v2 = _QLNotificationCenterSharedInstance;
  _QLNotificationCenterSharedInstance = v1;

  return MEMORY[0x2821F96F8](v1, v2);
}

- (void)postNotificationName:(id)name userInfo:(id)info
{
  nameCopy = name;
  infoCopy = info;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (![(QLNotificationCenter *)selfCopy _tryPostingNotificationName:nameCopy userInfo:infoCopy])
  {
    v8 = [nameCopy copy];
    v9 = [infoCopy copy];
    [(QLNotificationCenter *)selfCopy _bufferNotificationName:v8 userInfo:v9];
  }

  objc_sync_exit(selfCopy);
}

- (BOOL)_tryPostingNotificationName:(id)name userInfo:(id)info
{
  v23 = *MEMORY[0x277D85DE8];
  nameCopy = name;
  infoCopy = info;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v9 = [(NSPointerArray *)selfCopy->_observers count];
  remoteNotificationCenter = selfCopy->_remoteNotificationCenter;
  if (v9)
  {
    if (!remoteNotificationCenter)
    {
      v20 = 0u;
      v21 = 0u;
      v18 = 0u;
      v19 = 0u;
      v11 = selfCopy->_observers;
      v12 = [(NSPointerArray *)v11 countByEnumeratingWithState:&v18 objects:v22 count:16];
      if (v12)
      {
        v13 = *v19;
        do
        {
          for (i = 0; i != v12; ++i)
          {
            if (*v19 != v13)
            {
              objc_enumerationMutation(v11);
            }

            [*(*(&v18 + 1) + 8 * i) notification:nameCopy userInfo:{infoCopy, v18}];
          }

          v12 = [(NSPointerArray *)v11 countByEnumeratingWithState:&v18 objects:v22 count:16];
        }

        while (v12);
      }

      goto LABEL_13;
    }
  }

  else if (!remoteNotificationCenter)
  {
    v15 = 0;
    goto LABEL_14;
  }

  [(QLNotificationCenterProtocol *)remoteNotificationCenter postNotificationName:nameCopy userInfo:infoCopy];
LABEL_13:
  v15 = 1;
LABEL_14:
  objc_sync_exit(selfCopy);

  v16 = *MEMORY[0x277D85DE8];
  return v15;
}

- (void)_bufferNotificationName:(id)name userInfo:(id)info
{
  v14[2] = *MEMORY[0x277D85DE8];
  nameCopy = name;
  infoCopy = info;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  bufferedNotifications = selfCopy->_bufferedNotifications;
  v13[0] = @"_notificationName";
  v13[1] = @"_userInfo";
  v14[0] = nameCopy;
  null = infoCopy;
  if (!infoCopy)
  {
    null = [MEMORY[0x277CBEB68] null];
  }

  v14[1] = null;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:v13 count:2];
  [(NSMutableArray *)bufferedNotifications addObject:v11];

  if (!infoCopy)
  {
  }

  objc_sync_exit(selfCopy);

  v12 = *MEMORY[0x277D85DE8];
}

- (void)registerObserver:(id)observer
{
  observerCopy = observer;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if ([(QLNotificationCenter *)selfCopy _indexOfObserver:observerCopy]== 0x7FFFFFFFFFFFFFFFLL)
  {
    [(NSPointerArray *)selfCopy->_observers addPointer:observerCopy];
    [(QLNotificationCenter *)selfCopy _sendEnqueuedNotifications];
  }

  objc_sync_exit(selfCopy);
}

- (void)unregisterObserver:(id)observer
{
  observerCopy = observer;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v5 = [(QLNotificationCenter *)selfCopy _indexOfObserver:observerCopy];
  if (v5 != 0x7FFFFFFFFFFFFFFFLL)
  {
    [(NSPointerArray *)selfCopy->_observers removePointerAtIndex:v5];
    [(NSPointerArray *)selfCopy->_observers compact];
  }

  objc_sync_exit(selfCopy);
}

- (void)setRemoteNotificationCenter:(id)center
{
  centerCopy = center;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  objc_storeStrong(&selfCopy->_remoteNotificationCenter, center);
  if (selfCopy->_remoteNotificationCenter)
  {
    [(QLNotificationCenter *)selfCopy _sendEnqueuedNotifications];
  }

  objc_sync_exit(selfCopy);
}

- (int64_t)_indexOfObserver:(id)observer
{
  v19 = *MEMORY[0x277D85DE8];
  observerCopy = observer;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v6 = [(NSPointerArray *)selfCopy->_observers copy];
  v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = 0;
    v9 = *v15;
LABEL_3:
    v10 = 0;
    v11 = v8;
    v8 += v7;
    while (1)
    {
      if (*v15 != v9)
      {
        objc_enumerationMutation(v6);
      }

      if (*(*(&v14 + 1) + 8 * v10) == observerCopy)
      {
        break;
      }

      ++v11;
      if (v7 == ++v10)
      {
        v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
        if (v7)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }
  }

  else
  {
LABEL_9:
    v11 = 0x7FFFFFFFFFFFFFFFLL;
  }

  objc_sync_exit(selfCopy);
  v12 = *MEMORY[0x277D85DE8];
  return v11;
}

- (void)_sendEnqueuedNotifications
{
  v17 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if ([(NSMutableArray *)selfCopy->_bufferedNotifications count])
  {
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v3 = [(NSMutableArray *)selfCopy->_bufferedNotifications copy];
    v4 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v4)
    {
      v5 = *v13;
      do
      {
        for (i = 0; i != v4; ++i)
        {
          if (*v13 != v5)
          {
            objc_enumerationMutation(v3);
          }

          v7 = *(*(&v12 + 1) + 8 * i);
          v8 = [v7 objectForKeyedSubscript:@"_notificationName"];
          v9 = [v7 objectForKeyedSubscript:@"_userInfo"];
          v10 = [(QLNotificationCenter *)selfCopy _tryPostingNotificationName:v8 userInfo:v9];

          if (v10)
          {
            [(NSMutableArray *)selfCopy->_bufferedNotifications removeObject:v7];
          }
        }

        v4 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v4);
    }
  }

  objc_sync_exit(selfCopy);

  v11 = *MEMORY[0x277D85DE8];
}

@end