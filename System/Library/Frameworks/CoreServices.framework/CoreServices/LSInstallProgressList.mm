@interface LSInstallProgressList
- (LSInstallProgressList)init;
- (id)progressForBundleID:(id)a3;
- (id)subscriberForBundleID:(id)a3 andPublishingKey:(id)a4;
- (void)addSubscriber:(id)a3 forPublishingKey:(id)a4 andBundleID:(id)a5;
- (void)removeProgressForBundleID:(id)a3;
- (void)removeSubscriberForPublishingKey:(id)a3 andBundleID:(id)a4;
- (void)setProgress:(id)a3 forBundleID:(id)a4;
@end

@implementation LSInstallProgressList

- (LSInstallProgressList)init
{
  v8.receiver = self;
  v8.super_class = LSInstallProgressList;
  v2 = [(LSInstallProgressList *)&v8 init];
  if (v2)
  {
    v3 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:0];
    progresses = v2->_progresses;
    v2->_progresses = v3;

    v5 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:0];
    subscriptions = v2->_subscriptions;
    v2->_subscriptions = v5;
  }

  return v2;
}

- (id)progressForBundleID:(id)a3
{
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  v6 = [(NSMutableDictionary *)v5->_progresses objectForKey:v4];
  if (v6 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  objc_sync_exit(v5);

  return v7;
}

- (void)setProgress:(id)a3 forBundleID:(id)a4
{
  v10 = a3;
  v6 = a4;
  v7 = self;
  objc_sync_enter(v7);
  if ([__LSDefaultsGetSharedInstance() isServer])
  {
    v8 = [(NSMutableDictionary *)v7->_progresses allKeys];
    v9 = [v8 containsObject:v6];

    if ((v9 & 1) == 0)
    {
      MEMORY[0x1865D7C40]();
    }
  }

  [(NSMutableDictionary *)v7->_progresses setObject:v10 forKey:v6];
  objc_sync_exit(v7);
}

- (void)addSubscriber:(id)a3 forPublishingKey:(id)a4 andBundleID:(id)a5
{
  v19 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = self;
  objc_sync_enter(v11);
  v12 = _LSProgressLog();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v15 = 138412546;
    v16 = v8;
    v17 = 2112;
    v18 = v9;
    _os_log_impl(&dword_18162D000, v12, OS_LOG_TYPE_DEFAULT, "#LSInstallProgressList add subscriber: %@ publishingString: %@", &v15, 0x16u);
  }

  v13 = [(NSMutableDictionary *)v11->_subscriptions objectForKey:v9];
  if (!v13)
  {
    v13 = [MEMORY[0x1E695DF70] array];
    [(NSMutableDictionary *)v11->_subscriptions setObject:v13 forKey:v9];
  }

  [v13 addObject:v8];

  objc_sync_exit(v11);
  v14 = *MEMORY[0x1E69E9840];
}

- (id)subscriberForBundleID:(id)a3 andPublishingKey:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  objc_sync_enter(v8);
  v9 = [(NSMutableDictionary *)v8->_subscriptions objectForKeyedSubscript:v7];
  objc_sync_exit(v8);

  return v9;
}

- (void)removeSubscriberForPublishingKey:(id)a3 andBundleID:(id)a4
{
  v25 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v15 = a4;
  v7 = self;
  objc_sync_enter(v7);
  [(NSMutableDictionary *)v7->_subscriptions objectForKeyedSubscript:v6];
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v8 = v17 = 0u;
  v9 = [v8 countByEnumeratingWithState:&v16 objects:v24 count:16];
  if (v9)
  {
    v10 = *v17;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v17 != v10)
        {
          objc_enumerationMutation(v8);
        }

        v12 = *(*(&v16 + 1) + 8 * i);
        v13 = _LSProgressLog();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412546;
          v21 = v12;
          v22 = 2112;
          v23 = v6;
          _os_log_impl(&dword_18162D000, v13, OS_LOG_TYPE_DEFAULT, "#LSInstallProgressList remove subscriber: %@ publishingString: %@", buf, 0x16u);
        }

        [MEMORY[0x1E696AE38] _removeSubscriber:{v12, v15}];
      }

      v9 = [v8 countByEnumeratingWithState:&v16 objects:v24 count:16];
    }

    while (v9);
  }

  [(NSMutableDictionary *)v7->_subscriptions removeObjectForKey:v6];
  objc_sync_exit(v7);

  v14 = *MEMORY[0x1E69E9840];
}

- (void)removeProgressForBundleID:(id)a3
{
  v7 = a3;
  v4 = self;
  objc_sync_enter(v4);
  if ([__LSDefaultsGetSharedInstance() isServer])
  {
    v5 = [(NSMutableDictionary *)v4->_progresses allKeys];
    v6 = [v5 containsObject:v7];

    if (v6)
    {
      MEMORY[0x1865D7C50]();
    }
  }

  [(NSMutableDictionary *)v4->_progresses removeObjectForKey:v7];
  objc_sync_exit(v4);
}

@end