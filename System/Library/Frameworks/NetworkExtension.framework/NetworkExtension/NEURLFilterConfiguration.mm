@interface NEURLFilterConfiguration
- (BOOL)checkValidityAndCollectErrors:(id)errors;
- (NEURLFilterConfiguration)init;
- (NEURLFilterConfiguration)initWithCoder:(id)coder;
- (NEURLFilterConfiguration)initWithPIRServer:(id)server pirPrivacyPassIssuerURL:(id)l pirAuthenticationToken:(id)token controlProviderBundleIdentifier:(id)identifier;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation NEURLFilterConfiguration

- (BOOL)checkValidityAndCollectErrors:(id)errors
{
  errorsCopy = errors;
  appBundleIdentifier = [(NEURLFilterConfiguration *)self appBundleIdentifier];
  v6 = [appBundleIdentifier length];
  v7 = v6 != 0;

  if (!v6)
  {
    [NEConfiguration addError:errorsCopy toList:?];
  }

  controlProviderBundleIdentifier = [(NEURLFilterConfiguration *)self controlProviderBundleIdentifier];
  v9 = [controlProviderBundleIdentifier length];

  if (!v9)
  {
    [NEConfiguration addError:errorsCopy toList:?];
    v7 = 0;
  }

  [(NEURLFilterConfiguration *)self prefilterFetchInterval];
  if (v10 <= 2700.0)
  {
    [(NEURLFilterConfiguration *)self setPrefilterFetchInterval:?];
  }

  pirServerURL = [(NEURLFilterConfiguration *)self pirServerURL];
  if (!pirServerURL)
  {
    goto LABEL_9;
  }

  v12 = pirServerURL;
  pirServerURL2 = [(NEURLFilterConfiguration *)self pirServerURL];
  absoluteString = [pirServerURL2 absoluteString];
  v15 = [absoluteString length];

  if (!v15)
  {
LABEL_9:
    [NEConfiguration addError:errorsCopy toList:?];
    v7 = 0;
  }

  pirPrivacyPassIssuerURL = [(NEURLFilterConfiguration *)self pirPrivacyPassIssuerURL];
  if (!pirPrivacyPassIssuerURL)
  {
    goto LABEL_12;
  }

  v17 = pirPrivacyPassIssuerURL;
  pirPrivacyPassIssuerURL2 = [(NEURLFilterConfiguration *)self pirPrivacyPassIssuerURL];
  absoluteString2 = [pirPrivacyPassIssuerURL2 absoluteString];
  v20 = [absoluteString2 length];

  if (!v20)
  {
LABEL_12:
    pirServerURL3 = [(NEURLFilterConfiguration *)self pirServerURL];
    [(NEURLFilterConfiguration *)self setPirPrivacyPassIssuerURL:pirServerURL3];
  }

  pirAuthenticationToken = [(NEURLFilterConfiguration *)self pirAuthenticationToken];
  v23 = [pirAuthenticationToken length];

  if (!v23)
  {
    [NEConfiguration addError:errorsCopy toList:?];
    v7 = 0;
  }

  return v7;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [[NEURLFilterConfiguration allocWithZone:?]];
  [(NEURLFilterConfiguration *)v4 setEnabled:[(NEURLFilterConfiguration *)self isEnabled]];
  [(NEURLFilterConfiguration *)v4 setShouldFailClosed:[(NEURLFilterConfiguration *)self shouldFailClosed]];
  appBundleIdentifier = [(NEURLFilterConfiguration *)self appBundleIdentifier];
  [(NEURLFilterConfiguration *)v4 setAppBundleIdentifier:appBundleIdentifier];

  controlProviderBundleIdentifier = [(NEURLFilterConfiguration *)self controlProviderBundleIdentifier];
  [(NEURLFilterConfiguration *)v4 setControlProviderBundleIdentifier:controlProviderBundleIdentifier];

  controlProviderDesignatedRequirement = [(NEURLFilterConfiguration *)self controlProviderDesignatedRequirement];
  [(NEURLFilterConfiguration *)v4 setControlProviderDesignatedRequirement:controlProviderDesignatedRequirement];

  [(NEURLFilterConfiguration *)self prefilterFetchInterval];
  [(NEURLFilterConfiguration *)v4 setPrefilterFetchInterval:?];
  pirServerURL = [(NEURLFilterConfiguration *)self pirServerURL];
  [(NEURLFilterConfiguration *)v4 setPirServerURL:pirServerURL];

  pirPrivacyPassIssuerURL = [(NEURLFilterConfiguration *)self pirPrivacyPassIssuerURL];
  [(NEURLFilterConfiguration *)v4 setPirPrivacyPassIssuerURL:pirPrivacyPassIssuerURL];

  pirAuthenticationToken = [(NEURLFilterConfiguration *)self pirAuthenticationToken];
  [(NEURLFilterConfiguration *)v4 setPirAuthenticationToken:pirAuthenticationToken];

  pirGroupName = [(NEURLFilterConfiguration *)self pirGroupName];
  [(NEURLFilterConfiguration *)v4 setPirGroupName:pirGroupName];

  pirUseCase = [(NEURLFilterConfiguration *)self pirUseCase];
  [(NEURLFilterConfiguration *)v4 setPirUseCase:pirUseCase];

  [(NEURLFilterConfiguration *)v4 setPirPrivacyProxyFailOpen:[(NEURLFilterConfiguration *)self pirPrivacyProxyFailOpen]];
  [(NEURLFilterConfiguration *)v4 setPirSkipRegistration:[(NEURLFilterConfiguration *)self pirSkipRegistration]];
  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeBool:-[NEURLFilterConfiguration isEnabled](self forKey:{"isEnabled"), @"Enabled"}];
  [coderCopy encodeBool:-[NEURLFilterConfiguration shouldFailClosed](self forKey:{"shouldFailClosed"), @"FailClosed"}];
  appBundleIdentifier = [(NEURLFilterConfiguration *)self appBundleIdentifier];
  [coderCopy encodeObject:appBundleIdentifier forKey:@"AppBundleIdentifier"];

  controlProviderBundleIdentifier = [(NEURLFilterConfiguration *)self controlProviderBundleIdentifier];
  [coderCopy encodeObject:controlProviderBundleIdentifier forKey:@"ControlProviderBundleIdentifier"];

  controlProviderDesignatedRequirement = [(NEURLFilterConfiguration *)self controlProviderDesignatedRequirement];
  [coderCopy encodeObject:controlProviderDesignatedRequirement forKey:@"ControlProviderDesignatedRequirement"];

  [(NEURLFilterConfiguration *)self prefilterFetchInterval];
  [coderCopy encodeInt:v7 forKey:@"PrefilterFetchFrequency"];
  pirServerURL = [(NEURLFilterConfiguration *)self pirServerURL];
  [coderCopy encodeObject:pirServerURL forKey:@"pirServerURL"];

  pirPrivacyPassIssuerURL = [(NEURLFilterConfiguration *)self pirPrivacyPassIssuerURL];
  [coderCopy encodeObject:pirPrivacyPassIssuerURL forKey:@"pirPrivacyPassIssuerURL"];

  pirAuthenticationToken = [(NEURLFilterConfiguration *)self pirAuthenticationToken];
  [coderCopy encodeObject:pirAuthenticationToken forKey:@"AuthenticationToken"];

  pirGroupName = [(NEURLFilterConfiguration *)self pirGroupName];
  [coderCopy encodeObject:pirGroupName forKey:@"pirGroupName"];

  pirUseCase = [(NEURLFilterConfiguration *)self pirUseCase];
  [coderCopy encodeObject:pirUseCase forKey:@"pirUseCaseName"];

  [coderCopy encodeBool:-[NEURLFilterConfiguration pirPrivacyProxyFailOpen](self forKey:{"pirPrivacyProxyFailOpen"), @"pirPrivacyProxyFailOpen"}];
  [coderCopy encodeBool:-[NEURLFilterConfiguration pirSkipRegistration](self forKey:{"pirSkipRegistration"), @"pirSkipRegistration"}];
}

- (NEURLFilterConfiguration)initWithCoder:(id)coder
{
  coderCopy = coder;
  v23.receiver = self;
  v23.super_class = NEURLFilterConfiguration;
  v5 = [(NEURLFilterConfiguration *)&v23 init];
  if (v5)
  {
    v5->_enabled = [coderCopy decodeBoolForKey:@"Enabled"];
    v5->_shouldFailClosed = [coderCopy decodeBoolForKey:@"FailClosed"];
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"AppBundleIdentifier"];
    appBundleIdentifier = v5->_appBundleIdentifier;
    v5->_appBundleIdentifier = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"ControlProviderBundleIdentifier"];
    controlProviderBundleIdentifier = v5->_controlProviderBundleIdentifier;
    v5->_controlProviderBundleIdentifier = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"ControlProviderDesignatedRequirement"];
    controlProviderDesignatedRequirement = v5->_controlProviderDesignatedRequirement;
    v5->_controlProviderDesignatedRequirement = v10;

    v5->_prefilterFetchInterval = [coderCopy decodeInt32ForKey:@"PrefilterFetchFrequency"];
    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"pirServerURL"];
    pirServerURL = v5->_pirServerURL;
    v5->_pirServerURL = v12;

    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"pirPrivacyPassIssuerURL"];
    pirPrivacyPassIssuerURL = v5->_pirPrivacyPassIssuerURL;
    v5->_pirPrivacyPassIssuerURL = v14;

    v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"AuthenticationToken"];
    pirAuthenticationToken = v5->_pirAuthenticationToken;
    v5->_pirAuthenticationToken = v16;

    v18 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"pirGroupName"];
    pirGroupName = v5->_pirGroupName;
    v5->_pirGroupName = v18;

    v20 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"pirUseCaseName"];
    pirUseCase = v5->_pirUseCase;
    v5->_pirUseCase = v20;

    v5->_pirPrivacyProxyFailOpen = [coderCopy decodeBoolForKey:@"pirPrivacyProxyFailOpen"];
    v5->_pirSkipRegistration = [coderCopy decodeBoolForKey:@"pirSkipRegistration"];
  }

  return v5;
}

- (NEURLFilterConfiguration)initWithPIRServer:(id)server pirPrivacyPassIssuerURL:(id)l pirAuthenticationToken:(id)token controlProviderBundleIdentifier:(id)identifier
{
  serverCopy = server;
  lCopy = l;
  tokenCopy = token;
  identifierCopy = identifier;
  v20.receiver = self;
  v20.super_class = NEURLFilterConfiguration;
  v14 = [(NEURLFilterConfiguration *)&v20 init];
  v15 = v14;
  if (v14)
  {
    [(NEURLFilterConfiguration *)v14 setPirServerURL:serverCopy];
    if (lCopy)
    {
      v16 = lCopy;
    }

    else
    {
      v16 = serverCopy;
    }

    [(NEURLFilterConfiguration *)v15 setPirPrivacyPassIssuerURL:v16];
    [(NEURLFilterConfiguration *)v15 setPirAuthenticationToken:tokenCopy];
    [(NEURLFilterConfiguration *)v15 setControlProviderBundleIdentifier:identifierCopy];
    [(NEURLFilterConfiguration *)v15 setPrefilterFetchInterval:86400.0];
    [(NEURLFilterConfiguration *)v15 setEnabled:0];
    [(NEURLFilterConfiguration *)v15 setShouldFailClosed:0];
    [(NEURLFilterConfiguration *)v15 setPirPrivacyProxyFailOpen:0];
    mainBundle = [MEMORY[0x1E696AAE8] mainBundle];
    bundleIdentifier = [mainBundle bundleIdentifier];
    [(NEURLFilterConfiguration *)v15 setAppBundleIdentifier:bundleIdentifier];
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