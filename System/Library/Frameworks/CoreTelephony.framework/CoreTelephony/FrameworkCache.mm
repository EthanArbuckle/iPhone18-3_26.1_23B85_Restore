@interface FrameworkCache
+ (SEL)getCacheableSelectorForNotification:(id)notification;
+ (unsigned)getCachePolicyForSelector:(SEL)selector;
- (FrameworkCache)init;
- (id)valueForSelector:(SEL)selector;
- (void)handleDisconnection;
- (void)handleNotification:(id)notification;
- (void)handleValue:(id)value forSelector:(SEL)selector;
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
  selfCopy = self;
  objc_sync_enter(selfCopy);
  [(NSMutableDictionary *)selfCopy->_selectorValueDict allKeys];
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
        pointerValue = [v7 pointerValue];
        if ([objc_opt_class() getCachePolicyForSelector:pointerValue] != 1)
        {
          v9 = CTLogClientCache();
          if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
          {
            v10 = NSStringFromSelector(pointerValue);
            [(FrameworkCache *)v10 handleDisconnection:v16];
          }

          [(NSMutableDictionary *)selfCopy->_selectorValueDict removeObjectForKey:v7];
        }
      }

      v4 = [v3 countByEnumeratingWithState:&v12 objects:v18 count:16];
    }

    while (v4);
  }

  objc_sync_exit(selfCopy);
  v11 = *MEMORY[0x1E69E9840];
}

+ (SEL)getCacheableSelectorForNotification:(id)notification
{
  v14[2] = *MEMORY[0x1E69E9840];
  notificationCopy = notification;
  if ((_MergedGlobals_2 & 1) == 0)
  {
    v14[0] = sel_currentDataServiceDescriptorChanged_;
    v14[1] = sel_getCurrentDataServiceDescriptor_;
    std::map<objc_selector *,objc_selector *>::map[abi:nn200100](v13, v14, 1);
    [FrameworkCache getCacheableSelectorForNotification:v13];
  }

  selector = [notificationCopy selector];
  v5 = qword_1ED516480;
  if (!qword_1ED516480)
  {
    goto LABEL_11;
  }

  v6 = &qword_1ED516480;
  do
  {
    v7 = *(v5 + 32);
    v8 = v7 >= selector;
    v9 = v7 < selector;
    if (v8)
    {
      v6 = v5;
    }

    v5 = *(v5 + 8 * v9);
  }

  while (v5);
  if (v6 != &qword_1ED516480 && selector >= v6[4])
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

+ (unsigned)getCachePolicyForSelector:(SEL)selector
{
  if ((byte_1ED516471 & 1) == 0)
  {
    selectorCopy = selector;
    +[FrameworkCache getCachePolicyForSelector:];
    selector = selectorCopy;
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
    v6 = v5 >= selector;
    v7 = v5 < selector;
    if (v6)
    {
      v4 = v3;
    }

    v3 = *(v3 + 8 * v7);
  }

  while (v3);
  if (v4 != &qword_1ED516498 && v4[4] <= selector)
  {
    return *(v4 + 40);
  }

  else
  {
    return 0;
  }
}

- (void)handleValue:(id)value forSelector:(SEL)selector
{
  v15[3] = *MEMORY[0x1E69E9840];
  valueCopy = value;
  if ([objc_opt_class() getCachePolicyForSelector:selector])
  {
    v7 = [MEMORY[0x1E696B098] valueWithPointer:selector];
    selfCopy = self;
    objc_sync_enter(selfCopy);
    if (valueCopy)
    {
      v9 = CTLogClientCache();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        v10 = NSStringFromSelector(selector);
        [(FrameworkCache *)v10 handleValue:valueCopy forSelector:v15];
      }

      [(NSMutableDictionary *)selfCopy->_selectorValueDict setObject:valueCopy forKey:v7];
    }

    else
    {
      v11 = [(NSMutableDictionary *)selfCopy->_selectorValueDict objectForKey:v7];

      if (v11)
      {
        v12 = CTLogClientCache();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
        {
          v13 = NSStringFromSelector(selector);
          [(FrameworkCache *)v13 handleValue:v15 forSelector:v12];
        }

        [(NSMutableDictionary *)selfCopy->_selectorValueDict removeObjectForKey:v7];
      }
    }

    objc_sync_exit(selfCopy);
  }

  v14 = *MEMORY[0x1E69E9840];
}

- (void)handleNotification:(id)notification
{
  v12[3] = *MEMORY[0x1E69E9840];
  notificationCopy = notification;
  v5 = [objc_opt_class() getCacheableSelectorForNotification:notificationCopy];
  if (v5)
  {
    v6 = [MEMORY[0x1E696B098] valueWithPointer:v5];
    selfCopy = self;
    objc_sync_enter(selfCopy);
    v8 = [(NSMutableDictionary *)selfCopy->_selectorValueDict objectForKey:v6];

    if (v8)
    {
      v9 = CTLogClientCache();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        v10 = NSStringFromSelector([notificationCopy selector]);
        [(FrameworkCache *)v10 handleNotification:v12, v9];
      }

      [(NSMutableDictionary *)selfCopy->_selectorValueDict removeObjectForKey:v6];
    }

    objc_sync_exit(selfCopy);
  }

  v11 = *MEMORY[0x1E69E9840];
}

- (id)valueForSelector:(SEL)selector
{
  v12[3] = *MEMORY[0x1E69E9840];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v5 = [MEMORY[0x1E696B098] valueWithPointer:selector];
  v6 = [(NSMutableDictionary *)selfCopy->_selectorValueDict objectForKey:v5];
  if (v6)
  {
    v7 = CTLogClientCache();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      v8 = NSStringFromSelector(selector);
      [(FrameworkCache *)v8 valueForSelector:v6, v12];
    }

    v9 = v6;
  }

  objc_sync_exit(selfCopy);
  v10 = *MEMORY[0x1E69E9840];

  return v6;
}

@end