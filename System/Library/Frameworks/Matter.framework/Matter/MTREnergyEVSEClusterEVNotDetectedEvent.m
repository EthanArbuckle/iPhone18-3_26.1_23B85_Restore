@interface MTREnergyEVSEClusterEVNotDetectedEvent
- (MTREnergyEVSEClusterEVNotDetectedEvent)init;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
@end

@implementation MTREnergyEVSEClusterEVNotDetectedEvent

- (MTREnergyEVSEClusterEVNotDetectedEvent)init
{
  v10.receiver = self;
  v10.super_class = MTREnergyEVSEClusterEVNotDetectedEvent;
  v2 = [(MTREnergyEVSEClusterEVNotDetectedEvent *)&v10 init];
  v3 = v2;
  if (v2)
  {
    sessionID = v2->_sessionID;
    v2->_sessionID = &unk_284C3E588;

    state = v3->_state;
    v3->_state = &unk_284C3E588;

    sessionDuration = v3->_sessionDuration;
    v3->_sessionDuration = &unk_284C3E588;

    sessionEnergyCharged = v3->_sessionEnergyCharged;
    v3->_sessionEnergyCharged = &unk_284C3E588;

    sessionEnergyDischarged = v3->_sessionEnergyDischarged;
    v3->_sessionEnergyDischarged = 0;
  }

  return v3;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(MTREnergyEVSEClusterEVNotDetectedEvent);
  v5 = [(MTREnergyEVSEClusterEVNotDetectedEvent *)self sessionID];
  [(MTREnergyEVSEClusterEVNotDetectedEvent *)v4 setSessionID:v5];

  v6 = [(MTREnergyEVSEClusterEVNotDetectedEvent *)self state];
  [(MTREnergyEVSEClusterEVNotDetectedEvent *)v4 setState:v6];

  v7 = [(MTREnergyEVSEClusterEVNotDetectedEvent *)self sessionDuration];
  [(MTREnergyEVSEClusterEVNotDetectedEvent *)v4 setSessionDuration:v7];

  v8 = [(MTREnergyEVSEClusterEVNotDetectedEvent *)self sessionEnergyCharged];
  [(MTREnergyEVSEClusterEVNotDetectedEvent *)v4 setSessionEnergyCharged:v8];

  v9 = [(MTREnergyEVSEClusterEVNotDetectedEvent *)self sessionEnergyDischarged];
  [(MTREnergyEVSEClusterEVNotDetectedEvent *)v4 setSessionEnergyDischarged:v9];

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@: sessionID:%@ state:%@; sessionDuration:%@; sessionEnergyCharged:%@; sessionEnergyDischarged:%@; >", v5, self->_sessionID, self->_state, self->_sessionDuration, self->_sessionEnergyCharged, self->_sessionEnergyDischarged];;

  return v6;
}

@end