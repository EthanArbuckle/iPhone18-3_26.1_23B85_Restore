@interface MTRDoorLockClusterLockUserChangeEvent
- (MTRDoorLockClusterLockUserChangeEvent)init;
- (id)copyWithZone:(_NSZone *)a3;
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

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(MTRDoorLockClusterLockUserChangeEvent);
  v5 = [(MTRDoorLockClusterLockUserChangeEvent *)self lockDataType];
  [(MTRDoorLockClusterLockUserChangeEvent *)v4 setLockDataType:v5];

  v6 = [(MTRDoorLockClusterLockUserChangeEvent *)self dataOperationType];
  [(MTRDoorLockClusterLockUserChangeEvent *)v4 setDataOperationType:v6];

  v7 = [(MTRDoorLockClusterLockUserChangeEvent *)self operationSource];
  [(MTRDoorLockClusterLockUserChangeEvent *)v4 setOperationSource:v7];

  v8 = [(MTRDoorLockClusterLockUserChangeEvent *)self userIndex];
  [(MTRDoorLockClusterLockUserChangeEvent *)v4 setUserIndex:v8];

  v9 = [(MTRDoorLockClusterLockUserChangeEvent *)self fabricIndex];
  [(MTRDoorLockClusterLockUserChangeEvent *)v4 setFabricIndex:v9];

  v10 = [(MTRDoorLockClusterLockUserChangeEvent *)self sourceNode];
  [(MTRDoorLockClusterLockUserChangeEvent *)v4 setSourceNode:v10];

  v11 = [(MTRDoorLockClusterLockUserChangeEvent *)self dataIndex];
  [(MTRDoorLockClusterLockUserChangeEvent *)v4 setDataIndex:v11];

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