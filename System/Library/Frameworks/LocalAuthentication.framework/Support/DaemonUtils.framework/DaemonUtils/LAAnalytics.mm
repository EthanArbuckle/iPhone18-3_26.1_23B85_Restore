@interface LAAnalytics
- (LAAnalytics)initWithEventName:(id)name;
- (NSMutableArray)storage;
- (void)_collect;
- (void)collectIfNeeded;
- (void)persistInStorage:(id)storage;
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

- (LAAnalytics)initWithEventName:(id)name
{
  nameCopy = name;
  v9.receiver = self;
  v9.super_class = LAAnalytics;
  v6 = [(LAAnalytics *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_eventName, name);
  }

  return v7;
}

- (void)_collect
{
  v19 = *MEMORY[0x277D85DE8];
  buildPayload = [(LAAnalytics *)self buildPayload];
  eventName = [(LAAnalytics *)self eventName];
  v5 = buildPayload;
  v6 = AnalyticsSendEventLazy();

  logLevel = [(LAAnalytics *)self logLevel];
  if (logLevel)
  {
    if (LA_LOG_once_1 != -1)
    {
      [LAAnalytics _collect];
    }

    v8 = LA_LOG_log_1;
    intValue = [logLevel intValue];
    if (os_log_type_enabled(v8, intValue))
    {
      if (v6)
      {
        v10 = "sent";
      }

      else
      {
        v10 = "didn't send";
      }

      eventName2 = [(LAAnalytics *)self eventName];
      *buf = 136446722;
      v14 = v10;
      v15 = 2114;
      v16 = eventName2;
      v17 = 2112;
      v18 = v5;
      _os_log_impl(&dword_238B7F000, v8, intValue, "%{public}s analytics event %{public}@: %@", buf, 0x20u);
    }
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)persistInStorage:(id)storage
{
  storageCopy = storage;
  storage = [(LAAnalytics *)self storage];
  [storage removeObject:self];

  [(LAAnalytics *)self setStorage:storageCopy];
  storage2 = [(LAAnalytics *)self storage];
  [storage2 addObject:self];
}

- (void)removeFromStorage
{
  storage = [(LAAnalytics *)self storage];

  if (storage)
  {
    instanceToReplaceWithWhenRemovedFromStorage = [(LAAnalytics *)self instanceToReplaceWithWhenRemovedFromStorage];
    storage2 = [(LAAnalytics *)self storage];
    [instanceToReplaceWithWhenRemovedFromStorage persistInStorage:storage2];

    storage3 = [(LAAnalytics *)self storage];
    [storage3 removeObject:self];

    [(LAAnalytics *)self setStorage:0];
  }
}

- (NSMutableArray)storage
{
  WeakRetained = objc_loadWeakRetained(&self->_storage);

  return WeakRetained;
}

@end