@interface AMSSignInContext
- (AMSSignInContext)init;
- (AMSSignInContext)initWithCoder:(id)a3;
- (NSString)hashedDescription;
- (void)encodeWithCoder:(id)a3;
@end

@implementation AMSSignInContext

- (AMSSignInContext)init
{
  v3.receiver = self;
  v3.super_class = AMSSignInContext;
  result = [(AMSSignInContext *)&v3 init];
  if (result)
  {
    *&result->_canMakeAccountActive = 257;
  }

  return result;
}

- (NSString)hashedDescription
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  if ([(AMSSignInContext *)self canMakeAccountActive])
  {
    v5 = @"true";
  }

  else
  {
    v5 = @"false";
  }

  v6 = [(AMSSignInContext *)self debugReason];
  if ([(AMSSignInContext *)self ignoreAccountConversion])
  {
    v7 = @"true";
  }

  else
  {
    v7 = @"false";
  }

  if ([(AMSSignInContext *)self skipAuthentication])
  {
    v8 = @"true";
  }

  else
  {
    v8 = @"false";
  }

  v9 = [v3 stringWithFormat:@"<%@: %p canMakeAccountActive = %@ | debugReason = %@ | ignoreAccountConversion = %@ | skipAuthentication = %@>", v4, self, v5, v6, v7, v8];

  return v9;
}

- (void)encodeWithCoder:(id)a3
{
  v6 = a3;
  [v6 encodeBool:-[AMSSignInContext canMakeAccountActive](self forKey:{"canMakeAccountActive"), @"canMakeAccountActive"}];
  v4 = [(AMSSignInContext *)self customHTTPHeaders];
  [v6 encodeObject:v4 forKey:@"customHTTPHeaders"];

  v5 = [(AMSSignInContext *)self debugReason];
  [v6 encodeObject:v5 forKey:@"debugReason"];

  [v6 encodeBool:-[AMSSignInContext ignoreAccountConversion](self forKey:{"ignoreAccountConversion"), @"ignoreAccountConversion"}];
  [v6 encodeBool:-[AMSSignInContext skipAuthentication](self forKey:{"skipAuthentication"), @"skipAuthentication"}];
}

- (AMSSignInContext)initWithCoder:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = AMSSignInContext;
  v5 = [(AMSSignInContext *)&v12 init];
  if (v5)
  {
    v5->_canMakeAccountActive = [v4 decodeBoolForKey:@"canMakeAccountActive"];
    v6 = objc_opt_class();
    v7 = [v4 decodeDictionaryWithKeysOfClass:v6 objectsOfClass:objc_opt_class() forKey:@"customHTTPHeaders"];
    customHTTPHeaders = v5->_customHTTPHeaders;
    v5->_customHTTPHeaders = v7;

    v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"debugReason"];
    debugReason = v5->_debugReason;
    v5->_debugReason = v9;

    v5->_ignoreAccountConversion = [v4 decodeBoolForKey:@"ignoreAccountConversion"];
    v5->_skipAuthentication = [v4 decodeBoolForKey:@"skipAuthentication"];
  }

  return v5;
}

@end