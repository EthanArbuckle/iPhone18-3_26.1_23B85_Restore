@interface AMSSignInContext
- (AMSSignInContext)init;
- (AMSSignInContext)initWithCoder:(id)coder;
- (NSString)hashedDescription;
- (void)encodeWithCoder:(id)coder;
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

  debugReason = [(AMSSignInContext *)self debugReason];
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

  v9 = [v3 stringWithFormat:@"<%@: %p canMakeAccountActive = %@ | debugReason = %@ | ignoreAccountConversion = %@ | skipAuthentication = %@>", v4, self, v5, debugReason, v7, v8];

  return v9;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeBool:-[AMSSignInContext canMakeAccountActive](self forKey:{"canMakeAccountActive"), @"canMakeAccountActive"}];
  customHTTPHeaders = [(AMSSignInContext *)self customHTTPHeaders];
  [coderCopy encodeObject:customHTTPHeaders forKey:@"customHTTPHeaders"];

  debugReason = [(AMSSignInContext *)self debugReason];
  [coderCopy encodeObject:debugReason forKey:@"debugReason"];

  [coderCopy encodeBool:-[AMSSignInContext ignoreAccountConversion](self forKey:{"ignoreAccountConversion"), @"ignoreAccountConversion"}];
  [coderCopy encodeBool:-[AMSSignInContext skipAuthentication](self forKey:{"skipAuthentication"), @"skipAuthentication"}];
}

- (AMSSignInContext)initWithCoder:(id)coder
{
  coderCopy = coder;
  v12.receiver = self;
  v12.super_class = AMSSignInContext;
  v5 = [(AMSSignInContext *)&v12 init];
  if (v5)
  {
    v5->_canMakeAccountActive = [coderCopy decodeBoolForKey:@"canMakeAccountActive"];
    v6 = objc_opt_class();
    v7 = [coderCopy decodeDictionaryWithKeysOfClass:v6 objectsOfClass:objc_opt_class() forKey:@"customHTTPHeaders"];
    customHTTPHeaders = v5->_customHTTPHeaders;
    v5->_customHTTPHeaders = v7;

    v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"debugReason"];
    debugReason = v5->_debugReason;
    v5->_debugReason = v9;

    v5->_ignoreAccountConversion = [coderCopy decodeBoolForKey:@"ignoreAccountConversion"];
    v5->_skipAuthentication = [coderCopy decodeBoolForKey:@"skipAuthentication"];
  }

  return v5;
}

@end