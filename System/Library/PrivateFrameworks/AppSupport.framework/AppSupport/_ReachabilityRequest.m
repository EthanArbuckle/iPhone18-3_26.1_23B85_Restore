@interface _ReachabilityRequest
- (BOOL)hasObservers;
- (_ReachabilityRequest)initWithHostname:(id)a3;
- (id)description;
- (void)addObserver:(id)a3 selector:(SEL)a4;
- (void)dealloc;
- (void)reachabilityChangedWithFlags:(unsigned int)a3;
- (void)removeObserver:(id)a3;
@end

@implementation _ReachabilityRequest

- (_ReachabilityRequest)initWithHostname:(id)a3
{
  v6.receiver = self;
  v6.super_class = _ReachabilityRequest;
  v4 = [(_ReachabilityRequest *)&v6 init];
  if (v4)
  {
    v4->_lock = objc_alloc_init(MEMORY[0x1E696AD10]);
    v4->_hostname = [a3 copy];
    v4->_observers = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, 0, 0);
  }

  return v4;
}

- (void)dealloc
{
  [(NSLock *)self->_lock lock];

  self->_hostname = 0;
  observers = self->_observers;
  if (observers)
  {
    CFRelease(observers);
    self->_observers = 0;
  }

  [(NSLock *)self->_lock unlock];

  v4.receiver = self;
  v4.super_class = _ReachabilityRequest;
  [(_ReachabilityRequest *)&v4 dealloc];
}

- (id)description
{
  v3.receiver = self;
  v3.super_class = _ReachabilityRequest;
  return [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ (%@)", -[_ReachabilityRequest description](&v3, sel_description), self->_hostname];
}

- (void)reachabilityChangedWithFlags:(unsigned int)a3
{
  *&v15[4] = *MEMORY[0x1E69E9840];
  v4 = &v14;
  if ((a3 & 2) != 0)
  {
    if ((self->_flags & 2) != 0)
    {
      v4 = v15;
      v14 = a3 & 0xFFFFFFFD;
      v5 = 2;
      goto LABEL_6;
    }

    v4 = &v14;
  }

  v5 = 1;
LABEL_6:
  self->_flags = a3;
  *v4 = a3;
  v6 = &v14;
  v7 = *MEMORY[0x1E695E480];
  do
  {
    if (((*v6 >> 1) & 1) != self->_isReachable || !self->_receivedAtLeastOneCallback)
    {
      self->_isReachable = (*v6 & 2) != 0;
      self->_receivedAtLeastOneCallback = 1;
      [(NSLock *)self->_lock lock];
      observers = self->_observers;
      if (observers && CFDictionaryGetCount(observers) > 0)
      {
        Copy = CFDictionaryCreateCopy(v7, self->_observers);
        [(NSLock *)self->_lock unlock];
        if (Copy)
        {
          v10 = objc_alloc_init(MEMORY[0x1E696AAC8]);
          v11 = [MEMORY[0x1E695DEF0] dataWithBytes:v6 length:4];
          v12 = [MEMORY[0x1E695DF20] dictionaryWithObjectsAndKeys:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithInt:", self->_isReachable), @"CPNetworkObserverReachable", self->_hostname, @"CPNetworkObserverHostname", v11, @"CPNetworkObserverReachableFlags", 0}];
          CFDictionaryApplyFunction(Copy, _NotifyObserver, [MEMORY[0x1E696AD80] notificationWithName:@"CPNetworkObserverHostnameReachableNotification" object:0 userInfo:v12]);
          CFRelease(Copy);
          [v10 drain];
        }
      }

      else
      {
        [(NSLock *)self->_lock unlock];
      }
    }

    ++v6;
    --v5;
  }

  while (v5);
  v13 = *MEMORY[0x1E69E9840];
}

- (void)addObserver:(id)a3 selector:(SEL)a4
{
  [(NSLock *)self->_lock lock];
  observers = self->_observers;
  if (observers)
  {
    CFDictionaryAddValue(observers, a3, a4);
    if (!self->_reachability)
    {
      context.version = 0;
      context.info = self;
      context.retain = _RetainReachabilityContextInfo;
      context.release = _ReleaseReachabilityContextInfo;
      context.copyDescription = 0;
      v8 = SCNetworkReachabilityCreateWithName(*MEMORY[0x1E695E480], [(NSString *)self->_hostname UTF8String]);
      self->_reachability = v8;
      if (v8)
      {
        hostname = self->_hostname;
        v17 = 0;
        memset(&v18, 0, sizeof(v18));
        v18.ai_flags = 4;
        if (!getaddrinfo([(NSString *)hostname UTF8String], 0, &v18, &v17))
        {
          if (v17)
          {
            ai_addr = v17->ai_addr;
            freeaddrinfo(v17);
            if (ai_addr)
            {
              v18.ai_flags = 0;
              if (SCNetworkReachabilityGetFlags(self->_reachability, &v18))
              {
                v14[0] = MEMORY[0x1E69E9820];
                v14[1] = 3221225472;
                v14[2] = __45___ReachabilityRequest_addObserver_selector___block_invoke;
                v14[3] = &unk_1E7450D48;
                v14[4] = self;
                ai_flags = v18.ai_flags;
                dispatch_async(MEMORY[0x1E69E96A0], v14);
              }
            }
          }
        }

        SCNetworkReachabilitySetCallback(self->_reachability, _ReachabilityCallback, &context);
        reachability = self->_reachability;
        Main = CFRunLoopGetMain();
        SCNetworkReachabilityScheduleWithRunLoop(reachability, Main, *MEMORY[0x1E695E8D0]);
      }
    }

    [(NSLock *)self->_lock unlock];
  }

  else
  {
    lock = self->_lock;

    [(NSLock *)lock unlock];
  }
}

- (void)removeObserver:(id)a3
{
  [(NSLock *)self->_lock lock];
  observers = self->_observers;
  if (observers)
  {
    CFDictionaryRemoveValue(observers, a3);
    if (self->_reachability)
    {
      if (!CFDictionaryGetCount(self->_observers))
      {
        SCNetworkReachabilitySetCallback(self->_reachability, 0, 0);
        reachability = self->_reachability;
        Main = CFRunLoopGetMain();
        SCNetworkReachabilityUnscheduleFromRunLoop(reachability, Main, *MEMORY[0x1E695E8D0]);
        CFRelease(self->_reachability);
        self->_reachability = 0;
      }
    }
  }

  lock = self->_lock;

  [(NSLock *)lock unlock];
}

- (BOOL)hasObservers
{
  [(NSLock *)self->_lock lock];
  observers = self->_observers;
  if (observers)
  {
    v4 = CFDictionaryGetCount(observers) > 0;
  }

  else
  {
    v4 = 0;
  }

  [(NSLock *)self->_lock unlock];
  return v4;
}

@end