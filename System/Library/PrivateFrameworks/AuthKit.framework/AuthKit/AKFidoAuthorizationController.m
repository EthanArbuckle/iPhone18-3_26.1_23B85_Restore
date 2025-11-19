@interface AKFidoAuthorizationController
+ (BOOL)isFidoUserCancelError:(id)a3;
- (id)_authRequestFromContext:(id)a3;
- (id)_requestFromContext:(id)a3;
- (void)_populateCustomStringsFromContext:(id)a3;
- (void)_startAuthControllerWithRequest:(id)a3 context:(id)a4;
- (void)authorizationController:(id)a3 didCompleteWithAuthorization:(id)a4;
- (void)authorizationController:(id)a3 didCompleteWithError:(id)a4;
- (void)performAuthenticationRequestWithContext:(id)a3 completion:(id)a4;
- (void)performRegistrationRequestWithContext:(id)a3 completion:(id)a4;
@end

@implementation AKFidoAuthorizationController

- (void)performRegistrationRequestWithContext:(id)a3 completion:(id)a4
{
  v10 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v8 = 0;
  objc_storeStrong(&v8, a4);
  [(AKFidoAuthorizationController *)v10 setContext:location[0]];
  v7 = [(AKFidoAuthorizationController *)v10 _requestFromContext:location[0]];
  v4 = MEMORY[0x193B165F0](v8);
  registrationCompletion = v10->_registrationCompletion;
  v10->_registrationCompletion = v4;
  MEMORY[0x1E69E5920](registrationCompletion);
  [(AKFidoAuthorizationController *)v10 _startAuthControllerWithRequest:v7 context:location[0]];
  objc_storeStrong(&v7, 0);
  objc_storeStrong(&v8, 0);
  objc_storeStrong(location, 0);
}

- (void)performAuthenticationRequestWithContext:(id)a3 completion:(id)a4
{
  v10 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v8 = 0;
  objc_storeStrong(&v8, a4);
  [(AKFidoAuthorizationController *)v10 setContext:location[0]];
  v7 = [(AKFidoAuthorizationController *)v10 _authRequestFromContext:location[0]];
  v4 = MEMORY[0x193B165F0](v8);
  authCompletion = v10->_authCompletion;
  v10->_authCompletion = v4;
  MEMORY[0x1E69E5920](authCompletion);
  [(AKFidoAuthorizationController *)v10 _startAuthControllerWithRequest:v7 context:location[0]];
  objc_storeStrong(&v7, 0);
  objc_storeStrong(&v8, 0);
  objc_storeStrong(location, 0);
}

- (void)_startAuthControllerWithRequest:(id)a3 context:(id)a4
{
  v19[1] = *MEMORY[0x1E69E9840];
  v18 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v16 = 0;
  objc_storeStrong(&v16, a4);
  if (AuthenticationServicesLibraryCore(0))
  {
    v4 = objc_alloc(getASAuthorizationControllerClass());
  }

  else
  {
    v4 = [0 alloc];
  }

  v8 = v4;
  v19[0] = location[0];
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:1];
  v9 = [v8 initWithAuthorizationRequests:?];
  [(AKFidoAuthorizationController *)v18 set_authController:?];
  MEMORY[0x1E69E5920](v9);
  MEMORY[0x1E69E5920](v10);
  v11 = v18;
  v12 = [(AKFidoAuthorizationController *)v18 _authController];
  [(ASAuthorizationController *)v12 setDelegate:v11];
  MEMORY[0x1E69E5920](v12);
  [(AKFidoAuthorizationController *)v18 _populateCustomStringsFromContext:v16];
  v13 = [(AKFidoAuthorizationController *)v18 uiProvider];
  v14 = objc_opt_respondsToSelector();
  MEMORY[0x1E69E5920](v13);
  if (v14)
  {
    v7 = [(AKFidoAuthorizationController *)v18 uiProvider];
    v6 = [(AKFidoAuthorizationController *)v18 _authController];
    [(ASAuthorizationController *)v6 setPresentationContextProvider:v7];
    MEMORY[0x1E69E5920](v6);
    MEMORY[0x1E69E5920](v7);
  }

  v5 = [(AKFidoAuthorizationController *)v18 _authController];
  [(ASAuthorizationController *)v5 performRequests];
  MEMORY[0x1E69E5920](v5);
  objc_storeStrong(&v16, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];
}

- (id)_requestFromContext:(id)a3
{
  v37 = *MEMORY[0x1E69E9840];
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  if (AuthenticationServicesLibraryCore(0))
  {
    v3 = objc_alloc(getASAuthorizationSecurityKeyPublicKeyCredentialProviderClass());
  }

  else
  {
    v3 = [0 alloc];
  }

  v12 = v3;
  v13 = [location[0] relyingPartyIdentifier];
  v33 = [v12 initWithRelyingPartyIdentifier:?];
  MEMORY[0x1E69E5920](v13);
  v17 = [location[0] challenge];
  v16 = [location[0] displayName];
  v15 = [location[0] credentialName];
  v14 = [location[0] userIdentifier];
  v32 = [v33 createCredentialRegistrationRequestWithChallenge:v17 displayName:v16 name:v15 userID:?];
  MEMORY[0x1E69E5920](v14);
  MEMORY[0x1E69E5920](v15);
  MEMORY[0x1E69E5920](v16);
  MEMORY[0x1E69E5920](v17);
  v18 = [location[0] credentials];
  v30 = 0;
  v28 = 0;
  v19 = 0;
  if ([v18 count])
  {
    v31 = [location[0] credentials];
    v30 = 1;
    v29 = [v31 firstObject];
    v28 = 1;
    v19 = [v29 length] != 0;
  }

  if (v28)
  {
    MEMORY[0x1E69E5920](v29);
  }

  if (v30)
  {
    MEMORY[0x1E69E5920](v31);
  }

  MEMORY[0x1E69E5920](v18);
  if (v19)
  {
    v27 = _AKLogFido();
    v26 = OS_LOG_TYPE_DEBUG;
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
    {
      v11 = [location[0] credentials];
      __os_log_helper_16_0_1_8_0(v36, [v11 count]);
      _os_log_debug_impl(&dword_193225000, v27, v26, "Adding %lu credentials to the excluded credentials list.", v36, 0xCu);
      MEMORY[0x1E69E5920](v11);
    }

    objc_storeStrong(&v27, 0);
    v10 = [location[0] credentials];
    v25 = [v10 aaf_map:&__block_literal_global_6];
    MEMORY[0x1E69E5920](v10);
    [v32 setExcludedCredentials:v25];
    objc_storeStrong(&v25, 0);
  }

  if (AuthenticationServicesLibraryCore(0))
  {
    v4 = objc_alloc(getASAuthorizationPublicKeyCredentialParametersClass());
  }

  else
  {
    v4 = [0 alloc];
  }

  v24 = [v4 initWithAlgorithm:-7];
  v35 = v24;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v35 count:1];
  [v32 setCredentialParameters:?];
  MEMORY[0x1E69E5920](v9);
  v22 = 0;
  if (AuthenticationServicesLibraryCore(0))
  {
    v23 = getASAuthorizationPublicKeyCredentialResidentKeyPreferencePreferred();
    v22 = 1;
    v8 = v23;
  }

  else
  {
    v8 = 0;
  }

  [v32 setResidentKeyPreference:v8];
  if (v22)
  {
    MEMORY[0x1E69E5920](v23);
  }

  v20 = 0;
  if (AuthenticationServicesLibraryCore(0))
  {
    v21 = getASAuthorizationPublicKeyCredentialAttestationKindDirect();
    v20 = 1;
    v7 = v21;
  }

  else
  {
    v7 = 0;
  }

  [v32 setAttestationPreference:v7];
  if (v20)
  {
    MEMORY[0x1E69E5920](v21);
  }

  v6 = MEMORY[0x1E69E5928](v32);
  objc_storeStrong(&v24, 0);
  objc_storeStrong(&v32, 0);
  objc_storeStrong(&v33, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];

  return v6;
}

id __53__AKFidoAuthorizationController__requestFromContext___block_invoke(void *a1, void *a2)
{
  v26 = *MEMORY[0x1E69E9840];
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v21[1] = a1;
  v21[0] = _AKLogFido();
  v20 = OS_LOG_TYPE_DEBUG;
  if (os_log_type_enabled(v21[0], OS_LOG_TYPE_DEBUG))
  {
    __os_log_helper_16_2_1_8_64(v25, location[0]);
    _os_log_debug_impl(&dword_193225000, v21[0], v20, "Converting credential to base64: %@", v25, 0xCu);
  }

  objc_storeStrong(v21, 0);
  v19 = [MEMORY[0x1E695DEF0] ak_dataWithBase64UrlEncodedString:location[0]];
  if (![v19 length])
  {
    v18 = _AKLogFido();
    v17 = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      __os_log_helper_16_2_1_8_64(v24, location[0]);
      _os_log_error_impl(&dword_193225000, v18, v17, "Invalid credential was sent: %@", v24, 0xCu);
    }

    objc_storeStrong(&v18, 0);
    v2 = [location[0] dataUsingEncoding:4];
    v3 = v19;
    v19 = v2;
    MEMORY[0x1E69E5920](v3);
  }

  v16 = _AKLogFido();
  v15 = 2;
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
  {
    v10 = v16;
    v11 = v15;
    v12 = [v19 base64EncodedStringWithOptions:0];
    v14 = MEMORY[0x1E69E5928](v12);
    __os_log_helper_16_2_1_8_64(v23, v14);
    _os_log_debug_impl(&dword_193225000, v10, v11, "Adding credential to the list: %@", v23, 0xCu);
    MEMORY[0x1E69E5920](v12);
    objc_storeStrong(&v14, 0);
  }

  objc_storeStrong(&v16, 0);
  if (AuthenticationServicesLibraryCore(0))
  {
    v4 = objc_alloc(getASAuthorizationSecurityKeyPublicKeyCredentialDescriptorClass());
  }

  else
  {
    v4 = [0 alloc];
  }

  v7 = v4;
  v6 = v19;
  v8 = _ASAuthorizationAllSupportedPublicKeyCredentialDescriptorTransports();
  v9 = [v7 initWithCredentialID:v6 transports:?];
  MEMORY[0x1E69E5920](v8);
  objc_storeStrong(&v19, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];

  return v9;
}

- (id)_authRequestFromContext:(id)a3
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  if (AuthenticationServicesLibraryCore(0))
  {
    v3 = objc_alloc(getASAuthorizationSecurityKeyPublicKeyCredentialProviderClass());
  }

  else
  {
    v3 = [0 alloc];
  }

  v7 = v3;
  v8 = [location[0] relyingPartyIdentifier];
  v18 = [v7 initWithRelyingPartyIdentifier:?];
  MEMORY[0x1E69E5920](v8);
  v9 = [location[0] challenge];
  v17 = [v18 createCredentialAssertionRequestWithChallenge:?];
  MEMORY[0x1E69E5920](v9);
  v10 = [location[0] credentials];
  v15 = 0;
  v13 = 0;
  v11 = 0;
  if ([v10 count])
  {
    v16 = [location[0] credentials];
    v15 = 1;
    v14 = [v16 firstObject];
    v13 = 1;
    v11 = [v14 length] != 0;
  }

  if (v13)
  {
    MEMORY[0x1E69E5920](v14);
  }

  if (v15)
  {
    MEMORY[0x1E69E5920](v16);
  }

  MEMORY[0x1E69E5920](v10);
  if (v11)
  {
    v6 = [location[0] credentials];
    v12 = [v6 aaf_map:&__block_literal_global_22];
    MEMORY[0x1E69E5920](v6);
    [v17 setAllowedCredentials:v12];
    objc_storeStrong(&v12, 0);
  }

  v5 = MEMORY[0x1E69E5928](v17);
  objc_storeStrong(&v17, 0);
  objc_storeStrong(&v18, 0);
  objc_storeStrong(location, 0);

  return v5;
}

id __57__AKFidoAuthorizationController__authRequestFromContext___block_invoke(void *a1, void *a2)
{
  v26 = *MEMORY[0x1E69E9840];
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v21[1] = a1;
  v21[0] = _AKLogFido();
  v20 = OS_LOG_TYPE_DEBUG;
  if (os_log_type_enabled(v21[0], OS_LOG_TYPE_DEBUG))
  {
    __os_log_helper_16_2_1_8_64(v25, location[0]);
    _os_log_debug_impl(&dword_193225000, v21[0], v20, "Converting credential to base64: %@", v25, 0xCu);
  }

  objc_storeStrong(v21, 0);
  v19 = [MEMORY[0x1E695DEF0] ak_dataWithBase64UrlEncodedString:location[0]];
  if (![v19 length])
  {
    v18 = _AKLogFido();
    v17 = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      __os_log_helper_16_2_1_8_64(v24, location[0]);
      _os_log_error_impl(&dword_193225000, v18, v17, "Invalid credential was sent: %@", v24, 0xCu);
    }

    objc_storeStrong(&v18, 0);
    v2 = [location[0] dataUsingEncoding:4];
    v3 = v19;
    v19 = v2;
    MEMORY[0x1E69E5920](v3);
  }

  v16 = _AKLogFido();
  v15 = 2;
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
  {
    v10 = v16;
    v11 = v15;
    v12 = [v19 base64EncodedStringWithOptions:0];
    v14 = MEMORY[0x1E69E5928](v12);
    __os_log_helper_16_2_1_8_64(v23, v14);
    _os_log_debug_impl(&dword_193225000, v10, v11, "Adding credential to the list: %@", v23, 0xCu);
    MEMORY[0x1E69E5920](v12);
    objc_storeStrong(&v14, 0);
  }

  objc_storeStrong(&v16, 0);
  if (AuthenticationServicesLibraryCore(0))
  {
    v4 = objc_alloc(getASAuthorizationSecurityKeyPublicKeyCredentialDescriptorClass());
  }

  else
  {
    v4 = [0 alloc];
  }

  v7 = v4;
  v6 = v19;
  v8 = _ASAuthorizationAllSupportedPublicKeyCredentialDescriptorTransports();
  v9 = [v7 initWithCredentialID:v6 transports:?];
  MEMORY[0x1E69E5920](v8);
  objc_storeStrong(&v19, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];

  return v9;
}

- (void)authorizationController:(id)a3 didCompleteWithAuthorization:(id)a4
{
  v64 = *MEMORY[0x1E69E9840];
  v61 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v59 = 0;
  objc_storeStrong(&v59, a4);
  v44 = [v59 credential];
  if (AuthenticationServicesLibraryCore(0))
  {
    getASAuthorizationSecurityKeyPublicKeyCredentialRegistrationClass();
  }

  isKindOfClass = objc_opt_isKindOfClass();
  MEMORY[0x1E69E5920](v44);
  if (isKindOfClass)
  {
    v58 = _AKLogFido();
    v57 = 2;
    if (os_log_type_enabled(v58, OS_LOG_TYPE_DEBUG))
    {
      log = v58;
      type = v57;
      __os_log_helper_16_0_0(v56);
      _os_log_debug_impl(&dword_193225000, log, type, "Fido registration was a success", v56, 2u);
    }

    objc_storeStrong(&v58, 0);
    v55 = [v59 credential];
    v54 = _AKLogFido();
    v53 = OS_LOG_TYPE_DEBUG;
    if (os_log_type_enabled(v54, OS_LOG_TYPE_DEBUG))
    {
      v39 = [v55 credentialID];
      v38 = [v55 rawAttestationObject];
      v37 = [v55 rawClientDataJSON];
      __os_log_helper_16_2_3_8_64_8_64_8_64(v63, v39, v38, v37);
      _os_log_debug_impl(&dword_193225000, v54, v53, "Fido registration CredentialID: %@\nAttestation Data: %@\nClientData: %@", v63, 0x20u);
      MEMORY[0x1E69E5920](v37);
      MEMORY[0x1E69E5920](v38);
      MEMORY[0x1E69E5920](v39);
    }

    objc_storeStrong(&v54, 0);
    v36 = [(AKFidoAuthorizationController *)v61 registrationCompletion];
    MEMORY[0x1E69E5920](v36);
    if (v36)
    {
      v23 = [AKFidoRegistrationResponse alloc];
      v34 = [(AKFidoAuthorizationController *)v61 context];
      v33 = [(AKFidoContext *)v34 originalChallenge];
      v32 = [v55 rawAttestationObject];
      v31 = [v55 credentialID];
      v30 = [v55 rawClientDataJSON];
      v29 = [(AKFidoAuthorizationController *)v61 context];
      v28 = [(AKFidoContext *)v29 relyingPartyIdentifier];
      v27 = [(AKFidoAuthorizationController *)v61 context];
      v26 = [(AKFidoContext *)v27 credentialName];
      v25 = [(AKFidoAuthorizationController *)v61 context];
      v24 = [(AKFidoContext *)v25 userIdentifier];
      v52 = [(AKFidoRegistrationResponse *)v23 initWithChallengeString:v33 attestationsData:v32 credentialID:v31 clientData:v30 relyingPartyIdentifier:v28 credentialName:v26 userIdentifier:v24];
      MEMORY[0x1E69E5920](v24);
      MEMORY[0x1E69E5920](v25);
      MEMORY[0x1E69E5920](v26);
      MEMORY[0x1E69E5920](v27);
      MEMORY[0x1E69E5920](v28);
      MEMORY[0x1E69E5920](v29);
      MEMORY[0x1E69E5920](v30);
      MEMORY[0x1E69E5920](v31);
      MEMORY[0x1E69E5920](v32);
      MEMORY[0x1E69E5920](v33);
      MEMORY[0x1E69E5920](v34);
      v35 = [(AKFidoAuthorizationController *)v61 registrationCompletion];
      v35[2](v35, v52);
      MEMORY[0x1E69E5920](v35);
      [(AKFidoAuthorizationController *)v61 setRegistrationCompletion:0];
      objc_storeStrong(&v52, 0);
    }

    objc_storeStrong(&v61->_context, 0);
    objc_storeStrong(&v55, 0);
  }

  else
  {
    v22 = [v59 credential];
    if (AuthenticationServicesLibraryCore(0))
    {
      getASAuthorizationSecurityKeyPublicKeyCredentialAssertionClass();
    }

    v21 = objc_opt_isKindOfClass();
    MEMORY[0x1E69E5920](v22);
    if (v21)
    {
      v51 = _AKLogFido();
      v50 = 2;
      if (os_log_type_enabled(v51, OS_LOG_TYPE_DEBUG))
      {
        v19 = v51;
        v20 = v50;
        __os_log_helper_16_0_0(v49);
        _os_log_debug_impl(&dword_193225000, v19, v20, "Fido authentication was a success", v49, 2u);
      }

      objc_storeStrong(&v51, 0);
      v48 = [v59 credential];
      v47 = _AKLogFido();
      v46 = OS_LOG_TYPE_DEBUG;
      if (os_log_type_enabled(v47, OS_LOG_TYPE_DEBUG))
      {
        v18 = [v48 signature];
        v17 = [v48 rawAuthenticatorData];
        v16 = [v48 userID];
        __os_log_helper_16_2_3_8_64_8_64_8_64(v62, v18, v17, v16);
        _os_log_debug_impl(&dword_193225000, v47, v46, "Fido authentication Signature: %@\nAuthenticator Data: %@\nUserID: %@", v62, 0x20u);
        MEMORY[0x1E69E5920](v16);
        MEMORY[0x1E69E5920](v17);
        MEMORY[0x1E69E5920](v18);
      }

      objc_storeStrong(&v47, 0);
      v15 = [(AKFidoAuthorizationController *)v61 authCompletion];
      MEMORY[0x1E69E5920](v15);
      if (v15)
      {
        v4 = [AKFidoAuthenticationResponse alloc];
        v13 = [v48 rawAuthenticatorData];
        v12 = [(AKFidoAuthorizationController *)v61 context];
        v11 = [(AKFidoContext *)v12 originalChallenge];
        v10 = [(AKFidoAuthorizationController *)v61 context];
        v9 = [(AKFidoContext *)v10 relyingPartyIdentifier];
        v8 = [v48 signature];
        v7 = [v48 rawClientDataJSON];
        v6 = [v48 credentialID];
        v5 = [v48 userID];
        v45 = [(AKFidoAuthenticationResponse *)v4 initWithAuthenticatorData:v13 challengeString:v11 relyingPartyIdentifier:v9 signature:v8 clientData:v7 credentialID:v6 userIdentifier:v5];
        MEMORY[0x1E69E5920](v5);
        MEMORY[0x1E69E5920](v6);
        MEMORY[0x1E69E5920](v7);
        MEMORY[0x1E69E5920](v8);
        MEMORY[0x1E69E5920](v9);
        MEMORY[0x1E69E5920](v10);
        MEMORY[0x1E69E5920](v11);
        MEMORY[0x1E69E5920](v12);
        MEMORY[0x1E69E5920](v13);
        v14 = [(AKFidoAuthorizationController *)v61 authCompletion];
        v14[2](v14, v45);
        MEMORY[0x1E69E5920](v14);
        [(AKFidoAuthorizationController *)v61 setAuthCompletion:0];
        objc_storeStrong(&v45, 0);
      }

      objc_storeStrong(&v61->_context, 0);
      objc_storeStrong(&v48, 0);
    }
  }

  objc_storeStrong(&v59, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];
}

- (void)authorizationController:(id)a3 didCompleteWithError:(id)a4
{
  v14 = *MEMORY[0x1E69E9840];
  v12 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v10 = 0;
  objc_storeStrong(&v10, a4);
  v9 = _AKLogFido();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    __os_log_helper_16_2_1_8_66(v13, v10);
    _os_log_error_impl(&dword_193225000, v9, OS_LOG_TYPE_ERROR, "Unable to complete the Fido interaction: %{public}@", v13, 0xCu);
  }

  objc_storeStrong(&v9, 0);
  v7 = [(AKFidoAuthorizationController *)v12 registrationCompletion];
  MEMORY[0x1E69E5920](v7);
  if (v7)
  {
    v6 = [(AKFidoAuthorizationController *)v12 registrationCompletion];
    v6[2]();
    MEMORY[0x1E69E5920](v6);
    [(AKFidoAuthorizationController *)v12 setRegistrationCompletion:0];
  }

  v5 = [(AKFidoAuthorizationController *)v12 authCompletion];
  MEMORY[0x1E69E5920](v5);
  if (v5)
  {
    v4 = [(AKFidoAuthorizationController *)v12 authCompletion];
    v4[2]();
    MEMORY[0x1E69E5920](v4);
    [(AKFidoAuthorizationController *)v12 setAuthCompletion:0];
  }

  objc_storeStrong(&v12->_context, 0);
  objc_storeStrong(&v10, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];
}

+ (BOOL)isFidoUserCancelError:(id)a3
{
  v15 = *MEMORY[0x1E69E9840];
  location[2] = a1;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v8 = [location[0] domain];
  v10 = 0;
  if (AuthenticationServicesLibraryCore(0))
  {
    v11 = getASAuthorizationErrorDomain();
    v10 = 1;
    v7 = v11;
  }

  else
  {
    v7 = 0;
  }

  v6 = 0;
  if ([v8 isEqualToString:v7])
  {
    v6 = [location[0] code] == 1001;
  }

  if (v10)
  {
    MEMORY[0x1E69E5920](v11);
  }

  MEMORY[0x1E69E5920](v8);
  v12 = v6;
  oslog = _AKLogFido();
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEBUG))
  {
    if (v12)
    {
      v3 = &stru_1F0781300;
    }

    else
    {
      v3 = @" not";
    }

    __os_log_helper_16_2_1_8_66(v14, v3);
    _os_log_debug_impl(&dword_193225000, oslog, OS_LOG_TYPE_DEBUG, "Provided error is%{public}@ an AS user cancel error.", v14, 0xCu);
  }

  objc_storeStrong(&oslog, 0);
  v5 = v12;
  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];
  return v5;
}

- (void)_populateCustomStringsFromContext:(id)a3
{
  v32 = *MEMORY[0x1E69E9840];
  v29 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v27 = _AKLogFido();
  v26 = 2;
  if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
  {
    v22 = v27;
    v23 = v26;
    v24 = [location[0] debugDescription];
    v25 = MEMORY[0x1E69E5928](v24);
    __os_log_helper_16_2_1_8_64(v31, v25);
    _os_log_debug_impl(&dword_193225000, v22, v23, "Populating strings from context: %@", v31, 0xCu);
    MEMORY[0x1E69E5920](v24);
    objc_storeStrong(&v25, 0);
  }

  objc_storeStrong(&v27, 0);
  v20 = [location[0] promptHeader];
  v21 = [v20 length];
  MEMORY[0x1E69E5920](v20);
  if (v21)
  {
    v19 = [location[0] promptHeader];
    v18 = [(AKFidoAuthorizationController *)v29 _authController];
    [(ASAuthorizationController *)v18 setProxySheetHeaderOverride:v19];
    MEMORY[0x1E69E5920](v18);
    MEMORY[0x1E69E5920](v19);
  }

  v16 = [location[0] promptTitle];
  v17 = [v16 length];
  MEMORY[0x1E69E5920](v16);
  if (v17)
  {
    v15 = [location[0] promptTitle];
    v14 = [(AKFidoAuthorizationController *)v29 _authController];
    [(ASAuthorizationController *)v14 setProxySheetTitleOverride:v15];
    MEMORY[0x1E69E5920](v14);
    MEMORY[0x1E69E5920](v15);
  }

  v12 = [location[0] promptBody];
  v13 = [v12 length];
  MEMORY[0x1E69E5920](v12);
  if (v13)
  {
    v11 = [location[0] promptBody];
    v10 = [(AKFidoAuthorizationController *)v29 _authController];
    [(ASAuthorizationController *)v10 setProxySheetSubtitleOverride:v11];
    MEMORY[0x1E69E5920](v10);
    MEMORY[0x1E69E5920](v11);
  }

  v3 = [location[0] useAlternativeKeysIcon];
  v4 = [(AKFidoAuthorizationController *)v29 _authController];
  [(ASAuthorizationController *)v4 setUseAlternativeSecurityKeysIcon:v3];
  MEMORY[0x1E69E5920](v4);
  v7 = [location[0] relyingPartyIdentifier];
  v30 = v7;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v30 count:1];
  v5 = [(AKFidoAuthorizationController *)v29 _authController];
  [(ASAuthorizationController *)v5 setProxiedAssociatedDomains:v6];
  MEMORY[0x1E69E5920](v5);
  MEMORY[0x1E69E5920](v6);
  MEMORY[0x1E69E5920](v7);
  v9 = [location[0] incorrectKeyPresentedMessage];
  v8 = [(AKFidoAuthorizationController *)v29 _authController];
  [(ASAuthorizationController *)v8 setProxySheetNoCredentialsErrorMessageOverride:v9];
  MEMORY[0x1E69E5920](v8);
  MEMORY[0x1E69E5920](v9);
  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];
}

@end