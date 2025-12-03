@interface MTRDoorLockClusterLockOperationErrorEvent
- (MTRDoorLockClusterLockOperationErrorEvent)init;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
@end

@implementation MTRDoorLockClusterLockOperationErrorEvent

- (MTRDoorLockClusterLockOperationErrorEvent)init
{
  v12.receiver = self;
  v12.super_class = MTRDoorLockClusterLockOperationErrorEvent;
  v2 = [(MTRDoorLockClusterLockOperationErrorEvent *)&v12 init];
  v3 = v2;
  if (v2)
  {
    lockOperationType = v2->_lockOperationType;
    v2->_lockOperationType = &unk_284C3E588;

    operationSource = v3->_operationSource;
    v3->_operationSource = &unk_284C3E588;

    operationError = v3->_operationError;
    v3->_operationError = &unk_284C3E588;

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
  v4 = objc_alloc_init(MTRDoorLockClusterLockOperationErrorEvent);
  lockOperationType = [(MTRDoorLockClusterLockOperationErrorEvent *)self lockOperationType];
  [(MTRDoorLockClusterLockOperationErrorEvent *)v4 setLockOperationType:lockOperationType];

  operationSource = [(MTRDoorLockClusterLockOperationErrorEvent *)self operationSource];
  [(MTRDoorLockClusterLockOperationErrorEvent *)v4 setOperationSource:operationSource];

  operationError = [(MTRDoorLockClusterLockOperationErrorEvent *)self operationError];
  [(MTRDoorLockClusterLockOperationErrorEvent *)v4 setOperationError:operationError];

  userIndex = [(MTRDoorLockClusterLockOperationErrorEvent *)self userIndex];
  [(MTRDoorLockClusterLockOperationErrorEvent *)v4 setUserIndex:userIndex];

  fabricIndex = [(MTRDoorLockClusterLockOperationErrorEvent *)self fabricIndex];
  [(MTRDoorLockClusterLockOperationErrorEvent *)v4 setFabricIndex:fabricIndex];

  sourceNode = [(MTRDoorLockClusterLockOperationErrorEvent *)self sourceNode];
  [(MTRDoorLockClusterLockOperationErrorEvent *)v4 setSourceNode:sourceNode];

  credentials = [(MTRDoorLockClusterLockOperationErrorEvent *)self credentials];
  [(MTRDoorLockClusterLockOperationErrorEvent *)v4 setCredentials:credentials];

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@: lockOperationType:%@ operationSource:%@; operationError:%@; userIndex:%@; fabricIndex:%@; sourceNode:%@; credentials:%@; >", v5, self->_lockOperationType, self->_operationSource, self->_operationError, self->_userIndex, self->_fabricIndex, self->_sourceNode, self->_credentials];;

  return v6;
}

@end