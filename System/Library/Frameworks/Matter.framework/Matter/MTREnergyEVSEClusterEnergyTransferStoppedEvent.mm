@interface MTREnergyEVSEClusterEnergyTransferStoppedEvent
- (MTREnergyEVSEClusterEnergyTransferStoppedEvent)init;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
@end

@implementation MTREnergyEVSEClusterEnergyTransferStoppedEvent

- (MTREnergyEVSEClusterEnergyTransferStoppedEvent)init
{
  v10.receiver = self;
  v10.super_class = MTREnergyEVSEClusterEnergyTransferStoppedEvent;
  v2 = [(MTREnergyEVSEClusterEnergyTransferStoppedEvent *)&v10 init];
  v3 = v2;
  if (v2)
  {
    sessionID = v2->_sessionID;
    v2->_sessionID = &unk_284C3E588;

    state = v3->_state;
    v3->_state = &unk_284C3E588;

    reason = v3->_reason;
    v3->_reason = &unk_284C3E588;

    energyTransferred = v3->_energyTransferred;
    v3->_energyTransferred = &unk_284C3E588;

    energyDischarged = v3->_energyDischarged;
    v3->_energyDischarged = 0;
  }

  return v3;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(MTREnergyEVSEClusterEnergyTransferStoppedEvent);
  sessionID = [(MTREnergyEVSEClusterEnergyTransferStoppedEvent *)self sessionID];
  [(MTREnergyEVSEClusterEnergyTransferStoppedEvent *)v4 setSessionID:sessionID];

  state = [(MTREnergyEVSEClusterEnergyTransferStoppedEvent *)self state];
  [(MTREnergyEVSEClusterEnergyTransferStoppedEvent *)v4 setState:state];

  reason = [(MTREnergyEVSEClusterEnergyTransferStoppedEvent *)self reason];
  [(MTREnergyEVSEClusterEnergyTransferStoppedEvent *)v4 setReason:reason];

  energyTransferred = [(MTREnergyEVSEClusterEnergyTransferStoppedEvent *)self energyTransferred];
  [(MTREnergyEVSEClusterEnergyTransferStoppedEvent *)v4 setEnergyTransferred:energyTransferred];

  energyDischarged = [(MTREnergyEVSEClusterEnergyTransferStoppedEvent *)self energyDischarged];
  [(MTREnergyEVSEClusterEnergyTransferStoppedEvent *)v4 setEnergyDischarged:energyDischarged];

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@: sessionID:%@ state:%@; reason:%@; energyTransferred:%@; energyDischarged:%@; >", v5, self->_sessionID, self->_state, self->_reason, self->_energyTransferred, self->_energyDischarged];;

  return v6;
}

@end