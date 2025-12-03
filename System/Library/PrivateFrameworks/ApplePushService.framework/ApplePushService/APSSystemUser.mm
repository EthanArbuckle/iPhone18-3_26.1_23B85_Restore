@interface APSSystemUser
+ (id)allDaemonUserIDs;
+ (id)systemUserWithUID:(unsigned int)d;
+ (id)systemUserWithUserID:(id)d;
- (APSSystemUser)initWithUserID:(id)d;
- (id)debugDescription;
- (void)setStatus:(id)status;
@end

@implementation APSSystemUser

+ (id)systemUserWithUserID:(id)d
{
  dCopy = d;
  if (qword_1001BF850 != -1)
  {
    sub_10010C2B8();
  }

  v4 = [qword_1001BF848 objectForKey:dCopy];
  if (!v4)
  {
    v4 = [[APSSystemUser alloc] initWithUserID:dCopy];
    [qword_1001BF848 setObject:v4 forKey:dCopy];
  }

  return v4;
}

+ (id)systemUserWithUID:(unsigned int)d
{
  v4 = [NSString stringWithFormat:@"%lld", d];
  v5 = [self systemUserWithUserID:v4];

  return v5;
}

- (APSSystemUser)initWithUserID:(id)d
{
  dCopy = d;
  v15.receiver = self;
  v15.super_class = APSSystemUser;
  v6 = [(APSSystemUser *)&v15 init];
  v7 = v6;
  if (!v6)
  {
    goto LABEL_23;
  }

  objc_storeStrong(&v6->_userID, d);
  if ([dCopy isEqualToString:APSDefaultUserID])
  {
    v8 = 1;
    goto LABEL_21;
  }

  v9 = [(APSSystemUser *)v7 uid];
  if (qword_1001BF858 != -1)
  {
    sub_10010C2CC();
  }

  if (v9 > 0x1F3)
  {
    v8 = 0;
    goto LABEL_21;
  }

  v10 = qword_1001BC2D8;
  if (qword_1001BC2D8 <= 0)
  {
    v10 = 0x4000;
    qword_1001BC2D8 = 0x4000;
  }

  v11 = malloc_type_calloc(v10, 1uLL, 0xE74E6E86uLL);
  v16 = 0;
  memset(&v17, 0, sizeof(v17));
  if (!v11)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_18;
    }

    goto LABEL_19;
  }

  if (getpwuid_r(v9, &v17, v11, qword_1001BC2D8, &v16) || !v16 || !v17.pw_name)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
LABEL_18:
      sub_10010C2F4(v9);
    }

LABEL_19:
    v8 = 0;
    goto LABEL_20;
  }

  v8 = *v17.pw_name == 95;
LABEL_20:
  free(v11);
LABEL_21:
  v7->_daemonUser = v8;
  status = v7->_status;
  v7->_status = @"logged out";

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    userID = v7->_userID;
    LODWORD(v17.pw_name) = 138412546;
    *(&v17.pw_name + 4) = v7;
    WORD2(v17.pw_passwd) = 2112;
    *(&v17.pw_passwd + 6) = userID;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%@: Initializing system user with uid %@", &v17, 0x16u);
  }

LABEL_23:

  return v7;
}

- (void)setStatus:(id)status
{
  statusCopy = status;
  v6 = statusCopy;
  if (self->_daemonUser && [statusCopy isEqualToString:@"logged out"])
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      userID = self->_userID;
      status = self->_status;
      v17 = 138413058;
      selfCopy3 = self;
      v19 = 2112;
      v20 = userID;
      v21 = 2112;
      statusCopy2 = status;
      v23 = 2112;
      v24 = v6;
      v9 = "%@: Not changing status for uid %@ from %@ to %@";
      v10 = 42;
LABEL_8:
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, v9, &v17, v10);
    }
  }

  else
  {
    v11 = [v6 isEqualToString:self->_status];
    v12 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT);
    if (v11)
    {
      if (v12)
      {
        v13 = self->_userID;
        v14 = self->_status;
        v17 = 138412802;
        selfCopy3 = self;
        v19 = 2112;
        v20 = v13;
        v21 = 2112;
        statusCopy2 = v14;
        v9 = "%@: Not changing status for uid %@, status remains %@";
        v10 = 32;
        goto LABEL_8;
      }
    }

    else
    {
      if (v12)
      {
        v15 = self->_userID;
        v16 = self->_status;
        v17 = 138413058;
        selfCopy3 = self;
        v19 = 2112;
        v20 = v15;
        v21 = 2112;
        statusCopy2 = v16;
        v23 = 2112;
        v24 = v6;
        _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%@: Changing status for uid %@ from %@ to %@", &v17, 0x2Au);
      }

      objc_storeStrong(&self->_status, status);
    }
  }
}

+ (id)allDaemonUserIDs
{
  v2 = +[NSMutableSet setWithCapacity:](NSMutableSet, "setWithCapacity:", [qword_1001BF848 count]);
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  allValues = [qword_1001BF848 allValues];
  v4 = [allValues countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v12;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(allValues);
        }

        v8 = *(*(&v11 + 1) + 8 * i);
        if ([v8 isDaemonUser])
        {
          userID = [v8 userID];
          [v2 addObject:userID];
        }
      }

      v5 = [allValues countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v5);
  }

  return v2;
}

- (id)debugDescription
{
  v3 = objc_opt_class();
  if (self->_daemonUser)
  {
    v4 = "yes";
  }

  else
  {
    v4 = "no";
  }

  return [NSString stringWithFormat:@"<<%@: %p>: { userID=%@, status=%@, daemonUser=%s>", v3, self, self->_userID, self->_status, v4];
}

@end