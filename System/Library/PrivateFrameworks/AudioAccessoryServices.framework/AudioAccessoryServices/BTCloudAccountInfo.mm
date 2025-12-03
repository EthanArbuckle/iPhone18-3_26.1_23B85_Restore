@interface BTCloudAccountInfo
- (BTCloudAccountInfo)initWithCoder:(id)coder;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation BTCloudAccountInfo

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  accountIdentifier = [(BTCloudAccountInfo *)self accountIdentifier];
  v6 = NSStringFromSelector(sel_accountIdentifier);
  [coderCopy encodeObject:accountIdentifier forKey:v6];

  loginID = [(BTCloudAccountInfo *)self loginID];
  v8 = NSStringFromSelector(sel_loginID);
  [coderCopy encodeObject:loginID forKey:v8];

  isSignedIn = [(BTCloudAccountInfo *)self isSignedIn];
  v10 = NSStringFromSelector(sel_isSignedIn);
  [coderCopy encodeBool:isSignedIn forKey:v10];

  manateeAvailable = [(BTCloudAccountInfo *)self manateeAvailable];
  v12 = NSStringFromSelector(sel_manateeAvailable);
  [coderCopy encodeBool:manateeAvailable forKey:v12];
}

- (BTCloudAccountInfo)initWithCoder:(id)coder
{
  coderCopy = coder;
  v15.receiver = self;
  v15.super_class = BTCloudAccountInfo;
  v5 = [(BTCloudAccountInfo *)&v15 init];
  if (v5)
  {
    v6 = objc_opt_class();
    v7 = NSStringFromSelector(sel_accountIdentifier);
    v8 = [coderCopy decodeObjectOfClass:v6 forKey:v7];
    [(BTCloudAccountInfo *)v5 setAccountIdentifier:v8];

    v9 = objc_opt_class();
    v10 = NSStringFromSelector(sel_loginID);
    v11 = [coderCopy decodeObjectOfClass:v9 forKey:v10];
    [(BTCloudAccountInfo *)v5 setLoginID:v11];

    v12 = NSStringFromSelector(sel_isSignedIn);
    -[BTCloudAccountInfo setIsSignedIn:](v5, "setIsSignedIn:", [coderCopy decodeBoolForKey:v12]);

    v13 = NSStringFromSelector(sel_manateeAvailable);
    -[BTCloudAccountInfo setManateeAvailable:](v5, "setManateeAvailable:", [coderCopy decodeBoolForKey:v13]);
  }

  return v5;
}

- (id)description
{
  v3 = IsAppleInternalBuild();
  v4 = MEMORY[0x277CCACA8];
  accountIdentifier = [(BTCloudAccountInfo *)self accountIdentifier];
  if (v3)
  {
    loginID = [(BTCloudAccountInfo *)self loginID];
    v7 = [v4 stringWithFormat:@"BTCloudAccountInfo - Account(%@): %@, signedIn: %d, manatee: %d", accountIdentifier, loginID, -[BTCloudAccountInfo isSignedIn](self, "isSignedIn"), -[BTCloudAccountInfo manateeAvailable](self, "manateeAvailable")];
  }

  else
  {
    v7 = [v4 stringWithFormat:@"BTCloudAccountInfo - AccountID: %@, signedIn: %d, manatee: %d", accountIdentifier, -[BTCloudAccountInfo isSignedIn](self, "isSignedIn"), -[BTCloudAccountInfo manateeAvailable](self, "manateeAvailable")];
  }

  return v7;
}

@end