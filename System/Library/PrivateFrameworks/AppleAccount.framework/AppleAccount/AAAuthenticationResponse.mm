@interface AAAuthenticationResponse
+ (id)_privacySensitiveKeys;
- (AAAuthenticationResponse)initWithHTTPResponse:(id)a3 data:(id)a4;
- (NSString)personID;
- (id)privacySensitiveResponseBody;
@end

@implementation AAAuthenticationResponse

- (AAAuthenticationResponse)initWithHTTPResponse:(id)a3 data:(id)a4
{
  v16.receiver = self;
  v16.super_class = AAAuthenticationResponse;
  v4 = [(AAResponse *)&v16 initWithHTTPResponse:a3 data:a4];
  v5 = v4;
  if (v4 && ([(NSHTTPURLResponse *)v4->super._httpResponse statusCode]== 200 || [(NSHTTPURLResponse *)v5->super._httpResponse statusCode]== 409))
  {
    v6 = [(AAResponse *)v5 responseDictionary];

    if (v6)
    {
      v7 = [(AAResponse *)v5 responseDictionary];
      v8 = [v7 objectForKey:@"tokens"];
      v9 = [v8 copy];
      tokens = v5->_tokens;
      v5->_tokens = v9;

      v11 = [(AAResponse *)v5 responseDictionary];
      v12 = [v11 objectForKey:@"appleAccountInfo"];
      v13 = [v12 copy];
      appleAccount = v5->_appleAccount;
      v5->_appleAccount = v13;
    }
  }

  return v5;
}

- (NSString)personID
{
  v3 = [(NSDictionary *)self->_appleAccount objectForKey:@"dsid"];
  if (!v3)
  {
    v3 = [(NSDictionary *)self->_appleAccount objectForKey:@"dsPrsID"];
  }

  return v3;
}

+ (id)_privacySensitiveKeys
{
  if (_privacySensitiveKeys_onceToken_0 != -1)
  {
    +[AAAuthenticationResponse _privacySensitiveKeys];
  }

  v3 = _privacySensitiveKeys_keysToRedact_0;

  return v3;
}

void __49__AAAuthenticationResponse__privacySensitiveKeys__block_invoke()
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
  v2 = _privacySensitiveKeys_keysToRedact_0;
  _privacySensitiveKeys_keysToRedact_0 = v1;

  v3 = *MEMORY[0x1E69E9840];
}

- (id)privacySensitiveResponseBody
{
  v3 = [(AAResponse *)self responseDictionary];

  if (v3)
  {
    v4 = [AAPrivacySensitiveDictionaryLog alloc];
    v5 = [(AAResponse *)self responseDictionary];
    v6 = +[AAAuthenticationResponse _privacySensitiveKeys];
    v7 = [(AAPrivacySensitiveDictionaryLog *)v4 initWithDictionary:v5 forKeys:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

@end