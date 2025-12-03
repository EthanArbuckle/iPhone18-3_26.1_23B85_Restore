@interface AKNetworkObserver
+ (id)sharedNetworkObserver;
- (AKNetworkObserver)init;
- (BOOL)isNetworkReachable;
- (void)_onqueue_networkReachabilityDidChange;
- (void)_startPathMonitor;
- (void)_stopPathMonitor;
- (void)addNetworkReachableObserver:(id)observer selector:(SEL)selector;
- (void)dealloc;
- (void)removeNetworkReachableObserver:(id)observer;
@end

@implementation AKNetworkObserver

- (AKNetworkObserver)init
{
  v10 = a2;
  v11 = 0;
  v9.receiver = self;
  v9.super_class = AKNetworkObserver;
  v11 = [(AKNetworkObserver *)&v9 init];
  objc_storeStrong(&v11, v11);
  if (v11)
  {
    v8 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v2 = dispatch_queue_create("com.apple.AuthKit.AKNetworkObserver", v8);
    observerQueue = v11->_observerQueue;
    v11->_observerQueue = v2;
    MEMORY[0x1E69E5920](observerQueue);
    MEMORY[0x1E69E5920](v8);
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    callbacksByObserver = v11->_callbacksByObserver;
    v11->_callbacksByObserver = dictionary;
    MEMORY[0x1E69E5920](callbacksByObserver);
    [(AKNetworkObserver *)v11 _startPathMonitor];
  }

  v7 = MEMORY[0x1E69E5928](v11);
  objc_storeStrong(&v11, 0);
  return v7;
}

- (void)dealloc
{
  selfCopy = self;
  v3 = a2;
  [(AKNetworkObserver *)self _stopPathMonitor];
  objc_storeStrong(&selfCopy->_callbacksByObserver, 0);
  v2.receiver = selfCopy;
  v2.super_class = AKNetworkObserver;
  [(AKNetworkObserver *)&v2 dealloc];
}

+ (id)sharedNetworkObserver
{
  v5 = &sharedNetworkObserver_onceToken;
  location = 0;
  objc_storeStrong(&location, &__block_literal_global_45);
  if (*v5 != -1)
  {
    dispatch_once(v5, location);
  }

  objc_storeStrong(&location, 0);
  v2 = sharedNetworkObserver_networkObserver;

  return v2;
}

uint64_t __42__AKNetworkObserver_sharedNetworkObserver__block_invoke()
{
  v0 = objc_alloc_init(AKNetworkObserver);
  v1 = sharedNetworkObserver_networkObserver;
  sharedNetworkObserver_networkObserver = v0;
  return MEMORY[0x1E69E5920](v1);
}

- (void)_startPathMonitor
{
  selfCopy = self;
  location[1] = a2;
  if (!self->_pathMonitor)
  {
    v2 = nw_path_monitor_create();
    pathMonitor = selfCopy->_pathMonitor;
    selfCopy->_pathMonitor = v2;
    MEMORY[0x1E69E5920](pathMonitor);
  }

  nw_path_monitor_set_queue(selfCopy->_pathMonitor, selfCopy->_observerQueue);
  objc_initWeak(location, selfCopy);
  monitor = selfCopy->_pathMonitor;
  v5 = MEMORY[0x1E69E9820];
  v6 = -1073741824;
  v7 = 0;
  v8 = __38__AKNetworkObserver__startPathMonitor__block_invoke;
  v9 = &unk_1E73D8668;
  objc_copyWeak(&v10, location);
  nw_path_monitor_set_update_handler(monitor, &v5);
  nw_path_monitor_start(selfCopy->_pathMonitor);
  objc_destroyWeak(&v10);
  objc_destroyWeak(location);
}

void __38__AKNetworkObserver__startPathMonitor__block_invoke(id *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v6[1] = a1;
  v6[0] = objc_loadWeakRetained(a1 + 4);
  if (v6[0])
  {
    status = nw_path_get_status(location[0]);
    if (status == nw_path_status_satisfied || (has_dns = 0, status == nw_path_status_satisfiable))
    {
      has_dns = nw_path_has_dns(location[0]);
    }

    v4 = has_dns != (*(v6[0] + 32) & 1);
    *(v6[0] + 32) = has_dns;
    if (v4)
    {
      [v6[0] _onqueue_networkReachabilityDidChange];
    }
  }

  objc_storeStrong(v6, 0);
  objc_storeStrong(location, 0);
}

- (void)_stopPathMonitor
{
  if (self->_pathMonitor)
  {
    nw_path_monitor_cancel(self->_pathMonitor);
    objc_storeStrong(&self->_pathMonitor, 0);
  }
}

- (void)_onqueue_networkReachabilityDidChange
{
  selfCopy = self;
  v14 = a2;
  dispatch_assert_queue_V2(self->_observerQueue);
  isNetworkReachable = selfCopy->_isNetworkReachable;
  allValues = [(NSMutableDictionary *)selfCopy->_callbacksByObserver allValues];
  v3 = MEMORY[0x1E69E96A0];
  v2 = MEMORY[0x1E69E96A0];
  queue = v3;
  v5 = MEMORY[0x1E69E9820];
  v6 = -1073741824;
  v7 = 0;
  v8 = __58__AKNetworkObserver__onqueue_networkReachabilityDidChange__block_invoke;
  v9 = &unk_1E73D8690;
  v10 = MEMORY[0x1E69E5928](allValues);
  v11 = isNetworkReachable;
  dispatch_async(queue, &v5);
  MEMORY[0x1E69E5920](queue);
  objc_storeStrong(&v10, 0);
  objc_storeStrong(&allValues, 0);
}

uint64_t __58__AKNetworkObserver__onqueue_networkReachabilityDidChange__block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v12 = a1;
  v11 = a1;
  memset(__b, 0, sizeof(__b));
  obj = MEMORY[0x1E69E5928](*(a1 + 32));
  v8 = [obj countByEnumeratingWithState:__b objects:v13 count:16];
  if (v8)
  {
    v3 = *__b[2];
    v4 = 0;
    v5 = v8;
    while (1)
    {
      v2 = v4;
      if (*__b[2] != v3)
      {
        objc_enumerationMutation(obj);
      }

      v10 = *(__b[1] + 8 * v4);
      if (v10)
      {
        (*(v10 + 16))(v10, *(a1 + 40) & 1);
      }

      ++v4;
      if (v2 + 1 >= v5)
      {
        v4 = 0;
        v5 = [obj countByEnumeratingWithState:__b objects:v13 count:16];
        if (!v5)
        {
          break;
        }
      }
    }
  }

  result = MEMORY[0x1E69E5920](obj);
  *MEMORY[0x1E69E9840];
  return result;
}

- (BOOL)isNetworkReachable
{
  selfCopy = self;
  v16 = a2;
  v11 = 0;
  v12 = &v11;
  v13 = 0x20000000;
  v14 = 32;
  v15 = 0;
  queue = self->_observerQueue;
  v5 = MEMORY[0x1E69E9820];
  v6 = -1073741824;
  v7 = 0;
  v8 = __39__AKNetworkObserver_isNetworkReachable__block_invoke;
  v9 = &unk_1E73D6B00;
  v10[1] = &v11;
  v10[0] = MEMORY[0x1E69E5928](self);
  dispatch_sync(queue, &v5);
  v4 = *(v12 + 24);
  objc_storeStrong(v10, 0);
  _Block_object_dispose(&v11, 8);
  return v4 & 1;
}

- (void)addNetworkReachableObserver:(id)observer selector:(SEL)selector
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, observer);
  selectorCopy = selector;
  objc_initWeak(&v22, location[0]);
  v15 = MEMORY[0x1E69E9820];
  v16 = -1073741824;
  v17 = 0;
  v18 = __58__AKNetworkObserver_addNetworkReachableObserver_selector___block_invoke;
  v19 = &unk_1E73D86B8;
  objc_copyWeak(v20, &v22);
  v20[1] = selectorCopy;
  v21 = MEMORY[0x193B165F0](&v15);
  v14 = [MEMORY[0x1E696B098] valueWithNonretainedObject:location[0]];
  queue = selfCopy->_observerQueue;
  v6 = MEMORY[0x1E69E9820];
  v7 = -1073741824;
  v8 = 0;
  v9 = __58__AKNetworkObserver_addNetworkReachableObserver_selector___block_invoke_2;
  v10 = &unk_1E73D86E0;
  v11 = MEMORY[0x1E69E5928](selfCopy);
  v13 = MEMORY[0x1E69E5928](v21);
  v12 = MEMORY[0x1E69E5928](v14);
  dispatch_sync(queue, &v6);
  objc_storeStrong(&v12, 0);
  objc_storeStrong(&v13, 0);
  objc_storeStrong(&v11, 0);
  objc_storeStrong(&v14, 0);
  objc_storeStrong(&v21, 0);
  objc_destroyWeak(v20);
  objc_destroyWeak(&v22);
  objc_storeStrong(location, 0);
}

void __58__AKNetworkObserver_addNetworkReachableObserver_selector___block_invoke(uint64_t a1, char a2)
{
  v8 = a1;
  v7 = a2;
  v6[1] = a1;
  v6[0] = objc_loadWeakRetained((a1 + 32));
  if (v6[0])
  {
    v4 = [v6[0] methodSignatureForSelector:*(a1 + 40)];
    v3 = [MEMORY[0x1E695DF50] invocationWithMethodSignature:v4];
    [v3 setSelector:*(a1 + 40)];
    [v3 setTarget:v6[0]];
    [v3 setArgument:&v7 atIndex:2];
    [v3 invoke];
    objc_storeStrong(&v3, 0);
    objc_storeStrong(&v4, 0);
    v5 = 0;
  }

  else
  {
    v5 = 1;
  }

  objc_storeStrong(v6, 0);
}

uint64_t __58__AKNetworkObserver_addNetworkReachableObserver_selector___block_invoke_2(void *a1)
{
  v4 = *(a1[4] + 24);
  v5 = MEMORY[0x193B165F0](a1[6]);
  v1 = a1[5];
  [v4 setObject:? forKey:?];
  return MEMORY[0x1E69E5920](v5);
}

- (void)removeNetworkReachableObserver:(id)observer
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, observer);
  v11 = [MEMORY[0x1E696B098] valueWithNonretainedObject:location[0]];
  queue = selfCopy->_observerQueue;
  v4 = MEMORY[0x1E69E9820];
  v5 = -1073741824;
  v6 = 0;
  v7 = __52__AKNetworkObserver_removeNetworkReachableObserver___block_invoke;
  v8 = &unk_1E73D4080;
  v9 = MEMORY[0x1E69E5928](selfCopy);
  v10 = MEMORY[0x1E69E5928](v11);
  dispatch_sync(queue, &v4);
  objc_storeStrong(&v10, 0);
  objc_storeStrong(&v9, 0);
  objc_storeStrong(&v11, 0);
  objc_storeStrong(location, 0);
}

@end