@interface WCSessionUserInfoTransfer
- (BOOL)isEqual:(id)a3;
- (BOOL)updateUserInfo:(id)a3 error:(id *)a4;
- (BOOL)updateUserInfoData:(id)a3 error:(id *)a4;
- (BOOL)verifyUserInfo;
- (NSData)userInfoData;
- (NSDictionary)userInfo;
- (WCSessionUserInfoTransfer)init;
- (WCSessionUserInfoTransfer)initWithCoder:(id)a3;
- (WCSessionUserInfoTransfer)initWithComplicationTransferIdentifier:(id)a3;
- (WCSessionUserInfoTransfer)initWithProtoBufFileURL:(id)a3;
- (WCSessionUserInfoTransfer)initWithTranferIdentifier:(id)a3 complicationTransferIdentifier:(id)a4 currentComplication:(BOOL)a5;
- (id)description;
- (id)protobufData;
- (int64_t)compare:(id)a3;
- (unint64_t)hash;
- (void)cancel;
- (void)encodeWithCoder:(id)a3;
@end

@implementation WCSessionUserInfoTransfer

- (WCSessionUserInfoTransfer)initWithComplicationTransferIdentifier:(id)a3
{
  v4 = a3;
  v5 = WCTransferIdentifierFromComplicationIdentifier(v4);
  v6 = [(WCSessionUserInfoTransfer *)self initWithTranferIdentifier:v5 complicationTransferIdentifier:v4 currentComplication:1];

  return v6;
}

- (WCSessionUserInfoTransfer)initWithTranferIdentifier:(id)a3 complicationTransferIdentifier:(id)a4 currentComplication:(BOOL)a5
{
  v9 = a3;
  v10 = a4;
  v19.receiver = self;
  v19.super_class = WCSessionUserInfoTransfer;
  v11 = [(WCSessionUserInfoTransfer *)&v19 init];
  v12 = v11;
  if (v11)
  {
    transferError = v11->_transferError;
    v11->_transferError = 0;

    v12->_transferring = 1;
    v14 = objc_opt_new();
    creationDate = v12->_creationDate;
    v12->_creationDate = v14;

    objc_storeStrong(&v12->_transferIdentifier, a3);
    v12->_currentComplicationInfo = a5;
    objc_storeStrong(&v12->_complicationTransferIdentifier, a4);
    v16 = objc_alloc_init(WCUserInfo);
    userInfoStorage = v12->_userInfoStorage;
    v12->_userInfoStorage = v16;
  }

  return v12;
}

- (WCSessionUserInfoTransfer)initWithProtoBufFileURL:(id)a3
{
  if (a3)
  {
    v11 = 0;
    v4 = [MEMORY[0x277CBEA90] dataWithContentsOfURL:a3 options:0 error:&v11];
    v5 = v11;
    if (v4)
    {
      v6 = [[WCDProtoUserInfoTransfer alloc] initWithData:v4];
      p_super = &v6->super.super;
      if (v6 && [(WCDProtoUserInfoTransfer *)v6 hasTransferIdentifier]&& [p_super hasClientData])
      {
        v8 = [p_super transferIdentifier];
        self = [(WCSessionUserInfoTransfer *)self initWithTranferIdentifier:v8 complicationTransferIdentifier:0 currentComplication:0];

        v9 = [p_super clientData];
        [(WCSessionUserInfoTransfer *)self updateUserInfoData:v9 error:0];
      }
    }

    else
    {
      p_super = wc_log();
      if (os_log_type_enabled(p_super, OS_LOG_TYPE_ERROR))
      {
        [(WCSessionUserInfoTransfer *)v5 initWithProtoBufFileURL:?];
      }
    }
  }

  return self;
}

- (WCSessionUserInfoTransfer)init
{
  v3 = objc_opt_new();
  v4 = [v3 UUIDString];
  v5 = [(WCSessionUserInfoTransfer *)self initWithTranferIdentifier:v4 complicationTransferIdentifier:0 currentComplication:0];

  return v5;
}

- (NSDictionary)userInfo
{
  v2 = [(WCSessionUserInfoTransfer *)self userInfoStorage];
  v3 = [v2 userInfo];

  return v3;
}

- (NSData)userInfoData
{
  v2 = [(WCSessionUserInfoTransfer *)self userInfoStorage];
  v3 = [v2 userInfoData];

  return v3;
}

- (BOOL)updateUserInfo:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(WCSessionUserInfoTransfer *)self userInfoStorage];
  LOBYTE(a4) = [v7 updateUserInfo:v6 error:a4];

  return a4;
}

- (BOOL)updateUserInfoData:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(WCSessionUserInfoTransfer *)self userInfoStorage];
  LOBYTE(a4) = [v7 updateUserInfoData:v6 error:a4];

  return a4;
}

- (BOOL)verifyUserInfo
{
  v2 = [(WCSessionUserInfoTransfer *)self userInfoStorage];
  v3 = [v2 verifyUserInfo];

  return v3;
}

- (void)cancel
{
  v3 = +[WCSession defaultSession];
  [v3 cancelUserInfo:self];
}

- (int64_t)compare:(id)a3
{
  v4 = a3;
  v5 = [(WCSessionUserInfoTransfer *)self creationDate];
  v6 = [v4 creationDate];

  v7 = [v5 compare:v6];
  return v7;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  if ([(WCSessionUserInfoTransfer *)self isCurrentComplicationInfo])
  {
    v6 = "YES";
  }

  else
  {
    v6 = "NO";
  }

  if ([(WCSessionUserInfoTransfer *)self isTransferring])
  {
    v7 = "YES";
  }

  else
  {
    v7 = "NO";
  }

  v8 = [(WCSessionUserInfoTransfer *)self userInfoData];
  if (v8)
  {
    v9 = "YES";
  }

  else
  {
    v9 = "NO";
  }

  v10 = [v3 stringWithFormat:@"<%@: %p, current complication info: %s, transferring: %s, hasUserInfo: %s>", v5, self, v6, v7, v9];

  return v10;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v8 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [(WCSessionUserInfoTransfer *)self transferIdentifier];
      v7 = [(WCSessionUserInfoTransfer *)v5 transferIdentifier];

      v8 = [v6 isEqual:v7];
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

- (unint64_t)hash
{
  v2 = [(WCSessionUserInfoTransfer *)self transferIdentifier];
  v3 = [v2 hash];

  return v3;
}

- (void)encodeWithCoder:(id)a3
{
  currentComplicationInfo = self->_currentComplicationInfo;
  v5 = a3;
  [v5 encodeBool:currentComplicationInfo forKey:@"currentComplicationInfo"];
  [v5 encodeBool:self->_transferring forKey:@"transferring"];
  [v5 encodeObject:self->_transferIdentifier forKey:@"transferIdentifier"];
  [v5 encodeObject:self->_userInfoStorage forKey:@"userInfoStorage"];
  [v5 encodeObject:self->_creationDate forKey:@"creationDate"];
  [v5 encodeObject:self->_complicationTransferIdentifier forKey:@"complicationTransferIdentifier"];
}

- (WCSessionUserInfoTransfer)initWithCoder:(id)a3
{
  v4 = a3;
  v17.receiver = self;
  v17.super_class = WCSessionUserInfoTransfer;
  v5 = [(WCSessionUserInfoTransfer *)&v17 init];
  if (v5)
  {
    v5->_currentComplicationInfo = [v4 decodeBoolForKey:@"currentComplicationInfo"];
    v5->_transferring = [v4 decodeBoolForKey:@"transferring"];
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"transferIdentifier"];
    v7 = [v6 copy];
    transferIdentifier = v5->_transferIdentifier;
    v5->_transferIdentifier = v7;

    v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"userInfoStorage"];
    userInfoStorage = v5->_userInfoStorage;
    v5->_userInfoStorage = v9;

    v11 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"creationDate"];
    creationDate = v5->_creationDate;
    v5->_creationDate = v11;

    v13 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"complicationTransferIdentifier"];
    v14 = [v13 copy];
    complicationTransferIdentifier = v5->_complicationTransferIdentifier;
    v5->_complicationTransferIdentifier = v14;
  }

  return v5;
}

- (id)protobufData
{
  v3 = objc_opt_new();
  [v3 setVersion:1];
  v4 = [(WCSessionUserInfoTransfer *)self userInfoData];
  [v3 setClientData:v4];

  v5 = [(WCSessionUserInfoTransfer *)self transferIdentifier];
  [v3 setTransferIdentifier:v5];

  v6 = [v3 data];

  return v6;
}

- (void)initWithProtoBufFileURL:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = NSPrintF();
  *buf = 136446466;
  v6 = "[WCSessionUserInfoTransfer initWithProtoBufFileURL:]";
  v7 = 2114;
  v8 = v3;
  _os_log_error_impl(&dword_23B2FA000, a2, OS_LOG_TYPE_ERROR, "%{public}s %{public}@", buf, 0x16u);

  v4 = *MEMORY[0x277D85DE8];
}

@end