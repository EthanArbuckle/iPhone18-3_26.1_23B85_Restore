@interface MTRDoorLockClusterLockOperationErrorEvent
- (MTRDoorLockClusterLockOperationErrorEvent)init;
- (id)copyWithZone:(_NSZone *)a3;
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

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(MTRDoorLockClusterLockOperationErrorEvent);
  v5 = [(MTRDoorLockClusterLockOperationErrorEvent *)self lockOperationType];
  [(MTRDoorLockClusterLockOperationErrorEvent *)v4 setLockOperationType:v5];

  v6 = [(MTRDoorLockClusterLockOperationErrorEvent *)self operationSource];
  [(MTRDoorLockClusterLockOperationErrorEvent *)v4 setOperationSource:v6];

  v7 = [(MTRDoorLockClusterLockOperationErrorEvent *)self operationError];
  [(MTRDoorLockClusterLockOperationErrorEvent *)v4 setOperationError:v7];

  v8 = [(MTRDoorLockClusterLockOperationErrorEvent *)self userIndex];
  [(MTRDoorLockClusterLockOperationErrorEvent *)v4 setUserIndex:v8];

  v9 = [(MTRDoorLockClusterLockOperationErrorEvent *)self fabricIndex];
  [(MTRDoorLockClusterLockOperationErrorEvent *)v4 setFabricIndex:v9];

  v10 = [(MTRDoorLockClusterLockOperationErrorEvent *)self sourceNode];
  [(MTRDoorLockClusterLockOperationErrorEvent *)v4 setSourceNode:v10];

  v11 = [(MTRDoorLockClusterLockOperationErrorEvent *)self credentials];
  [(MTRDoorLockClusterLockOperationErrorEvent *)v4 setCredentials:v11];

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