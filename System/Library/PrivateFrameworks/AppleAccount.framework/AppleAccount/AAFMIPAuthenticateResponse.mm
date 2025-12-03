@interface AAFMIPAuthenticateResponse
+ (id)_privacySensitiveKeys;
- (AAFMIPAuthenticateResponse)initWithHTTPResponse:(id)response data:(id)data;
- (NSString)fmipUrl;
- (id)privacySensitiveResponseBody;
@end

@implementation AAFMIPAuthenticateResponse

- (AAFMIPAuthenticateResponse)initWithHTTPResponse:(id)response data:(id)data
{
  v16.receiver = self;
  v16.super_class = AAFMIPAuthenticateResponse;
  v4 = [(AAResponse *)&v16 initWithHTTPResponse:response data:data];
  v5 = v4;
  if (v4 && [(NSHTTPURLResponse *)v4->super._httpResponse statusCode]== 200)
  {
    responseDictionary = [(AAResponse *)v5 responseDictionary];

    if (responseDictionary)
    {
      responseDictionary2 = [(AAResponse *)v5 responseDictionary];
      v8 = [responseDictionary2 objectForKey:@"tokens"];
      v9 = [v8 copy];
      tokens = v5->_tokens;
      v5->_tokens = v9;

      responseDictionary3 = [(AAResponse *)v5 responseDictionary];
      v12 = [responseDictionary3 objectForKey:@"appleAccountInfo"];
      v13 = [v12 copy];
      appleAccountInfo = v5->_appleAccountInfo;
      v5->_appleAccountInfo = v13;
    }

    [(AAResponse *)v5 setError:0];
  }

  return v5;
}

- (NSString)fmipUrl
{
  responseDictionary = [(AAResponse *)self responseDictionary];
  v3 = [responseDictionary objectForKey:@"url"];

  return v3;
}

+ (id)_privacySensitiveKeys
{
  if (_privacySensitiveKeys_onceToken_349 != -1)
  {
    +[AAFMIPAuthenticateResponse _privacySensitiveKeys];
  }

  v3 = _privacySensitiveKeys_keysToRedact_348;

  return v3;
}

void __51__AAFMIPAuthenticateResponse__privacySensitiveKeys__block_invoke()
{
  v4[2] = *MEMORY[0x1E69E9840];
  v4[0] = @"mmeFMIPWipeToken";
  v4[1] = @"dsid";
  v0 = [MEMORY[0x1E695DEC8] arrayWithObjects:v4 count:2];
  v1 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithArray:v0];
  v2 = _privacySensitiveKeys_keysToRedact_348;
  _privacySensitiveKeys_keysToRedact_348 = v1;

  v3 = *MEMORY[0x1E69E9840];
}

- (id)privacySensitiveResponseBody
{
  responseDictionary = [(AAResponse *)self responseDictionary];

  if (responseDictionary)
  {
    v4 = [AAPrivacySensitiveDictionaryLog alloc];
    responseDictionary2 = [(AAResponse *)self responseDictionary];
    v6 = +[AAFMIPAuthenticateResponse _privacySensitiveKeys];
    v7 = [(AAPrivacySensitiveDictionaryLog *)v4 initWithDictionary:responseDictionary2 forKeys:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

@end