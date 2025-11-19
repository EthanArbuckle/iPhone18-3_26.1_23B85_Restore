@interface ASCCredentialRequestContext
- (ASCCredentialRequestContext)initWithCoder:(id)a3;
- (ASCCredentialRequestContext)initWithRequestTypes:(unint64_t)a3;
- (BOOL)isUsingWebBrowserOnlyOptions;
- (BOOL)requestRequiresRelyingParty;
- (void)applyMagicCredentialIDIfNecessary;
- (void)encodeWithCoder:(id)a3;
- (void)logRequest;
- (void)sanitizeRequestTypesForAutoFillRequestIfNecessary;
- (void)setProxiedOriginDeviceName:(id)a3;
@end

@implementation ASCCredentialRequestContext

- (ASCCredentialRequestContext)initWithRequestTypes:(unint64_t)a3
{
  v8.receiver = self;
  v8.super_class = ASCCredentialRequestContext;
  v4 = [(ASCCredentialRequestContext *)&v8 init];
  v5 = v4;
  if (v4)
  {
    v4->_requestTypes = a3;
    v4->_isClientLinkedOnOrAfterIOS15Aligned = dyld_program_sdk_at_least();
    v6 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = MEMORY[0x1E696AD98];
  requestTypes = self->_requestTypes;
  v7 = a3;
  v6 = [v4 numberWithUnsignedInteger:requestTypes];
  [v7 encodeObject:v6 forKey:@"requestTypes"];

  [v7 encodeObject:self->_proxiedAppName forKey:@"appName"];
  [v7 encodeObject:self->_proxiedAppIdentifier forKey:@"appIdentifier"];
  [v7 encodeObject:self->_proxiedBundleIdentifier forKey:@"bundleIdentifier"];
  [v7 encodeObject:self->_proxiedTeamIdentifier forKey:@"teamIdentifier"];
  [v7 encodeObject:self->_proxiedAssociatedDomains forKey:@"associatedDomains"];
  [v7 encodeObject:self->_proxiedIconData forKey:@"iconData"];
  [v7 encodeObject:self->_proxiedIconScale forKey:@"iconScale"];
  [v7 encodeObject:self->_proxiedOriginDeviceName forKey:@"proxiedOriginDeviceName"];
  [v7 encodeObject:self->_proxySheetHeaderOverride forKey:@"proxySheetHeaderOverride"];
  [v7 encodeObject:self->_proxySheetTitleOverride forKey:@"proxySheetTitleOverride"];
  [v7 encodeObject:self->_proxySheetSubtitleOverride forKey:@"proxySheetSubtitleOverride"];
  [v7 encodeObject:self->_proxySheetNoCredentialsErrorTitleOverride forKey:@"proxySheetNoCredentialsErrorTitleOverride"];
  [v7 encodeObject:self->_proxySheetNoCredentialsErrorMessageOverride forKey:@"proxySheetNoCredentialsErrorMessageOverride"];
  [v7 encodeInteger:self->_requestStyle forKey:@"requestStyle"];
  [v7 encodeObject:self->_globalFrameID forKey:@"webGlobalFrameID"];
  [v7 encodeInteger:self->_requestOptions forKey:@"requestOptions"];
  [v7 encodeObject:self->_authenticatedContext forKey:@"authenticatedContext"];
  [v7 encodeBool:self->_useAlternativeSecurityKeysIcon forKey:@"useAlternativeSecurityKeysIcon"];
  [v7 encodeObject:self->_appleIDAuthorizationRequest forKey:@"appleIDAuthorizationRequest"];
  [v7 encodeBool:self->_isClientLinkedOnOrAfterIOS15Aligned forKey:@"linkedOnOrAfterIOS15Aligned"];
  [v7 encodeObject:self->_relyingPartyIdentifier forKey:@"relyingPartyIdentifier"];
  [v7 encodeObject:self->_platformKeyCredentialCreationOptions forKey:@"platformCredentialCreationOptions"];
  [v7 encodeObject:self->_platformKeyCredentialAssertionOptions forKey:@"platformCredentialAssertionOptions"];
  [v7 encodeObject:self->_securityKeyCredentialCreationOptions forKey:@"securityKeyCredentialCreationOptions"];
  [v7 encodeObject:self->_securityKeyCredentialAssertionOptions forKey:@"securityKeyCredentialAssertionOptions"];
  [v7 encodeObject:self->_platformAccountRegistrationOptions forKey:@"platformAccountRegistrationOptions"];
  [v7 encodeObject:self->_testOptions forKey:@"testOptions"];
  [v7 encodeObject:self->_savedAccountContext forKey:@"savedAccountContext"];
  [v7 encodeBool:self->_isConditionalRegistrationRequest forKey:@"isConditionalRegistrationRequest"];
  [v7 encodeObject:self->_windowSceneIdentifier forKey:@"windowSceneIdentifier"];
}

- (ASCCredentialRequestContext)initWithCoder:(id)a3
{
  v4 = a3;
  v64.receiver = self;
  v64.super_class = ASCCredentialRequestContext;
  v5 = [(ASCCredentialRequestContext *)&v64 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"requestTypes"];
    v5->_requestTypes = [v6 unsignedIntegerValue];
    v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"appName"];
    proxiedAppName = v5->_proxiedAppName;
    v5->_proxiedAppName = v7;

    v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"appIdentifier"];
    proxiedAppIdentifier = v5->_proxiedAppIdentifier;
    v5->_proxiedAppIdentifier = v9;

    v11 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"bundleIdentifier"];
    proxiedBundleIdentifier = v5->_proxiedBundleIdentifier;
    v5->_proxiedBundleIdentifier = v11;

    v13 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"teamIdentifier"];
    proxiedTeamIdentifier = v5->_proxiedTeamIdentifier;
    v5->_proxiedTeamIdentifier = v13;

    v15 = MEMORY[0x1E695DFD8];
    v16 = objc_opt_class();
    v17 = [v15 setWithObjects:{v16, objc_opt_class(), 0}];
    v18 = [v4 decodeObjectOfClasses:v17 forKey:@"associatedDomains"];
    proxiedAssociatedDomains = v5->_proxiedAssociatedDomains;
    v5->_proxiedAssociatedDomains = v18;

    v20 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"iconData"];
    proxiedIconData = v5->_proxiedIconData;
    v5->_proxiedIconData = v20;

    v22 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"iconScale"];
    proxiedIconScale = v5->_proxiedIconScale;
    v5->_proxiedIconScale = v22;

    v24 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"proxiedOriginDeviceName"];
    proxiedOriginDeviceName = v5->_proxiedOriginDeviceName;
    v5->_proxiedOriginDeviceName = v24;

    v26 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"proxySheetHeaderOverride"];
    proxySheetHeaderOverride = v5->_proxySheetHeaderOverride;
    v5->_proxySheetHeaderOverride = v26;

    v28 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"proxySheetTitleOverride"];
    proxySheetTitleOverride = v5->_proxySheetTitleOverride;
    v5->_proxySheetTitleOverride = v28;

    v30 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"proxySheetSubtitleOverride"];
    proxySheetSubtitleOverride = v5->_proxySheetSubtitleOverride;
    v5->_proxySheetSubtitleOverride = v30;

    v32 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"proxySheetNoCredentialsErrorTitleOverride"];
    proxySheetNoCredentialsErrorTitleOverride = v5->_proxySheetNoCredentialsErrorTitleOverride;
    v5->_proxySheetNoCredentialsErrorTitleOverride = v32;

    v34 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"proxySheetNoCredentialsErrorMessageOverride"];
    proxySheetNoCredentialsErrorMessageOverride = v5->_proxySheetNoCredentialsErrorMessageOverride;
    v5->_proxySheetNoCredentialsErrorMessageOverride = v34;

    v36 = [v4 decodeIntegerForKey:@"requestStyle"];
    if (v36 >= 3)
    {
      v37 = 0;
    }

    else
    {
      v37 = v36;
    }

    v5->_requestStyle = v37;
    v38 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"webGlobalFrameID"];
    globalFrameID = v5->_globalFrameID;
    v5->_globalFrameID = v38;

    v5->_requestOptions = [v4 decodeIntegerForKey:@"requestOptions"];
    v40 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"authenticatedContext"];
    authenticatedContext = v5->_authenticatedContext;
    v5->_authenticatedContext = v40;

    v5->_useAlternativeSecurityKeysIcon = [v4 decodeBoolForKey:@"useAlternativeSecurityKeysIcon"];
    v42 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"appleIDAuthorizationRequest"];
    appleIDAuthorizationRequest = v5->_appleIDAuthorizationRequest;
    v5->_appleIDAuthorizationRequest = v42;

    v5->_isClientLinkedOnOrAfterIOS15Aligned = [v4 decodeBoolForKey:@"linkedOnOrAfterIOS15Aligned"];
    v44 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"relyingPartyIdentifier"];
    relyingPartyIdentifier = v5->_relyingPartyIdentifier;
    v5->_relyingPartyIdentifier = v44;

    v46 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"platformCredentialCreationOptions"];
    platformKeyCredentialCreationOptions = v5->_platformKeyCredentialCreationOptions;
    v5->_platformKeyCredentialCreationOptions = v46;

    v48 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"platformCredentialAssertionOptions"];
    platformKeyCredentialAssertionOptions = v5->_platformKeyCredentialAssertionOptions;
    v5->_platformKeyCredentialAssertionOptions = v48;

    v50 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"securityKeyCredentialCreationOptions"];
    securityKeyCredentialCreationOptions = v5->_securityKeyCredentialCreationOptions;
    v5->_securityKeyCredentialCreationOptions = v50;

    v52 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"securityKeyCredentialAssertionOptions"];
    securityKeyCredentialAssertionOptions = v5->_securityKeyCredentialAssertionOptions;
    v5->_securityKeyCredentialAssertionOptions = v52;

    v54 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"platformAccountRegistrationOptions"];
    platformAccountRegistrationOptions = v5->_platformAccountRegistrationOptions;
    v5->_platformAccountRegistrationOptions = v54;

    v56 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"testOptions"];
    testOptions = v5->_testOptions;
    v5->_testOptions = v56;

    v58 = 0;
    if ([ASCAgent validatePresenceOfTestOptions:v5->_testOptions])
    {
      v5->_isConditionalRegistrationRequest = [v4 decodeBoolForKey:@"isConditionalRegistrationRequest"];
      v59 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"windowSceneIdentifier"];
      windowSceneIdentifier = v5->_windowSceneIdentifier;
      v5->_windowSceneIdentifier = v59;

      v61 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"savedAccountContext"];
      savedAccountContext = v5->_savedAccountContext;
      v5->_savedAccountContext = v61;

      v58 = v5;
    }
  }

  else
  {
    v58 = 0;
  }

  return v58;
}

- (BOOL)isUsingWebBrowserOnlyOptions
{
  v3 = self->_platformKeyCredentialAssertionOptions;
  v4 = [(ASCPublicKeyCredentialAssertionOptions *)v3 clientDataHash];
  if (!v4)
  {
    v5 = [(ASCPublicKeyCredentialAssertionOptions *)v3 clientDataJSON];
    if (v5 || [(ASCPublicKeyCredentialAssertionOptions *)v3 shouldHideHybrid])
    {
      goto LABEL_5;
    }

    v8 = [(ASCPublicKeyCredentialAssertionOptions *)v3 appIDForSecurityKeys];

    if (v8)
    {
      v6 = 1;
      goto LABEL_7;
    }

    v5 = self->_platformKeyCredentialCreationOptions;
    v9 = [(ASCPublicKeyCredentialCreationOptions *)v5 clientDataHash];
    if (v9 || ([(ASCPublicKeyCredentialCreationOptions *)v5 clientDataJSON], (v9 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v10 = v9;
LABEL_13:
      v6 = 1;
LABEL_14:

      goto LABEL_6;
    }

    if ([(ASCPublicKeyCredentialCreationOptions *)v5 shouldHideHybrid])
    {
      goto LABEL_5;
    }

    v10 = self->_securityKeyCredentialAssertionOptions;
    v11 = [(ASCPublicKeyCredentialAssertionOptions *)v10 clientDataHash];
    if (v11 || ([(ASCPublicKeyCredentialAssertionOptions *)v10 clientDataJSON], (v11 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v6 = 1;
LABEL_19:

      goto LABEL_14;
    }

    v12 = [(ASCPublicKeyCredentialAssertionOptions *)v10 appIDForSecurityKeys];

    if (v12)
    {
      goto LABEL_13;
    }

    v17 = self->_securityKeyCredentialCreationOptions;
    v13 = [(ASCPublicKeyCredentialCreationOptions *)v17 clientDataHash];
    if (v13)
    {
      goto LABEL_22;
    }

    v14 = [(ASCPublicKeyCredentialCreationOptions *)v17 clientDataJSON];

    if (v14)
    {
      goto LABEL_24;
    }

    v13 = [(ASCPublicKeyCredentialAssertionOptions *)v3 origin];
    if (v13)
    {
      goto LABEL_22;
    }

    v15 = [(ASCPublicKeyCredentialAssertionOptions *)v10 origin];

    if (v15)
    {
      goto LABEL_24;
    }

    v13 = [(ASCPublicKeyCredentialCreationOptions *)v5 origin];
    if (v13)
    {
LABEL_22:
    }

    else
    {
      v16 = [(ASCPublicKeyCredentialCreationOptions *)v17 origin];

      if (!v16)
      {
        v6 = self->_authenticatedContext != 0;
        goto LABEL_25;
      }
    }

LABEL_24:
    v6 = 1;
LABEL_25:
    v11 = v17;
    goto LABEL_19;
  }

  v5 = v4;
LABEL_5:
  v6 = 1;
LABEL_6:

LABEL_7:
  return v6;
}

- (void)setProxiedOriginDeviceName:(id)a3
{
  v5 = a3;
  if ([v5 length])
  {
    v4 = v5;
  }

  else
  {
    v4 = 0;
  }

  objc_storeStrong(&self->_proxiedOriginDeviceName, v4);
}

- (void)sanitizeRequestTypesForAutoFillRequestIfNecessary
{
  if (self->_requestStyle == 1)
  {
    self->_requestTypes &= 8uLL;
  }
}

- (void)applyMagicCredentialIDIfNecessary
{
  if ((self->_requestTypes & 8) != 0)
  {
    v3 = [(ASCPublicKeyCredentialAssertionOptions *)self->_platformKeyCredentialAssertionOptions allowedCredentials];
    if ([v3 count] == 1)
    {
      v4 = [v3 objectAtIndexedSubscript:0];
      v5 = v4;
      if (v4)
      {
        v6 = [v4 credentialID];
        v7 = +[ASCPublicKeyCredentialDescriptor magicCredentialID];
        v8 = [v6 isEqualToData:v7];

        if (v8)
        {
          v9 = WBS_LOG_CHANNEL_PREFIXAuthorization();
          if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
          {
            *v10 = 0;
            _os_log_impl(&dword_1C20AD000, v9, OS_LOG_TYPE_INFO, "Updating request.", v10, 2u);
          }

          self->_requestTypes = 8;
          [(ASCPublicKeyCredentialAssertionOptions *)self->_platformKeyCredentialAssertionOptions setAllowedCredentials:0];
        }
      }
    }
  }
}

- (BOOL)requestRequiresRelyingParty
{
  requestTypes = self->_requestTypes;
  if (!requestTypes)
  {
    return 0;
  }

  v3 = 1;
  result = 1;
  while (1)
  {
    do
    {
      v5 = v3;
      v3 *= 2;
    }

    while ((v5 & requestTypes) == 0);
    if ((v5 - 4) <= 0x3C && ((1 << (v5 - 4)) & 0x1000000010001011) != 0 || v5 == 512)
    {
      break;
    }

    requestTypes &= ~v5;
    if (!requestTypes)
    {
      return 0;
    }
  }

  return result;
}

- (void)logRequest
{
  v28 = *MEMORY[0x1E69E9840];
  requestTypes = self->_requestTypes;
  if (requestTypes)
  {
    v4 = 1;
    do
    {
      do
      {
        while ((requestTypes & v4) == 0)
        {
          v4 *= 2;
        }
      }

      while (!v4);
      if (v4 <= 7)
      {
        switch(v4)
        {
          case 1:
            v13 = WBS_LOG_CHANNEL_PREFIXAuthorization();
            if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
            {
              *v21 = 0;
              v9 = v13;
              v10 = "Password request";
LABEL_34:
              _os_log_impl(&dword_1C20AD000, v9, OS_LOG_TYPE_INFO, v10, v21, 2u);
            }

            break;
          case 2:
            v14 = WBS_LOG_CHANNEL_PREFIXAuthorization();
            if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
            {
              *v21 = 0;
              v9 = v14;
              v10 = "Apple ID request";
              goto LABEL_34;
            }

            break;
          case 4:
            v7 = WBS_LOG_CHANNEL_PREFIXAuthorization();
            if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
            {
              *v21 = 0;
              _os_log_impl(&dword_1C20AD000, v7, OS_LOG_TYPE_INFO, "Platform registration request:", v21, 2u);
            }

            platformKeyCredentialCreationOptions = self->_platformKeyCredentialCreationOptions;
            goto LABEL_29;
        }
      }

      else
      {
        if (v4 > 31)
        {
          if (v4 != 32)
          {
            if (v4 != 512)
            {
              goto LABEL_35;
            }

            v8 = WBS_LOG_CHANNEL_PREFIXAuthorization();
            if (!os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
            {
              goto LABEL_35;
            }

            *v21 = 0;
            v9 = v8;
            v10 = "Platform account registration request";
            goto LABEL_34;
          }

          v12 = WBS_LOG_CHANNEL_PREFIXAuthorization();
          if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
          {
            *v21 = 0;
            _os_log_impl(&dword_1C20AD000, v12, OS_LOG_TYPE_INFO, "Security key assertion request:", v21, 2u);
          }

          platformKeyCredentialCreationOptions = self->_securityKeyCredentialAssertionOptions;
          goto LABEL_29;
        }

        if (v4 == 8)
        {
          v11 = WBS_LOG_CHANNEL_PREFIXAuthorization();
          if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
          {
            *v21 = 0;
            _os_log_impl(&dword_1C20AD000, v11, OS_LOG_TYPE_INFO, "Platform assertion request:", v21, 2u);
          }

          platformKeyCredentialCreationOptions = self->_platformKeyCredentialAssertionOptions;
          goto LABEL_29;
        }

        if (v4 == 16)
        {
          v5 = WBS_LOG_CHANNEL_PREFIXAuthorization();
          if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
          {
            *v21 = 0;
            _os_log_impl(&dword_1C20AD000, v5, OS_LOG_TYPE_INFO, "Security key registration request:", v21, 2u);
          }

          platformKeyCredentialCreationOptions = self->_securityKeyCredentialCreationOptions;
LABEL_29:
          [platformKeyCredentialCreationOptions logRequest];
        }
      }

LABEL_35:
      requestTypes &= ~v4;
      v4 *= 2;
    }

    while (requestTypes);
  }

  v15 = WBS_LOG_CHANNEL_PREFIXAuthorization();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
  {
    requestStyle = self->_requestStyle;
    if (requestStyle > 2)
    {
      v17 = @"Unknown";
    }

    else
    {
      v17 = off_1E8160218[requestStyle];
    }

    requestOptions = self->_requestOptions;
    globalFrameID = self->_globalFrameID;
    *v21 = 138544130;
    *&v21[4] = v17;
    v22 = 2114;
    v23 = globalFrameID;
    v24 = 2050;
    v25 = requestOptions;
    v26 = 2114;
    v27 = @"authenticatedContext";
    _os_log_impl(&dword_1C20AD000, v15, OS_LOG_TYPE_INFO, "style: %{public}@\nframeID: %{public}@\noptions: %{public}lx\ncontext: %{public}@\n", v21, 0x2Au);
  }

  v20 = *MEMORY[0x1E69E9840];
}

@end