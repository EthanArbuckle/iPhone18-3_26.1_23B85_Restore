@interface JSANetwork
+ (id)sharedInstance;
- (BOOL)isReachable;
- (__SCNetworkReachability)reachabilityRef;
- (void)dealloc;
- (void)registerOnNetworkChange:(id)a3;
- (void)unregisterOnNetworkChange;
@end

@implementation JSANetwork

+ (id)sharedInstance
{
  if (qword_CC0D0 != -1)
  {
    sub_80034();
  }

  v3 = qword_CC0D8;

  return v3;
}

- (BOOL)isReachable
{
  v3 = [(JSANetwork *)self isRunningOfflineCache];
  flags = 0;
  if (SCNetworkReachabilityGetFlags([(JSANetwork *)self reachabilityRef], &flags))
  {
    v3 |= (flags & 2) >> 1;
  }

  return v3 & 1;
}

- (void)registerOnNetworkChange:(id)a3
{
  v4 = a3;
  v5 = JSALog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(v9.version) = 136446210;
    *(&v9.version + 4) = "[JSANetwork registerOnNetworkChange:]";
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "%{public}s", &v9, 0xCu);
  }

  v6 = [JSManagedValue managedValueWithValue:v4];

  [(JSANetwork *)self setNetworkCallbackValue:v6];
  if ([(JSANetwork *)self reachabilityRef])
  {
    if (![(JSANetwork *)self hasReachabilityCallbackScheduled])
    {
      SCNetworkReachabilitySetCallback([(JSANetwork *)self reachabilityRef:0], sub_CE18, &v9);
      v7 = [(JSANetwork *)self reachabilityRef];
      Current = CFRunLoopGetCurrent();
      [(JSANetwork *)self setHasReachabilityCallbackScheduled:SCNetworkReachabilityScheduleWithRunLoop(v7, Current, kCFRunLoopDefaultMode) != 0];
    }
  }
}

- (void)unregisterOnNetworkChange
{
  [(JSANetwork *)self setNetworkCallbackValue:0];
  if ([(JSANetwork *)self reachabilityRef]&& [(JSANetwork *)self hasReachabilityCallbackScheduled])
  {
    v3 = [(JSANetwork *)self reachabilityRef];
    Current = CFRunLoopGetCurrent();
    v5 = SCNetworkReachabilityUnscheduleFromRunLoop(v3, Current, kCFRunLoopDefaultMode) == 0;

    [(JSANetwork *)self setHasReachabilityCallbackScheduled:v5];
  }
}

- (__SCNetworkReachability)reachabilityRef
{
  result = self->_reachabilityRef;
  if (!result)
  {
    *&address.sa_data[6] = 0;
    *&address.sa_len = 528;
    result = SCNetworkReachabilityCreateWithAddress(kCFAllocatorDefault, &address);
    self->_reachabilityRef = result;
  }

  return result;
}

- (void)dealloc
{
  [(JSANetwork *)self unregisterOnNetworkChange];
  networkCallbackValue = self->_networkCallbackValue;
  self->_networkCallbackValue = 0;

  reachabilityRef = self->_reachabilityRef;
  if (reachabilityRef)
  {
    CFRelease(reachabilityRef);
  }

  v5.receiver = self;
  v5.super_class = JSANetwork;
  [(JSANetwork *)&v5 dealloc];
}

@end