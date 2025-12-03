@interface MTROTASoftwareUpdateRequestorClusterStateTransitionEvent
- (MTROTASoftwareUpdateRequestorClusterStateTransitionEvent)init;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
@end

@implementation MTROTASoftwareUpdateRequestorClusterStateTransitionEvent

- (MTROTASoftwareUpdateRequestorClusterStateTransitionEvent)init
{
  v9.receiver = self;
  v9.super_class = MTROTASoftwareUpdateRequestorClusterStateTransitionEvent;
  v2 = [(MTROTASoftwareUpdateRequestorClusterStateTransitionEvent *)&v9 init];
  v3 = v2;
  if (v2)
  {
    previousState = v2->_previousState;
    v2->_previousState = &unk_284C3E588;

    newState = v3->_newState;
    v3->_newState = &unk_284C3E588;

    reason = v3->_reason;
    v3->_reason = &unk_284C3E588;

    targetSoftwareVersion = v3->_targetSoftwareVersion;
    v3->_targetSoftwareVersion = 0;
  }

  return v3;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(MTROTASoftwareUpdateRequestorClusterStateTransitionEvent);
  previousState = [(MTROTASoftwareUpdateRequestorClusterStateTransitionEvent *)self previousState];
  [(MTROTASoftwareUpdateRequestorClusterStateTransitionEvent *)v4 setPreviousState:previousState];

  getNewState = [(MTROTASoftwareUpdateRequestorClusterStateTransitionEvent *)self getNewState];
  [(MTROTASoftwareUpdateRequestorClusterStateTransitionEvent *)v4 setNewState:getNewState];

  reason = [(MTROTASoftwareUpdateRequestorClusterStateTransitionEvent *)self reason];
  [(MTROTASoftwareUpdateRequestorClusterStateTransitionEvent *)v4 setReason:reason];

  targetSoftwareVersion = [(MTROTASoftwareUpdateRequestorClusterStateTransitionEvent *)self targetSoftwareVersion];
  [(MTROTASoftwareUpdateRequestorClusterStateTransitionEvent *)v4 setTargetSoftwareVersion:targetSoftwareVersion];

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@: previousState:%@ newState:%@; reason:%@; targetSoftwareVersion:%@; >", v5, self->_previousState, self->_newState, self->_reason, self->_targetSoftwareVersion];;

  return v6;
}

@end