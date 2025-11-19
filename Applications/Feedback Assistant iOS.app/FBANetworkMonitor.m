@interface FBANetworkMonitor
+ (FBANetworkMonitor)sharedInstance;
- (BOOL)_isConnectedToCellNetwork;
- (BOOL)shouldShowWaitingOnWifi;
- (FBANetworkMonitor)init;
- (FBANetworkMonitorDelegate)delegate;
- (void)dealloc;
- (void)reachabilityDidChange:(id)a3;
- (void)updateCache;
@end

@implementation FBANetworkMonitor

- (FBANetworkMonitor)init
{
  v3 = +[FBKSharedConstants appleSeedURL];
  v4 = [v3 URLByAppendingPathComponent:@"sp"];
  v5 = [v4 path];

  v13.receiver = self;
  v13.super_class = FBANetworkMonitor;
  v6 = [(FBANetworkMonitor *)&v13 init];
  v7 = v6;
  if (v6)
  {
    v8 = v5 == 0;
  }

  else
  {
    v8 = 1;
  }

  if (!v8)
  {
    v9 = [(FBANetworkMonitor *)v6 reachabilityWithHost:v5];
    [(FBANetworkMonitor *)v7 setReachability:v9];

    v10 = [(FBANetworkMonitor *)v7 reachability];
    [v10 startNotifier];

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
  v4 = [(FBANetworkMonitor *)self allowCellDefaultKey];
  v5 = [v3 BOOLForKey:v4] ^ 1;

  return v5 & [(FBANetworkMonitor *)self isConnectedToCellNetwork];
}

- (void)reachabilityDidChange:(id)a3
{
  v4 = [(FBANetworkMonitor *)self reachability];
  v5 = [v4 currentReachabilityStatus];

  if (v5 == 2)
  {
    [(FBANetworkMonitor *)self setIsConnectedToCellNetwork:1];
    v7 = [(FBANetworkMonitor *)self delegate];

    if (!v7)
    {
      return;
    }

    v8 = [(FBANetworkMonitor *)self delegate];
    [v8 connectionDidChangeToCellular];
  }

  else
  {
    if (v5 != 1)
    {
      return;
    }

    [(FBANetworkMonitor *)self setIsConnectedToCellNetwork:0];
    v6 = [(FBANetworkMonitor *)self delegate];

    if (!v6)
    {
      return;
    }

    v8 = [(FBANetworkMonitor *)self delegate];
    [v8 connectionDidChangeToWifi];
  }
}

- (BOOL)_isConnectedToCellNetwork
{
  v2 = [(FBANetworkMonitor *)self reachability];
  v3 = [v2 currentReachabilityStatus];

  return v3 == 2;
}

- (void)updateCache
{
  v3 = [(FBANetworkMonitor *)self _isConnectedToCellNetwork];

  [(FBANetworkMonitor *)self setIsConnectedToCellNetwork:v3];
}

- (FBANetworkMonitorDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end