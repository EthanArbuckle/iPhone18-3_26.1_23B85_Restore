@interface WCUserInfo
- (BOOL)updateUserInfo:(id)info error:(id *)error;
- (BOOL)updateUserInfoData:(id)data error:(id *)error;
- (BOOL)verifyUserInfo;
- (NSDictionary)userInfo;
- (WCUserInfo)initWithCoder:(id)coder;
- (id)description;
- (void)userInfo;
@end

@implementation WCUserInfo

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  userInfo = [(WCUserInfo *)self userInfo];
  userInfoData = [(WCUserInfo *)self userInfoData];
  clientUserInfo = [(WCUserInfo *)self clientUserInfo];
  v9 = [v3 stringWithFormat:@"<%@: %p, userInfo: %@, userInfoData: %@, client user info: %@>", v5, self, userInfo, userInfoData, clientUserInfo];

  return v9;
}

- (NSDictionary)userInfo
{
  clientUserInfo = self->_userInfo;
  if (!self->_userInfo)
  {
    userInfoData = [(WCUserInfo *)self userInfoData];

    if (userInfoData)
    {
      userInfoData2 = [(WCUserInfo *)self userInfoData];
      v12 = 0;
      v6 = WCDeserializePayloadData(userInfoData2, &v12);
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
      v6 = clientUserInfo;
    }

    if (self->_userInfo || ([(WCUserInfo *)self clientUserInfo], v10 = objc_claimAutoreleasedReturnValue(), v10, !v10))
    {
      clientUserInfo = v6;
    }

    else
    {
      clientUserInfo = [(WCUserInfo *)self clientUserInfo];
    }
  }

  return clientUserInfo;
}

- (BOOL)updateUserInfo:(id)info error:(id *)error
{
  infoCopy = info;
  [(WCUserInfo *)self setClientUserInfo:infoCopy];
  v7 = WCSerializePayloadDictionary(infoCopy, error);

  if (!v7)
  {
    if (error)
    {
      v9 = MEMORY[0x277CCA9B8];
      v10 = 7010;
LABEL_8:
      [v9 wcErrorWithCode:v10];
      *error = v8 = 0;
      goto LABEL_10;
    }

LABEL_9:
    v8 = 0;
    goto LABEL_10;
  }

  if (!WCIsDataAcceptableSizeForType(2, v7))
  {
    if (error)
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

- (BOOL)updateUserInfoData:(id)data error:(id *)error
{
  dataCopy = data;
  userInfoData = [(WCUserInfo *)self userInfoData];

  if (!userInfoData)
  {
    [(WCUserInfo *)self setUserInfoData:dataCopy];
    v8 = 0;
    if (!error)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = [MEMORY[0x277CCA9B8] wcInternalErrorWithCode:7501];
  if (error)
  {
LABEL_3:
    v8 = v8;
    *error = v8;
  }

LABEL_4:

  return userInfoData == 0;
}

- (BOOL)verifyUserInfo
{
  userInfoData = [(WCUserInfo *)self userInfoData];

  if (!userInfoData)
  {
    return 0;
  }

  userInfoData2 = [(WCUserInfo *)self userInfoData];
  v11 = 0;
  v5 = WCDeserializePayloadData(userInfoData2, &v11);
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

- (WCUserInfo)initWithCoder:(id)coder
{
  coderCopy = coder;
  v10.receiver = self;
  v10.super_class = WCUserInfo;
  v5 = [(WCUserInfo *)&v10 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"userInfoData"];
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