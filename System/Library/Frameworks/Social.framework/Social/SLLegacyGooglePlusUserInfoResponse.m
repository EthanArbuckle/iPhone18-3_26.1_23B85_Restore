@interface SLLegacyGooglePlusUserInfoResponse
- (void)_populateDataFromResponseDictionary:(id)a3;
@end

@implementation SLLegacyGooglePlusUserInfoResponse

- (void)_populateDataFromResponseDictionary:(id)a3
{
  v32 = *MEMORY[0x1E69E9840];
  v5 = a3;
  [(SLWebUserInfoResponse *)self setUserInfo:v5];
  _SLLog(v3, 7, @"SLLegacyGooglePlusUserInfoResponse got _userInfo: %@");
  v6 = [v5 objectForKeyedSubscript:{@"displayName", v5}];
  [(SLWebUserInfoResponse *)self setDisplayName:v6];

  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v25 = v5;
  v7 = [v5 objectForKeyedSubscript:@"emails"];
  v8 = [v7 countByEnumeratingWithState:&v26 objects:v31 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v27;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v27 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v26 + 1) + 8 * i);
        v13 = [v12 objectForKeyedSubscript:@"type"];
        if ([v13 isEqualToString:@"account"])
        {
        }

        else
        {
          v14 = [(SLWebUserInfoResponse *)self emailAddresses];

          if (v14)
          {
            continue;
          }
        }

        v15 = [v12 objectForKeyedSubscript:@"value"];
        v30 = v15;
        v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v30 count:1];
        [(SLWebUserInfoResponse *)self setEmailAddresses:v16];
      }

      v9 = [v7 countByEnumeratingWithState:&v26 objects:v31 count:16];
    }

    while (v9);
  }

  v17 = [(SLWebUserInfoResponse *)self emailAddresses];

  if (!v17)
  {
    v24 = v25;
    _SLLog(v3, 3, @"Couldn't get an email address. userInfo was: %@");
  }

  v18 = [v25 objectForKeyedSubscript:{@"error", v24}];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v20 = [v25 objectForKeyedSubscript:@"error"];
    v21 = [v20 objectForKeyedSubscript:@"message"];
    objc_opt_class();
    v22 = objc_opt_isKindOfClass();

    if (v22)
    {
      v23 = [v20 objectForKeyedSubscript:@"message"];
      [(SLWebUserInfoResponse *)self setErrorMessage:v23];
    }
  }
}

@end