@interface MTRActionsClusterActionStruct
- (MTRActionsClusterActionStruct)init;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
@end

@implementation MTRActionsClusterActionStruct

- (MTRActionsClusterActionStruct)init
{
  v11.receiver = self;
  v11.super_class = MTRActionsClusterActionStruct;
  v2 = [(MTRActionsClusterActionStruct *)&v11 init];
  v3 = v2;
  if (v2)
  {
    actionID = v2->_actionID;
    v2->_actionID = &unk_284C3E588;

    name = v3->_name;
    v3->_name = &stru_284BD0DD8;

    type = v3->_type;
    v3->_type = &unk_284C3E588;

    endpointListID = v3->_endpointListID;
    v3->_endpointListID = &unk_284C3E588;

    supportedCommands = v3->_supportedCommands;
    v3->_supportedCommands = &unk_284C3E588;

    state = v3->_state;
    v3->_state = &unk_284C3E588;
  }

  return v3;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(MTRActionsClusterActionStruct);
  actionID = [(MTRActionsClusterActionStruct *)self actionID];
  [(MTRActionsClusterActionStruct *)v4 setActionID:actionID];

  name = [(MTRActionsClusterActionStruct *)self name];
  [(MTRActionsClusterActionStruct *)v4 setName:name];

  type = [(MTRActionsClusterActionStruct *)self type];
  [(MTRActionsClusterActionStruct *)v4 setType:type];

  endpointListID = [(MTRActionsClusterActionStruct *)self endpointListID];
  [(MTRActionsClusterActionStruct *)v4 setEndpointListID:endpointListID];

  supportedCommands = [(MTRActionsClusterActionStruct *)self supportedCommands];
  [(MTRActionsClusterActionStruct *)v4 setSupportedCommands:supportedCommands];

  state = [(MTRActionsClusterActionStruct *)self state];
  [(MTRActionsClusterActionStruct *)v4 setState:state];

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@: actionID:%@ name:%@; type:%@; endpointListID:%@; supportedCommands:%@; state:%@; >", v5, self->_actionID, self->_name, self->_type, self->_endpointListID, self->_supportedCommands, self->_state];;

  return v6;
}

@end