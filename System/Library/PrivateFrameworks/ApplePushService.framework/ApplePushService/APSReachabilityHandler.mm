@interface APSReachabilityHandler
- (APSReachabilityHandler)initWithReachabilityHost:(id)host reachabilityBlock:(id)block;
- (unsigned)currentFlags;
- (void)disable;
- (void)enable;
- (void)raiseReachabilityChange;
@end

@implementation APSReachabilityHandler

- (APSReachabilityHandler)initWithReachabilityHost:(id)host reachabilityBlock:(id)block
{
  hostCopy = host;
  blockCopy = block;
  v14.receiver = self;
  v14.super_class = APSReachabilityHandler;
  v9 = [(APSReachabilityHandler *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_reachabilityHost, host);
    v11 = objc_retainBlock(blockCopy);
    reachabilityBlock = v10->_reachabilityBlock;
    v10->_reachabilityBlock = v11;
  }

  return v10;
}

- (unsigned)currentFlags
{
  flags = 0;
  SCNetworkReachabilityGetFlags(self->_connectionReachability, &flags);
  return flags;
}

- (void)enable
{
  if (!self->_connectionReachability)
  {
    v9 = v2;
    v10 = v3;
    v5 = SCNetworkReachabilityCreateWithName(kCFAllocatorDefault, [(NSString *)self->_reachabilityHost UTF8String]);
    self->_connectionReachability = v5;
    v8.version = 0;
    memset(&v8.retain, 0, 24);
    v8.info = self;
    SCNetworkReachabilitySetCallback(v5, sub_100085658, &v8);
    connectionReachability = self->_connectionReachability;
    v7 = +[NSRunLoop currentRunLoop];
    SCNetworkReachabilityScheduleWithRunLoop(connectionReachability, [v7 getCFRunLoop], NSDefaultRunLoopMode);

    SCNetworkReachabilityGetFlags(self->_connectionReachability, &self->_lastReachabilityFlags);
  }
}

- (void)disable
{
  connectionReachability = self->_connectionReachability;
  if (connectionReachability)
  {
    v4 = +[NSRunLoop currentRunLoop];
    SCNetworkReachabilityUnscheduleFromRunLoop(connectionReachability, [v4 getCFRunLoop], NSDefaultRunLoopMode);

    CFRelease(self->_connectionReachability);
    self->_connectionReachability = 0;
  }
}

- (void)raiseReachabilityChange
{
  flags = 0;
  self->_pendingReachabilityChange = 0;
  SCNetworkReachabilityGetFlags(self->_connectionReachability, &flags);
  [(APSReachabilityHandler *)self noteReachabilityChange:flags];
}

@end