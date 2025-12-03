@interface WCSessionUserInfoTransfer
- (BOOL)isEqual:(id)equal;
- (BOOL)updateUserInfo:(id)info error:(id *)error;
- (BOOL)updateUserInfoData:(id)data error:(id *)error;
- (BOOL)verifyUserInfo;
- (NSData)userInfoData;
- (NSDictionary)userInfo;
- (WCSessionUserInfoTransfer)init;
- (WCSessionUserInfoTransfer)initWithCoder:(id)coder;
- (WCSessionUserInfoTransfer)initWithComplicationTransferIdentifier:(id)identifier;
- (WCSessionUserInfoTransfer)initWithProtoBufFileURL:(id)l;
- (WCSessionUserInfoTransfer)initWithTranferIdentifier:(id)identifier complicationTransferIdentifier:(id)transferIdentifier currentComplication:(BOOL)complication;
- (id)description;
- (id)protobufData;
- (int64_t)compare:(id)compare;
- (unint64_t)hash;
- (void)cancel;
- (void)encodeWithCoder:(id)coder;
@end

@implementation WCSessionUserInfoTransfer

- (WCSessionUserInfoTransfer)initWithComplicationTransferIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v5 = WCTransferIdentifierFromComplicationIdentifier(identifierCopy);
  v6 = [(WCSessionUserInfoTransfer *)self initWithTranferIdentifier:v5 complicationTransferIdentifier:identifierCopy currentComplication:1];

  return v6;
}

- (WCSessionUserInfoTransfer)initWithTranferIdentifier:(id)identifier complicationTransferIdentifier:(id)transferIdentifier currentComplication:(BOOL)complication
{
  identifierCopy = identifier;
  transferIdentifierCopy = transferIdentifier;
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

    objc_storeStrong(&v12->_transferIdentifier, identifier);
    v12->_currentComplicationInfo = complication;
    objc_storeStrong(&v12->_complicationTransferIdentifier, transferIdentifier);
    v16 = objc_alloc_init(WCUserInfo);
    userInfoStorage = v12->_userInfoStorage;
    v12->_userInfoStorage = v16;
  }

  return v12;
}

- (WCSessionUserInfoTransfer)initWithProtoBufFileURL:(id)l
{
  if (l)
  {
    v11 = 0;
    v4 = [MEMORY[0x277CBEA90] dataWithContentsOfURL:l options:0 error:&v11];
    v5 = v11;
    if (v4)
    {
      v6 = [[WCDProtoUserInfoTransfer alloc] initWithData:v4];
      p_super = &v6->super.super;
      if (v6 && [(WCDProtoUserInfoTransfer *)v6 hasTransferIdentifier]&& [p_super hasClientData])
      {
        transferIdentifier = [p_super transferIdentifier];
        self = [(WCSessionUserInfoTransfer *)self initWithTranferIdentifier:transferIdentifier complicationTransferIdentifier:0 currentComplication:0];

        clientData = [p_super clientData];
        [(WCSessionUserInfoTransfer *)self updateUserInfoData:clientData error:0];
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
  uUIDString = [v3 UUIDString];
  v5 = [(WCSessionUserInfoTransfer *)self initWithTranferIdentifier:uUIDString complicationTransferIdentifier:0 currentComplication:0];

  return v5;
}

- (NSDictionary)userInfo
{
  userInfoStorage = [(WCSessionUserInfoTransfer *)self userInfoStorage];
  userInfo = [userInfoStorage userInfo];

  return userInfo;
}

- (NSData)userInfoData
{
  userInfoStorage = [(WCSessionUserInfoTransfer *)self userInfoStorage];
  userInfoData = [userInfoStorage userInfoData];

  return userInfoData;
}

- (BOOL)updateUserInfo:(id)info error:(id *)error
{
  infoCopy = info;
  userInfoStorage = [(WCSessionUserInfoTransfer *)self userInfoStorage];
  LOBYTE(error) = [userInfoStorage updateUserInfo:infoCopy error:error];

  return error;
}

- (BOOL)updateUserInfoData:(id)data error:(id *)error
{
  dataCopy = data;
  userInfoStorage = [(WCSessionUserInfoTransfer *)self userInfoStorage];
  LOBYTE(error) = [userInfoStorage updateUserInfoData:dataCopy error:error];

  return error;
}

- (BOOL)verifyUserInfo
{
  userInfoStorage = [(WCSessionUserInfoTransfer *)self userInfoStorage];
  verifyUserInfo = [userInfoStorage verifyUserInfo];

  return verifyUserInfo;
}

- (void)cancel
{
  v3 = +[WCSession defaultSession];
  [v3 cancelUserInfo:self];
}

- (int64_t)compare:(id)compare
{
  compareCopy = compare;
  creationDate = [(WCSessionUserInfoTransfer *)self creationDate];
  creationDate2 = [compareCopy creationDate];

  v7 = [creationDate compare:creationDate2];
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

  userInfoData = [(WCSessionUserInfoTransfer *)self userInfoData];
  if (userInfoData)
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v8 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      transferIdentifier = [(WCSessionUserInfoTransfer *)self transferIdentifier];
      transferIdentifier2 = [(WCSessionUserInfoTransfer *)v5 transferIdentifier];

      v8 = [transferIdentifier isEqual:transferIdentifier2];
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
  transferIdentifier = [(WCSessionUserInfoTransfer *)self transferIdentifier];
  v3 = [transferIdentifier hash];

  return v3;
}

- (void)encodeWithCoder:(id)coder
{
  currentComplicationInfo = self->_currentComplicationInfo;
  coderCopy = coder;
  [coderCopy encodeBool:currentComplicationInfo forKey:@"currentComplicationInfo"];
  [coderCopy encodeBool:self->_transferring forKey:@"transferring"];
  [coderCopy encodeObject:self->_transferIdentifier forKey:@"transferIdentifier"];
  [coderCopy encodeObject:self->_userInfoStorage forKey:@"userInfoStorage"];
  [coderCopy encodeObject:self->_creationDate forKey:@"creationDate"];
  [coderCopy encodeObject:self->_complicationTransferIdentifier forKey:@"complicationTransferIdentifier"];
}

- (WCSessionUserInfoTransfer)initWithCoder:(id)coder
{
  coderCopy = coder;
  v17.receiver = self;
  v17.super_class = WCSessionUserInfoTransfer;
  v5 = [(WCSessionUserInfoTransfer *)&v17 init];
  if (v5)
  {
    v5->_currentComplicationInfo = [coderCopy decodeBoolForKey:@"currentComplicationInfo"];
    v5->_transferring = [coderCopy decodeBoolForKey:@"transferring"];
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"transferIdentifier"];
    v7 = [v6 copy];
    transferIdentifier = v5->_transferIdentifier;
    v5->_transferIdentifier = v7;

    v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"userInfoStorage"];
    userInfoStorage = v5->_userInfoStorage;
    v5->_userInfoStorage = v9;

    v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"creationDate"];
    creationDate = v5->_creationDate;
    v5->_creationDate = v11;

    v13 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"complicationTransferIdentifier"];
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
  userInfoData = [(WCSessionUserInfoTransfer *)self userInfoData];
  [v3 setClientData:userInfoData];

  transferIdentifier = [(WCSessionUserInfoTransfer *)self transferIdentifier];
  [v3 setTransferIdentifier:transferIdentifier];

  data = [v3 data];

  return data;
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