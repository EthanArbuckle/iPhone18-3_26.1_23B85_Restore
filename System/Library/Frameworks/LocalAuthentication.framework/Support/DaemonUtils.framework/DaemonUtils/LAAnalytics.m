@interface LAAnalytics
- (LAAnalytics)initWithEventName:(id)a3;
- (NSMutableArray)storage;
- (void)_collect;
- (void)collectIfNeeded;
- (void)persistInStorage:(id)a3;
- (void)removeFromStorage;
@end

@implementation LAAnalytics

- (void)collectIfNeeded
{
  if ([(LAAnalytics *)self shouldCollect]&& (![(LAAnalytics *)self wasSent]|| [(LAAnalytics *)self allowsMultipleCollections]))
  {
    self->_wasSent = 1;
    [(LAAnalytics *)self _collect];

    [(LAAnalytics *)self removeFromStorage];
  }
}

- (LAAnalytics)initWithEventName:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = LAAnalytics;
  v6 = [(LAAnalytics *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_eventName, a3);
  }

  return v7;
}

- (void)_collect
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = [(LAAnalytics *)self buildPayload];
  v4 = [(LAAnalytics *)self eventName];
  v5 = v3;
  v6 = AnalyticsSendEventLazy();

  v7 = [(LAAnalytics *)self logLevel];
  if (v7)
  {
    if (LA_LOG_once_1 != -1)
    {
      [LAAnalytics _collect];
    }

    v8 = LA_LOG_log_1;
    v9 = [v7 intValue];
    if (os_log_type_enabled(v8, v9))
    {
      if (v6)
      {
        v10 = "sent";
      }

      else
      {
        v10 = "didn't send";
      }

      v11 = [(LAAnalytics *)self eventName];
      *buf = 136446722;
      v14 = v10;
      v15 = 2114;
      v16 = v11;
      v17 = 2112;
      v18 = v5;
      _os_log_impl(&dword_238B7F000, v8, v9, "%{public}s analytics event %{public}@: %@", buf, 0x20u);
    }
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)persistInStorage:(id)a3
{
  v4 = a3;
  v5 = [(LAAnalytics *)self storage];
  [v5 removeObject:self];

  [(LAAnalytics *)self setStorage:v4];
  v6 = [(LAAnalytics *)self storage];
  [v6 addObject:self];
}

- (void)removeFromStorage
{
  v3 = [(LAAnalytics *)self storage];

  if (v3)
  {
    v6 = [(LAAnalytics *)self instanceToReplaceWithWhenRemovedFromStorage];
    v4 = [(LAAnalytics *)self storage];
    [v6 persistInStorage:v4];

    v5 = [(LAAnalytics *)self storage];
    [v5 removeObject:self];

    [(LAAnalytics *)self setStorage:0];
  }
}

- (NSMutableArray)storage
{
  WeakRetained = objc_loadWeakRetained(&self->_storage);

  return WeakRetained;
}

@end