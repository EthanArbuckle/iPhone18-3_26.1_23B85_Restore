@interface MTRWiFiNetworkDiagnosticsClusterDisconnectionEvent
- (MTRWiFiNetworkDiagnosticsClusterDisconnectionEvent)init;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
@end

@implementation MTRWiFiNetworkDiagnosticsClusterDisconnectionEvent

- (MTRWiFiNetworkDiagnosticsClusterDisconnectionEvent)init
{
  v6.receiver = self;
  v6.super_class = MTRWiFiNetworkDiagnosticsClusterDisconnectionEvent;
  v2 = [(MTRWiFiNetworkDiagnosticsClusterDisconnectionEvent *)&v6 init];
  v3 = v2;
  if (v2)
  {
    reasonCode = v2->_reasonCode;
    v2->_reasonCode = &unk_284C3E588;
  }

  return v3;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(MTRWiFiNetworkDiagnosticsClusterDisconnectionEvent);
  v5 = [(MTRWiFiNetworkDiagnosticsClusterDisconnectionEvent *)self reasonCode];
  [(MTRWiFiNetworkDiagnosticsClusterDisconnectionEvent *)v4 setReasonCode:v5];

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@: reasonCode:%@ >", v5, self->_reasonCode];;

  return v6;
}

@end