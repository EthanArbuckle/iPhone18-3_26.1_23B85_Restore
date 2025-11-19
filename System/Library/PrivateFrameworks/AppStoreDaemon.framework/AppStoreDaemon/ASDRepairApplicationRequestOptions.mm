@interface ASDRepairApplicationRequestOptions
- (ASDRepairApplicationRequestOptions)initWithBundleID:(id)a3;
- (ASDRepairApplicationRequestOptions)initWithBundleID:(id)a3 accountIdentifier:(id)a4 claimStyle:(int64_t)a5;
- (ASDRepairApplicationRequestOptions)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation ASDRepairApplicationRequestOptions

- (ASDRepairApplicationRequestOptions)initWithBundleID:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = ASDRepairApplicationRequestOptions;
  v6 = [(ASDRepairApplicationRequestOptions *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_bundleID, a3);
  }

  return v7;
}

- (ASDRepairApplicationRequestOptions)initWithBundleID:(id)a3 accountIdentifier:(id)a4 claimStyle:(int64_t)a5
{
  v9 = a3;
  v10 = a4;
  v14.receiver = self;
  v14.super_class = ASDRepairApplicationRequestOptions;
  v11 = [(ASDRepairApplicationRequestOptions *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_accountDSID, a4);
    objc_storeStrong(&v12->_bundleID, a3);
    v12->_claimStyle = a5;
  }

  return v12;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [+[ASDRepairApplicationRequestOptions allocWithZone:](ASDRepairApplicationRequestOptions init];
  v6 = [(NSNumber *)self->_accountDSID copyWithZone:a3];
  accountDSID = v5->_accountDSID;
  v5->_accountDSID = v6;

  v8 = [(NSString *)self->_bundleID copyWithZone:a3];
  bundleID = v5->_bundleID;
  v5->_bundleID = v8;

  v5->_claimStyle = self->_claimStyle;
  v5->_exitReason = self->_exitReason;
  return v5;
}

- (ASDRepairApplicationRequestOptions)initWithCoder:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = ASDRepairApplicationRequestOptions;
  v5 = [(ASDRepairApplicationRequestOptions *)&v13 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"accountDSIDKey"];
    accountDSID = v5->_accountDSID;
    v5->_accountDSID = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"bundleIDKey"];
    bundleID = v5->_bundleID;
    v5->_bundleID = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"claimStyleKey"];
    v5->_claimStyle = [v10 integerValue];

    v11 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"exitReasonKey"];
    v5->_exitReason = [v11 unsignedIntegerValue];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(ASDRepairApplicationRequestOptions *)self accountDSID];
  [v4 encodeObject:v5 forKey:@"accountDSIDKey"];

  v6 = [(ASDRepairApplicationRequestOptions *)self bundleID];
  [v4 encodeObject:v6 forKey:@"bundleIDKey"];

  v7 = [MEMORY[0x1E696AD98] numberWithInteger:{-[ASDRepairApplicationRequestOptions claimStyle](self, "claimStyle")}];
  [v4 encodeObject:v7 forKey:@"claimStyleKey"];

  v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[ASDRepairApplicationRequestOptions exitReason](self, "exitReason")}];
  [v4 encodeObject:v8 forKey:@"exitReasonKey"];
}

@end