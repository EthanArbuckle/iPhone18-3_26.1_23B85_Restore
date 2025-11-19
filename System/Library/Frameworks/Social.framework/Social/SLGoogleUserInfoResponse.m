@interface SLGoogleUserInfoResponse
- (void)_populateDataFromResponseDictionary:(id)a3;
@end

@implementation SLGoogleUserInfoResponse

- (void)_populateDataFromResponseDictionary:(id)a3
{
  v48 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v35 = self;
  [(SLWebUserInfoResponse *)self setUserInfo:v5];
  _SLLog(v3, 7, @"SLGoogleUserInfoResponse got _userInfo: %@");
  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  v36 = v5;
  v6 = [v5 objectForKeyedSubscript:{@"names", v5}];
  v7 = [v6 countByEnumeratingWithState:&v42 objects:v47 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v43;
    while (2)
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v43 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v42 + 1) + 8 * i);
        v12 = [v11 objectForKeyedSubscript:@"metadata"];
        v13 = [v12 objectForKeyedSubscript:@"primary"];
        v14 = [v13 BOOLValue];

        if (v14)
        {
          v15 = [v11 objectForKeyedSubscript:@"displayName"];
          [(SLWebUserInfoResponse *)v35 setDisplayName:v15];

          goto LABEL_11;
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v42 objects:v47 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v37 = [MEMORY[0x1E695DF70] array];
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v16 = [v36 objectForKeyedSubscript:@"emailAddresses"];
  v17 = [v16 countByEnumeratingWithState:&v38 objects:v46 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v39;
    do
    {
      for (j = 0; j != v18; ++j)
      {
        if (*v39 != v19)
        {
          objc_enumerationMutation(v16);
        }

        v21 = *(*(&v38 + 1) + 8 * j);
        v22 = [v21 objectForKeyedSubscript:@"value"];
        if (v22)
        {
          v23 = [v21 objectForKeyedSubscript:@"metadata"];
          v24 = [v23 objectForKeyedSubscript:@"primary"];
          v25 = [v24 BOOLValue];

          if (v25)
          {
            [v37 insertObject:v22 atIndex:0];
          }

          else
          {
            [v37 addObject:v22];
          }
        }
      }

      v18 = [v16 countByEnumeratingWithState:&v38 objects:v46 count:16];
    }

    while (v18);
  }

  v26 = [v37 copy];
  [(SLWebUserInfoResponse *)v35 setEmailAddresses:v26];

  v27 = [(SLWebUserInfoResponse *)v35 emailAddresses];

  if (!v27)
  {
    v34 = v36;
    _SLLog(v3, 3, @"Couldn't get an email address. userInfo was: %@");
  }

  v28 = [v36 objectForKeyedSubscript:{@"error", v34}];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v30 = [v36 objectForKeyedSubscript:@"error"];
    v31 = [v30 objectForKeyedSubscript:@"message"];
    objc_opt_class();
    v32 = objc_opt_isKindOfClass();

    if (v32)
    {
      v33 = [v30 objectForKeyedSubscript:@"message"];
      [(SLWebUserInfoResponse *)v35 setErrorMessage:v33];
    }
  }
}

@end