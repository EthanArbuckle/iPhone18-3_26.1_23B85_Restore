@interface AMSFraudReportOptions
- (AMSFraudReportOptions)initWithCoder:(id)a3;
- (AMSFraudReportOptions)initWithTransactionIdentifier:(id)a3 nameSpace:(id)a4 fsrData:(id)a5;
- (void)encodeWithCoder:(id)a3;
- (void)setAuthenticationTokenType:(unint64_t)a3;
@end

@implementation AMSFraudReportOptions

- (AMSFraudReportOptions)initWithTransactionIdentifier:(id)a3 nameSpace:(id)a4 fsrData:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (!v8 || !v9 || (v11 = v10) == 0)
  {
    v20 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"transactionIdentifier userInfo:{namespace and fsrData must all be non-nil", 0}];
    objc_exception_throw(v20);
  }

  v21.receiver = self;
  v21.super_class = AMSFraudReportOptions;
  v12 = [(AMSFraudReportOptions *)&v21 init];
  if (v12)
  {
    v13 = [v8 copy];
    transactionIdentifier = v12->_transactionIdentifier;
    v12->_transactionIdentifier = v13;

    v15 = [v9 copy];
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

- (void)setAuthenticationTokenType:(unint64_t)a3
{
  if (![AMSFraudReportOptions isValidAuthenticationTokenType:?])
  {
    v5 = MEMORY[0x1E695DF30];
    v6 = *MEMORY[0x1E695D940];
    v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unknown authentication token type %lu specified", a3];
    v8 = [v5 exceptionWithName:v6 reason:v7 userInfo:0];
    v9 = v8;

    objc_exception_throw(v8);
  }

  self->_authenticationTokenType = a3;
}

- (AMSFraudReportOptions)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"account"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"transactionIdentifier"];
  v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"namespace"];
  v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"fsrData"];
  v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"keyIdentifier"];
  v10 = [v4 decodeIntegerForKey:@"authenticationTokenType"];
  v11 = [v4 decodeBoolForKey:@"shouldIncludeODIAssessment"];

  v12 = 0;
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
      v12 = self;
    }

    else
    {
      v12 = 0;
    }
  }

  return v12;
}

- (void)encodeWithCoder:(id)a3
{
  account = self->_account;
  v5 = a3;
  [v5 encodeObject:account forKey:@"account"];
  [v5 encodeObject:self->_transactionIdentifier forKey:@"transactionIdentifier"];
  [v5 encodeObject:self->_nameSpace forKey:@"namespace"];
  [v5 encodeObject:self->_fsrData forKey:@"fsrData"];
  [v5 encodeObject:self->_keyIdentifier forKey:@"keyIdentifier"];
  [v5 encodeInteger:self->_authenticationTokenType forKey:@"authenticationTokenType"];
  [v5 encodeBool:self->_shouldIncludeODIAssessment forKey:@"shouldIncludeODIAssessment"];
}

@end