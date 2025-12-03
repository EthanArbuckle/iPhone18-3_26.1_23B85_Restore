@interface VSPrivacyConsentVoucher
- (BOOL)isEqual:(id)equal;
- (VSPrivacyConsentVoucher)init;
- (VSPrivacyConsentVoucher)initWithAppAdamID:(id)d providerID:(id)iD;
- (VSPrivacyConsentVoucher)initWithCoder:(id)coder;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation VSPrivacyConsentVoucher

- (VSPrivacyConsentVoucher)initWithAppAdamID:(id)d providerID:(id)iD
{
  dCopy = d;
  iDCopy = iD;
  v8 = iDCopy;
  if (dCopy)
  {
    if (iDCopy)
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
    v10 = [dCopy copy];
    appAdamID = v9->_appAdamID;
    v9->_appAdamID = v10;

    v12 = [v8 copy];
    providerID = v9->_providerID;
    v9->_providerID = v12;
  }

  return v9;
}

- (VSPrivacyConsentVoucher)initWithCoder:(id)coder
{
  coderCopy = coder;
  VSRequireKeyedCoder(coderCopy);
  v13.receiver = self;
  v13.super_class = VSPrivacyConsentVoucher;
  v5 = [(VSPrivacyConsentVoucher *)&v13 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"appAdamID"];
    v7 = [v6 copy];
    appAdamID = v5->_appAdamID;
    v5->_appAdamID = v7;

    v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"providerID"];
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

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  VSRequireKeyedCoder(coderCopy);
  appAdamID = [(VSPrivacyConsentVoucher *)self appAdamID];
  [coderCopy encodeObject:appAdamID forKey:@"appAdamID"];

  providerID = [(VSPrivacyConsentVoucher *)self providerID];
  [coderCopy encodeObject:providerID forKey:@"providerID"];
}

- (unint64_t)hash
{
  appAdamID = [(VSPrivacyConsentVoucher *)self appAdamID];
  v4 = [appAdamID hash];

  providerID = [(VSPrivacyConsentVoucher *)self providerID];
  v6 = [providerID hash];

  return v6 ^ v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && ([equalCopy appAdamID], v5 = objc_claimAutoreleasedReturnValue(), -[VSPrivacyConsentVoucher appAdamID](self, "appAdamID"), v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v5, "isEqual:", v6), v6, v5, v7))
  {
    providerID = [equalCopy providerID];
    providerID2 = [(VSPrivacyConsentVoucher *)self providerID];
    v10 = [providerID isEqual:providerID2];
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
  appAdamID = [(VSPrivacyConsentVoucher *)self appAdamID];
  v6 = [v4 stringWithFormat:@"%@=%@", @"appAdamID", appAdamID];
  [v3 addObject:v6];

  v7 = MEMORY[0x277CCACA8];
  providerID = [(VSPrivacyConsentVoucher *)self providerID];
  v9 = [v7 stringWithFormat:@"%@=%@", @"providerID", providerID];
  [v3 addObject:v9];

  v10 = MEMORY[0x277CCACA8];
  v14.receiver = self;
  v14.super_class = VSPrivacyConsentVoucher;
  v11 = [(VSPrivacyConsentVoucher *)&v14 description];
  v12 = [v10 stringWithFormat:@"<%@ %@>", v11, v3];

  return v12;
}

@end