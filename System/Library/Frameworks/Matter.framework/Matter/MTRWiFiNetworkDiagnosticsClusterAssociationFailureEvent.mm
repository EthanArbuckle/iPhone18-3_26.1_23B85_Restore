@interface MTRWiFiNetworkDiagnosticsClusterAssociationFailureEvent
- (MTRWiFiNetworkDiagnosticsClusterAssociationFailureEvent)init;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
@end

@implementation MTRWiFiNetworkDiagnosticsClusterAssociationFailureEvent

- (MTRWiFiNetworkDiagnosticsClusterAssociationFailureEvent)init
{
  v7.receiver = self;
  v7.super_class = MTRWiFiNetworkDiagnosticsClusterAssociationFailureEvent;
  v2 = [(MTRWiFiNetworkDiagnosticsClusterAssociationFailureEvent *)&v7 init];
  v3 = v2;
  if (v2)
  {
    associationFailureCause = v2->_associationFailureCause;
    v2->_associationFailureCause = &unk_284C3E588;

    status = v3->_status;
    v3->_status = &unk_284C3E588;
  }

  return v3;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(MTRWiFiNetworkDiagnosticsClusterAssociationFailureEvent);
  associationFailureCause = [(MTRWiFiNetworkDiagnosticsClusterAssociationFailureEvent *)self associationFailureCause];
  [(MTRWiFiNetworkDiagnosticsClusterAssociationFailureEvent *)v4 setAssociationFailureCause:associationFailureCause];

  status = [(MTRWiFiNetworkDiagnosticsClusterAssociationFailureEvent *)self status];
  [(MTRWiFiNetworkDiagnosticsClusterAssociationFailureEvent *)v4 setStatus:status];

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@: associationFailureCause:%@ status:%@; >", v5, self->_associationFailureCause, self->_status];;

  return v6;
}

@end