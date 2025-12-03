@interface MTRDoorLockClusterAppleAliroCredentialStruct
- (MTRDoorLockClusterAppleAliroCredentialStruct)init;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
@end

@implementation MTRDoorLockClusterAppleAliroCredentialStruct

- (MTRDoorLockClusterAppleAliroCredentialStruct)init
{
  v7.receiver = self;
  v7.super_class = MTRDoorLockClusterAppleAliroCredentialStruct;
  v2 = [(MTRDoorLockClusterAppleAliroCredentialStruct *)&v7 init];
  v3 = v2;
  if (v2)
  {
    credentialType = v2->_credentialType;
    v2->_credentialType = &unk_284C3E588;

    credentialIndex = v3->_credentialIndex;
    v3->_credentialIndex = &unk_284C3E588;
  }

  return v3;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(MTRDoorLockClusterAppleAliroCredentialStruct);
  credentialType = [(MTRDoorLockClusterAppleAliroCredentialStruct *)self credentialType];
  [(MTRDoorLockClusterAppleAliroCredentialStruct *)v4 setCredentialType:credentialType];

  credentialIndex = [(MTRDoorLockClusterAppleAliroCredentialStruct *)self credentialIndex];
  [(MTRDoorLockClusterAppleAliroCredentialStruct *)v4 setCredentialIndex:credentialIndex];

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@: credentialType:%@ credentialIndex:%@; >", v5, self->_credentialType, self->_credentialIndex];;

  return v6;
}

@end