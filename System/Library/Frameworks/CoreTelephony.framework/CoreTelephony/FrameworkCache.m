@interface FrameworkCache
+ (SEL)getCacheableSelectorForNotification:(id)a3;
+ (unsigned)getCachePolicyForSelector:(SEL)a3;
- (FrameworkCache)init;
- (id)valueForSelector:(SEL)a3;
- (void)handleDisconnection;
- (void)handleNotification:(id)a3;
- (void)handleValue:(id)a3 forSelector:(SEL)a4;
@end

@implementation FrameworkCache

- (FrameworkCache)init
{
  v6.receiver = self;
  v6.super_class = FrameworkCache;
  v2 = [(FrameworkCache *)&v6 init];
  if (v2)
  {
    v3 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:3];
    selectorValueDict = v2->_selectorValueDict;
    v2->_selectorValueDict = v3;
  }

  return v2;
}

- (void)handleDisconnection
{
  v19 = *MEMORY[0x1E69E9840];
  v2 = self;
  objc_sync_enter(v2);
  [(NSMutableDictionary *)v2->_selectorValueDict allKeys];
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v3 = v13 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v12 objects:v18 count:16];
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
        v8 = [v7 pointerValue];
        if ([objc_opt_class() getCachePolicyForSelector:v8] != 1)
        {
          v9 = CTLogClientCache();
          if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
          {
            v10 = NSStringFromSelector(v8);
            [(FrameworkCache *)v10 handleDisconnection:v16];
          }

          [(NSMutableDictionary *)v2->_selectorValueDict removeObjectForKey:v7];
        }
      }

      v4 = [v3 countByEnumeratingWithState:&v12 objects:v18 count:16];
    }

    while (v4);
  }

  objc_sync_exit(v2);
  v11 = *MEMORY[0x1E69E9840];
}

+ (SEL)getCacheableSelectorForNotification:(id)a3
{
  v14[2] = *MEMORY[0x1E69E9840];
  v3 = a3;
  if ((_MergedGlobals_2 & 1) == 0)
  {
    v14[0] = sel_currentDataServiceDescriptorChanged_;
    v14[1] = sel_getCurrentDataServiceDescriptor_;
    std::map<objc_selector *,objc_selector *>::map[abi:nn200100](v13, v14, 1);
    [FrameworkCache getCacheableSelectorForNotification:v13];
  }

  v4 = [v3 selector];
  v5 = qword_1ED516480;
  if (!qword_1ED516480)
  {
    goto LABEL_11;
  }

  v6 = &qword_1ED516480;
  do
  {
    v7 = *(v5 + 32);
    v8 = v7 >= v4;
    v9 = v7 < v4;
    if (v8)
    {
      v6 = v5;
    }

    v5 = *(v5 + 8 * v9);
  }

  while (v5);
  if (v6 != &qword_1ED516480 && v4 >= v6[4])
  {
    v10 = v6[5];
  }

  else
  {
LABEL_11:
    v10 = 0;
  }

  v11 = *MEMORY[0x1E69E9840];
  return v10;
}

+ (unsigned)getCachePolicyForSelector:(SEL)a3
{
  if ((byte_1ED516471 & 1) == 0)
  {
    v9 = a3;
    +[FrameworkCache getCachePolicyForSelector:];
    a3 = v9;
  }

  v3 = qword_1ED516498;
  if (!qword_1ED516498)
  {
    return 0;
  }

  v4 = &qword_1ED516498;
  do
  {
    v5 = *(v3 + 32);
    v6 = v5 >= a3;
    v7 = v5 < a3;
    if (v6)
    {
      v4 = v3;
    }

    v3 = *(v3 + 8 * v7);
  }

  while (v3);
  if (v4 != &qword_1ED516498 && v4[4] <= a3)
  {
    return *(v4 + 40);
  }

  else
  {
    return 0;
  }
}

- (void)handleValue:(id)a3 forSelector:(SEL)a4
{
  v15[3] = *MEMORY[0x1E69E9840];
  v6 = a3;
  if ([objc_opt_class() getCachePolicyForSelector:a4])
  {
    v7 = [MEMORY[0x1E696B098] valueWithPointer:a4];
    v8 = self;
    objc_sync_enter(v8);
    if (v6)
    {
      v9 = CTLogClientCache();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        v10 = NSStringFromSelector(a4);
        [(FrameworkCache *)v10 handleValue:v6 forSelector:v15];
      }

      [(NSMutableDictionary *)v8->_selectorValueDict setObject:v6 forKey:v7];
    }

    else
    {
      v11 = [(NSMutableDictionary *)v8->_selectorValueDict objectForKey:v7];

      if (v11)
      {
        v12 = CTLogClientCache();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
        {
          v13 = NSStringFromSelector(a4);
          [(FrameworkCache *)v13 handleValue:v15 forSelector:v12];
        }

        [(NSMutableDictionary *)v8->_selectorValueDict removeObjectForKey:v7];
      }
    }

    objc_sync_exit(v8);
  }

  v14 = *MEMORY[0x1E69E9840];
}

- (void)handleNotification:(id)a3
{
  v12[3] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [objc_opt_class() getCacheableSelectorForNotification:v4];
  if (v5)
  {
    v6 = [MEMORY[0x1E696B098] valueWithPointer:v5];
    v7 = self;
    objc_sync_enter(v7);
    v8 = [(NSMutableDictionary *)v7->_selectorValueDict objectForKey:v6];

    if (v8)
    {
      v9 = CTLogClientCache();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        v10 = NSStringFromSelector([v4 selector]);
        [(FrameworkCache *)v10 handleNotification:v12, v9];
      }

      [(NSMutableDictionary *)v7->_selectorValueDict removeObjectForKey:v6];
    }

    objc_sync_exit(v7);
  }

  v11 = *MEMORY[0x1E69E9840];
}

- (id)valueForSelector:(SEL)a3
{
  v12[3] = *MEMORY[0x1E69E9840];
  v4 = self;
  objc_sync_enter(v4);
  v5 = [MEMORY[0x1E696B098] valueWithPointer:a3];
  v6 = [(NSMutableDictionary *)v4->_selectorValueDict objectForKey:v5];
  if (v6)
  {
    v7 = CTLogClientCache();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      v8 = NSStringFromSelector(a3);
      [(FrameworkCache *)v8 valueForSelector:v6, v12];
    }

    v9 = v6;
  }

  objc_sync_exit(v4);
  v10 = *MEMORY[0x1E69E9840];

  return v6;
}

@end