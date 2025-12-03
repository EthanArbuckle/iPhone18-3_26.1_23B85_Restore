@interface MTRJointFabricDatastoreClusterDatastoreStatusEntryStruct
- (MTRJointFabricDatastoreClusterDatastoreStatusEntryStruct)init;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
@end

@implementation MTRJointFabricDatastoreClusterDatastoreStatusEntryStruct

- (MTRJointFabricDatastoreClusterDatastoreStatusEntryStruct)init
{
  v8.receiver = self;
  v8.super_class = MTRJointFabricDatastoreClusterDatastoreStatusEntryStruct;
  v2 = [(MTRJointFabricDatastoreClusterDatastoreStatusEntryStruct *)&v8 init];
  v3 = v2;
  if (v2)
  {
    state = v2->_state;
    v2->_state = &unk_284C3E588;

    updateTimestamp = v3->_updateTimestamp;
    v3->_updateTimestamp = &unk_284C3E588;

    failureCode = v3->_failureCode;
    v3->_failureCode = &unk_284C3E588;
  }

  return v3;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(MTRJointFabricDatastoreClusterDatastoreStatusEntryStruct);
  state = [(MTRJointFabricDatastoreClusterDatastoreStatusEntryStruct *)self state];
  [(MTRJointFabricDatastoreClusterDatastoreStatusEntryStruct *)v4 setState:state];

  updateTimestamp = [(MTRJointFabricDatastoreClusterDatastoreStatusEntryStruct *)self updateTimestamp];
  [(MTRJointFabricDatastoreClusterDatastoreStatusEntryStruct *)v4 setUpdateTimestamp:updateTimestamp];

  failureCode = [(MTRJointFabricDatastoreClusterDatastoreStatusEntryStruct *)self failureCode];
  [(MTRJointFabricDatastoreClusterDatastoreStatusEntryStruct *)v4 setFailureCode:failureCode];

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@: state:%@ updateTimestamp:%@; failureCode:%@; >", v5, self->_state, self->_updateTimestamp, self->_failureCode];;

  return v6;
}

@end