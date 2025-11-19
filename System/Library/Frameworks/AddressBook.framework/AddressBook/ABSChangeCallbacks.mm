@interface ABSChangeCallbacks
- (ABSChangeCallbacks)initWithAddressBook:(id)a3;
- (BOOL)hasExternalCallback:(void *)a3 onThread:(id)a4 withContext:(void *)a5;
- (void)addExternalCallback:(void *)a3 onThread:(id)a4 withContext:(void *)a5;
- (void)contactStoreChanged:(id)a3;
- (void)dealloc;
- (void)removeExternalCallback:(void *)a3 withContext:(void *)a4;
@end

@implementation ABSChangeCallbacks

- (ABSChangeCallbacks)initWithAddressBook:(id)a3
{
  v4 = a3;
  v16.receiver = self;
  v16.super_class = ABSChangeCallbacks;
  v5 = [(ABSChangeCallbacks *)&v16 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_addressBook, v4);
    v7 = [MEMORY[0x277CBEB18] array];
    externalCallbacks = v6->_externalCallbacks;
    v6->_externalCallbacks = v7;

    v9 = [MEMORY[0x277CBEB18] array];
    externalCallBackThreads = v6->_externalCallBackThreads;
    v6->_externalCallBackThreads = v9;

    v11 = [MEMORY[0x277CBEB18] array];
    externalCallbackContexts = v6->_externalCallbackContexts;
    v6->_externalCallbackContexts = v11;

    v6->_initialAccessStatus = +[ABSAddressBook authorizationStatus];
    v13 = [MEMORY[0x277CCAB98] defaultCenter];
    [v13 addObserver:v6 selector:sel_contactStoreChanged_ name:*MEMORY[0x277CBD140] object:0];

    v14 = [MEMORY[0x277CCAB98] defaultCenter];
    [v14 addObserver:v6 selector:sel_contactStoreChanged_ name:@"ABSInvokeAllLocalCallbacksNotification" object:0];
  }

  return v6;
}

- (void)dealloc
{
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 removeObserver:self];

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

- (void)contactStoreChanged:(id)a3
{
  v18 = a3;
  v4 = self;
  objc_sync_enter(v4);
  if ([(NSMutableArray *)v4->_externalCallbacks count])
  {
    WeakRetained = objc_loadWeakRetained(&v4->_addressBook);

    if (WeakRetained)
    {
      v6 = objc_loadWeakRetained(&v4->_addressBook);
      v7 = [(NSMutableArray *)v4->_externalCallbacks copy];
      v8 = [(NSMutableArray *)v4->_externalCallBackThreads copy];
      v9 = [(NSMutableArray *)v4->_externalCallbackContexts copy];
      for (i = 0; ; ++i)
      {
        if (i >= [v7 count])
        {
          CFRelease(v6);

          goto LABEL_12;
        }

        v11 = [v7 objectAtIndexedSubscript:i];
        v12 = [v11 unsignedLongValue];

        v13 = [v9 objectAtIndexedSubscript:i];
        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();

        if ((isKindOfClass & 1) == 0)
        {
          break;
        }

        v15 = [v9 objectAtIndexedSubscript:i];
        v16 = [v15 unsignedLongValue];

        if (v12)
        {
          goto LABEL_9;
        }

LABEL_10:
        ;
      }

      v16 = 0;
      if (!v12)
      {
        goto LABEL_10;
      }

LABEL_9:
      v17 = [v8 objectAtIndexedSubscript:i];
      [ABSCallbackInvoker invokeOnThread:v17 callback:v12 withAddressBook:v6 context:v16];

      goto LABEL_10;
    }
  }

LABEL_12:
  objc_sync_exit(v4);
}

- (void)addExternalCallback:(void *)a3 onThread:(id)a4 withContext:(void *)a5
{
  v18 = a4;
  if (CNLinkedOnOrAfter() || self->_initialAccessStatus || +[ABSAddressBook authorizationStatus]!= 3)
  {
    v9 = 0;
  }

  else
  {
    v8 = [MEMORY[0x277CCACC8] currentThread];
    v9 = ![(ABSChangeCallbacks *)self hasExternalCallback:a3 onThread:v8 withContext:a5];
  }

  v10 = self;
  objc_sync_enter(v10);
  if (a3)
  {
    externalCallbacks = v10->_externalCallbacks;
    v12 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:a3];
    [(NSMutableArray *)externalCallbacks addObject:v12];

    externalCallBackThreads = v10->_externalCallBackThreads;
    v14 = [MEMORY[0x277CCACC8] currentThread];
    [(NSMutableArray *)externalCallBackThreads addObject:v14];

    externalCallbackContexts = v10->_externalCallbackContexts;
    if (a5)
    {
      [MEMORY[0x277CCABB0] numberWithUnsignedLong:a5];
    }

    else
    {
      [MEMORY[0x277CBEB68] null];
    }
    v16 = ;
    [(NSMutableArray *)externalCallbackContexts addObject:v16];
  }

  objc_sync_exit(v10);

  if (v9)
  {
    v17 = [MEMORY[0x277CCAB98] defaultCenter];
    [v17 postNotificationName:@"ABSInvokeAllLocalCallbacksNotification" object:v10];
  }
}

- (BOOL)hasExternalCallback:(void *)a3 onThread:(id)a4 withContext:(void *)a5
{
  v8 = a4;
  v9 = self;
  objc_sync_enter(v9);
  if (a3 && [(NSMutableArray *)v9->_externalCallbacks count])
  {
    v10 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:a3];
    if (a5)
    {
      [MEMORY[0x277CCABB0] numberWithUnsignedLong:a5];
    }

    else
    {
      [MEMORY[0x277CBEB68] null];
    }
    v12 = ;
    v11 = 0;
    for (i = 0; i < [(NSMutableArray *)v9->_externalCallbacks count]&& !v11; ++i)
    {
      v14 = [(NSMutableArray *)v9->_externalCallbacks objectAtIndexedSubscript:i];
      if (v14 == v10)
      {
        v15 = [(NSMutableArray *)v9->_externalCallbackContexts objectAtIndexedSubscript:i];
        if (v15 == v12)
        {
          v16 = [(NSMutableArray *)v9->_externalCallBackThreads objectAtIndexedSubscript:i];
          v11 = v16 == v8;
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

  objc_sync_exit(v9);

  return v11;
}

- (void)removeExternalCallback:(void *)a3 withContext:(void *)a4
{
  obj = self;
  objc_sync_enter(obj);
  if (a3 && [(NSMutableArray *)obj->_externalCallbacks count])
  {
    v6 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:a3];
    if (a4)
    {
      [MEMORY[0x277CCABB0] numberWithUnsignedLong:a4];
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