@interface MTRActionsClusterStateChangedEvent
- (MTRActionsClusterStateChangedEvent)init;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
@end

@implementation MTRActionsClusterStateChangedEvent

- (MTRActionsClusterStateChangedEvent)init
{
  v8.receiver = self;
  v8.super_class = MTRActionsClusterStateChangedEvent;
  v2 = [(MTRActionsClusterStateChangedEvent *)&v8 init];
  v3 = v2;
  if (v2)
  {
    actionID = v2->_actionID;
    v2->_actionID = &unk_284C3E588;

    invokeID = v3->_invokeID;
    v3->_invokeID = &unk_284C3E588;

    newState = v3->_newState;
    v3->_newState = &unk_284C3E588;
  }

  return v3;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(MTRActionsClusterStateChangedEvent);
  v5 = [(MTRActionsClusterStateChangedEvent *)self actionID];
  [(MTRActionsClusterStateChangedEvent *)v4 setActionID:v5];

  v6 = [(MTRActionsClusterStateChangedEvent *)self invokeID];
  [(MTRActionsClusterStateChangedEvent *)v4 setInvokeID:v6];

  v7 = [(MTRActionsClusterStateChangedEvent *)self getNewState];
  [(MTRActionsClusterStateChangedEvent *)v4 setNewState:v7];

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@: actionID:%@ invokeID:%@; newState:%@; >", v5, self->_actionID, self->_invokeID, self->_newState];;

  return v6;
}

@end