@interface MTREnergyEVSEClusterFaultEvent
- (MTREnergyEVSEClusterFaultEvent)init;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
@end

@implementation MTREnergyEVSEClusterFaultEvent

- (MTREnergyEVSEClusterFaultEvent)init
{
  v9.receiver = self;
  v9.super_class = MTREnergyEVSEClusterFaultEvent;
  v2 = [(MTREnergyEVSEClusterFaultEvent *)&v9 init];
  v3 = v2;
  if (v2)
  {
    sessionID = v2->_sessionID;
    v2->_sessionID = 0;

    state = v3->_state;
    v3->_state = &unk_284C3E588;

    faultStatePreviousState = v3->_faultStatePreviousState;
    v3->_faultStatePreviousState = &unk_284C3E588;

    faultStateCurrentState = v3->_faultStateCurrentState;
    v3->_faultStateCurrentState = &unk_284C3E588;
  }

  return v3;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(MTREnergyEVSEClusterFaultEvent);
  sessionID = [(MTREnergyEVSEClusterFaultEvent *)self sessionID];
  [(MTREnergyEVSEClusterFaultEvent *)v4 setSessionID:sessionID];

  state = [(MTREnergyEVSEClusterFaultEvent *)self state];
  [(MTREnergyEVSEClusterFaultEvent *)v4 setState:state];

  faultStatePreviousState = [(MTREnergyEVSEClusterFaultEvent *)self faultStatePreviousState];
  [(MTREnergyEVSEClusterFaultEvent *)v4 setFaultStatePreviousState:faultStatePreviousState];

  faultStateCurrentState = [(MTREnergyEVSEClusterFaultEvent *)self faultStateCurrentState];
  [(MTREnergyEVSEClusterFaultEvent *)v4 setFaultStateCurrentState:faultStateCurrentState];

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@: sessionID:%@ state:%@; faultStatePreviousState:%@; faultStateCurrentState:%@; >", v5, self->_sessionID, self->_state, self->_faultStatePreviousState, self->_faultStateCurrentState];;

  return v6;
}

@end