@interface MTRDoorLockClusterAppleAliroLockOperationErrorEvent
- (MTRDoorLockClusterAppleAliroLockOperationErrorEvent)init;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
@end

@implementation MTRDoorLockClusterAppleAliroLockOperationErrorEvent

- (MTRDoorLockClusterAppleAliroLockOperationErrorEvent)init
{
  v10.receiver = self;
  v10.super_class = MTRDoorLockClusterAppleAliroLockOperationErrorEvent;
  v2 = [(MTRDoorLockClusterAppleAliroLockOperationErrorEvent *)&v10 init];
  v3 = v2;
  if (v2)
  {
    lockOperationType = v2->_lockOperationType;
    v2->_lockOperationType = &unk_284C3E588;

    operationError = v3->_operationError;
    v3->_operationError = &unk_284C3E588;

    userIndex = v3->_userIndex;
    v3->_userIndex = 0;

    fabricIndex = v3->_fabricIndex;
    v3->_fabricIndex = 0;

    credentials = v3->_credentials;
    v3->_credentials = 0;
  }

  return v3;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(MTRDoorLockClusterAppleAliroLockOperationErrorEvent);
  v5 = [(MTRDoorLockClusterAppleAliroLockOperationErrorEvent *)self lockOperationType];
  [(MTRDoorLockClusterAppleAliroLockOperationErrorEvent *)v4 setLockOperationType:v5];

  v6 = [(MTRDoorLockClusterAppleAliroLockOperationErrorEvent *)self operationError];
  [(MTRDoorLockClusterAppleAliroLockOperationErrorEvent *)v4 setOperationError:v6];

  v7 = [(MTRDoorLockClusterAppleAliroLockOperationErrorEvent *)self userIndex];
  [(MTRDoorLockClusterAppleAliroLockOperationErrorEvent *)v4 setUserIndex:v7];

  v8 = [(MTRDoorLockClusterAppleAliroLockOperationErrorEvent *)self fabricIndex];
  [(MTRDoorLockClusterAppleAliroLockOperationErrorEvent *)v4 setFabricIndex:v8];

  v9 = [(MTRDoorLockClusterAppleAliroLockOperationErrorEvent *)self credentials];
  [(MTRDoorLockClusterAppleAliroLockOperationErrorEvent *)v4 setCredentials:v9];

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@: lockOperationType:%@ operationError:%@; userIndex:%@; fabricIndex:%@; credentials:%@; >", v5, self->_lockOperationType, self->_operationError, self->_userIndex, self->_fabricIndex, self->_credentials];;

  return v6;
}

@end