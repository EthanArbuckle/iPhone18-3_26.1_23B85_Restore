@interface INIntentDescriptor
- (BOOL)canRunOnLocalDevice;
- (BOOL)hasCustomUIExtension;
- (BOOL)isEqual:(id)equal;
- (INIntentDescriptor)descriptorWithAppDescriptor:(id)descriptor;
- (INIntentDescriptor)descriptorWithPreferredCallProvider:(int64_t)provider;
- (INIntentDescriptor)initWithCoder:(id)coder;
- (INIntentDescriptor)initWithIntent:(id)intent;
- (INIntentDescriptor)initWithIntentClassName:(id)name extensionBundleId:(id)id;
- (INIntentDescriptor)initWithIntentClassName:(id)name launchableAppBundleId:(id)id;
- (INIntentDescriptor)initWithIntentClassName:(id)name localizedName:(id)localizedName bundleIdentifier:(id)identifier displayableBundleIdentifier:(id)bundleIdentifier extensionBundleIdentifier:(id)extensionBundleIdentifier uiExtensionBundleIdentifier:(id)uiExtensionBundleIdentifier counterpartIdentifiers:(id)identifiers teamIdentifier:(id)self0 preferredCallProvider:(int64_t)self1 supportedIntents:(id)self2 bundleURL:(id)self3 documentTypes:(id)self4;
- (INIntentDescriptor)initWithIntentTypeName:(id)name;
- (LSApplicationRecord)displayableApplicationRecord;
- (LSApplicationRecord)launchableApplicationRecord;
- (id)_extensionsWithError:(id *)error;
- (id)_matchingAttributesForExtensionPoint:(id)point error:(id *)error;
- (id)_uiExtensionsWithError:(id *)error;
- (id)appDescriptor;
- (id)description;
- (id)displayableAppDescriptor;
- (id)mergeWithDescriptor:(id)descriptor;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation INIntentDescriptor

- (void)encodeWithCoder:(id)coder
{
  v8.receiver = self;
  v8.super_class = INIntentDescriptor;
  coderCopy = coder;
  [(INAppDescriptor *)&v8 encodeWithCoder:coderCopy];
  v5 = [(INIntentDescriptor *)self intentClassName:v8.receiver];
  [coderCopy encodeObject:v5 forKey:@"intentClassName"];

  displayableBundleIdentifier = [(INIntentDescriptor *)self displayableBundleIdentifier];
  [coderCopy encodeObject:displayableBundleIdentifier forKey:@"displayableBundleIdentifier"];

  uiExtensionBundleIdentifier = [(INIntentDescriptor *)self uiExtensionBundleIdentifier];
  [coderCopy encodeObject:uiExtensionBundleIdentifier forKey:@"uiExtensionBundleIdentifier"];

  [coderCopy encodeInteger:-[INIntentDescriptor preferredCallProvider](self forKey:{"preferredCallProvider"), @"preferredCallProvider"}];
}

- (INIntentDescriptor)initWithCoder:(id)coder
{
  coderCopy = coder;
  v14.receiver = self;
  v14.super_class = INIntentDescriptor;
  v5 = [(INAppDescriptor *)&v14 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"intentClassName"];
    intentClassName = v5->_intentClassName;
    v5->_intentClassName = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"displayableBundleIdentifier"];
    displayableBundleIdentifier = v5->_displayableBundleIdentifier;
    v5->_displayableBundleIdentifier = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"uiExtensionBundleIdentifier"];
    uiExtensionBundleIdentifier = v5->_uiExtensionBundleIdentifier;
    v5->_uiExtensionBundleIdentifier = v10;

    v5->_preferredCallProvider = [coderCopy decodeIntegerForKey:@"preferredCallProvider"];
    v12 = v5;
  }

  return v5;
}

- (id)_uiExtensionsWithError:(id *)error
{
  v18[1] = *MEMORY[0x1E69E9840];
  uiExtensions = self->_uiExtensions;
  if (uiExtensions)
  {
    goto LABEL_8;
  }

  uiExtensionBundleIdentifier = [(INIntentDescriptor *)self uiExtensionBundleIdentifier];
  if (uiExtensionBundleIdentifier)
  {
    v7 = [MEMORY[0x1E696ABD0] extensionWithIdentifier:uiExtensionBundleIdentifier error:error];
    if (v7)
    {
      v8 = v7;
      v18[0] = v7;
      v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:1];
      v10 = self->_uiExtensions;
      self->_uiExtensions = v9;

LABEL_7:
      uiExtensions = self->_uiExtensions;
LABEL_8:
      v15 = uiExtensions;
      goto LABEL_9;
    }
  }

  else
  {
    v11 = [(INIntentDescriptor *)self _matchingAttributesForExtensionPoint:@"com.apple.intents-ui-service" error:error];
    if (v11)
    {
      v12 = v11;
      v13 = [MEMORY[0x1E696ABD0] extensionsWithMatchingAttributes:v11 error:error];
      v14 = self->_uiExtensions;
      self->_uiExtensions = v13;

      goto LABEL_7;
    }
  }

  v15 = 0;
LABEL_9:
  v16 = *MEMORY[0x1E69E9840];

  return v15;
}

- (id)_extensionsWithError:(id *)error
{
  v24[1] = *MEMORY[0x1E69E9840];
  extensions = self->_extensions;
  if (extensions)
  {
    goto LABEL_10;
  }

  extensionBundleIdentifier = [(INAppDescriptor *)self extensionBundleIdentifier];
  if (extensionBundleIdentifier)
  {
    v7 = [MEMORY[0x1E696ABD0] extensionWithIdentifier:extensionBundleIdentifier error:error];
    if (v7)
    {
      v8 = v7;
      attributes = [v7 attributes];
      v10 = [attributes objectForKeyedSubscript:@"IntentsSupported"];
      intentClassName = [(INIntentDescriptor *)self intentClassName];
      if (!intentClassName || (v12 = intentClassName, -[INIntentDescriptor intentClassName](self, "intentClassName"), v13 = objc_claimAutoreleasedReturnValue(), v14 = [v10 containsObject:v13], v13, v12, v14))
      {
        v24[0] = v8;
        v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v24 count:1];
        v16 = self->_extensions;
        self->_extensions = v15;

LABEL_9:
        extensions = self->_extensions;
LABEL_10:
        v21 = extensions;
        goto LABEL_11;
      }
    }
  }

  else
  {
    v17 = [(INIntentDescriptor *)self _matchingAttributesForExtensionPoint:@"com.apple.intents-service" error:error];
    if (v17)
    {
      v18 = v17;
      v19 = [MEMORY[0x1E696ABD0] extensionsWithMatchingAttributes:v17 error:error];
      v20 = self->_extensions;
      self->_extensions = v19;

      goto LABEL_9;
    }
  }

  v21 = 0;
LABEL_11:
  v22 = *MEMORY[0x1E69E9840];

  return v21;
}

- (id)_matchingAttributesForExtensionPoint:(id)point error:(id *)error
{
  v23[1] = *MEMORY[0x1E69E9840];
  pointCopy = point;
  v7 = objc_opt_new();
  [v7 setObject:pointCopy forKeyedSubscript:*MEMORY[0x1E696A2F8]];

  intentClassName = [(INIntentDescriptor *)self intentClassName];
  v9 = intentClassName;
  if (intentClassName)
  {
    v23[0] = intentClassName;
    v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v23 count:1];
    [v7 setObject:v10 forKeyedSubscript:@"IntentsSupported"];
  }

  bundleURL = [(INAppDescriptor *)self bundleURL];
  bundleIdentifier = [(INAppDescriptor *)self bundleIdentifier];
  v13 = bundleIdentifier;
  if (!bundleURL && bundleIdentifier)
  {
    launchableApplicationRecord = [(INIntentDescriptor *)self launchableApplicationRecord];
    bundleURL = [launchableApplicationRecord URL];
  }

  if (bundleURL || !v13)
  {
    if (bundleURL)
    {
      path = [bundleURL path];
      [v7 setObject:path forKeyedSubscript:*MEMORY[0x1E69C4AB0]];
    }

    error = v7;
  }

  else if (error)
  {
    v15 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Cannot match extensions for %@ because it does not have a bundle URL", v13, 0];
    v16 = MEMORY[0x1E696ABC0];
    v21 = *MEMORY[0x1E696A278];
    v22 = v15;
    v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v22 forKeys:&v21 count:1];
    *error = [v16 errorWithDomain:@"IntentsErrorDomain" code:2005 userInfo:v17];

    error = 0;
  }

  v19 = *MEMORY[0x1E69E9840];

  return error;
}

- (BOOL)canRunOnLocalDevice
{
  v25 = *MEMORY[0x1E69E9840];
  v3 = objc_alloc(MEMORY[0x1E69635F8]);
  bundleIdentifier = [(INAppDescriptor *)self bundleIdentifier];
  v5 = [v3 initWithBundleIdentifier:bundleIdentifier allowPlaceholder:0 error:0];

  applicationState = [v5 applicationState];
  isInstalled = [applicationState isInstalled];

  if (isInstalled && ([v5 in_supportedIntents], v8 = objc_claimAutoreleasedReturnValue(), -[INIntentDescriptor intentClassName](self, "intentClassName"), v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend(v8, "containsObject:", v9), v9, v8, (v10 & 1) != 0))
  {
    v11 = 1;
  }

  else
  {
    v18 = 0;
    v12 = [(INIntentDescriptor *)self _extensionsWithError:&v18];
    v13 = v18;
    v14 = [v12 count];
    v11 = v14 != 0;
    if (!v14)
    {
      if (v13)
      {
        v15 = INSiriLogContextIntents;
        if (os_log_type_enabled(INSiriLogContextIntents, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315650;
          v20 = "[INIntentDescriptor canRunOnLocalDevice]";
          v21 = 2114;
          selfCopy = self;
          v23 = 2114;
          v24 = v13;
          _os_log_error_impl(&dword_18E991000, v15, OS_LOG_TYPE_ERROR, "%s Failed to match extensions for execution info %{public}@: %{public}@", buf, 0x20u);
        }
      }
    }
  }

  v16 = *MEMORY[0x1E69E9840];
  return v11;
}

- (BOOL)hasCustomUIExtension
{
  v16 = *MEMORY[0x1E69E9840];
  v9 = 0;
  v3 = [(INIntentDescriptor *)self _uiExtensionsWithError:&v9];
  v4 = v9;
  v5 = [v3 count];
  if (!v5 && !v3)
  {
    v6 = INSiriLogContextIntents;
    if (os_log_type_enabled(INSiriLogContextIntents, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v11 = "[INIntentDescriptor hasCustomUIExtension]";
      v12 = 2114;
      selfCopy = self;
      v14 = 2114;
      v15 = v4;
      _os_log_error_impl(&dword_18E991000, v6, OS_LOG_TYPE_ERROR, "%s Failed to match UI extensions for execution info %{public}@: %{public}@", buf, 0x20u);
    }
  }

  v7 = *MEMORY[0x1E69E9840];
  return v5 != 0;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    LOBYTE(v8) = 1;
  }

  else
  {
    if ([(INIntentDescriptor *)equalCopy isMemberOfClass:objc_opt_class()])
    {
      v29.receiver = self;
      v29.super_class = INIntentDescriptor;
      v5 = [(INAppDescriptor *)&v29 isEqual:equalCopy];
      v6 = equalCopy;
      if (v6)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v7 = v6;
        }

        else
        {
          v7 = 0;
        }
      }

      else
      {
        v7 = 0;
      }

      v9 = v7;

      if (!v5)
      {
        LOBYTE(v8) = 0;
LABEL_35:

        goto LABEL_36;
      }

      intentClassName = [(INIntentDescriptor *)self intentClassName];
      intentClassName2 = [(INIntentDescriptor *)v9 intentClassName];
      v12 = intentClassName;
      v13 = intentClassName2;
      v14 = v13;
      if (v12 == v13)
      {
      }

      else
      {
        LOBYTE(v8) = 0;
        v15 = v13;
        v16 = v12;
        if (!v12 || !v13)
        {
          goto LABEL_33;
        }

        v17 = [v12 isEqualToString:v13];

        if (!v17)
        {
          LOBYTE(v8) = 0;
LABEL_34:

          goto LABEL_35;
        }
      }

      displayableBundleIdentifier = [(INIntentDescriptor *)self displayableBundleIdentifier];
      displayableBundleIdentifier2 = [(INIntentDescriptor *)v9 displayableBundleIdentifier];
      v16 = displayableBundleIdentifier;
      v20 = displayableBundleIdentifier2;
      v15 = v20;
      if (v16 == v20)
      {
      }

      else
      {
        LOBYTE(v8) = 0;
        v21 = v20;
        v22 = v16;
        if (!v16 || !v20)
        {
          goto LABEL_32;
        }

        v23 = [v16 isEqualToString:v20];

        if (!v23)
        {
          LOBYTE(v8) = 0;
LABEL_33:

          goto LABEL_34;
        }
      }

      uiExtensionBundleIdentifier = [(INIntentDescriptor *)self uiExtensionBundleIdentifier];
      uiExtensionBundleIdentifier2 = [(INIntentDescriptor *)v9 uiExtensionBundleIdentifier];
      v22 = uiExtensionBundleIdentifier;
      v26 = uiExtensionBundleIdentifier2;
      v21 = v26;
      if (v22 == v26)
      {
      }

      else
      {
        if (!v22 || !v26)
        {

          LOBYTE(v8) = 0;
          goto LABEL_32;
        }

        v8 = [v22 isEqualToString:v26];

        if (!v8)
        {
          goto LABEL_32;
        }
      }

      preferredCallProvider = [(INIntentDescriptor *)self preferredCallProvider];
      LOBYTE(v8) = preferredCallProvider == [(INIntentDescriptor *)v9 preferredCallProvider];
LABEL_32:

      goto LABEL_33;
    }

    LOBYTE(v8) = 0;
  }

LABEL_36:

  return v8;
}

- (unint64_t)hash
{
  v11.receiver = self;
  v11.super_class = INIntentDescriptor;
  v3 = [(INAppDescriptor *)&v11 hash];
  intentClassName = [(INIntentDescriptor *)self intentClassName];
  v5 = [intentClassName hash];
  displayableBundleIdentifier = [(INIntentDescriptor *)self displayableBundleIdentifier];
  v7 = v5 ^ [displayableBundleIdentifier hash];
  uiExtensionBundleIdentifier = [(INIntentDescriptor *)self uiExtensionBundleIdentifier];
  v9 = v7 ^ [uiExtensionBundleIdentifier hash];

  return v9 ^ v3;
}

- (id)mergeWithDescriptor:(id)descriptor
{
  descriptorCopy = descriptor;
  intentClassName = [(INIntentDescriptor *)self intentClassName];
  v6 = intentClassName;
  if (intentClassName)
  {
    intentClassName2 = intentClassName;
  }

  else
  {
    intentClassName2 = [(INIntentDescriptor *)descriptorCopy intentClassName];
  }

  v8 = intentClassName2;

  localizedName = [(INAppDescriptor *)self localizedName];
  v10 = localizedName;
  if (localizedName)
  {
    localizedName2 = localizedName;
  }

  else
  {
    localizedName2 = [(INAppDescriptor *)descriptorCopy localizedName];
  }

  localizedName4 = localizedName2;

  bundleIdentifier = [(INAppDescriptor *)self bundleIdentifier];
  v14 = bundleIdentifier;
  if (bundleIdentifier)
  {
    bundleIdentifier2 = bundleIdentifier;
  }

  else
  {
    bundleIdentifier2 = [(INAppDescriptor *)descriptorCopy bundleIdentifier];
  }

  v16 = bundleIdentifier2;

  displayableBundleIdentifier = [(INIntentDescriptor *)self displayableBundleIdentifier];
  v18 = displayableBundleIdentifier;
  if (displayableBundleIdentifier)
  {
    displayableBundleIdentifier2 = displayableBundleIdentifier;
  }

  else
  {
    displayableBundleIdentifier2 = [(INIntentDescriptor *)descriptorCopy displayableBundleIdentifier];
  }

  v20 = displayableBundleIdentifier2;

  extensionBundleIdentifier = [(INAppDescriptor *)self extensionBundleIdentifier];
  v22 = extensionBundleIdentifier;
  if (extensionBundleIdentifier)
  {
    extensionBundleIdentifier2 = extensionBundleIdentifier;
  }

  else
  {
    extensionBundleIdentifier2 = [(INAppDescriptor *)descriptorCopy extensionBundleIdentifier];
  }

  v61 = extensionBundleIdentifier2;

  uiExtensionBundleIdentifier = [(INIntentDescriptor *)self uiExtensionBundleIdentifier];
  v25 = uiExtensionBundleIdentifier;
  if (uiExtensionBundleIdentifier)
  {
    uiExtensionBundleIdentifier2 = uiExtensionBundleIdentifier;
  }

  else
  {
    uiExtensionBundleIdentifier2 = [(INIntentDescriptor *)descriptorCopy uiExtensionBundleIdentifier];
  }

  v60 = uiExtensionBundleIdentifier2;

  counterpartIdentifiers = [(INAppDescriptor *)self counterpartIdentifiers];
  v28 = counterpartIdentifiers;
  if (counterpartIdentifiers)
  {
    counterpartIdentifiers2 = counterpartIdentifiers;
  }

  else
  {
    counterpartIdentifiers2 = [(INAppDescriptor *)descriptorCopy counterpartIdentifiers];
  }

  v59 = counterpartIdentifiers2;

  teamIdentifier = [(INAppDescriptor *)self teamIdentifier];
  v31 = teamIdentifier;
  if (teamIdentifier)
  {
    teamIdentifier2 = teamIdentifier;
  }

  else
  {
    teamIdentifier2 = [(INAppDescriptor *)descriptorCopy teamIdentifier];
  }

  v58 = teamIdentifier2;

  bundleURL = [(INAppDescriptor *)self bundleURL];
  v34 = bundleURL;
  v57 = v8;
  if (bundleURL)
  {
    bundleURL2 = bundleURL;
  }

  else
  {
    bundleURL2 = [(INAppDescriptor *)descriptorCopy bundleURL];
  }

  v36 = bundleURL2;

  if ([(INIntentDescriptor *)self preferredCallProvider])
  {
    selfCopy = self;
  }

  else
  {
    selfCopy = descriptorCopy;
  }

  preferredCallProvider = [(INIntentDescriptor *)selfCopy preferredCallProvider];
  documentTypes = [(INAppDescriptor *)self documentTypes];
  v39 = documentTypes;
  if (documentTypes)
  {
    documentTypes2 = documentTypes;
  }

  else
  {
    documentTypes2 = [(INAppDescriptor *)descriptorCopy documentTypes];
  }

  v41 = documentTypes2;

  supportedIntents = [(INAppDescriptor *)self supportedIntents];
  if (supportedIntents)
  {
    [(INAppDescriptor *)self supportedIntents];
    v43 = v20;
    v44 = v16;
    v46 = v45 = localizedName4;
    v47 = [v46 mutableCopy];

    localizedName4 = v45;
    v16 = v44;
    v20 = v43;
  }

  else
  {
    v47 = objc_opt_new();
  }

  supportedIntents2 = [(INAppDescriptor *)descriptorCopy supportedIntents];
  [v47 unionSet:supportedIntents2];

  if (([v16 isEqualToString:v20] & 1) == 0)
  {
    v49 = v16;
    v50 = localizedName4;
    v51 = [objc_alloc(MEMORY[0x1E69635F8]) initWithBundleIdentifier:v20 allowPlaceholder:0 error:0];
    localizedName3 = [v51 localizedName];

    if (localizedName3)
    {
      localizedName4 = [v51 localizedName];
    }

    else
    {
      localizedName4 = v50;
    }

    v16 = v49;
  }

  v53 = [[INIntentDescriptor alloc] initWithIntentClassName:v57 localizedName:localizedName4 bundleIdentifier:v16 displayableBundleIdentifier:v20 extensionBundleIdentifier:v61 uiExtensionBundleIdentifier:v60 counterpartIdentifiers:v59 teamIdentifier:v58 preferredCallProvider:preferredCallProvider supportedIntents:v47 bundleURL:v36 documentTypes:v41];
  requiresUserConfirmation = [(INAppDescriptor *)self requiresUserConfirmation]|| [(INAppDescriptor *)descriptorCopy requiresUserConfirmation];
  [(INAppDescriptor *)v53 setRequiresUserConfirmation:requiresUserConfirmation];

  return v53;
}

- (INIntentDescriptor)descriptorWithPreferredCallProvider:(int64_t)provider
{
  v17 = [INIntentDescriptor alloc];
  intentClassName = [(INIntentDescriptor *)self intentClassName];
  localizedName = [(INAppDescriptor *)self localizedName];
  bundleIdentifier = [(INAppDescriptor *)self bundleIdentifier];
  bundleIdentifier2 = [(INAppDescriptor *)self bundleIdentifier];
  extensionBundleIdentifier = [(INAppDescriptor *)self extensionBundleIdentifier];
  uiExtensionBundleIdentifier = [(INIntentDescriptor *)self uiExtensionBundleIdentifier];
  counterpartIdentifiers = [(INAppDescriptor *)self counterpartIdentifiers];
  teamIdentifier = [(INAppDescriptor *)self teamIdentifier];
  supportedIntents = [(INAppDescriptor *)self supportedIntents];
  bundleURL = [(INAppDescriptor *)self bundleURL];
  documentTypes = [(INAppDescriptor *)self documentTypes];
  v11 = extensionBundleIdentifier;
  v12 = [(INIntentDescriptor *)v17 initWithIntentClassName:intentClassName localizedName:localizedName bundleIdentifier:bundleIdentifier displayableBundleIdentifier:bundleIdentifier2 extensionBundleIdentifier:extensionBundleIdentifier uiExtensionBundleIdentifier:uiExtensionBundleIdentifier counterpartIdentifiers:counterpartIdentifiers teamIdentifier:teamIdentifier preferredCallProvider:provider supportedIntents:supportedIntents bundleURL:bundleURL documentTypes:documentTypes];

  [(INAppDescriptor *)v12 setRequiresUserConfirmation:[(INAppDescriptor *)self requiresUserConfirmation]];

  return v12;
}

- (INIntentDescriptor)descriptorWithAppDescriptor:(id)descriptor
{
  descriptorCopy = descriptor;
  v16 = [INIntentDescriptor alloc];
  intentClassName = [(INIntentDescriptor *)self intentClassName];
  localizedName = [descriptorCopy localizedName];
  bundleIdentifier = [descriptorCopy bundleIdentifier];
  bundleIdentifier2 = [descriptorCopy bundleIdentifier];
  extensionBundleIdentifier = [(INAppDescriptor *)self extensionBundleIdentifier];
  selfCopy = self;
  uiExtensionBundleIdentifier = [(INIntentDescriptor *)self uiExtensionBundleIdentifier];
  counterpartIdentifiers = [descriptorCopy counterpartIdentifiers];
  teamIdentifier = [descriptorCopy teamIdentifier];
  preferredCallProvider = [(INIntentDescriptor *)self preferredCallProvider];
  supportedIntents = [descriptorCopy supportedIntents];
  bundleURL = [descriptorCopy bundleURL];
  documentTypes = [descriptorCopy documentTypes];

  v17 = [(INIntentDescriptor *)v16 initWithIntentClassName:intentClassName localizedName:localizedName bundleIdentifier:bundleIdentifier displayableBundleIdentifier:bundleIdentifier2 extensionBundleIdentifier:extensionBundleIdentifier uiExtensionBundleIdentifier:uiExtensionBundleIdentifier counterpartIdentifiers:counterpartIdentifiers teamIdentifier:teamIdentifier preferredCallProvider:preferredCallProvider supportedIntents:supportedIntents bundleURL:bundleURL documentTypes:documentTypes];
  [(INAppDescriptor *)v17 setRequiresUserConfirmation:[(INAppDescriptor *)selfCopy requiresUserConfirmation]];

  return v17;
}

- (LSApplicationRecord)displayableApplicationRecord
{
  v3 = objc_alloc(MEMORY[0x1E69635F8]);
  displayableBundleIdentifier = [(INIntentDescriptor *)self displayableBundleIdentifier];
  if (displayableBundleIdentifier)
  {
    v5 = [v3 initWithBundleIdentifier:displayableBundleIdentifier allowPlaceholder:0 error:0];
  }

  else
  {
    bundleIdentifier = [(INAppDescriptor *)self bundleIdentifier];
    v5 = [v3 initWithBundleIdentifier:bundleIdentifier allowPlaceholder:0 error:0];
  }

  return v5;
}

- (LSApplicationRecord)launchableApplicationRecord
{
  v3 = objc_alloc(MEMORY[0x1E69635F8]);
  bundleIdentifier = [(INAppDescriptor *)self bundleIdentifier];
  v5 = [v3 initWithBundleIdentifier:bundleIdentifier allowPlaceholder:0 error:0];

  return v5;
}

- (id)displayableAppDescriptor
{
  bundleIdentifier = [(INAppDescriptor *)self bundleIdentifier];
  displayableBundleIdentifier = [(INIntentDescriptor *)self displayableBundleIdentifier];
  v5 = [bundleIdentifier isEqualToString:displayableBundleIdentifier];

  if (v5)
  {
    appDescriptor = [(INIntentDescriptor *)self appDescriptor];
  }

  else
  {
    displayableApplicationRecord = [(INIntentDescriptor *)self displayableApplicationRecord];
    v7 = [[INAppDescriptor alloc] initWithApplicationRecord:displayableApplicationRecord];
    v8 = [INAppDescriptor alloc];
    localizedName = [(INAppDescriptor *)v7 localizedName];
    bundleIdentifier2 = [(INAppDescriptor *)v7 bundleIdentifier];
    extensionBundleIdentifier = [(INAppDescriptor *)self extensionBundleIdentifier];
    counterpartIdentifiers = [(INAppDescriptor *)v7 counterpartIdentifiers];
    teamIdentifier = [(INAppDescriptor *)v7 teamIdentifier];
    supportedIntents = [(INAppDescriptor *)v7 supportedIntents];
    bundleURL = [(INAppDescriptor *)v7 bundleURL];
    documentTypes = [(INAppDescriptor *)v7 documentTypes];
    appDescriptor = [(INAppDescriptor *)v8 initWithLocalizedName:localizedName bundleIdentifier:bundleIdentifier2 extensionBundleIdentifier:extensionBundleIdentifier counterpartIdentifiers:counterpartIdentifiers teamIdentifier:teamIdentifier supportedIntents:supportedIntents bundleURL:bundleURL documentTypes:documentTypes];
  }

  return appDescriptor;
}

- (id)appDescriptor
{
  v3 = [INAppDescriptor alloc];
  localizedName = [(INAppDescriptor *)self localizedName];
  bundleIdentifier = [(INAppDescriptor *)self bundleIdentifier];
  extensionBundleIdentifier = [(INAppDescriptor *)self extensionBundleIdentifier];
  counterpartIdentifiers = [(INAppDescriptor *)self counterpartIdentifiers];
  teamIdentifier = [(INAppDescriptor *)self teamIdentifier];
  supportedIntents = [(INAppDescriptor *)self supportedIntents];
  bundleURL = [(INAppDescriptor *)self bundleURL];
  documentTypes = [(INAppDescriptor *)self documentTypes];
  v12 = [(INAppDescriptor *)v3 initWithLocalizedName:localizedName bundleIdentifier:bundleIdentifier extensionBundleIdentifier:extensionBundleIdentifier counterpartIdentifiers:counterpartIdentifiers teamIdentifier:teamIdentifier supportedIntents:supportedIntents bundleURL:bundleURL documentTypes:documentTypes];

  [(INAppDescriptor *)v12 setRequiresUserConfirmation:[(INAppDescriptor *)self requiresUserConfirmation]];

  return v12;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v10.receiver = self;
  v10.super_class = INIntentDescriptor;
  v4 = [(INAppDescriptor *)&v10 description];
  intentClassName = [(INIntentDescriptor *)self intentClassName];
  displayableBundleIdentifier = [(INIntentDescriptor *)self displayableBundleIdentifier];
  uiExtensionBundleIdentifier = [(INIntentDescriptor *)self uiExtensionBundleIdentifier];
  v8 = [v3 stringWithFormat:@"%@, intentClassName: %@, displayableBundleId: %@, uiExtensionBundleId: %@, preferredCallProvider: %li", v4, intentClassName, displayableBundleIdentifier, uiExtensionBundleIdentifier, -[INIntentDescriptor preferredCallProvider](self, "preferredCallProvider")];

  return v8;
}

- (INIntentDescriptor)initWithIntentClassName:(id)name localizedName:(id)localizedName bundleIdentifier:(id)identifier displayableBundleIdentifier:(id)bundleIdentifier extensionBundleIdentifier:(id)extensionBundleIdentifier uiExtensionBundleIdentifier:(id)uiExtensionBundleIdentifier counterpartIdentifiers:(id)identifiers teamIdentifier:(id)self0 preferredCallProvider:(int64_t)self1 supportedIntents:(id)self2 bundleURL:(id)self3 documentTypes:(id)self4
{
  nameCopy = name;
  uiExtensionBundleIdentifierCopy = uiExtensionBundleIdentifier;
  typesCopy = types;
  lCopy = l;
  intentsCopy = intents;
  teamIdentifierCopy = teamIdentifier;
  identifiersCopy = identifiers;
  extensionBundleIdentifierCopy = extensionBundleIdentifier;
  bundleIdentifierCopy = bundleIdentifier;
  localizedNameCopy = localizedName;
  v27 = [identifier copy];
  v28 = [bundleIdentifierCopy copy];

  if (!v27 && v28)
  {
    v27 = v28;
LABEL_6:
    v27 = v27;
    v28 = v27;
    goto LABEL_7;
  }

  if (!v28 && v27)
  {
    goto LABEL_6;
  }

LABEL_7:
  v39.receiver = self;
  v39.super_class = INIntentDescriptor;
  v29 = [(INAppDescriptor *)&v39 initWithLocalizedName:localizedNameCopy bundleIdentifier:v27 extensionBundleIdentifier:extensionBundleIdentifierCopy counterpartIdentifiers:identifiersCopy teamIdentifier:teamIdentifierCopy supportedIntents:intentsCopy bundleURL:lCopy documentTypes:typesCopy];

  if (v29)
  {
    v30 = [nameCopy copy];
    intentClassName = v29->_intentClassName;
    v29->_intentClassName = v30;

    objc_storeStrong(&v29->_displayableBundleIdentifier, v28);
    v32 = [uiExtensionBundleIdentifierCopy copy];
    uiExtensionBundleIdentifier = v29->_uiExtensionBundleIdentifier;
    v29->_uiExtensionBundleIdentifier = v32;

    v29->_preferredCallProvider = provider;
    v34 = v29;
  }

  return v29;
}

- (INIntentDescriptor)initWithIntentClassName:(id)name extensionBundleId:(id)id
{
  v6 = MEMORY[0x1E695DFD8];
  idCopy = id;
  nameCopy = name;
  v9 = [v6 setWithObject:nameCopy];
  v10 = [(INIntentDescriptor *)self initWithIntentClassName:nameCopy localizedName:0 bundleIdentifier:0 displayableBundleIdentifier:0 extensionBundleIdentifier:idCopy uiExtensionBundleIdentifier:0 counterpartIdentifiers:0 teamIdentifier:0 preferredCallProvider:0 supportedIntents:v9 bundleURL:0 documentTypes:0];

  return v10;
}

- (INIntentDescriptor)initWithIntentClassName:(id)name launchableAppBundleId:(id)id
{
  v6 = MEMORY[0x1E69635F8];
  idCopy = id;
  nameCopy = name;
  v9 = [[v6 alloc] initWithBundleIdentifier:idCopy allowPlaceholder:0 error:0];
  localizedName = [v9 localizedName];
  in_counterpartIdentifiers = [v9 in_counterpartIdentifiers];
  teamIdentifier = [v9 teamIdentifier];
  v13 = [MEMORY[0x1E695DFD8] setWithObject:nameCopy];
  in_documentTypes = [v9 in_documentTypes];
  v15 = [(INIntentDescriptor *)self initWithIntentClassName:nameCopy localizedName:localizedName bundleIdentifier:idCopy displayableBundleIdentifier:0 extensionBundleIdentifier:0 uiExtensionBundleIdentifier:0 counterpartIdentifiers:in_counterpartIdentifiers teamIdentifier:teamIdentifier preferredCallProvider:0 supportedIntents:v13 bundleURL:0 documentTypes:in_documentTypes];

  return v15;
}

- (INIntentDescriptor)initWithIntentTypeName:(id)name
{
  nameCopy = name;
  v16 = 0;
  v17 = 0;
  v5 = INParseCustomIntentTypeName(nameCopy, &v17, &v16);
  v6 = v17;
  v7 = v16;
  if (v5)
  {
    self = [(INIntentDescriptor *)self initWithIntentClassName:v6 launchableAppBundleId:v7];
    selfCopy2 = self;
  }

  else
  {
    v9 = INIntentSchemaGetIntentDescriptionWithType(nameCopy);
    v10 = v9;
    if (v9)
    {
      v11 = NSStringFromClass([v9 facadeClass]);
      v12 = MEMORY[0x1E695DFD8];
      v13 = NSStringFromClass([v10 facadeClass]);
      v14 = [v12 setWithObject:v13];
      self = [(INIntentDescriptor *)self initWithIntentClassName:v11 localizedName:0 bundleIdentifier:0 displayableBundleIdentifier:0 extensionBundleIdentifier:0 uiExtensionBundleIdentifier:0 counterpartIdentifiers:0 teamIdentifier:0 preferredCallProvider:0 supportedIntents:v14 bundleURL:0 documentTypes:0];

      selfCopy2 = self;
    }

    else
    {
      selfCopy2 = 0;
    }
  }

  return selfCopy2;
}

- (INIntentDescriptor)initWithIntent:(id)intent
{
  intentCopy = intent;
  [intentCopy launchId];
  v35 = 0;
  v34 = v36 = 0;
  INExtractAppInfoFromSiriLaunchIdWithoutLaunchServices(v34, &v36, &v35);
  v4 = v36;
  v30 = v35;
  v5 = intentCopy;
  if (v5)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      preferredCallProvider = [v5 preferredCallProvider];
      v31 = v5;
    }

    else
    {

      preferredCallProvider = 0;
      v31 = 0;
    }

    v7 = v5;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      preferredCallProvider = [v7 preferredCallProvider];
      v29 = v7;
    }

    else
    {

      v29 = 0;
    }

    v8 = v7;
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    v10 = 2;
    if ((isKindOfClass & 1) == 0)
    {
      v10 = preferredCallProvider;
    }

    v28 = v10;
  }

  else
  {
    v31 = 0;
    v28 = 0;
    v29 = 0;
  }

  _className = [v5 _className];
  v12 = _className;
  if (_className)
  {
    v13 = _className;
  }

  else
  {
    v14 = objc_opt_class();
    v13 = NSStringFromClass(v14);
  }

  v15 = v13;

  v16 = [objc_alloc(MEMORY[0x1E69635F8]) initWithBundleIdentifier:v4 allowPlaceholder:0 error:0];
  localizedName = [v16 localizedName];
  extensionBundleId = [v5 extensionBundleId];
  _uiExtensionBundleId = [v5 _uiExtensionBundleId];
  in_counterpartIdentifiers = [v16 in_counterpartIdentifiers];
  teamIdentifier = [v16 teamIdentifier];
  v21 = [MEMORY[0x1E695DFD8] setWithObject:v15];
  in_documentTypes = [v16 in_documentTypes];
  v27 = v15;
  v23 = v15;
  v24 = in_documentTypes;
  v33 = [(INIntentDescriptor *)self initWithIntentClassName:v23 localizedName:localizedName bundleIdentifier:v4 displayableBundleIdentifier:0 extensionBundleIdentifier:extensionBundleId uiExtensionBundleIdentifier:_uiExtensionBundleId counterpartIdentifiers:in_counterpartIdentifiers teamIdentifier:teamIdentifier preferredCallProvider:v28 supportedIntents:v21 bundleURL:v30 documentTypes:in_documentTypes];

  return v33;
}

@end