@interface AMSFraudReportOptions
- (AMSFraudReportOptions)initWithCoder:(id)coder;
- (AMSFraudReportOptions)initWithTransactionIdentifier:(id)identifier nameSpace:(id)space fsrData:(id)data;
- (void)encodeWithCoder:(id)coder;
- (void)setAuthenticationTokenType:(unint64_t)type;
@end

@implementation AMSFraudReportOptions

- (AMSFraudReportOptions)initWithTransactionIdentifier:(id)identifier nameSpace:(id)space fsrData:(id)data
{
  identifierCopy = identifier;
  spaceCopy = space;
  dataCopy = data;
  if (!identifierCopy || !spaceCopy || (v11 = dataCopy) == 0)
  {
    v20 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"transactionIdentifier userInfo:{namespace and fsrData must all be non-nil", 0}];
    objc_exception_throw(v20);
  }

  v21.receiver = self;
  v21.super_class = AMSFraudReportOptions;
  v12 = [(AMSFraudReportOptions *)&v21 init];
  if (v12)
  {
    v13 = [identifierCopy copy];
    transactionIdentifier = v12->_transactionIdentifier;
    v12->_transactionIdentifier = v13;

    v15 = [spaceCopy copy];
    nameSpace = v12->_nameSpace;
    v12->_nameSpace = v15;

    v17 = [v11 copy];
    fsrData = v12->_fsrData;
    v12->_fsrData = v17;

    v12->_authenticationTokenType = _os_feature_enabled_impl();
    v12->_shouldIncludeODIAssessment = 0;
  }

  return v12;
}

- (void)setAuthenticationTokenType:(unint64_t)type
{
  if (![AMSFraudReportOptions isValidAuthenticationTokenType:?])
  {
    v5 = MEMORY[0x1E695DF30];
    v6 = *MEMORY[0x1E695D940];
    type = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unknown authentication token type %lu specified", type];
    v8 = [v5 exceptionWithName:v6 reason:type userInfo:0];
    v9 = v8;

    objc_exception_throw(v8);
  }

  self->_authenticationTokenType = type;
}

- (AMSFraudReportOptions)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"account"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"transactionIdentifier"];
  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"namespace"];
  v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"fsrData"];
  v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"keyIdentifier"];
  v10 = [coderCopy decodeIntegerForKey:@"authenticationTokenType"];
  v11 = [coderCopy decodeBoolForKey:@"shouldIncludeODIAssessment"];

  selfCopy = 0;
  if (v6 && v7 && v8)
  {
    if ([AMSFraudReportOptions isValidAuthenticationTokenType:v10])
    {
      v13 = [(AMSFraudReportOptions *)self initWithTransactionIdentifier:v6 nameSpace:v7 fsrData:v8];
      v14 = v13;
      if (v13)
      {
        objc_storeStrong(&v13->_account, v5);
        objc_storeStrong(&v14->_keyIdentifier, v9);
        v14->_authenticationTokenType = v10;
        v14->_shouldIncludeODIAssessment = v11;
      }

      self = v14;
      selfCopy = self;
    }

    else
    {
      selfCopy = 0;
    }
  }

  return selfCopy;
}

- (void)encodeWithCoder:(id)coder
{
  account = self->_account;
  coderCopy = coder;
  [coderCopy encodeObject:account forKey:@"account"];
  [coderCopy encodeObject:self->_transactionIdentifier forKey:@"transactionIdentifier"];
  [coderCopy encodeObject:self->_nameSpace forKey:@"namespace"];
  [coderCopy encodeObject:self->_fsrData forKey:@"fsrData"];
  [coderCopy encodeObject:self->_keyIdentifier forKey:@"keyIdentifier"];
  [coderCopy encodeInteger:self->_authenticationTokenType forKey:@"authenticationTokenType"];
  [coderCopy encodeBool:self->_shouldIncludeODIAssessment forKey:@"shouldIncludeODIAssessment"];
}

@end