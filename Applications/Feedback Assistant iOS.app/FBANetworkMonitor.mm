@interface FBANetworkMonitor
+ (FBANetworkMonitor)sharedInstance;
- (BOOL)_isConnectedToCellNetwork;
- (BOOL)shouldShowWaitingOnWifi;
- (FBANetworkMonitor)init;
- (FBANetworkMonitorDelegate)delegate;
- (void)dealloc;
- (void)reachabilityDidChange:(id)change;
- (void)updateCache;
@end

@implementation FBANetworkMonitor

- (FBANetworkMonitor)init
{
  v3 = +[FBKSharedConstants appleSeedURL];
  v4 = [v3 URLByAppendingPathComponent:@"sp"];
  path = [v4 path];

  v13.receiver = self;
  v13.super_class = FBANetworkMonitor;
  v6 = [(FBANetworkMonitor *)&v13 init];
  v7 = v6;
  if (v6)
  {
    v8 = path == 0;
  }

  else
  {
    v8 = 1;
  }

  if (!v8)
  {
    v9 = [(FBANetworkMonitor *)v6 reachabilityWithHost:path];
    [(FBANetworkMonitor *)v7 setReachability:v9];

    reachability = [(FBANetworkMonitor *)v7 reachability];
    [reachability startNotifier];

    v11 = +[NSNotificationCenter defaultCenter];
    [v11 addObserver:v7 selector:"reachabilityDidChange:" name:off_100108988 object:0];
  }

  return v7;
}

- (void)dealloc
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = FBANetworkMonitor;
  [(FBANetworkMonitor *)&v4 dealloc];
}

+ (FBANetworkMonitor)sharedInstance
{
  if (qword_10010AF28 != -1)
  {
    sub_100092048();
  }

  v3 = qword_10010AF20;

  return v3;
}

- (BOOL)shouldShowWaitingOnWifi
{
  v3 = +[NSUserDefaults standardUserDefaults];
  allowCellDefaultKey = [(FBANetworkMonitor *)self allowCellDefaultKey];
  v5 = [v3 BOOLForKey:allowCellDefaultKey] ^ 1;

  return v5 & [(FBANetworkMonitor *)self isConnectedToCellNetwork];
}

- (void)reachabilityDidChange:(id)change
{
  reachability = [(FBANetworkMonitor *)self reachability];
  currentReachabilityStatus = [reachability currentReachabilityStatus];

  if (currentReachabilityStatus == 2)
  {
    [(FBANetworkMonitor *)self setIsConnectedToCellNetwork:1];
    delegate = [(FBANetworkMonitor *)self delegate];

    if (!delegate)
    {
      return;
    }

    delegate2 = [(FBANetworkMonitor *)self delegate];
    [delegate2 connectionDidChangeToCellular];
  }

  else
  {
    if (currentReachabilityStatus != 1)
    {
      return;
    }

    [(FBANetworkMonitor *)self setIsConnectedToCellNetwork:0];
    delegate3 = [(FBANetworkMonitor *)self delegate];

    if (!delegate3)
    {
      return;
    }

    delegate2 = [(FBANetworkMonitor *)self delegate];
    [delegate2 connectionDidChangeToWifi];
  }
}

- (BOOL)_isConnectedToCellNetwork
{
  reachability = [(FBANetworkMonitor *)self reachability];
  currentReachabilityStatus = [reachability currentReachabilityStatus];

  return currentReachabilityStatus == 2;
}

- (void)updateCache
{
  _isConnectedToCellNetwork = [(FBANetworkMonitor *)self _isConnectedToCellNetwork];

  [(FBANetworkMonitor *)self setIsConnectedToCellNetwork:_isConnectedToCellNetwork];
}

- (FBANetworkMonitorDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end