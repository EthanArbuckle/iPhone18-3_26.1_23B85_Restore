@interface ABSChangeCallbacks
- (ABSChangeCallbacks)initWithAddressBook:(id)book;
- (BOOL)hasExternalCallback:(void *)callback onThread:(id)thread withContext:(void *)context;
- (void)addExternalCallback:(void *)callback onThread:(id)thread withContext:(void *)context;
- (void)contactStoreChanged:(id)changed;
- (void)dealloc;
- (void)removeExternalCallback:(void *)callback withContext:(void *)context;
@end

@implementation ABSChangeCallbacks

- (ABSChangeCallbacks)initWithAddressBook:(id)book
{
  bookCopy = book;
  v16.receiver = self;
  v16.super_class = ABSChangeCallbacks;
  v5 = [(ABSChangeCallbacks *)&v16 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_addressBook, bookCopy);
    array = [MEMORY[0x277CBEB18] array];
    externalCallbacks = v6->_externalCallbacks;
    v6->_externalCallbacks = array;

    array2 = [MEMORY[0x277CBEB18] array];
    externalCallBackThreads = v6->_externalCallBackThreads;
    v6->_externalCallBackThreads = array2;

    array3 = [MEMORY[0x277CBEB18] array];
    externalCallbackContexts = v6->_externalCallbackContexts;
    v6->_externalCallbackContexts = array3;

    v6->_initialAccessStatus = +[ABSAddressBook authorizationStatus];
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:v6 selector:sel_contactStoreChanged_ name:*MEMORY[0x277CBD140] object:0];

    defaultCenter2 = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter2 addObserver:v6 selector:sel_contactStoreChanged_ name:@"ABSInvokeAllLocalCallbacksNotification" object:0];
  }

  return v6;
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self];

  objc_storeWeak(&self->_addressBook, 0);
  externalCallbacks = self->_externalCallbacks;
  self->_externalCallbacks = 0;

  externalCallBackThreads = self->_externalCallBackThreads;
  self->_externalCallBackThreads = 0;

  externalCallbackContexts = self->_externalCallbackContexts;
  self->_externalCallbackContexts = 0;

  v7.receiver = self;
  v7.super_class = ABSChangeCallbacks;
  [(ABSChangeCallbacks *)&v7 dealloc];
}

- (void)contactStoreChanged:(id)changed
{
  changedCopy = changed;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if ([(NSMutableArray *)selfCopy->_externalCallbacks count])
  {
    WeakRetained = objc_loadWeakRetained(&selfCopy->_addressBook);

    if (WeakRetained)
    {
      v6 = objc_loadWeakRetained(&selfCopy->_addressBook);
      v7 = [(NSMutableArray *)selfCopy->_externalCallbacks copy];
      v8 = [(NSMutableArray *)selfCopy->_externalCallBackThreads copy];
      v9 = [(NSMutableArray *)selfCopy->_externalCallbackContexts copy];
      for (i = 0; ; ++i)
      {
        if (i >= [v7 count])
        {
          CFRelease(v6);

          goto LABEL_12;
        }

        v11 = [v7 objectAtIndexedSubscript:i];
        unsignedLongValue = [v11 unsignedLongValue];

        v13 = [v9 objectAtIndexedSubscript:i];
        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();

        if ((isKindOfClass & 1) == 0)
        {
          break;
        }

        v15 = [v9 objectAtIndexedSubscript:i];
        unsignedLongValue2 = [v15 unsignedLongValue];

        if (unsignedLongValue)
        {
          goto LABEL_9;
        }

LABEL_10:
        ;
      }

      unsignedLongValue2 = 0;
      if (!unsignedLongValue)
      {
        goto LABEL_10;
      }

LABEL_9:
      v17 = [v8 objectAtIndexedSubscript:i];
      [ABSCallbackInvoker invokeOnThread:v17 callback:unsignedLongValue withAddressBook:v6 context:unsignedLongValue2];

      goto LABEL_10;
    }
  }

LABEL_12:
  objc_sync_exit(selfCopy);
}

- (void)addExternalCallback:(void *)callback onThread:(id)thread withContext:(void *)context
{
  threadCopy = thread;
  if (CNLinkedOnOrAfter() || self->_initialAccessStatus || +[ABSAddressBook authorizationStatus]!= 3)
  {
    v9 = 0;
  }

  else
  {
    currentThread = [MEMORY[0x277CCACC8] currentThread];
    v9 = ![(ABSChangeCallbacks *)self hasExternalCallback:callback onThread:currentThread withContext:context];
  }

  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (callback)
  {
    externalCallbacks = selfCopy->_externalCallbacks;
    v12 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:callback];
    [(NSMutableArray *)externalCallbacks addObject:v12];

    externalCallBackThreads = selfCopy->_externalCallBackThreads;
    currentThread2 = [MEMORY[0x277CCACC8] currentThread];
    [(NSMutableArray *)externalCallBackThreads addObject:currentThread2];

    externalCallbackContexts = selfCopy->_externalCallbackContexts;
    if (context)
    {
      [MEMORY[0x277CCABB0] numberWithUnsignedLong:context];
    }

    else
    {
      [MEMORY[0x277CBEB68] null];
    }
    v16 = ;
    [(NSMutableArray *)externalCallbackContexts addObject:v16];
  }

  objc_sync_exit(selfCopy);

  if (v9)
  {
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter postNotificationName:@"ABSInvokeAllLocalCallbacksNotification" object:selfCopy];
  }
}

- (BOOL)hasExternalCallback:(void *)callback onThread:(id)thread withContext:(void *)context
{
  threadCopy = thread;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (callback && [(NSMutableArray *)selfCopy->_externalCallbacks count])
  {
    v10 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:callback];
    if (context)
    {
      [MEMORY[0x277CCABB0] numberWithUnsignedLong:context];
    }

    else
    {
      [MEMORY[0x277CBEB68] null];
    }
    v12 = ;
    v11 = 0;
    for (i = 0; i < [(NSMutableArray *)selfCopy->_externalCallbacks count]&& !v11; ++i)
    {
      v14 = [(NSMutableArray *)selfCopy->_externalCallbacks objectAtIndexedSubscript:i];
      if (v14 == v10)
      {
        v15 = [(NSMutableArray *)selfCopy->_externalCallbackContexts objectAtIndexedSubscript:i];
        if (v15 == v12)
        {
          v16 = [(NSMutableArray *)selfCopy->_externalCallBackThreads objectAtIndexedSubscript:i];
          v11 = v16 == threadCopy;
        }

        else
        {
          v11 = 0;
        }
      }

      else
      {
        v11 = 0;
      }
    }
  }

  else
  {
    v11 = 0;
  }

  objc_sync_exit(selfCopy);

  return v11;
}

- (void)removeExternalCallback:(void *)callback withContext:(void *)context
{
  obj = self;
  objc_sync_enter(obj);
  if (callback && [(NSMutableArray *)obj->_externalCallbacks count])
  {
    v6 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:callback];
    if (context)
    {
      [MEMORY[0x277CCABB0] numberWithUnsignedLong:context];
    }

    else
    {
      [MEMORY[0x277CBEB68] null];
    }
    v7 = ;
    v8 = [(NSMutableArray *)obj->_externalCallbacks count]- 1;
    if (v8 >= 0)
    {
      do
      {
        v9 = [(NSMutableArray *)obj->_externalCallbacks objectAtIndexedSubscript:v8];
        v10 = v9;
        if (v9 == v6)
        {
          v11 = [(NSMutableArray *)obj->_externalCallbackContexts objectAtIndexedSubscript:v8];

          if (v11 == v7)
          {
            [(NSMutableArray *)obj->_externalCallbacks removeObjectAtIndex:v8];
            [(NSMutableArray *)obj->_externalCallBackThreads removeObjectAtIndex:v8];
            [(NSMutableArray *)obj->_externalCallbackContexts removeObjectAtIndex:v8];
            break;
          }
        }

        else
        {
        }

        --v8;
      }

      while (v8 != -1);
    }
  }

  objc_sync_exit(obj);
}

@end