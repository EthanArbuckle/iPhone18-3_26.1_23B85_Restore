@interface MTRAccessControlClusterAccessControlEntryStruct
- (MTRAccessControlClusterAccessControlEntryStruct)init;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
@end

@implementation MTRAccessControlClusterAccessControlEntryStruct

- (MTRAccessControlClusterAccessControlEntryStruct)init
{
  v10.receiver = self;
  v10.super_class = MTRAccessControlClusterAccessControlEntryStruct;
  v2 = [(MTRAccessControlClusterAccessControlEntryStruct *)&v10 init];
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

    fabricIndex = v3->_fabricIndex;
    v3->_fabricIndex = &unk_284C3E588;
  }

  return v3;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(MTRAccessControlClusterAccessControlEntryStruct);
  v5 = [(MTRAccessControlClusterAccessControlEntryStruct *)self privilege];
  [(MTRAccessControlClusterAccessControlEntryStruct *)v4 setPrivilege:v5];

  v6 = [(MTRAccessControlClusterAccessControlEntryStruct *)self authMode];
  [(MTRAccessControlClusterAccessControlEntryStruct *)v4 setAuthMode:v6];

  v7 = [(MTRAccessControlClusterAccessControlEntryStruct *)self subjects];
  [(MTRAccessControlClusterAccessControlEntryStruct *)v4 setSubjects:v7];

  v8 = [(MTRAccessControlClusterAccessControlEntryStruct *)self targets];
  [(MTRAccessControlClusterAccessControlEntryStruct *)v4 setTargets:v8];

  v9 = [(MTRAccessControlClusterAccessControlEntryStruct *)self fabricIndex];
  [(MTRAccessControlClusterAccessControlEntryStruct *)v4 setFabricIndex:v9];

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@: privilege:%@ authMode:%@; subjects:%@; targets:%@; fabricIndex:%@; >", v5, self->_privilege, self->_authMode, self->_subjects, self->_targets, self->_fabricIndex];;

  return v6;
}

@end