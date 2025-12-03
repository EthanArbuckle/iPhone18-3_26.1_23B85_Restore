@interface MTRDoorLockClusterLockUserChangeEvent
- (MTRDoorLockClusterLockUserChangeEvent)init;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
@end

@implementation MTRDoorLockClusterLockUserChangeEvent

- (MTRDoorLockClusterLockUserChangeEvent)init
{
  v12.receiver = self;
  v12.super_class = MTRDoorLockClusterLockUserChangeEvent;
  v2 = [(MTRDoorLockClusterLockUserChangeEvent *)&v12 init];
  v3 = v2;
  if (v2)
  {
    lockDataType = v2->_lockDataType;
    v2->_lockDataType = &unk_284C3E588;

    dataOperationType = v3->_dataOperationType;
    v3->_dataOperationType = &unk_284C3E588;

    operationSource = v3->_operationSource;
    v3->_operationSource = &unk_284C3E588;

    userIndex = v3->_userIndex;
    v3->_userIndex = 0;

    fabricIndex = v3->_fabricIndex;
    v3->_fabricIndex = 0;

    sourceNode = v3->_sourceNode;
    v3->_sourceNode = 0;

    dataIndex = v3->_dataIndex;
    v3->_dataIndex = 0;
  }

  return v3;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(MTRDoorLockClusterLockUserChangeEvent);
  lockDataType = [(MTRDoorLockClusterLockUserChangeEvent *)self lockDataType];
  [(MTRDoorLockClusterLockUserChangeEvent *)v4 setLockDataType:lockDataType];

  dataOperationType = [(MTRDoorLockClusterLockUserChangeEvent *)self dataOperationType];
  [(MTRDoorLockClusterLockUserChangeEvent *)v4 setDataOperationType:dataOperationType];

  operationSource = [(MTRDoorLockClusterLockUserChangeEvent *)self operationSource];
  [(MTRDoorLockClusterLockUserChangeEvent *)v4 setOperationSource:operationSource];

  userIndex = [(MTRDoorLockClusterLockUserChangeEvent *)self userIndex];
  [(MTRDoorLockClusterLockUserChangeEvent *)v4 setUserIndex:userIndex];

  fabricIndex = [(MTRDoorLockClusterLockUserChangeEvent *)self fabricIndex];
  [(MTRDoorLockClusterLockUserChangeEvent *)v4 setFabricIndex:fabricIndex];

  sourceNode = [(MTRDoorLockClusterLockUserChangeEvent *)self sourceNode];
  [(MTRDoorLockClusterLockUserChangeEvent *)v4 setSourceNode:sourceNode];

  dataIndex = [(MTRDoorLockClusterLockUserChangeEvent *)self dataIndex];
  [(MTRDoorLockClusterLockUserChangeEvent *)v4 setDataIndex:dataIndex];

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@: lockDataType:%@ dataOperationType:%@; operationSource:%@; userIndex:%@; fabricIndex:%@; sourceNode:%@; dataIndex:%@; >", v5, self->_lockDataType, self->_dataOperationType, self->_operationSource, self->_userIndex, self->_fabricIndex, self->_sourceNode, self->_dataIndex];;

  return v6;
}

@end