@interface MTRJointFabricDatastoreClusterDatastoreAccessControlEntryStruct
- (MTRJointFabricDatastoreClusterDatastoreAccessControlEntryStruct)init;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
@end

@implementation MTRJointFabricDatastoreClusterDatastoreAccessControlEntryStruct

- (MTRJointFabricDatastoreClusterDatastoreAccessControlEntryStruct)init
{
  v9.receiver = self;
  v9.super_class = MTRJointFabricDatastoreClusterDatastoreAccessControlEntryStruct;
  v2 = [(MTRJointFabricDatastoreClusterDatastoreAccessControlEntryStruct *)&v9 init];
  v3 = v2;
  if (v2)
  {
    privilege = v2->_privilege;
    v2->_privilege = &unk_284C3E588;

    authMode = v3->_authMode;
    v3->_authMode = &unk_284C3E588;

    subjects = v3->_subjects;
    v3->_subjects = 0;

    targets = v3->_targets;
    v3->_targets = 0;
  }

  return v3;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(MTRJointFabricDatastoreClusterDatastoreAccessControlEntryStruct);
  v5 = [(MTRJointFabricDatastoreClusterDatastoreAccessControlEntryStruct *)self privilege];
  [(MTRJointFabricDatastoreClusterDatastoreAccessControlEntryStruct *)v4 setPrivilege:v5];

  v6 = [(MTRJointFabricDatastoreClusterDatastoreAccessControlEntryStruct *)self authMode];
  [(MTRJointFabricDatastoreClusterDatastoreAccessControlEntryStruct *)v4 setAuthMode:v6];

  v7 = [(MTRJointFabricDatastoreClusterDatastoreAccessControlEntryStruct *)self subjects];
  [(MTRJointFabricDatastoreClusterDatastoreAccessControlEntryStruct *)v4 setSubjects:v7];

  v8 = [(MTRJointFabricDatastoreClusterDatastoreAccessControlEntryStruct *)self targets];
  [(MTRJointFabricDatastoreClusterDatastoreAccessControlEntryStruct *)v4 setTargets:v8];

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@: privilege:%@ authMode:%@; subjects:%@; targets:%@; >", v5, self->_privilege, self->_authMode, self->_subjects, self->_targets];;

  return v6;
}

@end