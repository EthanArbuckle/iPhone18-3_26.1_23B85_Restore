@interface ASDRepairApplicationRequestOptions
- (ASDRepairApplicationRequestOptions)initWithBundleID:(id)d;
- (ASDRepairApplicationRequestOptions)initWithBundleID:(id)d accountIdentifier:(id)identifier claimStyle:(int64_t)style;
- (ASDRepairApplicationRequestOptions)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ASDRepairApplicationRequestOptions

- (ASDRepairApplicationRequestOptions)initWithBundleID:(id)d
{
  dCopy = d;
  v9.receiver = self;
  v9.super_class = ASDRepairApplicationRequestOptions;
  v6 = [(ASDRepairApplicationRequestOptions *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_bundleID, d);
  }

  return v7;
}

- (ASDRepairApplicationRequestOptions)initWithBundleID:(id)d accountIdentifier:(id)identifier claimStyle:(int64_t)style
{
  dCopy = d;
  identifierCopy = identifier;
  v14.receiver = self;
  v14.super_class = ASDRepairApplicationRequestOptions;
  v11 = [(ASDRepairApplicationRequestOptions *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_accountDSID, identifier);
    objc_storeStrong(&v12->_bundleID, d);
    v12->_claimStyle = style;
  }

  return v12;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [+[ASDRepairApplicationRequestOptions allocWithZone:](ASDRepairApplicationRequestOptions init];
  v6 = [(NSNumber *)self->_accountDSID copyWithZone:zone];
  accountDSID = v5->_accountDSID;
  v5->_accountDSID = v6;

  v8 = [(NSString *)self->_bundleID copyWithZone:zone];
  bundleID = v5->_bundleID;
  v5->_bundleID = v8;

  v5->_claimStyle = self->_claimStyle;
  v5->_exitReason = self->_exitReason;
  return v5;
}

- (ASDRepairApplicationRequestOptions)initWithCoder:(id)coder
{
  coderCopy = coder;
  v13.receiver = self;
  v13.super_class = ASDRepairApplicationRequestOptions;
  v5 = [(ASDRepairApplicationRequestOptions *)&v13 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"accountDSIDKey"];
    accountDSID = v5->_accountDSID;
    v5->_accountDSID = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"bundleIDKey"];
    bundleID = v5->_bundleID;
    v5->_bundleID = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"claimStyleKey"];
    v5->_claimStyle = [v10 integerValue];

    v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"exitReasonKey"];
    v5->_exitReason = [v11 unsignedIntegerValue];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  accountDSID = [(ASDRepairApplicationRequestOptions *)self accountDSID];
  [coderCopy encodeObject:accountDSID forKey:@"accountDSIDKey"];

  bundleID = [(ASDRepairApplicationRequestOptions *)self bundleID];
  [coderCopy encodeObject:bundleID forKey:@"bundleIDKey"];

  v7 = [MEMORY[0x1E696AD98] numberWithInteger:{-[ASDRepairApplicationRequestOptions claimStyle](self, "claimStyle")}];
  [coderCopy encodeObject:v7 forKey:@"claimStyleKey"];

  v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[ASDRepairApplicationRequestOptions exitReason](self, "exitReason")}];
  [coderCopy encodeObject:v8 forKey:@"exitReasonKey"];
}

@end