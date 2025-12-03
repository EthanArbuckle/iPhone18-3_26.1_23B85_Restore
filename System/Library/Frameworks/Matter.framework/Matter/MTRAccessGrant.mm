@interface MTRAccessGrant
+ (id)accessGrantForAllNodesWithPrivilege:(unsigned __int8)privilege;
+ (id)accessGrantForCASEAuthenticatedTag:(id)tag privilege:(unsigned __int8)privilege;
+ (id)accessGrantForGroupID:(id)d privilege:(unsigned __int8)privilege;
+ (id)accessGrantForNodeID:(id)d privilege:(unsigned __int8)privilege;
- (BOOL)isEqual:(id)equal;
- (id)description;
@end

@implementation MTRAccessGrant

+ (id)accessGrantForNodeID:(id)d privilege:(unsigned __int8)privilege
{
  v15 = *MEMORY[0x277D85DE8];
  dCopy = d;
  unsignedLongLongValue = [dCopy unsignedLongLongValue];
  if ((unsignedLongLongValue - 1) >= 0xFFFFFFEFFFFFFFFFLL)
  {
    v10 = sub_2393D9044(0);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 134217984;
      v14 = unsignedLongLongValue;
      _os_log_impl(&dword_238DAE000, v10, OS_LOG_TYPE_ERROR, "MTRAccessGrant provided non-operational node ID: 0x%llx", buf, 0xCu);
    }

    if (sub_2393D5398(1u))
    {
      sub_2393D5320(0, 1);
    }

    v9 = 0;
  }

  else
  {
    v7 = [MTRAccessGrant alloc];
    v8 = [dCopy copy];
    v9 = sub_239215B7C(v7, v8, privilege, 2);
  }

  v11 = *MEMORY[0x277D85DE8];

  return v9;
}

+ (id)accessGrantForCASEAuthenticatedTag:(id)tag privilege:(unsigned __int8)privilege
{
  v17 = *MEMORY[0x277D85DE8];
  tagCopy = tag;
  unsignedLongLongValue = [tagCopy unsignedLongLongValue];
  v7 = unsignedLongLongValue;
  if (HIDWORD(unsignedLongLongValue))
  {
    v11 = sub_2393D9044(0);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 134217984;
      v16 = v7;
      _os_log_impl(&dword_238DAE000, v11, OS_LOG_TYPE_ERROR, "MTRAccessGrant provided too-large CAT value: 0x%llx", buf, 0xCu);
    }

    if (!sub_2393D5398(1u))
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  if (unsignedLongLongValue)
  {
    v8 = [MTRAccessGrant alloc];
    0xFFFFFFFD00000000 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v7 | 0xFFFFFFFD00000000];
    v10 = sub_239215B7C(v8, 0xFFFFFFFD00000000, privilege, 2);

    goto LABEL_13;
  }

  v12 = sub_2393D9044(0);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    *buf = 67109120;
    LODWORD(v16) = v7;
    _os_log_impl(&dword_238DAE000, v12, OS_LOG_TYPE_ERROR, "MTRAccessGrant provided invalid CAT value: 0x%x", buf, 8u);
  }

  if (sub_2393D5398(1u))
  {
LABEL_11:
    sub_2393D5320(0, 1);
  }

LABEL_12:
  v10 = 0;
LABEL_13:

  v13 = *MEMORY[0x277D85DE8];

  return v10;
}

+ (id)accessGrantForGroupID:(id)d privilege:(unsigned __int8)privilege
{
  v17 = *MEMORY[0x277D85DE8];
  dCopy = d;
  unsignedLongLongValue = [dCopy unsignedLongLongValue];
  v7 = unsignedLongLongValue;
  if (unsignedLongLongValue >= 0x10000)
  {
    v11 = sub_2393D9044(0);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 134217984;
      v16 = v7;
      _os_log_impl(&dword_238DAE000, v11, OS_LOG_TYPE_ERROR, "MTRAccessGrant provided too-large group id: 0x%llx", buf, 0xCu);
    }

    if (!sub_2393D5398(1u))
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  if (unsignedLongLongValue)
  {
    v8 = [MTRAccessGrant alloc];
    0xFFFFFFFFFFFF0000 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v7 | 0xFFFFFFFFFFFF0000];
    v10 = sub_239215B7C(v8, 0xFFFFFFFFFFFF0000, privilege, 3);

    goto LABEL_13;
  }

  v12 = sub_2393D9044(0);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    *buf = 67109120;
    LODWORD(v16) = 0;
    _os_log_impl(&dword_238DAE000, v12, OS_LOG_TYPE_ERROR, "MTRAccessGrant provided invalid group id: 0x%x", buf, 8u);
  }

  if (sub_2393D5398(1u))
  {
LABEL_11:
    sub_2393D5320(0, 1);
  }

LABEL_12:
  v10 = 0;
LABEL_13:

  v13 = *MEMORY[0x277D85DE8];

  return v10;
}

+ (id)accessGrantForAllNodesWithPrivilege:(unsigned __int8)privilege
{
  v3 = sub_239215B7C([MTRAccessGrant alloc], 0, privilege, 2);

  return v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v6 = objc_opt_class();
  if (v6 == objc_opt_class())
  {
    v8 = equalCopy;
    v9 = v8;
    subjectID = self->_subjectID;
    v11 = subjectID;
    if (!subjectID)
    {
      subjectID = [v8 subjectID];
      if (!subjectID)
      {
        goto LABEL_10;
      }

      v11 = self->_subjectID;
    }

    subjectID2 = [v9 subjectID];
    v13 = [(NSNumber *)v11 isEqual:subjectID2];

    if (subjectID)
    {
      if (!v13)
      {
        goto LABEL_12;
      }
    }

    else
    {

      if ((v13 & 1) == 0)
      {
        goto LABEL_12;
      }
    }

LABEL_10:
    grantedPrivilege = self->_grantedPrivilege;
    if (grantedPrivilege == [v9 grantedPrivilege])
    {
      authenticationMode = self->_authenticationMode;
      v7 = authenticationMode == [v9 authenticationMode];
LABEL_13:

      goto LABEL_14;
    }

LABEL_12:
    v7 = 0;
    goto LABEL_13;
  }

  v7 = 0;
LABEL_14:

  return v7;
}

- (id)description
{
  if (self->_grantedPrivilege - 1 > 4)
  {
    v2 = @"Unknown";
  }

  else
  {
    v2 = off_278A73CC8[(self->_grantedPrivilege - 1)];
  }

  subjectID = self->_subjectID;
  if (subjectID)
  {
    unsignedLongLongValue = [(NSNumber *)subjectID unsignedLongLongValue];
    if (unsignedLongLongValue < 0xFFFFFFFFFFFF0000)
    {
      v5 = MEMORY[0x277CCACA8];
      v10 = unsignedLongLongValue;
      v12 = v2;
      v9 = objc_opt_class();
      if (HIDWORD(unsignedLongLongValue) == 4294967293)
      {
        v6 = @"<%@ nodes with CASE Authenticated Tag 0x%08x can %@>";
      }

      else
      {
        v6 = @"<%@ node 0x%016llx can %@>";
      }
    }

    else
    {
      v5 = MEMORY[0x277CCACA8];
      v10 = unsignedLongLongValue;
      v12 = v2;
      v9 = objc_opt_class();
      v6 = @"<%@ group 0x%x can %@>";
    }

    [v5 stringWithFormat:v6, v9, v10, v12];
  }

  else
  {
    [MEMORY[0x277CCACA8] stringWithFormat:@"<%@ all nodes can %@>", objc_opt_class(), v2, v11];
  }
  v7 = ;

  return v7;
}

@end