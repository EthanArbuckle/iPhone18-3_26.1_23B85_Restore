@interface NEURLFilterConfiguration
- (BOOL)checkValidityAndCollectErrors:(id)a3;
- (NEURLFilterConfiguration)init;
- (NEURLFilterConfiguration)initWithCoder:(id)a3;
- (NEURLFilterConfiguration)initWithPIRServer:(id)a3 pirPrivacyPassIssuerURL:(id)a4 pirAuthenticationToken:(id)a5 controlProviderBundleIdentifier:(id)a6;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation NEURLFilterConfiguration

- (BOOL)checkValidityAndCollectErrors:(id)a3
{
  v4 = a3;
  v5 = [(NEURLFilterConfiguration *)self appBundleIdentifier];
  v6 = [v5 length];
  v7 = v6 != 0;

  if (!v6)
  {
    [NEConfiguration addError:v4 toList:?];
  }

  v8 = [(NEURLFilterConfiguration *)self controlProviderBundleIdentifier];
  v9 = [v8 length];

  if (!v9)
  {
    [NEConfiguration addError:v4 toList:?];
    v7 = 0;
  }

  [(NEURLFilterConfiguration *)self prefilterFetchInterval];
  if (v10 <= 2700.0)
  {
    [(NEURLFilterConfiguration *)self setPrefilterFetchInterval:?];
  }

  v11 = [(NEURLFilterConfiguration *)self pirServerURL];
  if (!v11)
  {
    goto LABEL_9;
  }

  v12 = v11;
  v13 = [(NEURLFilterConfiguration *)self pirServerURL];
  v14 = [v13 absoluteString];
  v15 = [v14 length];

  if (!v15)
  {
LABEL_9:
    [NEConfiguration addError:v4 toList:?];
    v7 = 0;
  }

  v16 = [(NEURLFilterConfiguration *)self pirPrivacyPassIssuerURL];
  if (!v16)
  {
    goto LABEL_12;
  }

  v17 = v16;
  v18 = [(NEURLFilterConfiguration *)self pirPrivacyPassIssuerURL];
  v19 = [v18 absoluteString];
  v20 = [v19 length];

  if (!v20)
  {
LABEL_12:
    v21 = [(NEURLFilterConfiguration *)self pirServerURL];
    [(NEURLFilterConfiguration *)self setPirPrivacyPassIssuerURL:v21];
  }

  v22 = [(NEURLFilterConfiguration *)self pirAuthenticationToken];
  v23 = [v22 length];

  if (!v23)
  {
    [NEConfiguration addError:v4 toList:?];
    v7 = 0;
  }

  return v7;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [[NEURLFilterConfiguration allocWithZone:?]];
  [(NEURLFilterConfiguration *)v4 setEnabled:[(NEURLFilterConfiguration *)self isEnabled]];
  [(NEURLFilterConfiguration *)v4 setShouldFailClosed:[(NEURLFilterConfiguration *)self shouldFailClosed]];
  v5 = [(NEURLFilterConfiguration *)self appBundleIdentifier];
  [(NEURLFilterConfiguration *)v4 setAppBundleIdentifier:v5];

  v6 = [(NEURLFilterConfiguration *)self controlProviderBundleIdentifier];
  [(NEURLFilterConfiguration *)v4 setControlProviderBundleIdentifier:v6];

  v7 = [(NEURLFilterConfiguration *)self controlProviderDesignatedRequirement];
  [(NEURLFilterConfiguration *)v4 setControlProviderDesignatedRequirement:v7];

  [(NEURLFilterConfiguration *)self prefilterFetchInterval];
  [(NEURLFilterConfiguration *)v4 setPrefilterFetchInterval:?];
  v8 = [(NEURLFilterConfiguration *)self pirServerURL];
  [(NEURLFilterConfiguration *)v4 setPirServerURL:v8];

  v9 = [(NEURLFilterConfiguration *)self pirPrivacyPassIssuerURL];
  [(NEURLFilterConfiguration *)v4 setPirPrivacyPassIssuerURL:v9];

  v10 = [(NEURLFilterConfiguration *)self pirAuthenticationToken];
  [(NEURLFilterConfiguration *)v4 setPirAuthenticationToken:v10];

  v11 = [(NEURLFilterConfiguration *)self pirGroupName];
  [(NEURLFilterConfiguration *)v4 setPirGroupName:v11];

  v12 = [(NEURLFilterConfiguration *)self pirUseCase];
  [(NEURLFilterConfiguration *)v4 setPirUseCase:v12];

  [(NEURLFilterConfiguration *)v4 setPirPrivacyProxyFailOpen:[(NEURLFilterConfiguration *)self pirPrivacyProxyFailOpen]];
  [(NEURLFilterConfiguration *)v4 setPirSkipRegistration:[(NEURLFilterConfiguration *)self pirSkipRegistration]];
  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  v13 = a3;
  [v13 encodeBool:-[NEURLFilterConfiguration isEnabled](self forKey:{"isEnabled"), @"Enabled"}];
  [v13 encodeBool:-[NEURLFilterConfiguration shouldFailClosed](self forKey:{"shouldFailClosed"), @"FailClosed"}];
  v4 = [(NEURLFilterConfiguration *)self appBundleIdentifier];
  [v13 encodeObject:v4 forKey:@"AppBundleIdentifier"];

  v5 = [(NEURLFilterConfiguration *)self controlProviderBundleIdentifier];
  [v13 encodeObject:v5 forKey:@"ControlProviderBundleIdentifier"];

  v6 = [(NEURLFilterConfiguration *)self controlProviderDesignatedRequirement];
  [v13 encodeObject:v6 forKey:@"ControlProviderDesignatedRequirement"];

  [(NEURLFilterConfiguration *)self prefilterFetchInterval];
  [v13 encodeInt:v7 forKey:@"PrefilterFetchFrequency"];
  v8 = [(NEURLFilterConfiguration *)self pirServerURL];
  [v13 encodeObject:v8 forKey:@"pirServerURL"];

  v9 = [(NEURLFilterConfiguration *)self pirPrivacyPassIssuerURL];
  [v13 encodeObject:v9 forKey:@"pirPrivacyPassIssuerURL"];

  v10 = [(NEURLFilterConfiguration *)self pirAuthenticationToken];
  [v13 encodeObject:v10 forKey:@"AuthenticationToken"];

  v11 = [(NEURLFilterConfiguration *)self pirGroupName];
  [v13 encodeObject:v11 forKey:@"pirGroupName"];

  v12 = [(NEURLFilterConfiguration *)self pirUseCase];
  [v13 encodeObject:v12 forKey:@"pirUseCaseName"];

  [v13 encodeBool:-[NEURLFilterConfiguration pirPrivacyProxyFailOpen](self forKey:{"pirPrivacyProxyFailOpen"), @"pirPrivacyProxyFailOpen"}];
  [v13 encodeBool:-[NEURLFilterConfiguration pirSkipRegistration](self forKey:{"pirSkipRegistration"), @"pirSkipRegistration"}];
}

- (NEURLFilterConfiguration)initWithCoder:(id)a3
{
  v4 = a3;
  v23.receiver = self;
  v23.super_class = NEURLFilterConfiguration;
  v5 = [(NEURLFilterConfiguration *)&v23 init];
  if (v5)
  {
    v5->_enabled = [v4 decodeBoolForKey:@"Enabled"];
    v5->_shouldFailClosed = [v4 decodeBoolForKey:@"FailClosed"];
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"AppBundleIdentifier"];
    appBundleIdentifier = v5->_appBundleIdentifier;
    v5->_appBundleIdentifier = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"ControlProviderBundleIdentifier"];
    controlProviderBundleIdentifier = v5->_controlProviderBundleIdentifier;
    v5->_controlProviderBundleIdentifier = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"ControlProviderDesignatedRequirement"];
    controlProviderDesignatedRequirement = v5->_controlProviderDesignatedRequirement;
    v5->_controlProviderDesignatedRequirement = v10;

    v5->_prefilterFetchInterval = [v4 decodeInt32ForKey:@"PrefilterFetchFrequency"];
    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"pirServerURL"];
    pirServerURL = v5->_pirServerURL;
    v5->_pirServerURL = v12;

    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"pirPrivacyPassIssuerURL"];
    pirPrivacyPassIssuerURL = v5->_pirPrivacyPassIssuerURL;
    v5->_pirPrivacyPassIssuerURL = v14;

    v16 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"AuthenticationToken"];
    pirAuthenticationToken = v5->_pirAuthenticationToken;
    v5->_pirAuthenticationToken = v16;

    v18 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"pirGroupName"];
    pirGroupName = v5->_pirGroupName;
    v5->_pirGroupName = v18;

    v20 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"pirUseCaseName"];
    pirUseCase = v5->_pirUseCase;
    v5->_pirUseCase = v20;

    v5->_pirPrivacyProxyFailOpen = [v4 decodeBoolForKey:@"pirPrivacyProxyFailOpen"];
    v5->_pirSkipRegistration = [v4 decodeBoolForKey:@"pirSkipRegistration"];
  }

  return v5;
}

- (NEURLFilterConfiguration)initWithPIRServer:(id)a3 pirPrivacyPassIssuerURL:(id)a4 pirAuthenticationToken:(id)a5 controlProviderBundleIdentifier:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v20.receiver = self;
  v20.super_class = NEURLFilterConfiguration;
  v14 = [(NEURLFilterConfiguration *)&v20 init];
  v15 = v14;
  if (v14)
  {
    [(NEURLFilterConfiguration *)v14 setPirServerURL:v10];
    if (v11)
    {
      v16 = v11;
    }

    else
    {
      v16 = v10;
    }

    [(NEURLFilterConfiguration *)v15 setPirPrivacyPassIssuerURL:v16];
    [(NEURLFilterConfiguration *)v15 setPirAuthenticationToken:v12];
    [(NEURLFilterConfiguration *)v15 setControlProviderBundleIdentifier:v13];
    [(NEURLFilterConfiguration *)v15 setPrefilterFetchInterval:86400.0];
    [(NEURLFilterConfiguration *)v15 setEnabled:0];
    [(NEURLFilterConfiguration *)v15 setShouldFailClosed:0];
    [(NEURLFilterConfiguration *)v15 setPirPrivacyProxyFailOpen:0];
    v17 = [MEMORY[0x1E696AAE8] mainBundle];
    v18 = [v17 bundleIdentifier];
    [(NEURLFilterConfiguration *)v15 setAppBundleIdentifier:v18];
  }

  return v15;
}

- (NEURLFilterConfiguration)init
{
  v5.receiver = self;
  v5.super_class = NEURLFilterConfiguration;
  v2 = [(NEURLFilterConfiguration *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(NEURLFilterConfiguration *)v2 setEnabled:0];
    [(NEURLFilterConfiguration *)v3 setShouldFailClosed:0];
    [(NEURLFilterConfiguration *)v3 setPirPrivacyProxyFailOpen:0];
    [(NEURLFilterConfiguration *)v3 setPirSkipRegistration:0];
  }

  return v3;
}

@end