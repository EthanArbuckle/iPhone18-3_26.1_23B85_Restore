@interface AALoginAccountResponse
+ (id)_privacySensitiveKeys;
- (AALoginAccountResponse)initWithCoder:(id)coder;
- (AALoginAccountResponse)initWithHTTPResponse:(id)response data:(id)data;
- (AALoginAccountResponse)initWithHttpStatus:(int64_t)status responseBody:(id)body;
- (id)convertToLoginDelegatesResponse;
- (id)convertToProvisioningResponse;
- (id)privacySensitiveResponseBody;
- (id)responseParametersForServiceIdentifier:(id)identifier;
- (void)_parseResponse:(int64_t)response responseBody:(id)body;
- (void)encodeWithCoder:(id)coder;
@end

@implementation AALoginAccountResponse

- (AALoginAccountResponse)initWithHTTPResponse:(id)response data:(id)data
{
  v9.receiver = self;
  v9.super_class = AALoginAccountResponse;
  v4 = [(AAResponse *)&v9 initWithHTTPResponse:response data:data bodyIsPlist:1];
  v5 = v4;
  if (v4)
  {
    statusCode = [(NSHTTPURLResponse *)v4->super.super._httpResponse statusCode];
    responseDictionary = [(AAResponse *)v5 responseDictionary];
    [(AALoginAccountResponse *)v5 _parseResponse:statusCode responseBody:responseDictionary];
  }

  return v5;
}

- (AALoginAccountResponse)initWithHttpStatus:(int64_t)status responseBody:(id)body
{
  bodyCopy = body;
  v10.receiver = self;
  v10.super_class = AALoginAccountResponse;
  v7 = [(AALoginAccountResponse *)&v10 init];
  v8 = v7;
  if (v7)
  {
    [(AALoginAccountResponse *)v7 _parseResponse:status responseBody:bodyCopy];
  }

  return v8;
}

- (void)_parseResponse:(int64_t)response responseBody:(id)body
{
  if (response == 200)
  {
    v6 = [body objectForKey:@"status"];
    status = self->_status;
    self->_status = v6;

    responseDictionary = [(AAResponse *)self responseDictionary];
    v9 = [responseDictionary objectForKey:@"status-message"];
    statusMessage = self->_statusMessage;
    self->_statusMessage = v9;

    responseDictionary2 = [(AAResponse *)self responseDictionary];
    v12 = [responseDictionary2 objectForKey:@"delegates"];
    responseForDelegates = self->_responseForDelegates;
    self->_responseForDelegates = v12;

    responseDictionary3 = [(AAResponse *)self responseDictionary];
    v15 = [responseDictionary3 objectForKey:@"dsid"];
    dsid = self->_dsid;
    self->_dsid = v15;

    v29 = [(NSDictionary *)self->_responseForDelegates objectForKeyedSubscript:@"com.apple.mobileme"];
    v17 = [v29 objectForKeyedSubscript:@"status-message"];
    if (v29 && ![v17 integerValue])
    {
      v18 = [v29 objectForKeyedSubscript:@"service-data"];
      v19 = [v18 objectForKey:@"appleAccountInfo"];
      v20 = [v19 copy];

      v21 = [[AALoginResponseAppleAccountInfo alloc] initWithDictionary:v20];
      appleAccountInfo = self->_appleAccountInfo;
      self->_appleAccountInfo = v21;

      v23 = [v18 objectForKey:@"tokens"];
      v24 = [v23 copy];

      v25 = [[AALoginResponseiCloudTokens alloc] initWithTokens:v24];
      iCloudTokens = self->_iCloudTokens;
      self->_iCloudTokens = v25;

      v27 = [[AALoginResponseDataclasses alloc] initWithiCloudServiceData:v18];
      dataclasses = self->_dataclasses;
      self->_dataclasses = v27;
    }
  }
}

- (id)responseParametersForServiceIdentifier:(id)identifier
{
  identifierCopy = identifier;
  responseForDelegates = [(AALoginAccountResponse *)self responseForDelegates];
  v6 = [responseForDelegates objectForKey:identifierCopy];

  return v6;
}

- (id)convertToProvisioningResponse
{
  v2 = [(AALoginAccountResponse *)self responseParametersForServiceIdentifier:@"com.apple.mobileme"];
  v3 = [v2 objectForKeyedSubscript:@"service-data"];

  v4 = [v3 mutableCopy];
  [v4 setObject:v3 forKeyedSubscript:@"com.apple.mobileme"];
  v5 = [[AAProvisioningResponse alloc] initWithDictionary:v4];

  return v5;
}

- (id)convertToLoginDelegatesResponse
{
  v3 = [AALoginDelegatesResponse alloc];
  httpResponse = [(AAResponse *)self httpResponse];
  data = [(AAResponse *)self data];
  v6 = [(AAResponse *)v3 initWithHTTPResponse:httpResponse data:data];

  return v6;
}

+ (id)_privacySensitiveKeys
{
  if (_privacySensitiveKeys_onceToken != -1)
  {
    +[AALoginAccountResponse _privacySensitiveKeys];
  }

  v3 = _privacySensitiveKeys_keysToRedact;

  return v3;
}

void __47__AALoginAccountResponse__privacySensitiveKeys__block_invoke()
{
  v4[18] = *MEMORY[0x1E69E9840];
  v4[0] = @"age-category";
  v4[1] = @"alternate-dsid";
  v4[2] = @"auth-token";
  v4[3] = @"base-phone-number";
  v4[4] = @"firstName";
  v4[5] = @"fullName";
  v4[6] = @"fullName";
  v4[7] = @"FullUserName";
  v4[8] = @"lastName";
  v4[9] = @"middleName";
  v4[10] = @"profile-id";
  v4[11] = @"pushToken";
  v4[12] = @"realm-user-id";
  v4[13] = @"uri";
  v4[14] = @"aDsID";
  v4[15] = @"dsid";
  v4[16] = @"dsPrsID";
  v4[17] = @"tokens";
  v0 = [MEMORY[0x1E695DEC8] arrayWithObjects:v4 count:18];
  v1 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithArray:v0];
  v2 = _privacySensitiveKeys_keysToRedact;
  _privacySensitiveKeys_keysToRedact = v1;

  v3 = *MEMORY[0x1E69E9840];
}

- (id)privacySensitiveResponseBody
{
  responseDictionary = [(AAResponse *)self responseDictionary];

  if (responseDictionary)
  {
    v4 = [AAPrivacySensitiveDictionaryLog alloc];
    responseDictionary2 = [(AAResponse *)self responseDictionary];
    v6 = +[AALoginAccountResponse _privacySensitiveKeys];
    v7 = [(AAPrivacySensitiveDictionaryLog *)v4 initWithDictionary:responseDictionary2 forKeys:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (AALoginAccountResponse)initWithCoder:(id)coder
{
  v4.receiver = self;
  v4.super_class = AALoginAccountResponse;
  return [(AACodableResponse *)&v4 initWithCoder:coder];
}

- (void)encodeWithCoder:(id)coder
{
  v3.receiver = self;
  v3.super_class = AALoginAccountResponse;
  [(AACodableResponse *)&v3 encodeWithCoder:coder];
}

@end