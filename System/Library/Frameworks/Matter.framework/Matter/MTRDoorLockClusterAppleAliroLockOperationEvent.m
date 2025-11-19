@interface MTRDoorLockClusterAppleAliroLockOperationEvent
- (MTRDoorLockClusterAppleAliroLockOperationEvent)init;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
@end

@implementation MTRDoorLockClusterAppleAliroLockOperationEvent

- (MTRDoorLockClusterAppleAliroLockOperationEvent)init
{
  v9.receiver = self;
  v9.super_class = MTRDoorLockClusterAppleAliroLockOperationEvent;
  v2 = [(MTRDoorLockClusterAppleAliroLockOperationEvent *)&v9 init];
  v3 = v2;
  if (v2)
  {
    lockOperationType = v2->_lockOperationType;
    v2->_lockOperationType = &unk_284C3E588;

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
  v4 = objc_alloc_init(MTRDoorLockClusterAppleAliroLockOperationEvent);
  v5 = [(MTRDoorLockClusterAppleAliroLockOperationEvent *)self lockOperationType];
  [(MTRDoorLockClusterAppleAliroLockOperationEvent *)v4 setLockOperationType:v5];

  v6 = [(MTRDoorLockClusterAppleAliroLockOperationEvent *)self userIndex];
  [(MTRDoorLockClusterAppleAliroLockOperationEvent *)v4 setUserIndex:v6];

  v7 = [(MTRDoorLockClusterAppleAliroLockOperationEvent *)self fabricIndex];
  [(MTRDoorLockClusterAppleAliroLockOperationEvent *)v4 setFabricIndex:v7];

  v8 = [(MTRDoorLockClusterAppleAliroLockOperationEvent *)self credentials];
  [(MTRDoorLockClusterAppleAliroLockOperationEvent *)v4 setCredentials:v8];

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@: lockOperationType:%@ userIndex:%@; fabricIndex:%@; credentials:%@; >", v5, self->_lockOperationType, self->_userIndex, self->_fabricIndex, self->_credentials];;

  return v6;
}

@end