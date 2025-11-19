@interface AALoginAccountResponse
+ (id)_privacySensitiveKeys;
- (AALoginAccountResponse)initWithCoder:(id)a3;
- (AALoginAccountResponse)initWithHTTPResponse:(id)a3 data:(id)a4;
- (AALoginAccountResponse)initWithHttpStatus:(int64_t)a3 responseBody:(id)a4;
- (id)convertToLoginDelegatesResponse;
- (id)convertToProvisioningResponse;
- (id)privacySensitiveResponseBody;
- (id)responseParametersForServiceIdentifier:(id)a3;
- (void)_parseResponse:(int64_t)a3 responseBody:(id)a4;
- (void)encodeWithCoder:(id)a3;
@end

@implementation AALoginAccountResponse

- (AALoginAccountResponse)initWithHTTPResponse:(id)a3 data:(id)a4
{
  v9.receiver = self;
  v9.super_class = AALoginAccountResponse;
  v4 = [(AAResponse *)&v9 initWithHTTPResponse:a3 data:a4 bodyIsPlist:1];
  v5 = v4;
  if (v4)
  {
    v6 = [(NSHTTPURLResponse *)v4->super.super._httpResponse statusCode];
    v7 = [(AAResponse *)v5 responseDictionary];
    [(AALoginAccountResponse *)v5 _parseResponse:v6 responseBody:v7];
  }

  return v5;
}

- (AALoginAccountResponse)initWithHttpStatus:(int64_t)a3 responseBody:(id)a4
{
  v6 = a4;
  v10.receiver = self;
  v10.super_class = AALoginAccountResponse;
  v7 = [(AALoginAccountResponse *)&v10 init];
  v8 = v7;
  if (v7)
  {
    [(AALoginAccountResponse *)v7 _parseResponse:a3 responseBody:v6];
  }

  return v8;
}

- (void)_parseResponse:(int64_t)a3 responseBody:(id)a4
{
  if (a3 == 200)
  {
    v6 = [a4 objectForKey:@"status"];
    status = self->_status;
    self->_status = v6;

    v8 = [(AAResponse *)self responseDictionary];
    v9 = [v8 objectForKey:@"status-message"];
    statusMessage = self->_statusMessage;
    self->_statusMessage = v9;

    v11 = [(AAResponse *)self responseDictionary];
    v12 = [v11 objectForKey:@"delegates"];
    responseForDelegates = self->_responseForDelegates;
    self->_responseForDelegates = v12;

    v14 = [(AAResponse *)self responseDictionary];
    v15 = [v14 objectForKey:@"dsid"];
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

- (id)responseParametersForServiceIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(AALoginAccountResponse *)self responseForDelegates];
  v6 = [v5 objectForKey:v4];

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
  v4 = [(AAResponse *)self httpResponse];
  v5 = [(AAResponse *)self data];
  v6 = [(AAResponse *)v3 initWithHTTPResponse:v4 data:v5];

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
  v3 = [(AAResponse *)self responseDictionary];

  if (v3)
  {
    v4 = [AAPrivacySensitiveDictionaryLog alloc];
    v5 = [(AAResponse *)self responseDictionary];
    v6 = +[AALoginAccountResponse _privacySensitiveKeys];
    v7 = [(AAPrivacySensitiveDictionaryLog *)v4 initWithDictionary:v5 forKeys:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (AALoginAccountResponse)initWithCoder:(id)a3
{
  v4.receiver = self;
  v4.super_class = AALoginAccountResponse;
  return [(AACodableResponse *)&v4 initWithCoder:a3];
}

- (void)encodeWithCoder:(id)a3
{
  v3.receiver = self;
  v3.super_class = AALoginAccountResponse;
  [(AACodableResponse *)&v3 encodeWithCoder:a3];
}

@end