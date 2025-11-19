@interface MTREnergyEVSEClusterEnergyTransferStartedEvent
- (MTREnergyEVSEClusterEnergyTransferStartedEvent)init;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
@end

@implementation MTREnergyEVSEClusterEnergyTransferStartedEvent

- (MTREnergyEVSEClusterEnergyTransferStartedEvent)init
{
  v9.receiver = self;
  v9.super_class = MTREnergyEVSEClusterEnergyTransferStartedEvent;
  v2 = [(MTREnergyEVSEClusterEnergyTransferStartedEvent *)&v9 init];
  v3 = v2;
  if (v2)
  {
    sessionID = v2->_sessionID;
    v2->_sessionID = &unk_284C3E588;

    state = v3->_state;
    v3->_state = &unk_284C3E588;

    maximumCurrent = v3->_maximumCurrent;
    v3->_maximumCurrent = &unk_284C3E588;

    maximumDischargeCurrent = v3->_maximumDischargeCurrent;
    v3->_maximumDischargeCurrent = 0;
  }

  return v3;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(MTREnergyEVSEClusterEnergyTransferStartedEvent);
  v5 = [(MTREnergyEVSEClusterEnergyTransferStartedEvent *)self sessionID];
  [(MTREnergyEVSEClusterEnergyTransferStartedEvent *)v4 setSessionID:v5];

  v6 = [(MTREnergyEVSEClusterEnergyTransferStartedEvent *)self state];
  [(MTREnergyEVSEClusterEnergyTransferStartedEvent *)v4 setState:v6];

  v7 = [(MTREnergyEVSEClusterEnergyTransferStartedEvent *)self maximumCurrent];
  [(MTREnergyEVSEClusterEnergyTransferStartedEvent *)v4 setMaximumCurrent:v7];

  v8 = [(MTREnergyEVSEClusterEnergyTransferStartedEvent *)self maximumDischargeCurrent];
  [(MTREnergyEVSEClusterEnergyTransferStartedEvent *)v4 setMaximumDischargeCurrent:v8];

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@: sessionID:%@ state:%@; maximumCurrent:%@; maximumDischargeCurrent:%@; >", v5, self->_sessionID, self->_state, self->_maximumCurrent, self->_maximumDischargeCurrent];;

  return v6;
}

@end