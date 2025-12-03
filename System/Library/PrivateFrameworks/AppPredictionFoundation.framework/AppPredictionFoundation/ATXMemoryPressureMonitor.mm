@interface ATXMemoryPressureMonitor
+ (id)sharedInstance;
- (ATXMemoryPressureMonitor)init;
- (unint64_t)_currentMemoryPressureType;
- (void)_currentMemoryPressureType;
- (void)_notifyObserversOfMemoryPressureType:(unint64_t)type;
- (void)dealloc;
- (void)registerObserver:(id)observer;
- (void)unregisterObserver:(id)observer;
@end

@implementation ATXMemoryPressureMonitor

+ (id)sharedInstance
{
  if (sharedInstance_onceToken != -1)
  {
    +[ATXMemoryPressureMonitor sharedInstance];
  }

  v3 = sharedInstance_observer;

  return v3;
}

- (ATXMemoryPressureMonitor)init
{
  v15.receiver = self;
  v15.super_class = ATXMemoryPressureMonitor;
  v2 = [(ATXMemoryPressureMonitor *)&v15 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_create("ATXMemoryPressureMonitor.internalQueue", v3);
    v5 = *(v2 + 1);
    *(v2 + 1) = v4;

    v6 = [objc_alloc(MEMORY[0x277CCAA50]) initWithOptions:517 capacity:0];
    v7 = *(v2 + 3);
    *(v2 + 3) = v6;

    v8 = dispatch_source_create(MEMORY[0x277D85D18], 0, 7uLL, *(v2 + 1));
    v9 = *(v2 + 2);
    *(v2 + 2) = v8;

    objc_initWeak(&location, v2);
    v10 = *(v2 + 2);
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __32__ATXMemoryPressureMonitor_init__block_invoke;
    v12[3] = &unk_27858FD38;
    objc_copyWeak(&v13, &location);
    dispatch_source_set_event_handler(v10, v12);
    dispatch_resume(*(v2 + 2));
    objc_destroyWeak(&v13);
    objc_destroyWeak(&location);
  }

  return v2;
}

uint64_t __42__ATXMemoryPressureMonitor_sharedInstance__block_invoke()
{
  sharedInstance_observer = objc_alloc_init(ATXMemoryPressureMonitor);

  return MEMORY[0x2821F96F8]();
}

void __32__ATXMemoryPressureMonitor_init__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = [WeakRetained _currentMemoryPressureType];

  v4 = objc_loadWeakRetained((a1 + 32));
  [v4 _notifyObserversOfMemoryPressureType:v3];
}

- (void)dealloc
{
  dispatch_suspend(self->_memoryMonitoringSource);
  v3.receiver = self;
  v3.super_class = ATXMemoryPressureMonitor;
  [(ATXMemoryPressureMonitor *)&v3 dealloc];
}

- (unint64_t)_currentMemoryPressureType
{
  data = dispatch_source_get_data(self->_memoryMonitoringSource);
  if (data == 1)
  {
    return 0;
  }

  v3 = data;
  if (data != 4)
  {
    if (data == 2)
    {
      return 1;
    }

    v5 = __atxlog_handle_default();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      [(ATXMemoryPressureMonitor *)v3 _currentMemoryPressureType];
    }
  }

  return 2;
}

- (void)_notifyObserversOfMemoryPressureType:(unint64_t)type
{
  v22 = *MEMORY[0x277D85DE8];
  v5 = __atxlog_handle_default();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = ATXMemoryPressureTypeToString(type);
    *buf = 138412290;
    v21 = v6;
    _os_log_impl(&dword_226368000, v5, OS_LOG_TYPE_DEFAULT, "ATXMemoryPressureMonitor: received memory pressure warning of type: %@", buf, 0xCu);
  }

  selfCopy = self;
  objc_sync_enter(selfCopy);
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v8 = selfCopy->_observers;
  v9 = [(NSHashTable *)v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v9)
  {
    v10 = *v16;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v16 != v10)
        {
          objc_enumerationMutation(v8);
        }

        v12 = *(*(&v15 + 1) + 8 * i);
        if (type - 1 <= 1)
        {
          v13 = *(*(&v15 + 1) + 8 * i);
          if (objc_opt_respondsToSelector())
          {
            [v12 handleMemoryPressure];
          }
        }

        if (objc_opt_respondsToSelector())
        {
          [v12 handleMemoryPressureOfType:type];
        }
      }

      v9 = [(NSHashTable *)v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v9);
  }

  objc_sync_exit(selfCopy);
  v14 = *MEMORY[0x277D85DE8];
}

- (void)registerObserver:(id)observer
{
  observerCopy = observer;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  [(NSHashTable *)selfCopy->_observers addObject:observerCopy];
  objc_sync_exit(selfCopy);
}

- (void)unregisterObserver:(id)observer
{
  observerCopy = observer;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  [(NSHashTable *)selfCopy->_observers removeObject:observerCopy];
  objc_sync_exit(selfCopy);
}

- (void)_currentMemoryPressureType
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 134217984;
  selfCopy = self;
  _os_log_fault_impl(&dword_226368000, a2, OS_LOG_TYPE_FAULT, "ATXMemoryPressureMonitor could not convert %lu to ATXMemoryPressureType", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end