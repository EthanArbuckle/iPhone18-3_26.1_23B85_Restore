@interface AMSFDSRequest
- (AMSFDSRequest)initWithCoder:(id)coder;
- (AMSFDSRequest)initWithPurchaseIdentifier:(id)identifier account:(id)account options:(id)options;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)accountType;
- (void)encodeWithCoder:(id)coder;
@end

@implementation AMSFDSRequest

- (AMSFDSRequest)initWithPurchaseIdentifier:(id)identifier account:(id)account options:(id)options
{
  identifierCopy = identifier;
  accountCopy = account;
  optionsCopy = options;
  v16.receiver = self;
  v16.super_class = AMSFDSRequest;
  v11 = [(AMSFDSRequest *)&v16 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_account, account);
    objc_storeStrong(&v12->_options, options);
    v13 = [identifierCopy copy];
    purchaseIdentifier = v12->_purchaseIdentifier;
    v12->_purchaseIdentifier = v13;
  }

  return v12;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(ACAccount *)self->_account copyWithZone:zone];
  v7 = v5[1];
  v5[1] = v6;

  v8 = [(NSString *)self->_logKey copyWithZone:zone];
  v9 = v5[2];
  v5[2] = v8;

  v10 = [(AMSFDSOptions *)self->_options copyWithZone:zone];
  v11 = v5[3];
  v5[3] = v10;

  v12 = [(NSNumber *)self->_purchaseIdentifier copyWithZone:zone];
  v13 = v5[4];
  v5[4] = v12;

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  account = [(AMSFDSRequest *)self account];

  if (account)
  {
    [coderCopy encodeObject:self->_account forKey:@"kCodingKeyAccount"];
  }

  logKey = [(AMSFDSRequest *)self logKey];

  if (logKey)
  {
    [coderCopy encodeObject:self->_logKey forKey:@"kCodingKeyLogKey"];
  }

  options = [(AMSFDSRequest *)self options];

  if (options)
  {
    [coderCopy encodeObject:self->_options forKey:@"kCodingKeyOptions"];
  }

  purchaseIdentifier = [(AMSFDSRequest *)self purchaseIdentifier];

  v8 = coderCopy;
  if (purchaseIdentifier)
  {
    purchaseIdentifier2 = [(AMSFDSRequest *)self purchaseIdentifier];
    [coderCopy encodeObject:purchaseIdentifier2 forKey:@"kCodingKeyPurchaseIdentifier"];

    v8 = coderCopy;
  }
}

- (AMSFDSRequest)initWithCoder:(id)coder
{
  coderCopy = coder;
  v15.receiver = self;
  v15.super_class = AMSFDSRequest;
  v5 = [(AMSFDSRequest *)&v15 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kCodingKeyAccount"];
    account = v5->_account;
    v5->_account = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kCodingKeyLogKey"];
    logKey = v5->_logKey;
    v5->_logKey = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kCodingKeyOptions"];
    options = v5->_options;
    v5->_options = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kCodingKeyPurchaseIdentifier"];
    purchaseIdentifier = v5->_purchaseIdentifier;
    v5->_purchaseIdentifier = v12;
  }

  return v5;
}

- (unint64_t)accountType
{
  account = [(AMSFDSRequest *)self account];
  ams_isiCloudAccount = [account ams_isiCloudAccount];

  if (ams_isiCloudAccount)
  {
    return 2;
  }

  account2 = [(AMSFDSRequest *)self account];
  ams_isiTunesAccount = [account2 ams_isiTunesAccount];

  return ams_isiTunesAccount;
}

@end