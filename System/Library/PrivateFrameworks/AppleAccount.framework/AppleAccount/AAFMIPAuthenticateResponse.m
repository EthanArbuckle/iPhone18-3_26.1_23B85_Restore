@interface AAFMIPAuthenticateResponse
+ (id)_privacySensitiveKeys;
- (AAFMIPAuthenticateResponse)initWithHTTPResponse:(id)a3 data:(id)a4;
- (NSString)fmipUrl;
- (id)privacySensitiveResponseBody;
@end

@implementation AAFMIPAuthenticateResponse

- (AAFMIPAuthenticateResponse)initWithHTTPResponse:(id)a3 data:(id)a4
{
  v16.receiver = self;
  v16.super_class = AAFMIPAuthenticateResponse;
  v4 = [(AAResponse *)&v16 initWithHTTPResponse:a3 data:a4];
  v5 = v4;
  if (v4 && [(NSHTTPURLResponse *)v4->super._httpResponse statusCode]== 200)
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
      appleAccountInfo = v5->_appleAccountInfo;
      v5->_appleAccountInfo = v13;
    }

    [(AAResponse *)v5 setError:0];
  }

  return v5;
}

- (NSString)fmipUrl
{
  v2 = [(AAResponse *)self responseDictionary];
  v3 = [v2 objectForKey:@"url"];

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
  v3 = [(AAResponse *)self responseDictionary];

  if (v3)
  {
    v4 = [AAPrivacySensitiveDictionaryLog alloc];
    v5 = [(AAResponse *)self responseDictionary];
    v6 = +[AAFMIPAuthenticateResponse _privacySensitiveKeys];
    v7 = [(AAPrivacySensitiveDictionaryLog *)v4 initWithDictionary:v5 forKeys:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

@end