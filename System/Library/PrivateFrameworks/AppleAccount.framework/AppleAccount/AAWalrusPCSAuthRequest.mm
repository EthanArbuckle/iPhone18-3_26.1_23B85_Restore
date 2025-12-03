@interface AAWalrusPCSAuthRequest
- (AAWalrusPCSAuthRequest)initWithAccount:(id)account WebSessionID:(id)d webSessionConsentUUID:(id)iD encryptionEnvelope:(id)envelope appName:(id)name responseIdentities:(id)identities serverInfo:(id)info urlString:(id)self0;
- (id)urlRequest;
@end

@implementation AAWalrusPCSAuthRequest

- (AAWalrusPCSAuthRequest)initWithAccount:(id)account WebSessionID:(id)d webSessionConsentUUID:(id)iD encryptionEnvelope:(id)envelope appName:(id)name responseIdentities:(id)identities serverInfo:(id)info urlString:(id)self0
{
  v35[6] = *MEMORY[0x1E69E9840];
  accountCopy = account;
  dCopy = d;
  iDCopy = iD;
  envelopeCopy = envelope;
  nameCopy = name;
  identitiesCopy = identities;
  infoCopy = info;
  stringCopy = string;
  v33.receiver = self;
  v33.super_class = AAWalrusPCSAuthRequest;
  v24 = [(AAWalrusPCSAuthRequest *)&v33 init];
  v25 = v24;
  if (v24)
  {
    objc_storeStrong(&v24->_account, account);
    v34[0] = @"PCSIdentitiesInResponse";
    v34[1] = @"encryptedEnvelope";
    v35[0] = identitiesCopy;
    v35[1] = envelopeCopy;
    v35[2] = nameCopy;
    v34[2] = @"appName";
    v34[3] = @"webSessionID";
    lowercaseString = [dCopy lowercaseString];
    v35[3] = lowercaseString;
    v34[4] = @"webSessionConsentUUID";
    lowercaseString2 = [iDCopy lowercaseString];
    v34[5] = @"serverInfo";
    v35[4] = lowercaseString2;
    v35[5] = infoCopy;
    v28 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v35 forKeys:v34 count:6];
    bodyParams = v25->_bodyParams;
    v25->_bodyParams = v28;

    objc_storeStrong(&v25->_internalURLString, string);
  }

  v30 = *MEMORY[0x1E69E9840];
  return v25;
}

- (id)urlRequest
{
  v7.receiver = self;
  v7.super_class = AAWalrusPCSAuthRequest;
  urlRequest = [(AARequest *)&v7 urlRequest];
  v4 = [urlRequest mutableCopy];

  if (([v4 aa_addAuthTokenOrBasicAuthHeaderWithAccount:self->_account preferUsingPassword:0] & 1) == 0)
  {
    v5 = _AALogSystem();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [(AAWalrusPCSAuthRequest *)v5 urlRequest];
    }
  }

  if (self->_bodyParams)
  {
    [v4 aa_setJSONBodyWithParameters:?];
  }

  [v4 setHTTPMethod:@"POST"];

  return v4;
}

@end