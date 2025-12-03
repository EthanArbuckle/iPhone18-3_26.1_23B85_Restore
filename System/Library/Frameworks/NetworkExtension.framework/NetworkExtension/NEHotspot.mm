@interface NEHotspot
- (BOOL)checkValidityAndCollectErrors:(id)errors;
- (BOOL)overlapsWithConfiguration:(id)configuration;
- (NEHotspot)init;
- (NEHotspot)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation NEHotspot

- (BOOL)overlapsWithConfiguration:(id)configuration
{
  v4 = MEMORY[0x1E695DFD8];
  configurationCopy = configuration;
  evaluatedSSIDs = [(NEHotspot *)self evaluatedSSIDs];
  v7 = [v4 setWithArray:evaluatedSSIDs];

  v8 = MEMORY[0x1E695DFD8];
  evaluatedSSIDs2 = [configurationCopy evaluatedSSIDs];

  v10 = [v8 setWithArray:evaluatedSSIDs2];

  LOBYTE(configurationCopy) = [v10 intersectsSet:v7];
  return configurationCopy;
}

- (BOOL)checkValidityAndCollectErrors:(id)errors
{
  v47 = *MEMORY[0x1E69E9840];
  errorsCopy = errors;
  evaluationProviderBundleIdentifier = [(NEHotspot *)self evaluationProviderBundleIdentifier];
  v6 = [evaluationProviderBundleIdentifier length];

  if (!v6)
  {
    v13 = @"hotspot evaluation provider bundle identifier not found";
    goto LABEL_9;
  }

  authenticationProviderBundleIdentifier = [(NEHotspot *)self authenticationProviderBundleIdentifier];
  v8 = [authenticationProviderBundleIdentifier length];

  if (!v8)
  {
    v13 = @"hotspot authentication provider bundle identifier not found";
    goto LABEL_9;
  }

  pluginType = [(NEHotspot *)self pluginType];
  v10 = [pluginType length];

  if (!v10)
  {
    v13 = @"missing hotspot plugin type";
    goto LABEL_9;
  }

  evaluatedSSIDs = [(NEHotspot *)self evaluatedSSIDs];
  v12 = [evaluatedSSIDs count];

  if (v12 >= 3)
  {
    v13 = @"hotspot configuration can have maximum 2 SSIDs";
    goto LABEL_9;
  }

  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  evaluatedSSIDs2 = [(NEHotspot *)self evaluatedSSIDs];
  v18 = [evaluatedSSIDs2 countByEnumeratingWithState:&v41 objects:v46 count:16];
  if (!v18)
  {
    goto LABEL_21;
  }

  v19 = v18;
  v20 = *v42;
  do
  {
    for (i = 0; i != v19; ++i)
    {
      if (*v42 != v20)
      {
        objc_enumerationMutation(evaluatedSSIDs2);
      }

      v22 = *(*(&v41 + 1) + 8 * i);
      if (!isa_nsstring(v22) || ![v22 length])
      {
        [NEConfiguration addError:errorsCopy toList:?];

        goto LABEL_10;
      }
    }

    v19 = [evaluatedSSIDs2 countByEnumeratingWithState:&v41 objects:v46 count:16];
  }

  while (v19);
LABEL_21:

  safariDomains = [(NEHotspot *)self safariDomains];
  v24 = [safariDomains count];

  if (v24 >= 0xB)
  {
    v13 = @"hotspot configuration can have maximum 10 Safari Domains";
LABEL_9:
    [NEConfiguration addError:v13 toList:errorsCopy];
LABEL_10:
    v14 = 0;
    goto LABEL_11;
  }

  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  obj = [(NEHotspot *)self safariDomains];
  v25 = [obj countByEnumeratingWithState:&v37 objects:v45 count:16];
  v14 = v25 == 0;
  if (v25)
  {
    v26 = v25;
    v27 = 0;
    v36 = *v38;
LABEL_26:
    v28 = 0;
    while (1)
    {
      if (*v38 != v36)
      {
        objc_enumerationMutation(obj);
      }

      v29 = *(*(&v37 + 1) + 8 * v28);
      if (!isa_nsstring(v29) || ![v29 length])
      {
        break;
      }

      whitespaceAndNewlineCharacterSet = [MEMORY[0x1E696AB08] whitespaceAndNewlineCharacterSet];
      v31 = [v29 rangeOfCharacterFromSet:whitespaceAndNewlineCharacterSet];

      if (v31 != 0x7FFFFFFFFFFFFFFFLL)
      {
        v34 = @"Safari domain string has whitespace characters";
        goto LABEL_43;
      }

      v32 = [MEMORY[0x1E696AB08] characterSetWithCharactersInString:@"*."];
      v33 = [v29 stringByTrimmingCharactersInSet:v32];
      if (v33)
      {
        if (!v27)
        {
          v27 = objc_alloc_init(MEMORY[0x1E695DF70]);
        }

        [v27 addObject:v33];
      }

      if (v26 == ++v28)
      {
        v26 = [obj countByEnumeratingWithState:&v37 objects:v45 count:16];
        if (v26)
        {
          goto LABEL_26;
        }

        if (v27)
        {
          [(NEHotspot *)self setSafariDomains:v27];
          v14 = 1;
          goto LABEL_45;
        }

        v14 = 1;
        goto LABEL_11;
      }
    }

    v34 = @"invalid or empty string in the safariDomains array";
LABEL_43:
    [NEConfiguration addError:v34 toList:errorsCopy];
    goto LABEL_44;
  }

  v27 = 0;
LABEL_44:

LABEL_45:
LABEL_11:

  v15 = *MEMORY[0x1E69E9840];
  return v14;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [[NEHotspot allocWithZone:?]];
  [(NEHotspot *)v4 setEnabled:[(NEHotspot *)self isEnabled]];
  evaluationProviderBundleIdentifier = [(NEHotspot *)self evaluationProviderBundleIdentifier];
  [(NEHotspot *)v4 setEvaluationProviderBundleIdentifier:evaluationProviderBundleIdentifier];

  authenticationProviderBundleIdentifier = [(NEHotspot *)self authenticationProviderBundleIdentifier];
  [(NEHotspot *)v4 setAuthenticationProviderBundleIdentifier:authenticationProviderBundleIdentifier];

  pluginType = [(NEHotspot *)self pluginType];
  [(NEHotspot *)v4 setPluginType:pluginType];

  evaluatedSSIDs = [(NEHotspot *)self evaluatedSSIDs];
  [(NEHotspot *)v4 setEvaluatedSSIDs:evaluatedSSIDs];

  safariDomains = [(NEHotspot *)self safariDomains];
  [(NEHotspot *)v4 setSafariDomains:safariDomains];

  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeBool:-[NEHotspot isEnabled](self forKey:{"isEnabled"), @"Enabled"}];
  evaluationProviderBundleIdentifier = [(NEHotspot *)self evaluationProviderBundleIdentifier];
  [coderCopy encodeObject:evaluationProviderBundleIdentifier forKey:@"EvaluationProviderBundleID"];

  authenticationProviderBundleIdentifier = [(NEHotspot *)self authenticationProviderBundleIdentifier];
  [coderCopy encodeObject:authenticationProviderBundleIdentifier forKey:@"AuthenticationProviderBundleID"];

  pluginType = [(NEHotspot *)self pluginType];
  [coderCopy encodeObject:pluginType forKey:@"PluginType"];

  evaluatedSSIDs = [(NEHotspot *)self evaluatedSSIDs];
  [coderCopy encodeObject:evaluatedSSIDs forKey:@"EvaluatedSSIDs"];

  safariDomains = [(NEHotspot *)self safariDomains];
  [coderCopy encodeObject:safariDomains forKey:@"SafariDomains"];
}

- (NEHotspot)initWithCoder:(id)coder
{
  coderCopy = coder;
  v23.receiver = self;
  v23.super_class = NEHotspot;
  v5 = [(NEHotspot *)&v23 init];
  if (v5)
  {
    v5->_enabled = [coderCopy decodeBoolForKey:@"Enabled"];
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"EvaluationProviderBundleID"];
    evaluationProviderBundleIdentifier = v5->_evaluationProviderBundleIdentifier;
    v5->_evaluationProviderBundleIdentifier = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"AuthenticationProviderBundleID"];
    authenticationProviderBundleIdentifier = v5->_authenticationProviderBundleIdentifier;
    v5->_authenticationProviderBundleIdentifier = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"PluginType"];
    pluginType = v5->_pluginType;
    v5->_pluginType = v10;

    v12 = MEMORY[0x1E695DFD8];
    v13 = objc_opt_class();
    v14 = [v12 setWithObjects:{v13, objc_opt_class(), 0}];
    v15 = [coderCopy decodeObjectOfClasses:v14 forKey:@"EvaluatedSSIDs"];
    evaluatedSSIDs = v5->_evaluatedSSIDs;
    v5->_evaluatedSSIDs = v15;

    v17 = MEMORY[0x1E695DFD8];
    v18 = objc_opt_class();
    v19 = [v17 setWithObjects:{v18, objc_opt_class(), 0}];
    v20 = [coderCopy decodeObjectOfClasses:v19 forKey:@"SafariDomains"];
    safariDomains = v5->_safariDomains;
    v5->_safariDomains = v20;
  }

  return v5;
}

- (NEHotspot)init
{
  v5.receiver = self;
  v5.super_class = NEHotspot;
  v2 = [(NEHotspot *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(NEHotspot *)v2 setEnabled:0];
  }

  return v3;
}

@end