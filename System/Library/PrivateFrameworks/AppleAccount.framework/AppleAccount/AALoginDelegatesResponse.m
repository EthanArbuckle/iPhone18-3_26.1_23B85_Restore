@interface AALoginDelegatesResponse
+ (id)_privacySensitiveKeys;
- (NSDictionary)responseParameters;
- (NSNumber)status;
- (NSString)altDSID;
- (NSString)dsid;
- (NSString)statusMessage;
- (id)augmentedResponseParametersForServiceIdentifier:(id)a3 withAppleID:(id)a4 password:(id)a5 DSID:(id)a6 altDSID:(id)a7;
- (id)privacySensitiveResponseBody;
- (id)responseParametersForServiceIdentifier:(id)a3;
@end

@implementation AALoginDelegatesResponse

- (NSNumber)status
{
  v2 = [(AAResponse *)self responseDictionary];
  v3 = [v2 objectForKey:@"status"];

  return v3;
}

- (NSString)statusMessage
{
  v2 = [(AAResponse *)self responseDictionary];
  v3 = [v2 objectForKey:@"status-message"];

  return v3;
}

- (NSDictionary)responseParameters
{
  v2 = [(AAResponse *)self responseDictionary];
  v3 = [v2 objectForKey:@"delegates"];

  return v3;
}

- (id)responseParametersForServiceIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(AALoginDelegatesResponse *)self responseParameters];
  v6 = [v5 objectForKey:v4];

  return v6;
}

- (NSString)dsid
{
  v2 = [(AAResponse *)self responseDictionary];
  v3 = [v2 objectForKey:@"dsid"];

  return v3;
}

- (NSString)altDSID
{
  v2 = [(AALoginDelegatesResponse *)self responseParameters];
  v3 = [v2 objectForKeyedSubscript:@"com.apple.mobileme"];
  v4 = [v3 objectForKeyedSubscript:@"service-data"];
  v5 = [v4 objectForKeyedSubscript:@"appleAccountInfo"];
  v6 = [v5 objectForKeyedSubscript:@"aDsID"];

  return v6;
}

- (id)augmentedResponseParametersForServiceIdentifier:(id)a3 withAppleID:(id)a4 password:(id)a5 DSID:(id)a6 altDSID:(id)a7
{
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v15 = a7;
  v16 = [(AALoginDelegatesResponse *)self responseParametersForServiceIdentifier:a3];
  v17 = [v16 objectForKeyedSubscript:@"service-data"];
  v18 = [v17 mutableCopy];

  if (!v18)
  {
    v18 = objc_alloc_init(MEMORY[0x1E695DF90]);
  }

  v19 = [v16 objectForKeyedSubscript:@"status"];

  if (v19)
  {
    v20 = [v16 objectForKeyedSubscript:@"status"];
    [v18 setObject:v20 forKeyedSubscript:@"status"];
  }

  v21 = [v16 objectForKeyedSubscript:@"status-message"];

  if (v21)
  {
    v22 = [v16 objectForKeyedSubscript:@"status-message"];
    [v18 setObject:v22 forKeyedSubscript:@"status-message"];
  }

  if (v12)
  {
    [v18 setObject:v12 forKeyedSubscript:@"appleIDEnteredByUser"];
  }

  if (v13)
  {
    [v18 setObject:v13 forKeyedSubscript:@"password"];
  }

  if (v14)
  {
    [v18 setObject:v14 forKeyedSubscript:@"dsid"];
  }

  if (v15)
  {
    [v18 setObject:v15 forKeyedSubscript:@"altDSID"];
  }

  v23 = [v18 copy];

  return v23;
}

+ (id)_privacySensitiveKeys
{
  if (_privacySensitiveKeys_onceToken_375 != -1)
  {
    +[AALoginDelegatesResponse _privacySensitiveKeys];
  }

  v3 = _privacySensitiveKeys_keysToRedact_374;

  return v3;
}

void __49__AALoginDelegatesResponse__privacySensitiveKeys__block_invoke()
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
  v2 = _privacySensitiveKeys_keysToRedact_374;
  _privacySensitiveKeys_keysToRedact_374 = v1;

  v3 = *MEMORY[0x1E69E9840];
}

- (id)privacySensitiveResponseBody
{
  v3 = [(AAResponse *)self responseDictionary];

  if (v3)
  {
    v4 = [AAPrivacySensitiveDictionaryLog alloc];
    v5 = [(AAResponse *)self responseDictionary];
    v6 = +[AALoginDelegatesResponse _privacySensitiveKeys];
    v7 = [(AAPrivacySensitiveDictionaryLog *)v4 initWithDictionary:v5 forKeys:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

@end