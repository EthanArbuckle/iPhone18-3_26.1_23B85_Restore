@interface AKFidoAuthorizationController
+ (BOOL)isFidoUserCancelError:(id)error;
- (id)_authRequestFromContext:(id)context;
- (id)_requestFromContext:(id)context;
- (void)_populateCustomStringsFromContext:(id)context;
- (void)_startAuthControllerWithRequest:(id)request context:(id)context;
- (void)authorizationController:(id)controller didCompleteWithAuthorization:(id)authorization;
- (void)authorizationController:(id)controller didCompleteWithError:(id)error;
- (void)performAuthenticationRequestWithContext:(id)context completion:(id)completion;
- (void)performRegistrationRequestWithContext:(id)context completion:(id)completion;
@end

@implementation AKFidoAuthorizationController

- (void)performRegistrationRequestWithContext:(id)context completion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, context);
  v8 = 0;
  objc_storeStrong(&v8, completion);
  [(AKFidoAuthorizationController *)selfCopy setContext:location[0]];
  v7 = [(AKFidoAuthorizationController *)selfCopy _requestFromContext:location[0]];
  v4 = MEMORY[0x193B165F0](v8);
  registrationCompletion = selfCopy->_registrationCompletion;
  selfCopy->_registrationCompletion = v4;
  MEMORY[0x1E69E5920](registrationCompletion);
  [(AKFidoAuthorizationController *)selfCopy _startAuthControllerWithRequest:v7 context:location[0]];
  objc_storeStrong(&v7, 0);
  objc_storeStrong(&v8, 0);
  objc_storeStrong(location, 0);
}

- (void)performAuthenticationRequestWithContext:(id)context completion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, context);
  v8 = 0;
  objc_storeStrong(&v8, completion);
  [(AKFidoAuthorizationController *)selfCopy setContext:location[0]];
  v7 = [(AKFidoAuthorizationController *)selfCopy _authRequestFromContext:location[0]];
  v4 = MEMORY[0x193B165F0](v8);
  authCompletion = selfCopy->_authCompletion;
  selfCopy->_authCompletion = v4;
  MEMORY[0x1E69E5920](authCompletion);
  [(AKFidoAuthorizationController *)selfCopy _startAuthControllerWithRequest:v7 context:location[0]];
  objc_storeStrong(&v7, 0);
  objc_storeStrong(&v8, 0);
  objc_storeStrong(location, 0);
}

- (void)_startAuthControllerWithRequest:(id)request context:(id)context
{
  v19[1] = *MEMORY[0x1E69E9840];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, request);
  v16 = 0;
  objc_storeStrong(&v16, context);
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
  [(AKFidoAuthorizationController *)selfCopy set_authController:?];
  MEMORY[0x1E69E5920](v9);
  MEMORY[0x1E69E5920](v10);
  v11 = selfCopy;
  _authController = [(AKFidoAuthorizationController *)selfCopy _authController];
  [(ASAuthorizationController *)_authController setDelegate:v11];
  MEMORY[0x1E69E5920](_authController);
  [(AKFidoAuthorizationController *)selfCopy _populateCustomStringsFromContext:v16];
  uiProvider = [(AKFidoAuthorizationController *)selfCopy uiProvider];
  v14 = objc_opt_respondsToSelector();
  MEMORY[0x1E69E5920](uiProvider);
  if (v14)
  {
    uiProvider2 = [(AKFidoAuthorizationController *)selfCopy uiProvider];
    _authController2 = [(AKFidoAuthorizationController *)selfCopy _authController];
    [(ASAuthorizationController *)_authController2 setPresentationContextProvider:uiProvider2];
    MEMORY[0x1E69E5920](_authController2);
    MEMORY[0x1E69E5920](uiProvider2);
  }

  _authController3 = [(AKFidoAuthorizationController *)selfCopy _authController];
  [(ASAuthorizationController *)_authController3 performRequests];
  MEMORY[0x1E69E5920](_authController3);
  objc_storeStrong(&v16, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];
}

- (id)_requestFromContext:(id)context
{
  v37 = *MEMORY[0x1E69E9840];
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, context);
  if (AuthenticationServicesLibraryCore(0))
  {
    v3 = objc_alloc(getASAuthorizationSecurityKeyPublicKeyCredentialProviderClass());
  }

  else
  {
    v3 = [0 alloc];
  }

  v12 = v3;
  relyingPartyIdentifier = [location[0] relyingPartyIdentifier];
  v33 = [v12 initWithRelyingPartyIdentifier:?];
  MEMORY[0x1E69E5920](relyingPartyIdentifier);
  challenge = [location[0] challenge];
  displayName = [location[0] displayName];
  credentialName = [location[0] credentialName];
  userIdentifier = [location[0] userIdentifier];
  v32 = [v33 createCredentialRegistrationRequestWithChallenge:challenge displayName:displayName name:credentialName userID:?];
  MEMORY[0x1E69E5920](userIdentifier);
  MEMORY[0x1E69E5920](credentialName);
  MEMORY[0x1E69E5920](displayName);
  MEMORY[0x1E69E5920](challenge);
  credentials = [location[0] credentials];
  v30 = 0;
  v28 = 0;
  v19 = 0;
  if ([credentials count])
  {
    credentials2 = [location[0] credentials];
    v30 = 1;
    firstObject = [credentials2 firstObject];
    v28 = 1;
    v19 = [firstObject length] != 0;
  }

  if (v28)
  {
    MEMORY[0x1E69E5920](firstObject);
  }

  if (v30)
  {
    MEMORY[0x1E69E5920](credentials2);
  }

  MEMORY[0x1E69E5920](credentials);
  if (v19)
  {
    v27 = _AKLogFido();
    v26 = OS_LOG_TYPE_DEBUG;
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
    {
      credentials3 = [location[0] credentials];
      __os_log_helper_16_0_1_8_0(v36, [credentials3 count]);
      _os_log_debug_impl(&dword_193225000, v27, v26, "Adding %lu credentials to the excluded credentials list.", v36, 0xCu);
      MEMORY[0x1E69E5920](credentials3);
    }

    objc_storeStrong(&v27, 0);
    credentials4 = [location[0] credentials];
    v25 = [credentials4 aaf_map:&__block_literal_global_6];
    MEMORY[0x1E69E5920](credentials4);
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

- (id)_authRequestFromContext:(id)context
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, context);
  if (AuthenticationServicesLibraryCore(0))
  {
    v3 = objc_alloc(getASAuthorizationSecurityKeyPublicKeyCredentialProviderClass());
  }

  else
  {
    v3 = [0 alloc];
  }

  v7 = v3;
  relyingPartyIdentifier = [location[0] relyingPartyIdentifier];
  v18 = [v7 initWithRelyingPartyIdentifier:?];
  MEMORY[0x1E69E5920](relyingPartyIdentifier);
  challenge = [location[0] challenge];
  v17 = [v18 createCredentialAssertionRequestWithChallenge:?];
  MEMORY[0x1E69E5920](challenge);
  credentials = [location[0] credentials];
  v15 = 0;
  v13 = 0;
  v11 = 0;
  if ([credentials count])
  {
    credentials2 = [location[0] credentials];
    v15 = 1;
    firstObject = [credentials2 firstObject];
    v13 = 1;
    v11 = [firstObject length] != 0;
  }

  if (v13)
  {
    MEMORY[0x1E69E5920](firstObject);
  }

  if (v15)
  {
    MEMORY[0x1E69E5920](credentials2);
  }

  MEMORY[0x1E69E5920](credentials);
  if (v11)
  {
    credentials3 = [location[0] credentials];
    v12 = [credentials3 aaf_map:&__block_literal_global_22];
    MEMORY[0x1E69E5920](credentials3);
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

- (void)authorizationController:(id)controller didCompleteWithAuthorization:(id)authorization
{
  v64 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, controller);
  v59 = 0;
  objc_storeStrong(&v59, authorization);
  credential = [v59 credential];
  if (AuthenticationServicesLibraryCore(0))
  {
    getASAuthorizationSecurityKeyPublicKeyCredentialRegistrationClass();
  }

  isKindOfClass = objc_opt_isKindOfClass();
  MEMORY[0x1E69E5920](credential);
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
    credential2 = [v59 credential];
    v54 = _AKLogFido();
    v53 = OS_LOG_TYPE_DEBUG;
    if (os_log_type_enabled(v54, OS_LOG_TYPE_DEBUG))
    {
      credentialID = [credential2 credentialID];
      rawAttestationObject = [credential2 rawAttestationObject];
      rawClientDataJSON = [credential2 rawClientDataJSON];
      __os_log_helper_16_2_3_8_64_8_64_8_64(v63, credentialID, rawAttestationObject, rawClientDataJSON);
      _os_log_debug_impl(&dword_193225000, v54, v53, "Fido registration CredentialID: %@\nAttestation Data: %@\nClientData: %@", v63, 0x20u);
      MEMORY[0x1E69E5920](rawClientDataJSON);
      MEMORY[0x1E69E5920](rawAttestationObject);
      MEMORY[0x1E69E5920](credentialID);
    }

    objc_storeStrong(&v54, 0);
    registrationCompletion = [(AKFidoAuthorizationController *)selfCopy registrationCompletion];
    MEMORY[0x1E69E5920](registrationCompletion);
    if (registrationCompletion)
    {
      v23 = [AKFidoRegistrationResponse alloc];
      context = [(AKFidoAuthorizationController *)selfCopy context];
      originalChallenge = [(AKFidoContext *)context originalChallenge];
      rawAttestationObject2 = [credential2 rawAttestationObject];
      credentialID2 = [credential2 credentialID];
      rawClientDataJSON2 = [credential2 rawClientDataJSON];
      context2 = [(AKFidoAuthorizationController *)selfCopy context];
      relyingPartyIdentifier = [(AKFidoContext *)context2 relyingPartyIdentifier];
      context3 = [(AKFidoAuthorizationController *)selfCopy context];
      credentialName = [(AKFidoContext *)context3 credentialName];
      context4 = [(AKFidoAuthorizationController *)selfCopy context];
      userIdentifier = [(AKFidoContext *)context4 userIdentifier];
      v52 = [(AKFidoRegistrationResponse *)v23 initWithChallengeString:originalChallenge attestationsData:rawAttestationObject2 credentialID:credentialID2 clientData:rawClientDataJSON2 relyingPartyIdentifier:relyingPartyIdentifier credentialName:credentialName userIdentifier:userIdentifier];
      MEMORY[0x1E69E5920](userIdentifier);
      MEMORY[0x1E69E5920](context4);
      MEMORY[0x1E69E5920](credentialName);
      MEMORY[0x1E69E5920](context3);
      MEMORY[0x1E69E5920](relyingPartyIdentifier);
      MEMORY[0x1E69E5920](context2);
      MEMORY[0x1E69E5920](rawClientDataJSON2);
      MEMORY[0x1E69E5920](credentialID2);
      MEMORY[0x1E69E5920](rawAttestationObject2);
      MEMORY[0x1E69E5920](originalChallenge);
      MEMORY[0x1E69E5920](context);
      registrationCompletion2 = [(AKFidoAuthorizationController *)selfCopy registrationCompletion];
      registrationCompletion2[2](registrationCompletion2, v52);
      MEMORY[0x1E69E5920](registrationCompletion2);
      [(AKFidoAuthorizationController *)selfCopy setRegistrationCompletion:0];
      objc_storeStrong(&v52, 0);
    }

    objc_storeStrong(&selfCopy->_context, 0);
    objc_storeStrong(&credential2, 0);
  }

  else
  {
    credential3 = [v59 credential];
    if (AuthenticationServicesLibraryCore(0))
    {
      getASAuthorizationSecurityKeyPublicKeyCredentialAssertionClass();
    }

    v21 = objc_opt_isKindOfClass();
    MEMORY[0x1E69E5920](credential3);
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
      credential4 = [v59 credential];
      v47 = _AKLogFido();
      v46 = OS_LOG_TYPE_DEBUG;
      if (os_log_type_enabled(v47, OS_LOG_TYPE_DEBUG))
      {
        signature = [credential4 signature];
        rawAuthenticatorData = [credential4 rawAuthenticatorData];
        userID = [credential4 userID];
        __os_log_helper_16_2_3_8_64_8_64_8_64(v62, signature, rawAuthenticatorData, userID);
        _os_log_debug_impl(&dword_193225000, v47, v46, "Fido authentication Signature: %@\nAuthenticator Data: %@\nUserID: %@", v62, 0x20u);
        MEMORY[0x1E69E5920](userID);
        MEMORY[0x1E69E5920](rawAuthenticatorData);
        MEMORY[0x1E69E5920](signature);
      }

      objc_storeStrong(&v47, 0);
      authCompletion = [(AKFidoAuthorizationController *)selfCopy authCompletion];
      MEMORY[0x1E69E5920](authCompletion);
      if (authCompletion)
      {
        v4 = [AKFidoAuthenticationResponse alloc];
        rawAuthenticatorData2 = [credential4 rawAuthenticatorData];
        context5 = [(AKFidoAuthorizationController *)selfCopy context];
        originalChallenge2 = [(AKFidoContext *)context5 originalChallenge];
        context6 = [(AKFidoAuthorizationController *)selfCopy context];
        relyingPartyIdentifier2 = [(AKFidoContext *)context6 relyingPartyIdentifier];
        signature2 = [credential4 signature];
        rawClientDataJSON3 = [credential4 rawClientDataJSON];
        credentialID3 = [credential4 credentialID];
        userID2 = [credential4 userID];
        v45 = [(AKFidoAuthenticationResponse *)v4 initWithAuthenticatorData:rawAuthenticatorData2 challengeString:originalChallenge2 relyingPartyIdentifier:relyingPartyIdentifier2 signature:signature2 clientData:rawClientDataJSON3 credentialID:credentialID3 userIdentifier:userID2];
        MEMORY[0x1E69E5920](userID2);
        MEMORY[0x1E69E5920](credentialID3);
        MEMORY[0x1E69E5920](rawClientDataJSON3);
        MEMORY[0x1E69E5920](signature2);
        MEMORY[0x1E69E5920](relyingPartyIdentifier2);
        MEMORY[0x1E69E5920](context6);
        MEMORY[0x1E69E5920](originalChallenge2);
        MEMORY[0x1E69E5920](context5);
        MEMORY[0x1E69E5920](rawAuthenticatorData2);
        authCompletion2 = [(AKFidoAuthorizationController *)selfCopy authCompletion];
        authCompletion2[2](authCompletion2, v45);
        MEMORY[0x1E69E5920](authCompletion2);
        [(AKFidoAuthorizationController *)selfCopy setAuthCompletion:0];
        objc_storeStrong(&v45, 0);
      }

      objc_storeStrong(&selfCopy->_context, 0);
      objc_storeStrong(&credential4, 0);
    }
  }

  objc_storeStrong(&v59, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];
}

- (void)authorizationController:(id)controller didCompleteWithError:(id)error
{
  v14 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, controller);
  v10 = 0;
  objc_storeStrong(&v10, error);
  v9 = _AKLogFido();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    __os_log_helper_16_2_1_8_66(v13, v10);
    _os_log_error_impl(&dword_193225000, v9, OS_LOG_TYPE_ERROR, "Unable to complete the Fido interaction: %{public}@", v13, 0xCu);
  }

  objc_storeStrong(&v9, 0);
  registrationCompletion = [(AKFidoAuthorizationController *)selfCopy registrationCompletion];
  MEMORY[0x1E69E5920](registrationCompletion);
  if (registrationCompletion)
  {
    registrationCompletion2 = [(AKFidoAuthorizationController *)selfCopy registrationCompletion];
    registrationCompletion2[2]();
    MEMORY[0x1E69E5920](registrationCompletion2);
    [(AKFidoAuthorizationController *)selfCopy setRegistrationCompletion:0];
  }

  authCompletion = [(AKFidoAuthorizationController *)selfCopy authCompletion];
  MEMORY[0x1E69E5920](authCompletion);
  if (authCompletion)
  {
    authCompletion2 = [(AKFidoAuthorizationController *)selfCopy authCompletion];
    authCompletion2[2]();
    MEMORY[0x1E69E5920](authCompletion2);
    [(AKFidoAuthorizationController *)selfCopy setAuthCompletion:0];
  }

  objc_storeStrong(&selfCopy->_context, 0);
  objc_storeStrong(&v10, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];
}

+ (BOOL)isFidoUserCancelError:(id)error
{
  v15 = *MEMORY[0x1E69E9840];
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, error);
  domain = [location[0] domain];
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
  if ([domain isEqualToString:v7])
  {
    v6 = [location[0] code] == 1001;
  }

  if (v10)
  {
    MEMORY[0x1E69E5920](v11);
  }

  MEMORY[0x1E69E5920](domain);
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

- (void)_populateCustomStringsFromContext:(id)context
{
  v32 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, context);
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
  promptHeader = [location[0] promptHeader];
  v21 = [promptHeader length];
  MEMORY[0x1E69E5920](promptHeader);
  if (v21)
  {
    promptHeader2 = [location[0] promptHeader];
    _authController = [(AKFidoAuthorizationController *)selfCopy _authController];
    [(ASAuthorizationController *)_authController setProxySheetHeaderOverride:promptHeader2];
    MEMORY[0x1E69E5920](_authController);
    MEMORY[0x1E69E5920](promptHeader2);
  }

  promptTitle = [location[0] promptTitle];
  v17 = [promptTitle length];
  MEMORY[0x1E69E5920](promptTitle);
  if (v17)
  {
    promptTitle2 = [location[0] promptTitle];
    _authController2 = [(AKFidoAuthorizationController *)selfCopy _authController];
    [(ASAuthorizationController *)_authController2 setProxySheetTitleOverride:promptTitle2];
    MEMORY[0x1E69E5920](_authController2);
    MEMORY[0x1E69E5920](promptTitle2);
  }

  promptBody = [location[0] promptBody];
  v13 = [promptBody length];
  MEMORY[0x1E69E5920](promptBody);
  if (v13)
  {
    promptBody2 = [location[0] promptBody];
    _authController3 = [(AKFidoAuthorizationController *)selfCopy _authController];
    [(ASAuthorizationController *)_authController3 setProxySheetSubtitleOverride:promptBody2];
    MEMORY[0x1E69E5920](_authController3);
    MEMORY[0x1E69E5920](promptBody2);
  }

  useAlternativeKeysIcon = [location[0] useAlternativeKeysIcon];
  _authController4 = [(AKFidoAuthorizationController *)selfCopy _authController];
  [(ASAuthorizationController *)_authController4 setUseAlternativeSecurityKeysIcon:useAlternativeKeysIcon];
  MEMORY[0x1E69E5920](_authController4);
  relyingPartyIdentifier = [location[0] relyingPartyIdentifier];
  v30 = relyingPartyIdentifier;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v30 count:1];
  _authController5 = [(AKFidoAuthorizationController *)selfCopy _authController];
  [(ASAuthorizationController *)_authController5 setProxiedAssociatedDomains:v6];
  MEMORY[0x1E69E5920](_authController5);
  MEMORY[0x1E69E5920](v6);
  MEMORY[0x1E69E5920](relyingPartyIdentifier);
  incorrectKeyPresentedMessage = [location[0] incorrectKeyPresentedMessage];
  _authController6 = [(AKFidoAuthorizationController *)selfCopy _authController];
  [(ASAuthorizationController *)_authController6 setProxySheetNoCredentialsErrorMessageOverride:incorrectKeyPresentedMessage];
  MEMORY[0x1E69E5920](_authController6);
  MEMORY[0x1E69E5920](incorrectKeyPresentedMessage);
  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];
}

@end