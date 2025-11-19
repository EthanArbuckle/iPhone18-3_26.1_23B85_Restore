@interface MTRAccessGrant
+ (id)accessGrantForAllNodesWithPrivilege:(unsigned __int8)a3;
+ (id)accessGrantForCASEAuthenticatedTag:(id)a3 privilege:(unsigned __int8)a4;
+ (id)accessGrantForGroupID:(id)a3 privilege:(unsigned __int8)a4;
+ (id)accessGrantForNodeID:(id)a3 privilege:(unsigned __int8)a4;
- (BOOL)isEqual:(id)a3;
- (id)description;
@end

@implementation MTRAccessGrant

+ (id)accessGrantForNodeID:(id)a3 privilege:(unsigned __int8)a4
{
  v15 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = [v5 unsignedLongLongValue];
  if ((v6 - 1) >= 0xFFFFFFEFFFFFFFFFLL)
  {
    v10 = sub_2393D9044(0);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 134217984;
      v14 = v6;
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
    v8 = [v5 copy];
    v9 = sub_239215B7C(v7, v8, a4, 2);
  }

  v11 = *MEMORY[0x277D85DE8];

  return v9;
}

+ (id)accessGrantForCASEAuthenticatedTag:(id)a3 privilege:(unsigned __int8)a4
{
  v17 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = [v5 unsignedLongLongValue];
  v7 = v6;
  if (HIDWORD(v6))
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

  if (v6)
  {
    v8 = [MTRAccessGrant alloc];
    v9 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v7 | 0xFFFFFFFD00000000];
    v10 = sub_239215B7C(v8, v9, a4, 2);

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

+ (id)accessGrantForGroupID:(id)a3 privilege:(unsigned __int8)a4
{
  v17 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = [v5 unsignedLongLongValue];
  v7 = v6;
  if (v6 >= 0x10000)
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

  if (v6)
  {
    v8 = [MTRAccessGrant alloc];
    v9 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v7 | 0xFFFFFFFFFFFF0000];
    v10 = sub_239215B7C(v8, v9, a4, 3);

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

+ (id)accessGrantForAllNodesWithPrivilege:(unsigned __int8)a3
{
  v3 = sub_239215B7C([MTRAccessGrant alloc], 0, a3, 2);

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v5 = a3;
  v6 = objc_opt_class();
  if (v6 == objc_opt_class())
  {
    v8 = v5;
    v9 = v8;
    subjectID = self->_subjectID;
    v11 = subjectID;
    if (!subjectID)
    {
      v3 = [v8 subjectID];
      if (!v3)
      {
        goto LABEL_10;
      }

      v11 = self->_subjectID;
    }

    v12 = [v9 subjectID];
    v13 = [(NSNumber *)v11 isEqual:v12];

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
    v4 = [(NSNumber *)subjectID unsignedLongLongValue];
    if (v4 < 0xFFFFFFFFFFFF0000)
    {
      v5 = MEMORY[0x277CCACA8];
      v10 = v4;
      v12 = v2;
      v9 = objc_opt_class();
      if (HIDWORD(v4) == 4294967293)
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
      v10 = v4;
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