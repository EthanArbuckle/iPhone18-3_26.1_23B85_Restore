@interface BTCloudAccountInfo
- (BTCloudAccountInfo)initWithCoder:(id)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation BTCloudAccountInfo

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(BTCloudAccountInfo *)self accountIdentifier];
  v6 = NSStringFromSelector(sel_accountIdentifier);
  [v4 encodeObject:v5 forKey:v6];

  v7 = [(BTCloudAccountInfo *)self loginID];
  v8 = NSStringFromSelector(sel_loginID);
  [v4 encodeObject:v7 forKey:v8];

  v9 = [(BTCloudAccountInfo *)self isSignedIn];
  v10 = NSStringFromSelector(sel_isSignedIn);
  [v4 encodeBool:v9 forKey:v10];

  v11 = [(BTCloudAccountInfo *)self manateeAvailable];
  v12 = NSStringFromSelector(sel_manateeAvailable);
  [v4 encodeBool:v11 forKey:v12];
}

- (BTCloudAccountInfo)initWithCoder:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = BTCloudAccountInfo;
  v5 = [(BTCloudAccountInfo *)&v15 init];
  if (v5)
  {
    v6 = objc_opt_class();
    v7 = NSStringFromSelector(sel_accountIdentifier);
    v8 = [v4 decodeObjectOfClass:v6 forKey:v7];
    [(BTCloudAccountInfo *)v5 setAccountIdentifier:v8];

    v9 = objc_opt_class();
    v10 = NSStringFromSelector(sel_loginID);
    v11 = [v4 decodeObjectOfClass:v9 forKey:v10];
    [(BTCloudAccountInfo *)v5 setLoginID:v11];

    v12 = NSStringFromSelector(sel_isSignedIn);
    -[BTCloudAccountInfo setIsSignedIn:](v5, "setIsSignedIn:", [v4 decodeBoolForKey:v12]);

    v13 = NSStringFromSelector(sel_manateeAvailable);
    -[BTCloudAccountInfo setManateeAvailable:](v5, "setManateeAvailable:", [v4 decodeBoolForKey:v13]);
  }

  return v5;
}

- (id)description
{
  v3 = IsAppleInternalBuild();
  v4 = MEMORY[0x277CCACA8];
  v5 = [(BTCloudAccountInfo *)self accountIdentifier];
  if (v3)
  {
    v6 = [(BTCloudAccountInfo *)self loginID];
    v7 = [v4 stringWithFormat:@"BTCloudAccountInfo - Account(%@): %@, signedIn: %d, manatee: %d", v5, v6, -[BTCloudAccountInfo isSignedIn](self, "isSignedIn"), -[BTCloudAccountInfo manateeAvailable](self, "manateeAvailable")];
  }

  else
  {
    v7 = [v4 stringWithFormat:@"BTCloudAccountInfo - AccountID: %@, signedIn: %d, manatee: %d", v5, -[BTCloudAccountInfo isSignedIn](self, "isSignedIn"), -[BTCloudAccountInfo manateeAvailable](self, "manateeAvailable")];
  }

  return v7;
}

@end