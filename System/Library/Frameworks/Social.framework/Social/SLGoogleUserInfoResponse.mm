@interface SLGoogleUserInfoResponse
- (void)_populateDataFromResponseDictionary:(id)dictionary;
@end

@implementation SLGoogleUserInfoResponse

- (void)_populateDataFromResponseDictionary:(id)dictionary
{
  v48 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  selfCopy = self;
  [(SLWebUserInfoResponse *)self setUserInfo:dictionaryCopy];
  _SLLog(v3, 7, @"SLGoogleUserInfoResponse got _userInfo: %@");
  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  v36 = dictionaryCopy;
  v6 = [dictionaryCopy objectForKeyedSubscript:{@"names", dictionaryCopy}];
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
        bOOLValue = [v13 BOOLValue];

        if (bOOLValue)
        {
          v15 = [v11 objectForKeyedSubscript:@"displayName"];
          [(SLWebUserInfoResponse *)selfCopy setDisplayName:v15];

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

  array = [MEMORY[0x1E695DF70] array];
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
          bOOLValue2 = [v24 BOOLValue];

          if (bOOLValue2)
          {
            [array insertObject:v22 atIndex:0];
          }

          else
          {
            [array addObject:v22];
          }
        }
      }

      v18 = [v16 countByEnumeratingWithState:&v38 objects:v46 count:16];
    }

    while (v18);
  }

  v26 = [array copy];
  [(SLWebUserInfoResponse *)selfCopy setEmailAddresses:v26];

  emailAddresses = [(SLWebUserInfoResponse *)selfCopy emailAddresses];

  if (!emailAddresses)
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
      [(SLWebUserInfoResponse *)selfCopy setErrorMessage:v33];
    }
  }
}

@end