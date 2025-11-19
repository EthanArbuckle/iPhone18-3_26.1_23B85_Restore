@interface MTRThreadNetworkDiagnosticsClusterConnectionStatusEvent
- (MTRThreadNetworkDiagnosticsClusterConnectionStatusEvent)init;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
@end

@implementation MTRThreadNetworkDiagnosticsClusterConnectionStatusEvent

- (MTRThreadNetworkDiagnosticsClusterConnectionStatusEvent)init
{
  v6.receiver = self;
  v6.super_class = MTRThreadNetworkDiagnosticsClusterConnectionStatusEvent;
  v2 = [(MTRThreadNetworkDiagnosticsClusterConnectionStatusEvent *)&v6 init];
  v3 = v2;
  if (v2)
  {
    connectionStatus = v2->_connectionStatus;
    v2->_connectionStatus = &unk_284C3E588;
  }

  return v3;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(MTRThreadNetworkDiagnosticsClusterConnectionStatusEvent);
  v5 = [(MTRThreadNetworkDiagnosticsClusterConnectionStatusEvent *)self connectionStatus];
  [(MTRThreadNetworkDiagnosticsClusterConnectionStatusEvent *)v4 setConnectionStatus:v5];

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@: connectionStatus:%@ >", v5, self->_connectionStatus];;

  return v6;
}

@end