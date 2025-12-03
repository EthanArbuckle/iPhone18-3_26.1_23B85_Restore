@interface MTRActionsClusterActionFailedEvent
- (MTRActionsClusterActionFailedEvent)init;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
@end

@implementation MTRActionsClusterActionFailedEvent

- (MTRActionsClusterActionFailedEvent)init
{
  v9.receiver = self;
  v9.super_class = MTRActionsClusterActionFailedEvent;
  v2 = [(MTRActionsClusterActionFailedEvent *)&v9 init];
  v3 = v2;
  if (v2)
  {
    actionID = v2->_actionID;
    v2->_actionID = &unk_284C3E588;

    invokeID = v3->_invokeID;
    v3->_invokeID = &unk_284C3E588;

    newState = v3->_newState;
    v3->_newState = &unk_284C3E588;

    error = v3->_error;
    v3->_error = &unk_284C3E588;
  }

  return v3;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(MTRActionsClusterActionFailedEvent);
  actionID = [(MTRActionsClusterActionFailedEvent *)self actionID];
  [(MTRActionsClusterActionFailedEvent *)v4 setActionID:actionID];

  invokeID = [(MTRActionsClusterActionFailedEvent *)self invokeID];
  [(MTRActionsClusterActionFailedEvent *)v4 setInvokeID:invokeID];

  getNewState = [(MTRActionsClusterActionFailedEvent *)self getNewState];
  [(MTRActionsClusterActionFailedEvent *)v4 setNewState:getNewState];

  error = [(MTRActionsClusterActionFailedEvent *)self error];
  [(MTRActionsClusterActionFailedEvent *)v4 setError:error];

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@: actionID:%@ invokeID:%@; newState:%@; error:%@; >", v5, self->_actionID, self->_invokeID, self->_newState, self->_error];;

  return v6;
}

@end