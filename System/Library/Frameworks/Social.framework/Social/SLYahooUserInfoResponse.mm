@interface SLYahooUserInfoResponse
- (void)_populateDataFromResponseDictionary:(id)a3;
@end

@implementation SLYahooUserInfoResponse

- (void)_populateDataFromResponseDictionary:(id)a3
{
  v24[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 objectForKeyedSubscript:@"error"];

  if (!v5)
  {
    [(SLWebUserInfoResponse *)self setUserInfo:v4];

    v7 = [(SLWebUserInfoResponse *)self userInfo];
    v8 = [v7 objectForKeyedSubscript:@"email"];
    if (v8)
    {
      v9 = v8;
      v10 = [(SLWebUserInfoResponse *)self userInfo];
      v11 = [v10 objectForKeyedSubscript:@"email"];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v12 = [(SLWebUserInfoResponse *)self userInfo];
        v13 = [v12 objectForKeyedSubscript:@"email"];
        v14 = [v13 isEqualToString:&stru_1F41EC300];

        if (v14)
        {
LABEL_12:
          v15 = MEMORY[0x1E696AEC0];
          v16 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
          v17 = [v16 localizedStringForKey:@"FULL_NAME_PATTERN" value:&stru_1F41EC300 table:@"Localizable"];
          v18 = [(SLWebUserInfoResponse *)self userInfo];
          v19 = [v18 objectForKeyedSubscript:@"given_name"];
          v20 = [(SLWebUserInfoResponse *)self userInfo];
          v21 = [v20 objectForKeyedSubscript:@"family_name"];
          v22 = [v15 stringWithFormat:v17, v19, v21];
          [(SLWebUserInfoResponse *)self setDisplayName:v22];

          return;
        }

        v7 = [(SLWebUserInfoResponse *)self userInfo];
        v9 = [v7 objectForKeyedSubscript:@"email"];
        v24[0] = v9;
        v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v24 count:1];
        [(SLWebUserInfoResponse *)self setEmailAddresses:v10];
      }

      else
      {
      }
    }

    goto LABEL_12;
  }

  v23 = [v4 objectForKeyedSubscript:@"error"];

  v6 = [v23 objectForKeyedSubscript:@"description"];
  [(SLWebUserInfoResponse *)self setErrorMessage:v6];
}

@end