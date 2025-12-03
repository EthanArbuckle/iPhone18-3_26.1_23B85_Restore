@interface NSMutableURLRequest(AppleAccount)
- (id)aa_setXMLBodyWithParameters:()AppleAccount;
- (uint64_t)aa_addAuthTokenOrBasicAuthHeaderWithAccount:()AppleAccount preferUsingPassword:;
- (uint64_t)aa_addDeviceInternalDevHeaderIfEnabled;
- (uint64_t)aa_addDeviceProvisioningInfoHeadersWithDSIDFromReponse:()AppleAccount;
- (uint64_t)aa_addGrandSlamAuthorizationHeaderWithAccount:()AppleAccount grandslamToken:;
- (uint64_t)aa_addGrandslamAuthorizationHeaderWithAltDSID:()AppleAccount grandslamToken:;
- (uint64_t)aa_addGrandslamAuthorizationheaderWithAltDSID:()AppleAccount heartbeatToken:;
- (uint64_t)aa_addLocationSharingAllowedHeader;
- (void)aa_addAltDSIDAndRepairStateWithAccount:()AppleAccount;
- (void)aa_addBasicAuthPasswordWithAccount:()AppleAccount;
- (void)aa_addBasicAuthorizationHeaderWithAccount:()AppleAccount authToken:;
- (void)aa_addBasicAuthorizationHeaderWithAccount:()AppleAccount preferUsingPassword:;
- (void)aa_addClientInfoHeaders;
- (void)aa_addContentTypeHeaders:()AppleAccount;
- (void)aa_addDeviceIDHeader;
- (void)aa_addDeviceProvisioningInfoHeadersWithAccount:()AppleAccount;
- (void)aa_addDeviceProvisioningInfoHeadersWithDSID:()AppleAccount sendEmptyValues:;
- (void)aa_addLoggedInAppleIDHeaderWithAccount:()AppleAccount;
- (void)aa_addMultiUserDeviceHeaderIfEnabled;
- (void)aa_addProxiedAuthHeaderWithAccount:()AppleAccount;
- (void)aa_addSpyglassModeHeaderWithMask:()AppleAccount;
- (void)aa_addTokenAuthHeaderWithAccount:()AppleAccount;
- (void)aa_setBodyWithParameters:()AppleAccount;
- (void)aa_setJSONBodyWithParameters:()AppleAccount;
- (void)aa_setXMLBodyWithParameters:()AppleAccount signingSession:;
- (void)aa_signBodyData:()AppleAccount withSigningSession:;
@end

@implementation NSMutableURLRequest(AppleAccount)

- (void)aa_addTokenAuthHeaderWithAccount:()AppleAccount
{
  v4 = MEMORY[0x1E696AEC0];
  v5 = a3;
  aa_personID = [v5 aa_personID];
  aa_authToken = [v5 aa_authToken];

  v8 = [v4 stringWithFormat:@"%@:%@", aa_personID, aa_authToken];

  v9 = [v8 dataUsingEncoding:4];
  v10 = [v9 base64EncodedStringWithOptions:0];

  v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"X-MobileMe-AuthToken %@", v10];
  v12 = _AALogSystem();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1B6F6A000, v12, OS_LOG_TYPE_DEFAULT, "Using token auth", buf, 2u);
  }

  [self setValue:v11 forHTTPHeaderField:@"Authorization"];
}

- (void)aa_addBasicAuthPasswordWithAccount:()AppleAccount
{
  v4 = MEMORY[0x1E696AEC0];
  v5 = a3;
  username = [v5 username];
  aa_password = [v5 aa_password];

  v8 = [v4 stringWithFormat:@"%@:%@", username, aa_password];

  v9 = [v8 dataUsingEncoding:4];
  v10 = [v9 base64EncodedStringWithOptions:0];

  v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Basic %@", v10];
  v12 = _AALogSystem();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1B6F6A000, v12, OS_LOG_TYPE_DEFAULT, "Using password auth", buf, 2u);
  }

  [self setValue:v11 forHTTPHeaderField:@"Authorization"];
}

- (void)aa_addAltDSIDAndRepairStateWithAccount:()AppleAccount
{
  v8 = a3;
  aa_altDSID = [v8 aa_altDSID];
  if (aa_altDSID)
  {
    [self setValue:aa_altDSID forHTTPHeaderField:@"X-Apple-ADSID"];
  }

  aa_repairState = [v8 aa_repairState];
  v6 = aa_repairState;
  if (aa_repairState)
  {
    stringValue = [aa_repairState stringValue];
    [self setValue:stringValue forHTTPHeaderField:@"X-Apple-I-Repair"];
  }
}

- (void)aa_addBasicAuthorizationHeaderWithAccount:()AppleAccount preferUsingPassword:
{
  v46 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = v6;
  if (v6)
  {
    if (a4)
    {
      username = [v6 username];
      if (username)
      {
        v9 = username;
        aa_password = [v7 aa_password];

        if (aa_password)
        {
          v11 = MEMORY[0x1E696AEC0];
          username2 = [v7 username];
          aa_password2 = [v7 aa_password];
          v14 = [v11 stringWithFormat:@"%@:%@", username2, aa_password2];

          v15 = _AALogSystem();
          if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_1B6F6A000, v15, OS_LOG_TYPE_DEFAULT, "Using password auth", buf, 2u);
          }

          if (![MEMORY[0x1E6985E20] isInternalBuild])
          {
            goto LABEL_27;
          }

          v16 = _AALogSystem();
          if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
          {
LABEL_25:
            aa_password3 = [v7 aa_password];
            v37 = [aa_password3 unredactedSuffixOfLength:4];
            *buf = 138412290;
            v45 = v37;
            _os_log_impl(&dword_1B6F6A000, v16, OS_LOG_TYPE_DEFAULT, "Using PET: %@", buf, 0xCu);
          }

LABEL_26:

LABEL_27:
          if (v14)
          {
            v38 = [v14 dataUsingEncoding:4];
            v39 = [v38 base64EncodedStringWithOptions:0];

            v40 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Basic %@", v39];
            if ([MEMORY[0x1E6985E20] isInternalBuild])
            {
              v41 = _AALogSystem();
              if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138412290;
                v45 = v14;
                _os_log_impl(&dword_1B6F6A000, v41, OS_LOG_TYPE_DEFAULT, "Authentication Header before Base64: %@", buf, 0xCu);
              }

              v42 = _AALogSystem();
              if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138412290;
                v45 = v40;
                _os_log_impl(&dword_1B6F6A000, v42, OS_LOG_TYPE_DEFAULT, "Authentication Header after Base64: %@", buf, 0xCu);
              }
            }

            [self setValue:v40 forHTTPHeaderField:@"Authorization"];
          }

          goto LABEL_35;
        }
      }

      aa_personID = [v7 aa_personID];
      if (aa_personID)
      {
        v24 = aa_personID;
        aa_authToken = [v7 aa_authToken];

        if (aa_authToken)
        {
          v26 = MEMORY[0x1E696AEC0];
          aa_personID2 = [v7 aa_personID];
          aa_authToken2 = [v7 aa_authToken];
          v14 = [v26 stringWithFormat:@"%@:%@", aa_personID2, aa_authToken2];

          v16 = _AALogSystem();
          if (!os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_26;
          }

          *buf = 0;
          goto LABEL_18;
        }
      }
    }

    else
    {
      aa_personID3 = [v6 aa_personID];
      if (aa_personID3)
      {
        v18 = aa_personID3;
        aa_authToken3 = [v7 aa_authToken];

        if (aa_authToken3)
        {
          v20 = MEMORY[0x1E696AEC0];
          aa_personID4 = [v7 aa_personID];
          aa_authToken4 = [v7 aa_authToken];
          v14 = [v20 stringWithFormat:@"%@:%@", aa_personID4, aa_authToken4];

          v16 = _AALogSystem();
          if (!os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_26;
          }

          *buf = 0;
LABEL_18:
          _os_log_impl(&dword_1B6F6A000, v16, OS_LOG_TYPE_DEFAULT, "Using token auth (basic)", buf, 2u);
          goto LABEL_26;
        }
      }

      username3 = [v7 username];
      if (username3)
      {
        v30 = username3;
        aa_password4 = [v7 aa_password];

        if (aa_password4)
        {
          v32 = MEMORY[0x1E696AEC0];
          username4 = [v7 username];
          aa_password5 = [v7 aa_password];
          v14 = [v32 stringWithFormat:@"%@:%@", username4, aa_password5];

          v35 = _AALogSystem();
          if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_1B6F6A000, v35, OS_LOG_TYPE_DEFAULT, "Using password auth", buf, 2u);
          }

          if (![MEMORY[0x1E6985E20] isInternalBuild])
          {
            goto LABEL_27;
          }

          v16 = _AALogSystem();
          if (!os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_26;
          }

          goto LABEL_25;
        }
      }
    }

LABEL_35:
    [self aa_addAltDSIDAndRepairStateWithAccount:v7];
  }

  v43 = *MEMORY[0x1E69E9840];
}

- (void)aa_addBasicAuthorizationHeaderWithAccount:()AppleAccount authToken:
{
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (v6 && v7)
  {
    v9 = _AALogSystem();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1B6F6A000, v9, OS_LOG_TYPE_DEFAULT, "Signing Request with basic authoriation w/ authToken", buf, 2u);
    }

    v10 = MEMORY[0x1E696AEC0];
    aa_personID = [v6 aa_personID];
    v12 = [v10 stringWithFormat:@"%@:%@", aa_personID, v8];

    v13 = [v12 dataUsingEncoding:4];
    v14 = [v13 base64EncodedStringWithOptions:0];

    v15 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Basic %@", v14];
    [self setValue:v15 forHTTPHeaderField:@"Authorization"];
    [self aa_addAltDSIDAndRepairStateWithAccount:v6];
  }

  else if (v6)
  {
    [self aa_addBasicAuthorizationHeaderWithAccount:v6 preferUsingPassword:0];
  }
}

- (uint64_t)aa_addAuthTokenOrBasicAuthHeaderWithAccount:()AppleAccount preferUsingPassword:
{
  v6 = a3;
  v7 = v6;
  if (a4)
  {
    username = [v6 username];
    if (!username || (v9 = username, [v7 aa_password], v10 = objc_claimAutoreleasedReturnValue(), v10, v9, !v10))
    {
      aa_personID = [v7 aa_personID];
      if (!aa_personID || (v12 = aa_personID, [v7 aa_authToken], v13 = objc_claimAutoreleasedReturnValue(), v13, v12, !v13))
      {
        v14 = _AALogSystem();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          v25 = 0;
          v15 = &v25;
LABEL_17:
          _os_log_impl(&dword_1B6F6A000, v14, OS_LOG_TYPE_DEFAULT, "Unable to add auth header. No pertinent information in account.", v15, 2u);
          goto LABEL_18;
        }

        goto LABEL_18;
      }

      goto LABEL_10;
    }

LABEL_13:
    [self aa_addBasicAuthPasswordWithAccount:v7];
    goto LABEL_14;
  }

  aa_personID2 = [v6 aa_personID];
  if (!aa_personID2 || (v17 = aa_personID2, [v7 aa_authToken], v18 = objc_claimAutoreleasedReturnValue(), v18, v17, !v18))
  {
    username2 = [v7 username];
    if (!username2 || (v20 = username2, [v7 aa_password], v21 = objc_claimAutoreleasedReturnValue(), v21, v20, !v21))
    {
      v14 = _AALogSystem();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        v24 = 0;
        v15 = &v24;
        goto LABEL_17;
      }

LABEL_18:

      v22 = 0;
      goto LABEL_19;
    }

    goto LABEL_13;
  }

LABEL_10:
  [self aa_addTokenAuthHeaderWithAccount:v7];
LABEL_14:
  [self aa_addAltDSIDAndRepairStateWithAccount:v7];
  v22 = 1;
LABEL_19:

  return v22;
}

- (void)aa_setBodyWithParameters:()AppleAccount
{
  v11 = *MEMORY[0x1E69E9840];
  v8 = 0;
  v4 = [MEMORY[0x1E696AE40] dataWithPropertyList:a3 format:100 options:0 error:&v8];
  v5 = v8;
  if (v4)
  {
    [self setHTTPBody:v4];
  }

  else
  {
    v6 = _AALogSystem();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v10 = v5;
      _os_log_impl(&dword_1B6F6A000, v6, OS_LOG_TYPE_DEFAULT, "Error adding body %@", buf, 0xCu);
    }
  }

  v7 = *MEMORY[0x1E69E9840];
}

- (id)aa_setXMLBodyWithParameters:()AppleAccount
{
  v12 = *MEMORY[0x1E69E9840];
  v9 = 0;
  v4 = [MEMORY[0x1E696AE40] dataWithPropertyList:a3 format:100 options:0 error:&v9];
  v5 = v9;
  if (v4)
  {
    [self setHTTPBody:v4];
    [self setValue:@"application/xml" forHTTPHeaderField:@"Content-Type"];
  }

  else
  {
    v6 = _AALogSystem();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v11 = v5;
      _os_log_impl(&dword_1B6F6A000, v6, OS_LOG_TYPE_DEFAULT, "Error adding body %@", buf, 0xCu);
    }
  }

  v7 = *MEMORY[0x1E69E9840];

  return v4;
}

- (void)aa_setJSONBodyWithParameters:()AppleAccount
{
  v9[4] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v9[0] = 0;
  v5 = [MEMORY[0x1E696ACB0] dataWithJSONObject:v4 options:0 error:v9];
  v6 = v9[0];
  if (v6)
  {
    v7 = _AALogSystem();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [(NSMutableURLRequest(AppleAccount) *)v6 aa_setJSONBodyWithParameters:v7];
    }
  }

  else
  {
    [self setHTTPBody:v5];
    [self setValue:@"application/json" forHTTPHeaderField:@"Content-Type"];
  }

  v8 = *MEMORY[0x1E69E9840];
}

- (void)aa_signBodyData:()AppleAccount withSigningSession:
{
  v11 = *MEMORY[0x1E69E9840];
  v5 = [a4 signatureForData:?];
  v6 = [v5 base64EncodedStringWithOptions:0];
  [self setValue:v6 forHTTPHeaderField:@"X-Mme-Nas-Qualify"];
  v7 = _AALogSystem();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138412290;
    v10 = v6;
    _os_log_impl(&dword_1B6F6A000, v7, OS_LOG_TYPE_DEFAULT, "X-Mme-Nas-Qualify: %@", &v9, 0xCu);
  }

  v8 = *MEMORY[0x1E69E9840];
}

- (void)aa_setXMLBodyWithParameters:()AppleAccount signingSession:
{
  v6 = a4;
  v7 = [self aa_setXMLBodyWithParameters:a3];
  [self aa_signBodyData:v7 withSigningSession:v6];
}

- (uint64_t)aa_addGrandSlamAuthorizationHeaderWithAccount:()AppleAccount grandslamToken:
{
  v6 = a4;
  aa_personID = [a3 aa_personID];
  v8 = aa_personID;
  if (v6)
  {
    v9 = aa_personID == 0;
  }

  else
  {
    v9 = 1;
  }

  v10 = !v9;
  if (!v9)
  {
    v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@:%@", aa_personID, v6];
    v12 = [v11 dataUsingEncoding:4];
    v13 = [v12 base64EncodedStringWithOptions:0];

    [self setValue:v13 forHTTPHeaderField:@"X-Apple-GS-Token"];
    v14 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Basic %@", v13];
    [self setValue:v14 forHTTPHeaderField:@"Authorization"];
  }

  return v10;
}

- (uint64_t)aa_addGrandslamAuthorizationHeaderWithAltDSID:()AppleAccount grandslamToken:
{
  if (a3)
  {
    v4 = a4 == 0;
  }

  else
  {
    v4 = 1;
  }

  v5 = !v4;
  if (!v4)
  {
    v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@:%@", a3, a4];
    v8 = [v7 dataUsingEncoding:4];
    v9 = [v8 base64EncodedStringWithOptions:0];

    [self setValue:v9 forHTTPHeaderField:@"X-Apple-GS-Token"];
  }

  return v5;
}

- (uint64_t)aa_addGrandslamAuthorizationheaderWithAltDSID:()AppleAccount heartbeatToken:
{
  if (a3)
  {
    v4 = a4 == 0;
  }

  else
  {
    v4 = 1;
  }

  v5 = !v4;
  if (!v4)
  {
    v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@:%@", a3, a4];
    v8 = [v7 dataUsingEncoding:4];
    v9 = [v8 base64EncodedStringWithOptions:0];

    [self setValue:v9 forHTTPHeaderField:@"X-Apple-HB-Token"];
  }

  return v5;
}

- (void)aa_addDeviceProvisioningInfoHeadersWithAccount:()AppleAccount
{
  aa_personID = [a3 aa_personID];
  [self aa_addDeviceProvisioningInfoHeadersWithDSID:aa_personID];
}

- (void)aa_addDeviceProvisioningInfoHeadersWithDSID:()AppleAccount sendEmptyValues:
{
  v13 = *MEMORY[0x1E69E9840];
  v6 = a3;
  if (v6)
  {
    v7 = [[AADeviceProvisioningSession alloc] initWithDSID:v6];
    [(AADeviceProvisioningSession *)v7 addProvisioningInfoToURLRequest:self sendEmptyValues:a4];
  }

  else
  {
    v8 = _AALogSystem();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      callStackSymbols = [MEMORY[0x1E696AF00] callStackSymbols];
      v11 = 138412290;
      v12 = callStackSymbols;
      _os_log_impl(&dword_1B6F6A000, v8, OS_LOG_TYPE_DEFAULT, "BADNESS!!! No DSID passed to aa_addDeviceProvisioningInfoHeadersWithDSID: %@", &v11, 0xCu);
    }
  }

  v10 = *MEMORY[0x1E69E9840];
}

- (uint64_t)aa_addDeviceInternalDevHeaderIfEnabled
{
  keyExistsAndHasValidFormat = 1;
  result = CFPreferencesGetAppBooleanValue(@"AAUISendInternalDevHeader", @"com.apple.appleaccount", &keyExistsAndHasValidFormat);
  if (keyExistsAndHasValidFormat)
  {
    v3 = result == 0;
  }

  else
  {
    v3 = 0;
  }

  if (!v3)
  {
    result = [MEMORY[0x1E6985E20] isInternalBuild];
    if (result)
    {
      return [self setValue:@"true" forHTTPHeaderField:@"X-Mme-Setup-AEBB-653C-D843-8834"];
    }
  }

  return result;
}

- (void)aa_addDeviceIDHeader
{
  v2 = objc_alloc_init(AADeviceInfo);
  if (v2)
  {
    v3 = _AALogSystem();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&dword_1B6F6A000, v3, OS_LOG_TYPE_DEFAULT, "Adding device udid to the request header", v5, 2u);
    }

    udid = [(AADeviceInfo *)v2 udid];
    [self setValue:udid forHTTPHeaderField:@"X-Mme-Device-Id"];
  }
}

- (void)aa_addMultiUserDeviceHeaderIfEnabled
{
  if (aa_addMultiUserDeviceHeaderIfEnabled_onceToken != -1)
  {
    [NSMutableURLRequest(AppleAccount) aa_addMultiUserDeviceHeaderIfEnabled];
  }

  if (aa_addMultiUserDeviceHeaderIfEnabled_isMultiUserDevice == 1)
  {

    [self setValue:@"true" forHTTPHeaderField:@"X-MMe-Multi-User"];
  }
}

- (void)aa_addLoggedInAppleIDHeaderWithAccount:()AppleAccount
{
  if (a3)
  {
    username = [a3 username];
    [self setValue:username forHTTPHeaderField:@"X-MMe-LoggedIn-AppleID"];
  }
}

- (uint64_t)aa_addDeviceProvisioningInfoHeadersWithDSIDFromReponse:()AppleAccount
{
  v37 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = MEMORY[0x1E695ABF8];
  allHeaderFields = [v4 allHeaderFields];
  v7 = [self URL];
  v8 = [v5 cookiesWithResponseHeaderFields:allHeaderFields forURL:v7];

  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v9 = v8;
  v10 = [v9 countByEnumeratingWithState:&v32 objects:v36 count:16];
  if (!v10)
  {

    v13 = 0;
LABEL_18:
    v27 = 0;
    goto LABEL_19;
  }

  v11 = v10;
  selfCopy = self;
  v12 = 0;
  v13 = 0;
  v14 = *v33;
  do
  {
    for (i = 0; i != v11; ++i)
    {
      if (*v33 != v14)
      {
        objc_enumerationMutation(v9);
      }

      v16 = *(*(&v32 + 1) + 8 * i);
      name = [v16 name];
      v18 = [name isEqualToString:@"dsid"];

      if (v18)
      {
        [v16 value];
        v13 = name2 = v13;
      }

      else
      {
        name2 = [v16 name];
        if ([name2 isEqualToString:@"hsa-action"])
        {
          value = [v16 value];
          v21 = [value isEqualToString:@"LinkiTunes"];

          v12 |= v21;
        }
      }
    }

    v11 = [v9 countByEnumeratingWithState:&v32 objects:v36 count:16];
  }

  while (v11);

  if (((v13 != 0) & v12) != 1)
  {
    goto LABEL_18;
  }

  v22 = _AALogSystem();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1B6F6A000, v22, OS_LOG_TYPE_DEFAULT, "Server is asking for device provisioning information", buf, 2u);
  }

  allHTTPHeaderFields = [selfCopy allHTTPHeaderFields];
  v24 = [allHTTPHeaderFields count];

  [selfCopy aa_addDeviceProvisioningInfoHeadersWithDSID:v13];
  allHTTPHeaderFields2 = [selfCopy allHTTPHeaderFields];
  v26 = [allHTTPHeaderFields2 count];

  if (v26 <= v24)
  {
    goto LABEL_18;
  }

  v27 = 1;
LABEL_19:

  v28 = *MEMORY[0x1E69E9840];
  return v27;
}

- (void)aa_addClientInfoHeaders
{
  v17[1] = *MEMORY[0x1E69E9840];
  v2 = +[AADeviceInfo userAgentHeader];
  [self setValue:v2 forHTTPHeaderField:@"User-Agent"];

  v3 = +[AADeviceInfo clientInfoHeader];
  [self setValue:v3 forHTTPHeaderField:@"X-MMe-Client-Info"];

  currentLocale = [MEMORY[0x1E695DF58] currentLocale];
  v5 = [currentLocale objectForKey:*MEMORY[0x1E695D978]];
  uppercaseString = [v5 uppercaseString];
  [self setValue:uppercaseString forHTTPHeaderField:@"X-MMe-Country"];

  preferredLanguages = [MEMORY[0x1E695DF58] preferredLanguages];
  v8 = [preferredLanguages componentsJoinedByString:{@", "}];
  v9 = v8;
  if (v8)
  {
    v10 = v8;
  }

  else
  {
    v10 = @"en";
  }

  [self setValue:v10 forHTTPHeaderField:@"X-MMe-Language"];

  v11 = MEMORY[0x1E695DF58];
  _deviceLanguage = [MEMORY[0x1E695DF58] _deviceLanguage];
  v17[0] = _deviceLanguage;
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:1];
  v14 = [v11 minimizedLanguagesFromLanguages:v13];
  v15 = [v14 componentsJoinedByString:{@", "}];

  [self setValue:v15 forHTTPHeaderField:@"Accept-Language"];
  v16 = *MEMORY[0x1E69E9840];
}

- (void)aa_addContentTypeHeaders:()AppleAccount
{
  v4 = a3;
  [self setValue:v4 forHTTPHeaderField:@"Content-Type"];
  [self setValue:v4 forHTTPHeaderField:@"Accept"];
}

- (uint64_t)aa_addLocationSharingAllowedHeader
{
  if (MGGetBoolAnswer())
  {
    v2 = @"true";
  }

  else
  {
    v2 = @"false";
  }

  return [self setValue:v2 forHTTPHeaderField:@"X-MMe-FMFAllowed"];
}

- (void)aa_addProxiedAuthHeaderWithAccount:()AppleAccount
{
  v4 = MEMORY[0x1E696AEC0];
  v5 = a3;
  username = [v5 username];
  aa_password = [v5 aa_password];

  v8 = [v4 stringWithFormat:@"%@:%@", username, aa_password];

  v9 = [v8 dataUsingEncoding:4];
  v10 = [v9 base64EncodedStringWithOptions:0];

  v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Basic %@", v10];
  [self setValue:v11 forHTTPHeaderField:@"Authorization-Proxied"];
  v12 = _AALogSystem();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1B6F6A000, v12, OS_LOG_TYPE_DEFAULT, "Using proxied auth credentials", buf, 2u);
  }
}

- (void)aa_addSpyglassModeHeaderWithMask:()AppleAccount
{
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%lu", a3];
  [self setValue:v4 forHTTPHeaderField:@"X-Apple-I-Spyglass-Mode"];
}

- (void)aa_setJSONBodyWithParameters:()AppleAccount .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_1B6F6A000, a2, OS_LOG_TYPE_ERROR, "Unable to serialize request parameters! Error: %@", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

- (void)aa_setJSONBodyWithParameters:()AppleAccount .cold.2(void *a1, uint64_t a2, uint8_t *buf, os_log_t log)
{
  *buf = 138412546;
  *(buf + 4) = a1;
  *(buf + 6) = 2112;
  *(buf + 14) = a2;
  _os_log_error_impl(&dword_1B6F6A000, log, OS_LOG_TYPE_ERROR, "JSON Serialization exception: %@\nInvalid JSON input: %@", buf, 0x16u);
}

@end