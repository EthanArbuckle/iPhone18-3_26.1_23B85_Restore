@interface FMDBluetoothDiscoveryXPCProxy
- (void)_didEndDiscoveryWithError:(id)a3;
- (void)didDiscoverDevice:(id)a3;
- (void)didEndDiscoveryWithError:(id)a3;
- (void)didLoseDevice:(id)a3;
- (void)startDiscovery;
- (void)stopDiscovery;
@end

@implementation FMDBluetoothDiscoveryXPCProxy

- (void)startDiscovery
{
  v3 = [(FMDBluetoothDiscoveryXPCProxy *)self connection];
  v4 = v3;
  if (v3 && [v3 state] == 1)
  {
    v5 = v4;
  }

  else
  {
    v6 = [FMNSXPCConnection alloc];
    v7 = +[FMNSXPCConnectionConfiguration btDiscoveryConfiguration];
    v5 = [v6 initWithConfiguration:v7 exportedObject:self];

    objc_initWeak(&location, self);
    v9 = _NSConcreteStackBlock;
    v10 = 3221225472;
    v11 = sub_10000C8F4;
    v12 = &unk_10001D580;
    objc_copyWeak(&v13, &location);
    [v5 addFailureBlock:&v9];
    [(FMDBluetoothDiscoveryXPCProxy *)self setConnection:v5, v9, v10, v11, v12];
    objc_destroyWeak(&v13);
    objc_destroyWeak(&location);
  }

  v8 = [v5 remoteObjectProxy];
  [v8 startDiscovery];
}

- (void)stopDiscovery
{
  v2 = [(FMDBluetoothDiscoveryXPCProxy *)self connection];
  if (v2)
  {
    v4 = v2;
    v3 = [v2 remoteObjectProxy];
    [v3 stopDiscovery];

    v2 = v4;
  }
}

- (void)didEndDiscoveryWithError:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = sub_100003BEC();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_10000DF34(v4, v5);
    }
  }

  [(FMDBluetoothDiscoveryXPCProxy *)self _didEndDiscoveryWithError:v4];
}

- (void)didDiscoverDevice:(id)a3
{
  v6 = a3;
  v4 = [(FMDBluetoothDiscoveryXPCProxy *)self didDiscoverDevice];

  if (v4)
  {
    v5 = [(FMDBluetoothDiscoveryXPCProxy *)self didDiscoverDevice];
    (v5)[2](v5, v6);
  }
}

- (void)didLoseDevice:(id)a3
{
  v6 = a3;
  v4 = [(FMDBluetoothDiscoveryXPCProxy *)self didLoseDevice];

  if (v4)
  {
    v5 = [(FMDBluetoothDiscoveryXPCProxy *)self didLoseDevice];
    (v5)[2](v5, v6);
  }
}

- (void)_didEndDiscoveryWithError:(id)a3
{
  v6 = a3;
  v4 = [(FMDBluetoothDiscoveryXPCProxy *)self didEndDiscovery];
  v5 = v4;
  if (v4)
  {
    (*(v4 + 16))(v4, v6);
  }
}

@end