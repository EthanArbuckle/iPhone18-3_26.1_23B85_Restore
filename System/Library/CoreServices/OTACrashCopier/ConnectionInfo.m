@interface ConnectionInfo
- (ConnectionInfo)init;
- (void)dealloc;
@end

@implementation ConnectionInfo

- (ConnectionInfo)init
{
  v11.receiver = self;
  v11.super_class = ConnectionInfo;
  v2 = [(ConnectionInfo *)&v11 init];
  if (v2)
  {
    address = xmmword_1000030C0;
    v3 = SCNetworkReachabilityCreateWithAddress(0, &address);
    v2->_reachabilityRef = v3;
    context.version = 0;
    context.info = v2;
    context.retain = 0;
    context.release = 0;
    context.copyDescription = &CFCopyDescription;
    SCNetworkReachabilitySetCallback(v3, sub_1000015EC, &context);
    reachabilityRef = v2->_reachabilityRef;
    Main = CFRunLoopGetMain();
    if (!SCNetworkReachabilityScheduleWithRunLoop(reachabilityRef, Main, kCFRunLoopDefaultMode) && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v9) = 0;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Failed to schedule reachability monitor", &v9, 2u);
    }

    v9 = 0;
    if (SCNetworkReachabilityGetFlags(v2->_reachabilityRef, &v9))
    {
      if ((v9 & 0x40000) != 0)
      {
        v6 = @"cellular";
      }

      else
      {
        v6 = @"wifi";
      }

      if ((v9 & 6) == 2)
      {
        v7 = v6;
      }

      else
      {
        v7 = @"<none>";
      }

      [(ConnectionInfo *)v2 reachabilityCallback:v7];
    }
  }

  return v2;
}

- (void)dealloc
{
  reachabilityRef = self->_reachabilityRef;
  if (reachabilityRef)
  {
    CFRelease(reachabilityRef);
  }

  v4.receiver = self;
  v4.super_class = ConnectionInfo;
  [(ConnectionInfo *)&v4 dealloc];
}

@end