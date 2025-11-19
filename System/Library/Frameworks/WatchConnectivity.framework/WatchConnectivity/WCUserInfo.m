@interface WCUserInfo
- (BOOL)updateUserInfo:(id)a3 error:(id *)a4;
- (BOOL)updateUserInfoData:(id)a3 error:(id *)a4;
- (BOOL)verifyUserInfo;
- (NSDictionary)userInfo;
- (WCUserInfo)initWithCoder:(id)a3;
- (id)description;
- (void)userInfo;
@end

@implementation WCUserInfo

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(WCUserInfo *)self userInfo];
  v7 = [(WCUserInfo *)self userInfoData];
  v8 = [(WCUserInfo *)self clientUserInfo];
  v9 = [v3 stringWithFormat:@"<%@: %p, userInfo: %@, userInfoData: %@, client user info: %@>", v5, self, v6, v7, v8];

  return v9;
}

- (NSDictionary)userInfo
{
  v3 = self->_userInfo;
  if (!self->_userInfo)
  {
    v4 = [(WCUserInfo *)self userInfoData];

    if (v4)
    {
      v5 = [(WCUserInfo *)self userInfoData];
      v12 = 0;
      v6 = WCDeserializePayloadData(v5, &v12);
      v7 = v12;

      if (v6)
      {
        v8 = [(NSDictionary *)v6 copy];
        p_super = &self->_userInfo->super;
        self->_userInfo = v8;
      }

      else
      {
        p_super = wc_log();
        if (os_log_type_enabled(p_super, OS_LOG_TYPE_ERROR))
        {
          [(WCUserInfo *)v7 userInfo];
        }
      }
    }

    else
    {
      v6 = v3;
    }

    if (self->_userInfo || ([(WCUserInfo *)self clientUserInfo], v10 = objc_claimAutoreleasedReturnValue(), v10, !v10))
    {
      v3 = v6;
    }

    else
    {
      v3 = [(WCUserInfo *)self clientUserInfo];
    }
  }

  return v3;
}

- (BOOL)updateUserInfo:(id)a3 error:(id *)a4
{
  v6 = a3;
  [(WCUserInfo *)self setClientUserInfo:v6];
  v7 = WCSerializePayloadDictionary(v6, a4);

  if (!v7)
  {
    if (a4)
    {
      v9 = MEMORY[0x277CCA9B8];
      v10 = 7010;
LABEL_8:
      [v9 wcErrorWithCode:v10];
      *a4 = v8 = 0;
      goto LABEL_10;
    }

LABEL_9:
    v8 = 0;
    goto LABEL_10;
  }

  if (!WCIsDataAcceptableSizeForType(2, v7))
  {
    if (a4)
    {
      v9 = MEMORY[0x277CCA9B8];
      v10 = 7009;
      goto LABEL_8;
    }

    goto LABEL_9;
  }

  [(WCUserInfo *)self setUserInfoData:v7];
  objc_storeStrong(&self->_userInfo, self->_clientUserInfo);
  [(WCUserInfo *)self setClientUserInfo:0];
  v8 = 1;
LABEL_10:

  return v8;
}

- (BOOL)updateUserInfoData:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(WCUserInfo *)self userInfoData];

  if (!v7)
  {
    [(WCUserInfo *)self setUserInfoData:v6];
    v8 = 0;
    if (!a4)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = [MEMORY[0x277CCA9B8] wcInternalErrorWithCode:7501];
  if (a4)
  {
LABEL_3:
    v8 = v8;
    *a4 = v8;
  }

LABEL_4:

  return v7 == 0;
}

- (BOOL)verifyUserInfo
{
  v3 = [(WCUserInfo *)self userInfoData];

  if (!v3)
  {
    return 0;
  }

  v4 = [(WCUserInfo *)self userInfoData];
  v11 = 0;
  v5 = WCDeserializePayloadData(v4, &v11);
  v6 = v11;

  v7 = v5 != 0;
  if (v5)
  {
    v8 = [v5 copy];
    userInfo = self->_userInfo;
    self->_userInfo = v8;
  }

  return v7;
}

- (WCUserInfo)initWithCoder:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = WCUserInfo;
  v5 = [(WCUserInfo *)&v10 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"userInfoData"];
    v7 = [v6 copy];
    userInfoData = v5->_userInfoData;
    v5->_userInfoData = v7;
  }

  return v5;
}

- (void)userInfo
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = NSPrintF();
  *buf = 136446466;
  v6 = "[WCUserInfo userInfo]";
  v7 = 2114;
  v8 = v3;
  _os_log_error_impl(&dword_23B2FA000, a2, OS_LOG_TYPE_ERROR, "%{public}s could not deserialize user info data %{public}@", buf, 0x16u);

  v4 = *MEMORY[0x277D85DE8];
}

@end