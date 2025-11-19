@interface AAWalrusPCSAuthRequest
- (AAWalrusPCSAuthRequest)initWithAccount:(id)a3 WebSessionID:(id)a4 webSessionConsentUUID:(id)a5 encryptionEnvelope:(id)a6 appName:(id)a7 responseIdentities:(id)a8 serverInfo:(id)a9 urlString:(id)a10;
- (id)urlRequest;
@end

@implementation AAWalrusPCSAuthRequest

- (AAWalrusPCSAuthRequest)initWithAccount:(id)a3 WebSessionID:(id)a4 webSessionConsentUUID:(id)a5 encryptionEnvelope:(id)a6 appName:(id)a7 responseIdentities:(id)a8 serverInfo:(id)a9 urlString:(id)a10
{
  v35[6] = *MEMORY[0x1E69E9840];
  v32 = a3;
  v17 = a4;
  v18 = a5;
  v19 = a6;
  v20 = a7;
  v21 = a8;
  v22 = a9;
  v23 = a10;
  v33.receiver = self;
  v33.super_class = AAWalrusPCSAuthRequest;
  v24 = [(AAWalrusPCSAuthRequest *)&v33 init];
  v25 = v24;
  if (v24)
  {
    objc_storeStrong(&v24->_account, a3);
    v34[0] = @"PCSIdentitiesInResponse";
    v34[1] = @"encryptedEnvelope";
    v35[0] = v21;
    v35[1] = v19;
    v35[2] = v20;
    v34[2] = @"appName";
    v34[3] = @"webSessionID";
    v26 = [v17 lowercaseString];
    v35[3] = v26;
    v34[4] = @"webSessionConsentUUID";
    v27 = [v18 lowercaseString];
    v34[5] = @"serverInfo";
    v35[4] = v27;
    v35[5] = v22;
    v28 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v35 forKeys:v34 count:6];
    bodyParams = v25->_bodyParams;
    v25->_bodyParams = v28;

    objc_storeStrong(&v25->_internalURLString, a10);
  }

  v30 = *MEMORY[0x1E69E9840];
  return v25;
}

- (id)urlRequest
{
  v7.receiver = self;
  v7.super_class = AAWalrusPCSAuthRequest;
  v3 = [(AARequest *)&v7 urlRequest];
  v4 = [v3 mutableCopy];

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