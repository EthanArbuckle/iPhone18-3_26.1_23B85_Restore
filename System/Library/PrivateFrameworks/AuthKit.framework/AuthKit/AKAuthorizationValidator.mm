@interface AKAuthorizationValidator
+ (BOOL)canPerformAuthorizationRequest:(id)request error:(id *)error;
+ (BOOL)canPerformCredentialRequest:(id)request error:(id *)error;
+ (BOOL)canPerformPasswordRequest:(id)request error:(id *)error;
+ (BOOL)shouldContinueWithResponse:(id)response error:(id *)error;
@end

@implementation AKAuthorizationValidator

+ (BOOL)canPerformCredentialRequest:(id)request error:(id *)error
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, request);
  errorCopy = error;
  v19 = 0;
  v17 = 0;
  v12 = [selfCopy canPerformAuthorizationRequest:location[0] error:&v17];
  objc_storeStrong(&v19, v17);
  v18 = v12;
  v16 = 0;
  obj = 0;
  v13 = [selfCopy canPerformPasswordRequest:location[0] error:&obj];
  objc_storeStrong(&v16, obj);
  v15 = v13;
  if (v18 & 1) != 0 || (v15)
  {
    v23 = 1;
  }

  else
  {
    if (v19)
    {
      if (errorCopy)
      {
        v10 = v19;
        v4 = v19;
        *errorCopy = v10;
      }
    }

    else if (v16)
    {
      if (errorCopy)
      {
        v9 = v16;
        v5 = v16;
        *errorCopy = v9;
      }
    }

    else if (errorCopy)
    {
      v8 = [MEMORY[0x1E696ABC0] ak_errorWithCode:-7001];
      v6 = v8;
      *errorCopy = v8;
    }

    v23 = 0;
  }

  objc_storeStrong(&v16, 0);
  objc_storeStrong(&v19, 0);
  objc_storeStrong(location, 0);
  return v23 & 1;
}

+ (BOOL)canPerformAuthorizationRequest:(id)request error:(id *)error
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, request);
  errorCopy = error;
  authorizationRequest = [location[0] authorizationRequest];
  if (authorizationRequest)
  {
    if ([selfCopy _requirePasscodeSet])
    {
      v73 = _AKLogSiwa();
      v72 = 16;
      if (os_log_type_enabled(v73, OS_LOG_TYPE_ERROR))
      {
        v40 = v73;
        v41 = v72;
        __os_log_helper_16_0_0(v71);
        _os_log_error_impl(&dword_193225000, v40, v41, "Cannot perform request - Current platform require passcode setup", v71, 2u);
      }

      objc_storeStrong(&v73, 0);
      if (errorCopy)
      {
        v39 = [MEMORY[0x1E696ABC0] ak_errorWithCode:-7080];
        v5 = v39;
        *errorCopy = v39;
      }

      v82 = 0;
      v74 = 1;
    }

    else
    {
      authkitAccount = [authorizationRequest authkitAccount];
      MEMORY[0x1E69E5920](authkitAccount);
      if (authkitAccount)
      {
        v67 = +[AKAccountManager sharedInstance];
        altDSID = [authorizationRequest altDSID];
        v66 = [v67 iCloudAccountForAltDSID:?];
        MEMORY[0x1E69E5920](altDSID);
        authkitAccount2 = [authorizationRequest authkitAccount];
        if (([location[0] _isItunesLogin] & 1) != 0 || v66)
        {
          if ([v67 securityLevelForAccount:authkitAccount2] == 5)
          {
            v29 = +[AKDevice currentDevice];
            isMultiUserMode = [v29 isMultiUserMode];
            MEMORY[0x1E69E5920](v29);
            if (isMultiUserMode == 1)
            {
              v60 = _AKLogSiwa();
              v59 = 16;
              if (os_log_type_enabled(v60, OS_LOG_TYPE_ERROR))
              {
                v27 = v60;
                v28 = v59;
                __os_log_helper_16_0_0(v58);
                _os_log_error_impl(&dword_193225000, v27, v28, "Cannot perform request - Managed Accounts Not Permitted on Shared iPad", v58, 2u);
              }

              objc_storeStrong(&v60, 0);
              if (errorCopy)
              {
                v26 = [MEMORY[0x1E696ABC0] ak_errorWithCode:-7027];
                v8 = v26;
                *errorCopy = v26;
              }

              v82 = 0;
              v74 = 1;
            }

            else
            {
              v82 = 1;
              v74 = 1;
            }
          }

          else if ([v67 authenticationModeForAccount:authkitAccount2] == 2)
          {
            v57 = _AKLogSiwa();
            v56 = 16;
            if (os_log_type_enabled(v57, OS_LOG_TYPE_ERROR))
            {
              v24 = v57;
              v25 = v56;
              __os_log_helper_16_0_0(v55);
              _os_log_error_impl(&dword_193225000, v24, v25, "Cannot perform request - FedAuth Accounts Not Permitted", v55, 2u);
            }

            objc_storeStrong(&v57, 0);
            if (errorCopy)
            {
              v23 = [MEMORY[0x1E696ABC0] ak_errorWithCode:-7027];
              v9 = v23;
              *errorCopy = v23;
            }

            v82 = 0;
            v74 = 1;
          }

          else if ([AKAuthorizationAgeValidator isValidAgeForRequest:location[0] account:authkitAccount2])
          {
            if ([v67 securityLevelForAccount:authkitAccount2] == 4)
            {
              requestedScopes = [authorizationRequest requestedScopes];
              v18 = [requestedScopes containsObject:@"email"];
              MEMORY[0x1E69E5920](requestedScopes);
              if (v18 & 1) == 0 || (v51 = [v67 isPrimaryiCloudAccountEmailVerified:v66], v50 = objc_msgSend(v67, "verifiedPrimaryEmailForAccount:", authkitAccount2), v49 = objc_msgSend(v67, "phoneAsAppleIDForAccount:", authkitAccount2), (v51) || (v50 & 1) != 0 || (v49)
              {
                v82 = 1;
                v74 = 1;
              }

              else
              {
                v48 = _AKLogSiwa();
                v47 = OS_LOG_TYPE_ERROR;
                if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
                {
                  v15 = v48;
                  v16 = v47;
                  __os_log_helper_16_0_0(v46);
                  _os_log_error_impl(&dword_193225000, v15, v16, "Cannot perform request - Account not verified.", v46, 2u);
                }

                objc_storeStrong(&v48, 0);
                if (errorCopy)
                {
                  v14 = [MEMORY[0x1E696ABC0] ak_errorWithCode:-7072];
                  v12 = v14;
                  *errorCopy = v14;
                }

                v82 = 0;
                v74 = 1;
              }
            }

            else
            {
              v54 = _AKLogSiwa();
              v53 = 16;
              if (os_log_type_enabled(v54, OS_LOG_TYPE_ERROR))
              {
                v20 = v54;
                v21 = v53;
                __os_log_helper_16_0_0(v52);
                _os_log_error_impl(&dword_193225000, v20, v21, "Cannot perform request - Insufficient security level", v52, 2u);
              }

              objc_storeStrong(&v54, 0);
              if (errorCopy)
              {
                v19 = [MEMORY[0x1E696ABC0] ak_errorWithCode:-7070];
                v11 = v19;
                *errorCopy = v19;
              }

              v82 = 0;
              v74 = 1;
            }
          }

          else
          {
            if (errorCopy)
            {
              v22 = [MEMORY[0x1E696ABC0] ak_errorWithCode:-7076];
              v10 = v22;
              *errorCopy = v22;
            }

            v82 = 0;
            v74 = 1;
          }
        }

        else
        {
          v64 = _AKLogSiwa();
          v63 = 16;
          if (os_log_type_enabled(v64, OS_LOG_TYPE_ERROR))
          {
            v32 = v64;
            v33 = v63;
            __os_log_helper_16_0_0(v62);
            _os_log_error_impl(&dword_193225000, v32, v33, "Cannot perform request - Missing AppleAccount", v62, 2u);
          }

          objc_storeStrong(&v64, 0);
          if (errorCopy)
          {
            v31 = [MEMORY[0x1E696ABC0] ak_errorWithCode:-7022];
            v7 = v31;
            *errorCopy = v31;
          }

          v82 = 0;
          v74 = 1;
        }

        objc_storeStrong(&authkitAccount2, 0);
        objc_storeStrong(&v66, 0);
        objc_storeStrong(&v67, 0);
      }

      else
      {
        v70 = _AKLogSiwa();
        v69 = 16;
        if (os_log_type_enabled(v70, OS_LOG_TYPE_ERROR))
        {
          v36 = v70;
          v37 = v69;
          __os_log_helper_16_0_0(v68);
          _os_log_error_impl(&dword_193225000, v36, v37, "Cannot perform request - Missing account", v68, 2u);
        }

        objc_storeStrong(&v70, 0);
        if (errorCopy)
        {
          v35 = [MEMORY[0x1E696ABC0] ak_errorWithCode:-7022];
          v6 = v35;
          *errorCopy = v35;
        }

        v82 = 0;
        v74 = 1;
      }
    }
  }

  else
  {
    v77 = _AKLogSiwa();
    v76 = 16;
    if (os_log_type_enabled(v77, OS_LOG_TYPE_ERROR))
    {
      log = v77;
      type = v76;
      __os_log_helper_16_0_0(v75);
      _os_log_error_impl(&dword_193225000, log, type, "Cannot perform request - Missing authorization request", v75, 2u);
    }

    objc_storeStrong(&v77, 0);
    if (errorCopy)
    {
      v42 = [MEMORY[0x1E696ABC0] ak_errorWithCode:-7044];
      v4 = v42;
      *errorCopy = v42;
    }

    v82 = 0;
    v74 = 1;
  }

  objc_storeStrong(&authorizationRequest, 0);
  objc_storeStrong(location, 0);
  return v82 & 1;
}

+ (BOOL)canPerformPasswordRequest:(id)request error:(id *)error
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, request);
  errorCopy = error;
  passwordRequest = [location[0] passwordRequest];
  if (passwordRequest)
  {
    if ([selfCopy _requirePasscodeSet])
    {
      v16 = _AKLogSiwa();
      v15 = 16;
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        v8 = v16;
        v9 = v15;
        __os_log_helper_16_0_0(v14);
        _os_log_error_impl(&dword_193225000, v8, v9, "Cannot perform request - Current platform require passcode setup", v14, 2u);
      }

      objc_storeStrong(&v16, 0);
      if (errorCopy)
      {
        v7 = [MEMORY[0x1E696ABC0] ak_errorWithCode:-7080];
        v5 = v7;
        *errorCopy = v7;
      }

      v25 = 0;
      v17 = 1;
    }

    else
    {
      v25 = 1;
      v17 = 1;
    }
  }

  else
  {
    v20 = _AKLogSiwa();
    v19 = 16;
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      log = v20;
      type = v19;
      __os_log_helper_16_0_0(v18);
      _os_log_error_impl(&dword_193225000, log, type, "Cannot perform password request without password request.", v18, 2u);
    }

    objc_storeStrong(&v20, 0);
    if (errorCopy)
    {
      v10 = [MEMORY[0x1E696ABC0] ak_errorWithCode:-7026];
      v4 = v10;
      *errorCopy = v10;
    }

    v25 = 0;
    v17 = 1;
  }

  objc_storeStrong(&passwordRequest, 0);
  objc_storeStrong(location, 0);
  return v25 & 1;
}

+ (BOOL)shouldContinueWithResponse:(id)response error:(id *)error
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, response);
  errorCopy = error;
  userSelection = [location[0] userSelection];
  selectedRequest = [location[0] selectedRequest];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  MEMORY[0x1E69E5920](selectedRequest);
  if (isKindOfClass)
  {
    v38 = 1;
    v34 = 1;
  }

  else if ([location[0] hasSelectedSharedAccountForLogin])
  {
    v38 = 1;
    v34 = 1;
  }

  else
  {
    selectedRequest2 = [location[0] selectedRequest];
    requestedScopes = [selectedRequest2 requestedScopes];
    v22 = [requestedScopes containsObject:@"name"];
    MEMORY[0x1E69E5920](requestedScopes);
    v32 = v22;
    if ((v22 & 1) == 0)
    {
      goto LABEL_16;
    }

    userInformation = [userSelection userInformation];
    givenName = [userInformation givenName];
    v30 = 0;
    v28 = 0;
    v20 = 0;
    if (![givenName length])
    {
      userInformation2 = [userSelection userInformation];
      v30 = 1;
      familyName = [userInformation2 familyName];
      v28 = 1;
      v20 = [familyName length] == 0;
    }

    if (v28)
    {
      MEMORY[0x1E69E5920](familyName);
    }

    if (v30)
    {
      MEMORY[0x1E69E5920](userInformation2);
    }

    MEMORY[0x1E69E5920](givenName);
    MEMORY[0x1E69E5920](userInformation);
    if (v20)
    {
      if (errorCopy)
      {
        v17 = [MEMORY[0x1E696ABC0] ak_errorWithCode:-7012];
        v4 = v17;
        *errorCopy = v17;
      }

      v38 = 0;
      v34 = 1;
    }

    else
    {
LABEL_16:
      requestedScopes2 = [selectedRequest2 requestedScopes];
      v16 = [requestedScopes2 containsObject:@"email"];
      MEMORY[0x1E69E5920](requestedScopes2);
      v27 = v16;
      if ((v16 & 1) == 0)
      {
        goto LABEL_27;
      }

      v26 = +[AKAccountManager sharedInstance];
      authkitAccount = [selectedRequest2 authkitAccount];
      v14 = [v26 isManagedAppleIDForAccount:?];
      MEMORY[0x1E69E5920](authkitAccount);
      if (v14)
      {
        v38 = 1;
        v34 = 1;
      }

      else
      {
        authkitAccount2 = [selectedRequest2 authkitAccount];
        v9 = [v26 phoneAsAppleIDForAccount:?];
        MEMORY[0x1E69E5920](authkitAccount2);
        userInformation3 = [userSelection userInformation];
        selectedEmail = [userInformation3 selectedEmail];
        v12 = 0;
        if (![selectedEmail length])
        {
          v12 = (v9 & 1) == 0;
        }

        MEMORY[0x1E69E5920](selectedEmail);
        MEMORY[0x1E69E5920](userInformation3);
        if (v12)
        {
          if (errorCopy)
          {
            v7 = [MEMORY[0x1E696ABC0] ak_errorWithCode:-7012];
            v5 = v7;
            *errorCopy = v7;
          }

          v38 = 0;
          v34 = 1;
        }

        else
        {
          v34 = 0;
        }
      }

      objc_storeStrong(&v26, 0);
      if (!v34)
      {
LABEL_27:
        v38 = 1;
        v34 = 1;
      }
    }

    objc_storeStrong(&selectedRequest2, 0);
  }

  objc_storeStrong(&userSelection, 0);
  objc_storeStrong(location, 0);
  return v38 & 1;
}

@end