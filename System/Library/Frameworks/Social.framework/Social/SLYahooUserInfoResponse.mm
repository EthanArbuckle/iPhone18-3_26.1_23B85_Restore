@interface SLYahooUserInfoResponse
- (void)_populateDataFromResponseDictionary:(id)dictionary;
@end

@implementation SLYahooUserInfoResponse

- (void)_populateDataFromResponseDictionary:(id)dictionary
{
  v24[1] = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v5 = [dictionaryCopy objectForKeyedSubscript:@"error"];

  if (!v5)
  {
    [(SLWebUserInfoResponse *)self setUserInfo:dictionaryCopy];

    userInfo = [(SLWebUserInfoResponse *)self userInfo];
    v8 = [userInfo objectForKeyedSubscript:@"email"];
    if (v8)
    {
      v9 = v8;
      userInfo2 = [(SLWebUserInfoResponse *)self userInfo];
      v11 = [userInfo2 objectForKeyedSubscript:@"email"];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        userInfo3 = [(SLWebUserInfoResponse *)self userInfo];
        v13 = [userInfo3 objectForKeyedSubscript:@"email"];
        v14 = [v13 isEqualToString:&stru_1F41EC300];

        if (v14)
        {
LABEL_12:
          v15 = MEMORY[0x1E696AEC0];
          v16 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
          v17 = [v16 localizedStringForKey:@"FULL_NAME_PATTERN" value:&stru_1F41EC300 table:@"Localizable"];
          userInfo4 = [(SLWebUserInfoResponse *)self userInfo];
          v19 = [userInfo4 objectForKeyedSubscript:@"given_name"];
          userInfo5 = [(SLWebUserInfoResponse *)self userInfo];
          v21 = [userInfo5 objectForKeyedSubscript:@"family_name"];
          v22 = [v15 stringWithFormat:v17, v19, v21];
          [(SLWebUserInfoResponse *)self setDisplayName:v22];

          return;
        }

        userInfo = [(SLWebUserInfoResponse *)self userInfo];
        v9 = [userInfo objectForKeyedSubscript:@"email"];
        v24[0] = v9;
        userInfo2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v24 count:1];
        [(SLWebUserInfoResponse *)self setEmailAddresses:userInfo2];
      }

      else
      {
      }
    }

    goto LABEL_12;
  }

  v23 = [dictionaryCopy objectForKeyedSubscript:@"error"];

  v6 = [v23 objectForKeyedSubscript:@"description"];
  [(SLWebUserInfoResponse *)self setErrorMessage:v6];
}

@end