@interface MTRDoorLockClusterLockOperationEvent
- (MTRDoorLockClusterLockOperationEvent)init;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
@end

@implementation MTRDoorLockClusterLockOperationEvent

- (MTRDoorLockClusterLockOperationEvent)init
{
  v11.receiver = self;
  v11.super_class = MTRDoorLockClusterLockOperationEvent;
  v2 = [(MTRDoorLockClusterLockOperationEvent *)&v11 init];
  v3 = v2;
  if (v2)
  {
    lockOperationType = v2->_lockOperationType;
    v2->_lockOperationType = &unk_284C3E588;

    operationSource = v3->_operationSource;
    v3->_operationSource = &unk_284C3E588;

    userIndex = v3->_userIndex;
    v3->_userIndex = 0;

    fabricIndex = v3->_fabricIndex;
    v3->_fabricIndex = 0;

    sourceNode = v3->_sourceNode;
    v3->_sourceNode = 0;

    credentials = v3->_credentials;
    v3->_credentials = 0;
  }

  return v3;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(MTRDoorLockClusterLockOperationEvent);
  lockOperationType = [(MTRDoorLockClusterLockOperationEvent *)self lockOperationType];
  [(MTRDoorLockClusterLockOperationEvent *)v4 setLockOperationType:lockOperationType];

  operationSource = [(MTRDoorLockClusterLockOperationEvent *)self operationSource];
  [(MTRDoorLockClusterLockOperationEvent *)v4 setOperationSource:operationSource];

  userIndex = [(MTRDoorLockClusterLockOperationEvent *)self userIndex];
  [(MTRDoorLockClusterLockOperationEvent *)v4 setUserIndex:userIndex];

  fabricIndex = [(MTRDoorLockClusterLockOperationEvent *)self fabricIndex];
  [(MTRDoorLockClusterLockOperationEvent *)v4 setFabricIndex:fabricIndex];

  sourceNode = [(MTRDoorLockClusterLockOperationEvent *)self sourceNode];
  [(MTRDoorLockClusterLockOperationEvent *)v4 setSourceNode:sourceNode];

  credentials = [(MTRDoorLockClusterLockOperationEvent *)self credentials];
  [(MTRDoorLockClusterLockOperationEvent *)v4 setCredentials:credentials];

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@: lockOperationType:%@ operationSource:%@; userIndex:%@; fabricIndex:%@; sourceNode:%@; credentials:%@; >", v5, self->_lockOperationType, self->_operationSource, self->_userIndex, self->_fabricIndex, self->_sourceNode, self->_credentials];;

  return v6;
}

@end