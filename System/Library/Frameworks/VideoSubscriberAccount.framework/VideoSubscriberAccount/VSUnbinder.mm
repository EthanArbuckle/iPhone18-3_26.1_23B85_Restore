@interface VSUnbinder
- (VSUnbinder)init;
- (void)binder:(id)a3 didEstablishBinding:(id)a4;
- (void)binder:(id)a3 didTearDownBinding:(id)a4;
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
    v3 = [MEMORY[0x277CCAB00] weakToStrongObjectsMapTable];
    bindingsByBinder = v2->_bindingsByBinder;
    v2->_bindingsByBinder = v3;
  }

  return v2;
}

- (void)dealloc
{
  v28 = *MEMORY[0x277D85DE8];
  v2 = self;
  objc_sync_enter(v2);
  v2->_invalid = 1;
  objc_sync_exit(v2);

  v15 = v2;
  v3 = v2->_bindingsByBinder;
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
        v10 = [v9 reverseObjectEnumerator];
        v11 = [v10 countByEnumeratingWithState:&v18 objects:v26 count:16];
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
                objc_enumerationMutation(v10);
              }

              [v8 tearDownBinding:*(*(&v18 + 1) + 8 * j)];
            }

            v12 = [v10 countByEnumeratingWithState:&v18 objects:v26 count:16];
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

- (void)binder:(id)a3 didEstablishBinding:(id)a4
{
  v11 = a3;
  v6 = a4;
  v7 = self;
  objc_sync_enter(v7);
  if ([(VSUnbinder *)v7 isInvalid])
  {
    [v11 tearDownBinding:v6];
  }

  else
  {
    v8 = [(VSUnbinder *)v7 bindingsByBinder];
    v9 = [v8 objectForKey:v11];
    if (!v9)
    {
      v9 = objc_alloc_init(MEMORY[0x277CBEB18]);
      [v8 setObject:v9 forKey:v11];
    }

    v10 = [v6 copy];
    [v9 addObject:v10];
  }

  objc_sync_exit(v7);
}

- (void)binder:(id)a3 didTearDownBinding:(id)a4
{
  v11 = a3;
  v6 = a4;
  v7 = self;
  objc_sync_enter(v7);
  if (![(VSUnbinder *)v7 isInvalid])
  {
    v8 = [(VSUnbinder *)v7 bindingsByBinder];
    v9 = [v8 objectForKey:v11];
    v10 = v9;
    if (v9)
    {
      if ([v9 containsObject:v6])
      {
        [v10 removeObject:v6];
      }

      else
      {
        [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:{@"Attempt to tear down unknown binding %@", v6}];
      }

      if (![v10 count])
      {
        [v8 removeObjectForKey:v11];
      }
    }
  }

  objc_sync_exit(v7);
}

@end