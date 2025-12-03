@interface VSUnbinder
- (VSUnbinder)init;
- (void)binder:(id)binder didEstablishBinding:(id)binding;
- (void)binder:(id)binder didTearDownBinding:(id)binding;
- (void)dealloc;
@end

@implementation VSUnbinder

- (VSUnbinder)init
{
  v6.receiver = self;
  v6.super_class = VSUnbinder;
  v2 = [(VSUnbinder *)&v6 init];
  if (v2)
  {
    weakToStrongObjectsMapTable = [MEMORY[0x277CCAB00] weakToStrongObjectsMapTable];
    bindingsByBinder = v2->_bindingsByBinder;
    v2->_bindingsByBinder = weakToStrongObjectsMapTable;
  }

  return v2;
}

- (void)dealloc
{
  v28 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  selfCopy->_invalid = 1;
  objc_sync_exit(selfCopy);

  v15 = selfCopy;
  v3 = selfCopy->_bindingsByBinder;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  obj = [(NSMapTable *)v3 keyEnumerator];
  v4 = [obj countByEnumeratingWithState:&v22 objects:v27 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v23;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v23 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v22 + 1) + 8 * i);
        v9 = [(NSMapTable *)v3 objectForKey:v8, v15];
        v18 = 0u;
        v19 = 0u;
        v20 = 0u;
        v21 = 0u;
        reverseObjectEnumerator = [v9 reverseObjectEnumerator];
        v11 = [reverseObjectEnumerator countByEnumeratingWithState:&v18 objects:v26 count:16];
        if (v11)
        {
          v12 = v11;
          v13 = *v19;
          do
          {
            for (j = 0; j != v12; ++j)
            {
              if (*v19 != v13)
              {
                objc_enumerationMutation(reverseObjectEnumerator);
              }

              [v8 tearDownBinding:*(*(&v18 + 1) + 8 * j)];
            }

            v12 = [reverseObjectEnumerator countByEnumeratingWithState:&v18 objects:v26 count:16];
          }

          while (v12);
        }
      }

      v5 = [obj countByEnumeratingWithState:&v22 objects:v27 count:16];
    }

    while (v5);
  }

  v17.receiver = v15;
  v17.super_class = VSUnbinder;
  [(VSUnbinder *)&v17 dealloc];
}

- (void)binder:(id)binder didEstablishBinding:(id)binding
{
  binderCopy = binder;
  bindingCopy = binding;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if ([(VSUnbinder *)selfCopy isInvalid])
  {
    [binderCopy tearDownBinding:bindingCopy];
  }

  else
  {
    bindingsByBinder = [(VSUnbinder *)selfCopy bindingsByBinder];
    v9 = [bindingsByBinder objectForKey:binderCopy];
    if (!v9)
    {
      v9 = objc_alloc_init(MEMORY[0x277CBEB18]);
      [bindingsByBinder setObject:v9 forKey:binderCopy];
    }

    v10 = [bindingCopy copy];
    [v9 addObject:v10];
  }

  objc_sync_exit(selfCopy);
}

- (void)binder:(id)binder didTearDownBinding:(id)binding
{
  binderCopy = binder;
  bindingCopy = binding;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (![(VSUnbinder *)selfCopy isInvalid])
  {
    bindingsByBinder = [(VSUnbinder *)selfCopy bindingsByBinder];
    v9 = [bindingsByBinder objectForKey:binderCopy];
    v10 = v9;
    if (v9)
    {
      if ([v9 containsObject:bindingCopy])
      {
        [v10 removeObject:bindingCopy];
      }

      else
      {
        [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:{@"Attempt to tear down unknown binding %@", bindingCopy}];
      }

      if (![v10 count])
      {
        [bindingsByBinder removeObjectForKey:binderCopy];
      }
    }
  }

  objc_sync_exit(selfCopy);
}

@end