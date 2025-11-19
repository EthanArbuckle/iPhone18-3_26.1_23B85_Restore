@interface AMSFDSRequest
- (AMSFDSRequest)initWithCoder:(id)a3;
- (AMSFDSRequest)initWithPurchaseIdentifier:(id)a3 account:(id)a4 options:(id)a5;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)accountType;
- (void)encodeWithCoder:(id)a3;
@end

@implementation AMSFDSRequest

- (AMSFDSRequest)initWithPurchaseIdentifier:(id)a3 account:(id)a4 options:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v16.receiver = self;
  v16.super_class = AMSFDSRequest;
  v11 = [(AMSFDSRequest *)&v16 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_account, a4);
    objc_storeStrong(&v12->_options, a5);
    v13 = [v8 copy];
    purchaseIdentifier = v12->_purchaseIdentifier;
    v12->_purchaseIdentifier = v13;
  }

  return v12;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(ACAccount *)self->_account copyWithZone:a3];
  v7 = v5[1];
  v5[1] = v6;

  v8 = [(NSString *)self->_logKey copyWithZone:a3];
  v9 = v5[2];
  v5[2] = v8;

  v10 = [(AMSFDSOptions *)self->_options copyWithZone:a3];
  v11 = v5[3];
  v5[3] = v10;

  v12 = [(NSNumber *)self->_purchaseIdentifier copyWithZone:a3];
  v13 = v5[4];
  v5[4] = v12;

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v10 = a3;
  v4 = [(AMSFDSRequest *)self account];

  if (v4)
  {
    [v10 encodeObject:self->_account forKey:@"kCodingKeyAccount"];
  }

  v5 = [(AMSFDSRequest *)self logKey];

  if (v5)
  {
    [v10 encodeObject:self->_logKey forKey:@"kCodingKeyLogKey"];
  }

  v6 = [(AMSFDSRequest *)self options];

  if (v6)
  {
    [v10 encodeObject:self->_options forKey:@"kCodingKeyOptions"];
  }

  v7 = [(AMSFDSRequest *)self purchaseIdentifier];

  v8 = v10;
  if (v7)
  {
    v9 = [(AMSFDSRequest *)self purchaseIdentifier];
    [v10 encodeObject:v9 forKey:@"kCodingKeyPurchaseIdentifier"];

    v8 = v10;
  }
}

- (AMSFDSRequest)initWithCoder:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = AMSFDSRequest;
  v5 = [(AMSFDSRequest *)&v15 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kCodingKeyAccount"];
    account = v5->_account;
    v5->_account = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kCodingKeyLogKey"];
    logKey = v5->_logKey;
    v5->_logKey = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kCodingKeyOptions"];
    options = v5->_options;
    v5->_options = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kCodingKeyPurchaseIdentifier"];
    purchaseIdentifier = v5->_purchaseIdentifier;
    v5->_purchaseIdentifier = v12;
  }

  return v5;
}

- (unint64_t)accountType
{
  v3 = [(AMSFDSRequest *)self account];
  v4 = [v3 ams_isiCloudAccount];

  if (v4)
  {
    return 2;
  }

  v6 = [(AMSFDSRequest *)self account];
  v7 = [v6 ams_isiTunesAccount];

  return v7;
}

@end