@interface CPNetworkObserver
- (BOOL)isNetworkReachable;
- (BOOL)isWiFiEnabled;
- (CPNetworkObserver)init;
- (void)_networkObserversInitialize;
- (void)_networkReachableCallBack:(unsigned int)a3;
- (void)_networkReachableFirstCallBack:(id)a3;
- (void)_wifiCallBack:(unsigned int)a3;
- (void)_wifiFirstCallBack:(id)a3;
- (void)_wifiObserversInitialize;
- (void)addNetworkReachableObserver:(id)a3 selector:(SEL)a4;
- (void)addObserver:(id)a3 selector:(SEL)a4 forHostname:(id)a5;
- (void)addWiFiObserver:(id)a3 selector:(SEL)a4;
- (void)dealloc;
- (void)removeNetworkReachableObserver:(id)a3;
- (void)removeObserver:(id)a3;
- (void)removeObserver:(id)a3 forHostname:(id)a4;
- (void)removeWiFiObserver:(id)a3;
@end

@implementation CPNetworkObserver

- (CPNetworkObserver)init
{
  v4.receiver = self;
  v4.super_class = CPNetworkObserver;
  v2 = [(CPNetworkObserver *)&v4 init];
  if (v2)
  {
    v2->_lock = objc_alloc_init(MEMORY[0x1E696AD10]);
  }

  return v2;
}

- (void)dealloc
{
  wifiPreferences = self->_wifiPreferences;
  v4 = MEMORY[0x1E695E8D0];
  if (wifiPreferences)
  {
    SCPreferencesSetCallback(wifiPreferences, 0, 0);
    v5 = self->_wifiPreferences;
    Main = CFRunLoopGetMain();
    SCPreferencesUnscheduleFromRunLoop(v5, Main, *v4);
    CFRelease(self->_wifiPreferences);
  }

  networkReach = self->_networkReach;
  if (networkReach)
  {
    SCNetworkReachabilitySetCallback(networkReach, 0, 0);
    v8 = self->_networkReach;
    v9 = CFRunLoopGetMain();
    SCNetworkReachabilityUnscheduleFromRunLoop(v8, v9, *v4);
    CFRelease(self->_networkReach);
  }

  [(NSLock *)self->_lock lock];
  wifiObservers = self->_wifiObservers;
  if (wifiObservers)
  {
    CFRelease(wifiObservers);
    self->_wifiObservers = 0;
  }

  networkObservers = self->_networkObservers;
  if (networkObservers)
  {
    CFRelease(networkObservers);
    self->_networkObservers = 0;
  }

  [(NSLock *)self->_lock unlock];

  v12.receiver = self;
  v12.super_class = CPNetworkObserver;
  [(CPNetworkObserver *)&v12 dealloc];
}

- (void)addObserver:(id)a3 selector:(SEL)a4 forHostname:(id)a5
{
  [(NSLock *)self->_lock lock];
  reachabilityRequests = self->_reachabilityRequests;
  if (!reachabilityRequests)
  {
    reachabilityRequests = objc_alloc_init(MEMORY[0x1E695DF90]);
    self->_reachabilityRequests = reachabilityRequests;
  }

  v10 = [(NSMutableDictionary *)reachabilityRequests objectForKey:a5];
  if (!v10)
  {
    v10 = [[_ReachabilityRequest alloc] initWithHostname:a5];
    [(NSMutableDictionary *)self->_reachabilityRequests setObject:v10 forKey:[(_ReachabilityRequest *)v10 hostname]];
  }

  [(_ReachabilityRequest *)v10 addObserver:a3 selector:a4];
  lock = self->_lock;

  [(NSLock *)lock unlock];
}

- (void)removeObserver:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  [(NSLock *)self->_lock lock];
  reachabilityRequests = self->_reachabilityRequests;
  if (!reachabilityRequests)
  {
    reachabilityRequests = objc_alloc_init(MEMORY[0x1E695DF90]);
    self->_reachabilityRequests = reachabilityRequests;
  }

  v6 = [(NSMutableDictionary *)reachabilityRequests allKeys];
  [(NSLock *)self->_lock unlock];
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v7 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v13;
    do
    {
      v10 = 0;
      do
      {
        if (*v13 != v9)
        {
          objc_enumerationMutation(v6);
        }

        [(CPNetworkObserver *)self removeObserver:a3 forHostname:*(*(&v12 + 1) + 8 * v10++)];
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v8);
  }

  v11 = *MEMORY[0x1E69E9840];
}

- (void)removeObserver:(id)a3 forHostname:(id)a4
{
  [(NSLock *)self->_lock lock];
  reachabilityRequests = self->_reachabilityRequests;
  if (!reachabilityRequests)
  {
    reachabilityRequests = objc_alloc_init(MEMORY[0x1E695DF90]);
    self->_reachabilityRequests = reachabilityRequests;
  }

  v8 = [(NSMutableDictionary *)reachabilityRequests objectForKey:a4];
  if (v8)
  {
    v9 = v8;
    [v8 removeObserver:a3];
    if (([v9 hasObservers] & 1) == 0)
    {
      -[NSMutableDictionary removeObjectForKey:](self->_reachabilityRequests, "removeObjectForKey:", [v9 hostname]);
    }
  }

  lock = self->_lock;

  [(NSLock *)lock unlock];
}

- (void)_networkObserversInitialize
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = *MEMORY[0x1E695E480];
  self->_networkObservers = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, 0, 0);
  address = xmmword_195EA3D50;
  v4 = SCNetworkReachabilityCreateWithAddress(v3, &address);
  self->_networkReach = v4;
  SCNetworkReachabilityGetFlags(v4, &self->_networkReachability);
  self->_networkReachable = (self->_networkReachability & 2) != 0;
  -[CPNetworkObserver performSelectorOnMainThread:withObject:waitUntilDone:](self, "performSelectorOnMainThread:withObject:waitUntilDone:", sel__networkReachableFirstCallBack_, [MEMORY[0x1E695DEF0] dataWithBytes:&self->_networkReachability length:4], 0);
  v8.version = 0;
  memset(&v8.retain, 0, 24);
  v8.info = self;
  SCNetworkReachabilitySetCallback(self->_networkReach, _NetworkReachabilityCallBack, &v8);
  networkReach = self->_networkReach;
  Main = CFRunLoopGetMain();
  SCNetworkReachabilityScheduleWithRunLoop(networkReach, Main, *MEMORY[0x1E695E8D0]);
  v7 = *MEMORY[0x1E69E9840];
}

- (void)_networkReachableCallBack:(unsigned int)a3
{
  if ((a3 & 2) != 0 && (self->_networkReachability & 2) != 0)
  {
    v4 = &v14;
    v13[0] = 0;
    v5 = 2;
  }

  else
  {
    v4 = v13;
    v5 = 1;
  }

  v6 = 0;
  self->_networkReachability = a3;
  *v4 = (a3 & 2) >> 1;
  v7 = *MEMORY[0x1E695E480];
  do
  {
    v8 = v13[v6];
    if (v8 != self->_networkReachable || !self->_networkNotified)
    {
      self->_networkNotified = 1;
      self->_networkReachable = v8;
      [(NSLock *)self->_lock lock];
      networkObservers = self->_networkObservers;
      if (networkObservers && CFDictionaryGetCount(networkObservers) > 0)
      {
        Copy = CFDictionaryCreateCopy(v7, self->_networkObservers);
        [(NSLock *)self->_lock unlock];
        if (Copy)
        {
          v11 = objc_alloc_init(MEMORY[0x1E696AAC8]);
          v12 = [MEMORY[0x1E695DF20] dictionaryWithObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithInt:", self->_networkReachable), @"CPNetworkObserverReachable"}];
          CFDictionaryApplyFunction(Copy, _NotifyObserver, [MEMORY[0x1E696AD80] notificationWithName:@"CPNetworkObserverNetworkReachableNotification" object:0 userInfo:v12]);
          CFRelease(Copy);
          [v11 drain];
        }
      }

      else
      {
        [(NSLock *)self->_lock unlock];
      }
    }

    ++v6;
  }

  while (v5 != v6);
}

- (void)_networkReachableFirstCallBack:(id)a3
{
  v4 = *[a3 bytes];

  [(CPNetworkObserver *)self _networkReachableCallBack:v4];
}

- (BOOL)isNetworkReachable
{
  [(NSLock *)self->_lock lock];
  if (!self->_networkObservers)
  {
    [(CPNetworkObserver *)self _networkObserversInitialize];
  }

  networkReachable = self->_networkReachable;
  [(NSLock *)self->_lock unlock];
  return networkReachable;
}

- (void)addNetworkReachableObserver:(id)a3 selector:(SEL)a4
{
  [(NSLock *)self->_lock lock];
  networkObservers = self->_networkObservers;
  if (!networkObservers)
  {
    [(CPNetworkObserver *)self _networkObserversInitialize];
    networkObservers = self->_networkObservers;
  }

  CFDictionaryAddValue(networkObservers, a3, a4);
  lock = self->_lock;

  [(NSLock *)lock unlock];
}

- (void)removeNetworkReachableObserver:(id)a3
{
  [(NSLock *)self->_lock lock];
  networkObservers = self->_networkObservers;
  if (!networkObservers)
  {
    [(CPNetworkObserver *)self _networkObserversInitialize];
    networkObservers = self->_networkObservers;
  }

  CFDictionaryRemoveValue(networkObservers, a3);
  lock = self->_lock;

  [(NSLock *)lock unlock];
}

- (void)_wifiObserversInitialize
{
  v3 = *MEMORY[0x1E695E480];
  self->_wifiObservers = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, 0, 0);
  MainBundle = CFBundleGetMainBundle();
  if (MainBundle && (Identifier = CFBundleGetIdentifier(MainBundle)) != 0)
  {
    v6 = Identifier;
    CFRetain(Identifier);
  }

  else
  {
    v7 = getprogname();
    v8 = getpid();
    v6 = CFStringCreateWithFormat(v3, 0, @"%s (%d)", v7, v8);
  }

  self->_wifiPreferences = SCPreferencesCreate(v3, v6, @"com.apple.wifi.plist");
  CFRelease(v6);
  context.version = 0;
  memset(&context.retain, 0, 24);
  context.info = self;
  SCPreferencesSetCallback(self->_wifiPreferences, _WiFiCallBack, &context);
  wifiPreferences = self->_wifiPreferences;
  Main = CFRunLoopGetMain();
  SCPreferencesScheduleWithRunLoop(wifiPreferences, Main, *MEMORY[0x1E695E8D0]);
  self->_wifiEnabled = _WiFiIsSettingEnabled(self->_wifiPreferences);
  v11 = 1;
  -[CPNetworkObserver performSelectorOnMainThread:withObject:waitUntilDone:](self, "performSelectorOnMainThread:withObject:waitUntilDone:", sel__wifiFirstCallBack_, [MEMORY[0x1E695DEF0] dataWithBytes:&v11 length:4], 0);
}

- (void)_wifiCallBack:(unsigned int)a3
{
  if (a3)
  {
    IsSettingEnabled = _WiFiIsSettingEnabled(self->_wifiPreferences);
    v5 = IsSettingEnabled;
    if (self->_wifiEnabled != IsSettingEnabled || !self->_wifiNotified)
    {
      self->_wifiEnabled = IsSettingEnabled;
      self->_wifiNotified = 1;
      [(NSLock *)self->_lock lock];
      wifiObservers = self->_wifiObservers;
      if (wifiObservers && CFDictionaryGetCount(wifiObservers) > 0)
      {
        Copy = CFDictionaryCreateCopy(*MEMORY[0x1E695E480], self->_wifiObservers);
        [(NSLock *)self->_lock unlock];
        if (Copy)
        {
          v8 = objc_alloc_init(MEMORY[0x1E696AAC8]);
          v9 = [MEMORY[0x1E695DF20] dictionaryWithObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithInt:", v5), @"CPNetworkObserverWiFiEnabled"}];
          CFDictionaryApplyFunction(Copy, _NotifyObserver, [MEMORY[0x1E696AD80] notificationWithName:@"CPNetworkObserverWiFiNotification" object:0 userInfo:v9]);
          CFRelease(Copy);

          [v8 drain];
        }
      }

      else
      {
        lock = self->_lock;

        [(NSLock *)lock unlock];
      }
    }
  }
}

- (void)_wifiFirstCallBack:(id)a3
{
  v4 = *[a3 bytes];

  [(CPNetworkObserver *)self _wifiCallBack:v4];
}

- (BOOL)isWiFiEnabled
{
  [(NSLock *)self->_lock lock];
  if (!self->_wifiObservers)
  {
    [(CPNetworkObserver *)self _wifiObserversInitialize];
  }

  wifiEnabled = self->_wifiEnabled;
  [(NSLock *)self->_lock unlock];
  return wifiEnabled;
}

- (void)addWiFiObserver:(id)a3 selector:(SEL)a4
{
  [(NSLock *)self->_lock lock];
  wifiObservers = self->_wifiObservers;
  if (!wifiObservers)
  {
    [(CPNetworkObserver *)self _wifiObserversInitialize];
    wifiObservers = self->_wifiObservers;
  }

  CFDictionaryAddValue(wifiObservers, a3, a4);
  lock = self->_lock;

  [(NSLock *)lock unlock];
}

- (void)removeWiFiObserver:(id)a3
{
  [(NSLock *)self->_lock lock];
  wifiObservers = self->_wifiObservers;
  if (!wifiObservers)
  {
    [(CPNetworkObserver *)self _wifiObserversInitialize];
    wifiObservers = self->_wifiObservers;
  }

  CFDictionaryRemoveValue(wifiObservers, a3);
  lock = self->_lock;

  [(NSLock *)lock unlock];
}

@end