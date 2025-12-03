@interface BKReachability
+ (id)reachabilityForInternetConnection;
+ (id)reachabilityForLocalWiFi;
+ (id)reachabilityWithAddress:(const sockaddr_in *)address;
+ (id)reachabilityWithHostName:(id)name;
+ (id)sharedReachabilityForInternetConnection;
+ (void)_updateIsOffline;
- (BOOL)startNotifier;
- (int)currentReachabilityStatus;
- (int)networkStatusForFlags:(unsigned int)flags;
- (void)dealloc;
- (void)stopNotifier;
@end

@implementation BKReachability

- (BOOL)startNotifier
{
  v7.version = 0;
  memset(&v7.retain, 0, 24);
  v7.info = self;
  v3 = SCNetworkReachabilitySetCallback(self->reachabilityRef, sub_14CAA0, &v7);
  if (v3)
  {
    reachabilityRef = self->reachabilityRef;
    Current = CFRunLoopGetCurrent();
    LOBYTE(v3) = SCNetworkReachabilityScheduleWithRunLoop(reachabilityRef, Current, kCFRunLoopDefaultMode) != 0;
  }

  return v3;
}

- (void)stopNotifier
{
  reachabilityRef = self->reachabilityRef;
  if (reachabilityRef)
  {
    Current = CFRunLoopGetCurrent();

    SCNetworkReachabilityUnscheduleFromRunLoop(reachabilityRef, Current, kCFRunLoopDefaultMode);
  }
}

- (void)dealloc
{
  [(BKReachability *)self stopNotifier];
  reachabilityRef = self->reachabilityRef;
  if (reachabilityRef)
  {
    CFRelease(reachabilityRef);
  }

  v4.receiver = self;
  v4.super_class = BKReachability;
  [(BKReachability *)&v4 dealloc];
}

+ (id)reachabilityWithHostName:(id)name
{
  nameCopy = name;
  v6 = SCNetworkReachabilityCreateWithName(0, [name UTF8String]);
  if (v6)
  {
    v7 = v6;
    v6 = objc_alloc_init(self);
    if (v6)
    {
      *(v6 + 2) = v7;
      *(v6 + 8) = 0;
    }

    else
    {
      CFRelease(v7);
      v6 = 0;
    }
  }

  return v6;
}

+ (id)reachabilityWithAddress:(const sockaddr_in *)address
{
  v4 = SCNetworkReachabilityCreateWithAddress(kCFAllocatorDefault, address);
  if (v4)
  {
    v5 = v4;
    v4 = objc_alloc_init(self);
    if (v4)
    {
      *(v4 + 2) = v5;
      *(v4 + 8) = 0;
    }

    else
    {
      CFRelease(v5);
      v4 = 0;
    }
  }

  return v4;
}

+ (id)reachabilityForInternetConnection
{
  v4[1] = 0;
  v4[0] = 528;
  v2 = [self reachabilityWithAddress:v4];

  return v2;
}

+ (id)reachabilityForLocalWiFi
{
  v4[1] = 0;
  v4[0] = 0xFEA900000210;
  v2 = [self reachabilityWithAddress:v4];
  if (v2)
  {
    v2[8] = 1;
  }

  return v2;
}

- (int)networkStatusForFlags:(unsigned int)flags
{
  v3 = ((flags >> 2) & 1) == 0;
  if ((flags & 0x10) == 0 && (flags & 0x28) != 0)
  {
    v3 = 1;
  }

  if ((flags & 0x40000) != 0)
  {
    v3 = 2;
  }

  if ((flags & 2) != 0)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

- (int)currentReachabilityStatus
{
  flags = 0;
  result = SCNetworkReachabilityGetFlags(self->reachabilityRef, &flags);
  if (result)
  {
    if (self->localWiFiRef)
    {
      return [(BKReachability *)self localWiFiStatusForFlags:flags];
    }

    else
    {
      return [(BKReachability *)self networkStatusForFlags:flags];
    }
  }

  return result;
}

+ (void)_updateIsOffline
{
  v2 = +[BKReachability sharedReachabilityForInternetConnection];
  byte_33F460 = [v2 currentReachabilityStatus] == 0;
}

+ (id)sharedReachabilityForInternetConnection
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_14CFAC;
  block[3] = &unk_2C7CA8;
  block[4] = self;
  if (qword_345F70 != -1)
  {
    dispatch_once(&qword_345F70, block);
  }

  v2 = qword_345F68;

  return v2;
}

@end