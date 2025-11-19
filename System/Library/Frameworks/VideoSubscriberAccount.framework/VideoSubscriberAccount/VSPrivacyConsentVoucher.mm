@interface VSPrivacyConsentVoucher
- (BOOL)isEqual:(id)a3;
- (VSPrivacyConsentVoucher)init;
- (VSPrivacyConsentVoucher)initWithAppAdamID:(id)a3 providerID:(id)a4;
- (VSPrivacyConsentVoucher)initWithCoder:(id)a3;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation VSPrivacyConsentVoucher

- (VSPrivacyConsentVoucher)initWithAppAdamID:(id)a3 providerID:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (v6)
  {
    if (v7)
    {
      goto LABEL_3;
    }
  }

  else
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"The appAdamID parameter must not be nil."];
    if (v8)
    {
      goto LABEL_3;
    }
  }

  [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"The providerID parameter must not be nil."];
LABEL_3:
  v15.receiver = self;
  v15.super_class = VSPrivacyConsentVoucher;
  v9 = [(VSPrivacyConsentVoucher *)&v15 init];
  if (v9)
  {
    v10 = [v6 copy];
    appAdamID = v9->_appAdamID;
    v9->_appAdamID = v10;

    v12 = [v8 copy];
    providerID = v9->_providerID;
    v9->_providerID = v12;
  }

  return v9;
}

- (VSPrivacyConsentVoucher)initWithCoder:(id)a3
{
  v4 = a3;
  VSRequireKeyedCoder(v4);
  v13.receiver = self;
  v13.super_class = VSPrivacyConsentVoucher;
  v5 = [(VSPrivacyConsentVoucher *)&v13 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"appAdamID"];
    v7 = [v6 copy];
    appAdamID = v5->_appAdamID;
    v5->_appAdamID = v7;

    v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"providerID"];
    v10 = [v9 copy];
    providerID = v5->_providerID;
    v5->_providerID = v10;
  }

  return v5;
}

- (VSPrivacyConsentVoucher)init
{
  v3 = MEMORY[0x277CBEAD8];
  v4 = *MEMORY[0x277CBE660];
  v5 = NSStringFromSelector(a2);
  [v3 raise:v4 format:{@"The %@ initializer is not available.", v5}];

  return 0;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  VSRequireKeyedCoder(v4);
  v5 = [(VSPrivacyConsentVoucher *)self appAdamID];
  [v4 encodeObject:v5 forKey:@"appAdamID"];

  v6 = [(VSPrivacyConsentVoucher *)self providerID];
  [v4 encodeObject:v6 forKey:@"providerID"];
}

- (unint64_t)hash
{
  v3 = [(VSPrivacyConsentVoucher *)self appAdamID];
  v4 = [v3 hash];

  v5 = [(VSPrivacyConsentVoucher *)self providerID];
  v6 = [v5 hash];

  return v6 ^ v4;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && ([v4 appAdamID], v5 = objc_claimAutoreleasedReturnValue(), -[VSPrivacyConsentVoucher appAdamID](self, "appAdamID"), v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v5, "isEqual:", v6), v6, v5, v7))
  {
    v8 = [v4 providerID];
    v9 = [(VSPrivacyConsentVoucher *)self providerID];
    v10 = [v8 isEqual:v9];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)description
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v4 = MEMORY[0x277CCACA8];
  v5 = [(VSPrivacyConsentVoucher *)self appAdamID];
  v6 = [v4 stringWithFormat:@"%@=%@", @"appAdamID", v5];
  [v3 addObject:v6];

  v7 = MEMORY[0x277CCACA8];
  v8 = [(VSPrivacyConsentVoucher *)self providerID];
  v9 = [v7 stringWithFormat:@"%@=%@", @"providerID", v8];
  [v3 addObject:v9];

  v10 = MEMORY[0x277CCACA8];
  v14.receiver = self;
  v14.super_class = VSPrivacyConsentVoucher;
  v11 = [(VSPrivacyConsentVoucher *)&v14 description];
  v12 = [v10 stringWithFormat:@"<%@ %@>", v11, v3];

  return v12;
}

@end