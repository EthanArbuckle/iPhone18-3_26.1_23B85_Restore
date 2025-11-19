@interface INIntentDescriptor
- (BOOL)canRunOnLocalDevice;
- (BOOL)hasCustomUIExtension;
- (BOOL)isEqual:(id)a3;
- (INIntentDescriptor)descriptorWithAppDescriptor:(id)a3;
- (INIntentDescriptor)descriptorWithPreferredCallProvider:(int64_t)a3;
- (INIntentDescriptor)initWithCoder:(id)a3;
- (INIntentDescriptor)initWithIntent:(id)a3;
- (INIntentDescriptor)initWithIntentClassName:(id)a3 extensionBundleId:(id)a4;
- (INIntentDescriptor)initWithIntentClassName:(id)a3 launchableAppBundleId:(id)a4;
- (INIntentDescriptor)initWithIntentClassName:(id)a3 localizedName:(id)a4 bundleIdentifier:(id)a5 displayableBundleIdentifier:(id)a6 extensionBundleIdentifier:(id)a7 uiExtensionBundleIdentifier:(id)a8 counterpartIdentifiers:(id)a9 teamIdentifier:(id)a10 preferredCallProvider:(int64_t)a11 supportedIntents:(id)a12 bundleURL:(id)a13 documentTypes:(id)a14;
- (INIntentDescriptor)initWithIntentTypeName:(id)a3;
- (LSApplicationRecord)displayableApplicationRecord;
- (LSApplicationRecord)launchableApplicationRecord;
- (id)_extensionsWithError:(id *)a3;
- (id)_matchingAttributesForExtensionPoint:(id)a3 error:(id *)a4;
- (id)_uiExtensionsWithError:(id *)a3;
- (id)appDescriptor;
- (id)description;
- (id)displayableAppDescriptor;
- (id)mergeWithDescriptor:(id)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation INIntentDescriptor

- (void)encodeWithCoder:(id)a3
{
  v8.receiver = self;
  v8.super_class = INIntentDescriptor;
  v4 = a3;
  [(INAppDescriptor *)&v8 encodeWithCoder:v4];
  v5 = [(INIntentDescriptor *)self intentClassName:v8.receiver];
  [v4 encodeObject:v5 forKey:@"intentClassName"];

  v6 = [(INIntentDescriptor *)self displayableBundleIdentifier];
  [v4 encodeObject:v6 forKey:@"displayableBundleIdentifier"];

  v7 = [(INIntentDescriptor *)self uiExtensionBundleIdentifier];
  [v4 encodeObject:v7 forKey:@"uiExtensionBundleIdentifier"];

  [v4 encodeInteger:-[INIntentDescriptor preferredCallProvider](self forKey:{"preferredCallProvider"), @"preferredCallProvider"}];
}

- (INIntentDescriptor)initWithCoder:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = INIntentDescriptor;
  v5 = [(INAppDescriptor *)&v14 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"intentClassName"];
    intentClassName = v5->_intentClassName;
    v5->_intentClassName = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"displayableBundleIdentifier"];
    displayableBundleIdentifier = v5->_displayableBundleIdentifier;
    v5->_displayableBundleIdentifier = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"uiExtensionBundleIdentifier"];
    uiExtensionBundleIdentifier = v5->_uiExtensionBundleIdentifier;
    v5->_uiExtensionBundleIdentifier = v10;

    v5->_preferredCallProvider = [v4 decodeIntegerForKey:@"preferredCallProvider"];
    v12 = v5;
  }

  return v5;
}

- (id)_uiExtensionsWithError:(id *)a3
{
  v18[1] = *MEMORY[0x1E69E9840];
  uiExtensions = self->_uiExtensions;
  if (uiExtensions)
  {
    goto LABEL_8;
  }

  v6 = [(INIntentDescriptor *)self uiExtensionBundleIdentifier];
  if (v6)
  {
    v7 = [MEMORY[0x1E696ABD0] extensionWithIdentifier:v6 error:a3];
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
    v11 = [(INIntentDescriptor *)self _matchingAttributesForExtensionPoint:@"com.apple.intents-ui-service" error:a3];
    if (v11)
    {
      v12 = v11;
      v13 = [MEMORY[0x1E696ABD0] extensionsWithMatchingAttributes:v11 error:a3];
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

- (id)_extensionsWithError:(id *)a3
{
  v24[1] = *MEMORY[0x1E69E9840];
  extensions = self->_extensions;
  if (extensions)
  {
    goto LABEL_10;
  }

  v6 = [(INAppDescriptor *)self extensionBundleIdentifier];
  if (v6)
  {
    v7 = [MEMORY[0x1E696ABD0] extensionWithIdentifier:v6 error:a3];
    if (v7)
    {
      v8 = v7;
      v9 = [v7 attributes];
      v10 = [v9 objectForKeyedSubscript:@"IntentsSupported"];
      v11 = [(INIntentDescriptor *)self intentClassName];
      if (!v11 || (v12 = v11, -[INIntentDescriptor intentClassName](self, "intentClassName"), v13 = objc_claimAutoreleasedReturnValue(), v14 = [v10 containsObject:v13], v13, v12, v14))
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
    v17 = [(INIntentDescriptor *)self _matchingAttributesForExtensionPoint:@"com.apple.intents-service" error:a3];
    if (v17)
    {
      v18 = v17;
      v19 = [MEMORY[0x1E696ABD0] extensionsWithMatchingAttributes:v17 error:a3];
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

- (id)_matchingAttributesForExtensionPoint:(id)a3 error:(id *)a4
{
  v23[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = objc_opt_new();
  [v7 setObject:v6 forKeyedSubscript:*MEMORY[0x1E696A2F8]];

  v8 = [(INIntentDescriptor *)self intentClassName];
  v9 = v8;
  if (v8)
  {
    v23[0] = v8;
    v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v23 count:1];
    [v7 setObject:v10 forKeyedSubscript:@"IntentsSupported"];
  }

  v11 = [(INAppDescriptor *)self bundleURL];
  v12 = [(INAppDescriptor *)self bundleIdentifier];
  v13 = v12;
  if (!v11 && v12)
  {
    v14 = [(INIntentDescriptor *)self launchableApplicationRecord];
    v11 = [v14 URL];
  }

  if (v11 || !v13)
  {
    if (v11)
    {
      v18 = [v11 path];
      [v7 setObject:v18 forKeyedSubscript:*MEMORY[0x1E69C4AB0]];
    }

    a4 = v7;
  }

  else if (a4)
  {
    v15 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Cannot match extensions for %@ because it does not have a bundle URL", v13, 0];
    v16 = MEMORY[0x1E696ABC0];
    v21 = *MEMORY[0x1E696A278];
    v22 = v15;
    v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v22 forKeys:&v21 count:1];
    *a4 = [v16 errorWithDomain:@"IntentsErrorDomain" code:2005 userInfo:v17];

    a4 = 0;
  }

  v19 = *MEMORY[0x1E69E9840];

  return a4;
}

- (BOOL)canRunOnLocalDevice
{
  v25 = *MEMORY[0x1E69E9840];
  v3 = objc_alloc(MEMORY[0x1E69635F8]);
  v4 = [(INAppDescriptor *)self bundleIdentifier];
  v5 = [v3 initWithBundleIdentifier:v4 allowPlaceholder:0 error:0];

  v6 = [v5 applicationState];
  v7 = [v6 isInstalled];

  if (v7 && ([v5 in_supportedIntents], v8 = objc_claimAutoreleasedReturnValue(), -[INIntentDescriptor intentClassName](self, "intentClassName"), v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend(v8, "containsObject:", v9), v9, v8, (v10 & 1) != 0))
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
          v22 = self;
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
      v13 = self;
      v14 = 2114;
      v15 = v4;
      _os_log_error_impl(&dword_18E991000, v6, OS_LOG_TYPE_ERROR, "%s Failed to match UI extensions for execution info %{public}@: %{public}@", buf, 0x20u);
    }
  }

  v7 = *MEMORY[0x1E69E9840];
  return v5 != 0;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    LOBYTE(v8) = 1;
  }

  else
  {
    if ([(INIntentDescriptor *)v4 isMemberOfClass:objc_opt_class()])
    {
      v29.receiver = self;
      v29.super_class = INIntentDescriptor;
      v5 = [(INAppDescriptor *)&v29 isEqual:v4];
      v6 = v4;
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

      v10 = [(INIntentDescriptor *)self intentClassName];
      v11 = [(INIntentDescriptor *)v9 intentClassName];
      v12 = v10;
      v13 = v11;
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

      v18 = [(INIntentDescriptor *)self displayableBundleIdentifier];
      v19 = [(INIntentDescriptor *)v9 displayableBundleIdentifier];
      v16 = v18;
      v20 = v19;
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

      v24 = [(INIntentDescriptor *)self uiExtensionBundleIdentifier];
      v25 = [(INIntentDescriptor *)v9 uiExtensionBundleIdentifier];
      v22 = v24;
      v26 = v25;
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

      v27 = [(INIntentDescriptor *)self preferredCallProvider];
      LOBYTE(v8) = v27 == [(INIntentDescriptor *)v9 preferredCallProvider];
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
  v4 = [(INIntentDescriptor *)self intentClassName];
  v5 = [v4 hash];
  v6 = [(INIntentDescriptor *)self displayableBundleIdentifier];
  v7 = v5 ^ [v6 hash];
  v8 = [(INIntentDescriptor *)self uiExtensionBundleIdentifier];
  v9 = v7 ^ [v8 hash];

  return v9 ^ v3;
}

- (id)mergeWithDescriptor:(id)a3
{
  v4 = a3;
  v5 = [(INIntentDescriptor *)self intentClassName];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = [(INIntentDescriptor *)v4 intentClassName];
  }

  v8 = v7;

  v9 = [(INAppDescriptor *)self localizedName];
  v10 = v9;
  if (v9)
  {
    v11 = v9;
  }

  else
  {
    v11 = [(INAppDescriptor *)v4 localizedName];
  }

  v12 = v11;

  v13 = [(INAppDescriptor *)self bundleIdentifier];
  v14 = v13;
  if (v13)
  {
    v15 = v13;
  }

  else
  {
    v15 = [(INAppDescriptor *)v4 bundleIdentifier];
  }

  v16 = v15;

  v17 = [(INIntentDescriptor *)self displayableBundleIdentifier];
  v18 = v17;
  if (v17)
  {
    v19 = v17;
  }

  else
  {
    v19 = [(INIntentDescriptor *)v4 displayableBundleIdentifier];
  }

  v20 = v19;

  v21 = [(INAppDescriptor *)self extensionBundleIdentifier];
  v22 = v21;
  if (v21)
  {
    v23 = v21;
  }

  else
  {
    v23 = [(INAppDescriptor *)v4 extensionBundleIdentifier];
  }

  v61 = v23;

  v24 = [(INIntentDescriptor *)self uiExtensionBundleIdentifier];
  v25 = v24;
  if (v24)
  {
    v26 = v24;
  }

  else
  {
    v26 = [(INIntentDescriptor *)v4 uiExtensionBundleIdentifier];
  }

  v60 = v26;

  v27 = [(INAppDescriptor *)self counterpartIdentifiers];
  v28 = v27;
  if (v27)
  {
    v29 = v27;
  }

  else
  {
    v29 = [(INAppDescriptor *)v4 counterpartIdentifiers];
  }

  v59 = v29;

  v30 = [(INAppDescriptor *)self teamIdentifier];
  v31 = v30;
  if (v30)
  {
    v32 = v30;
  }

  else
  {
    v32 = [(INAppDescriptor *)v4 teamIdentifier];
  }

  v58 = v32;

  v33 = [(INAppDescriptor *)self bundleURL];
  v34 = v33;
  v57 = v8;
  if (v33)
  {
    v35 = v33;
  }

  else
  {
    v35 = [(INAppDescriptor *)v4 bundleURL];
  }

  v36 = v35;

  if ([(INIntentDescriptor *)self preferredCallProvider])
  {
    v37 = self;
  }

  else
  {
    v37 = v4;
  }

  v56 = [(INIntentDescriptor *)v37 preferredCallProvider];
  v38 = [(INAppDescriptor *)self documentTypes];
  v39 = v38;
  if (v38)
  {
    v40 = v38;
  }

  else
  {
    v40 = [(INAppDescriptor *)v4 documentTypes];
  }

  v41 = v40;

  v42 = [(INAppDescriptor *)self supportedIntents];
  if (v42)
  {
    [(INAppDescriptor *)self supportedIntents];
    v43 = v20;
    v44 = v16;
    v46 = v45 = v12;
    v47 = [v46 mutableCopy];

    v12 = v45;
    v16 = v44;
    v20 = v43;
  }

  else
  {
    v47 = objc_opt_new();
  }

  v48 = [(INAppDescriptor *)v4 supportedIntents];
  [v47 unionSet:v48];

  if (([v16 isEqualToString:v20] & 1) == 0)
  {
    v49 = v16;
    v50 = v12;
    v51 = [objc_alloc(MEMORY[0x1E69635F8]) initWithBundleIdentifier:v20 allowPlaceholder:0 error:0];
    v52 = [v51 localizedName];

    if (v52)
    {
      v12 = [v51 localizedName];
    }

    else
    {
      v12 = v50;
    }

    v16 = v49;
  }

  v53 = [[INIntentDescriptor alloc] initWithIntentClassName:v57 localizedName:v12 bundleIdentifier:v16 displayableBundleIdentifier:v20 extensionBundleIdentifier:v61 uiExtensionBundleIdentifier:v60 counterpartIdentifiers:v59 teamIdentifier:v58 preferredCallProvider:v56 supportedIntents:v47 bundleURL:v36 documentTypes:v41];
  v54 = [(INAppDescriptor *)self requiresUserConfirmation]|| [(INAppDescriptor *)v4 requiresUserConfirmation];
  [(INAppDescriptor *)v53 setRequiresUserConfirmation:v54];

  return v53;
}

- (INIntentDescriptor)descriptorWithPreferredCallProvider:(int64_t)a3
{
  v17 = [INIntentDescriptor alloc];
  v19 = [(INIntentDescriptor *)self intentClassName];
  v16 = [(INAppDescriptor *)self localizedName];
  v15 = [(INAppDescriptor *)self bundleIdentifier];
  v4 = [(INAppDescriptor *)self bundleIdentifier];
  v5 = [(INAppDescriptor *)self extensionBundleIdentifier];
  v14 = [(INIntentDescriptor *)self uiExtensionBundleIdentifier];
  v6 = [(INAppDescriptor *)self counterpartIdentifiers];
  v7 = [(INAppDescriptor *)self teamIdentifier];
  v8 = [(INAppDescriptor *)self supportedIntents];
  v9 = [(INAppDescriptor *)self bundleURL];
  v10 = [(INAppDescriptor *)self documentTypes];
  v11 = v5;
  v12 = [(INIntentDescriptor *)v17 initWithIntentClassName:v19 localizedName:v16 bundleIdentifier:v15 displayableBundleIdentifier:v4 extensionBundleIdentifier:v5 uiExtensionBundleIdentifier:v14 counterpartIdentifiers:v6 teamIdentifier:v7 preferredCallProvider:a3 supportedIntents:v8 bundleURL:v9 documentTypes:v10];

  [(INAppDescriptor *)v12 setRequiresUserConfirmation:[(INAppDescriptor *)self requiresUserConfirmation]];

  return v12;
}

- (INIntentDescriptor)descriptorWithAppDescriptor:(id)a3
{
  v4 = a3;
  v16 = [INIntentDescriptor alloc];
  v5 = [(INIntentDescriptor *)self intentClassName];
  v19 = [v4 localizedName];
  v18 = [v4 bundleIdentifier];
  v15 = [v4 bundleIdentifier];
  v6 = [(INAppDescriptor *)self extensionBundleIdentifier];
  v20 = self;
  v7 = [(INIntentDescriptor *)self uiExtensionBundleIdentifier];
  v14 = [v4 counterpartIdentifiers];
  v8 = [v4 teamIdentifier];
  v9 = [(INIntentDescriptor *)self preferredCallProvider];
  v10 = [v4 supportedIntents];
  v11 = [v4 bundleURL];
  v12 = [v4 documentTypes];

  v17 = [(INIntentDescriptor *)v16 initWithIntentClassName:v5 localizedName:v19 bundleIdentifier:v18 displayableBundleIdentifier:v15 extensionBundleIdentifier:v6 uiExtensionBundleIdentifier:v7 counterpartIdentifiers:v14 teamIdentifier:v8 preferredCallProvider:v9 supportedIntents:v10 bundleURL:v11 documentTypes:v12];
  [(INAppDescriptor *)v17 setRequiresUserConfirmation:[(INAppDescriptor *)v20 requiresUserConfirmation]];

  return v17;
}

- (LSApplicationRecord)displayableApplicationRecord
{
  v3 = objc_alloc(MEMORY[0x1E69635F8]);
  v4 = [(INIntentDescriptor *)self displayableBundleIdentifier];
  if (v4)
  {
    v5 = [v3 initWithBundleIdentifier:v4 allowPlaceholder:0 error:0];
  }

  else
  {
    v6 = [(INAppDescriptor *)self bundleIdentifier];
    v5 = [v3 initWithBundleIdentifier:v6 allowPlaceholder:0 error:0];
  }

  return v5;
}

- (LSApplicationRecord)launchableApplicationRecord
{
  v3 = objc_alloc(MEMORY[0x1E69635F8]);
  v4 = [(INAppDescriptor *)self bundleIdentifier];
  v5 = [v3 initWithBundleIdentifier:v4 allowPlaceholder:0 error:0];

  return v5;
}

- (id)displayableAppDescriptor
{
  v3 = [(INAppDescriptor *)self bundleIdentifier];
  v4 = [(INIntentDescriptor *)self displayableBundleIdentifier];
  v5 = [v3 isEqualToString:v4];

  if (v5)
  {
    v6 = [(INIntentDescriptor *)self appDescriptor];
  }

  else
  {
    v18 = [(INIntentDescriptor *)self displayableApplicationRecord];
    v7 = [[INAppDescriptor alloc] initWithApplicationRecord:v18];
    v8 = [INAppDescriptor alloc];
    v9 = [(INAppDescriptor *)v7 localizedName];
    v10 = [(INAppDescriptor *)v7 bundleIdentifier];
    v11 = [(INAppDescriptor *)self extensionBundleIdentifier];
    v12 = [(INAppDescriptor *)v7 counterpartIdentifiers];
    v13 = [(INAppDescriptor *)v7 teamIdentifier];
    v14 = [(INAppDescriptor *)v7 supportedIntents];
    v15 = [(INAppDescriptor *)v7 bundleURL];
    v16 = [(INAppDescriptor *)v7 documentTypes];
    v6 = [(INAppDescriptor *)v8 initWithLocalizedName:v9 bundleIdentifier:v10 extensionBundleIdentifier:v11 counterpartIdentifiers:v12 teamIdentifier:v13 supportedIntents:v14 bundleURL:v15 documentTypes:v16];
  }

  return v6;
}

- (id)appDescriptor
{
  v3 = [INAppDescriptor alloc];
  v4 = [(INAppDescriptor *)self localizedName];
  v5 = [(INAppDescriptor *)self bundleIdentifier];
  v6 = [(INAppDescriptor *)self extensionBundleIdentifier];
  v7 = [(INAppDescriptor *)self counterpartIdentifiers];
  v8 = [(INAppDescriptor *)self teamIdentifier];
  v9 = [(INAppDescriptor *)self supportedIntents];
  v10 = [(INAppDescriptor *)self bundleURL];
  v11 = [(INAppDescriptor *)self documentTypes];
  v12 = [(INAppDescriptor *)v3 initWithLocalizedName:v4 bundleIdentifier:v5 extensionBundleIdentifier:v6 counterpartIdentifiers:v7 teamIdentifier:v8 supportedIntents:v9 bundleURL:v10 documentTypes:v11];

  [(INAppDescriptor *)v12 setRequiresUserConfirmation:[(INAppDescriptor *)self requiresUserConfirmation]];

  return v12;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v10.receiver = self;
  v10.super_class = INIntentDescriptor;
  v4 = [(INAppDescriptor *)&v10 description];
  v5 = [(INIntentDescriptor *)self intentClassName];
  v6 = [(INIntentDescriptor *)self displayableBundleIdentifier];
  v7 = [(INIntentDescriptor *)self uiExtensionBundleIdentifier];
  v8 = [v3 stringWithFormat:@"%@, intentClassName: %@, displayableBundleId: %@, uiExtensionBundleId: %@, preferredCallProvider: %li", v4, v5, v6, v7, -[INIntentDescriptor preferredCallProvider](self, "preferredCallProvider")];

  return v8;
}

- (INIntentDescriptor)initWithIntentClassName:(id)a3 localizedName:(id)a4 bundleIdentifier:(id)a5 displayableBundleIdentifier:(id)a6 extensionBundleIdentifier:(id)a7 uiExtensionBundleIdentifier:(id)a8 counterpartIdentifiers:(id)a9 teamIdentifier:(id)a10 preferredCallProvider:(int64_t)a11 supportedIntents:(id)a12 bundleURL:(id)a13 documentTypes:(id)a14
{
  v38 = a3;
  v37 = a8;
  v19 = a14;
  v20 = a13;
  v21 = a12;
  v22 = a10;
  v23 = a9;
  v24 = a7;
  v25 = a6;
  v26 = a4;
  v27 = [a5 copy];
  v28 = [v25 copy];

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
  v29 = [(INAppDescriptor *)&v39 initWithLocalizedName:v26 bundleIdentifier:v27 extensionBundleIdentifier:v24 counterpartIdentifiers:v23 teamIdentifier:v22 supportedIntents:v21 bundleURL:v20 documentTypes:v19];

  if (v29)
  {
    v30 = [v38 copy];
    intentClassName = v29->_intentClassName;
    v29->_intentClassName = v30;

    objc_storeStrong(&v29->_displayableBundleIdentifier, v28);
    v32 = [v37 copy];
    uiExtensionBundleIdentifier = v29->_uiExtensionBundleIdentifier;
    v29->_uiExtensionBundleIdentifier = v32;

    v29->_preferredCallProvider = a11;
    v34 = v29;
  }

  return v29;
}

- (INIntentDescriptor)initWithIntentClassName:(id)a3 extensionBundleId:(id)a4
{
  v6 = MEMORY[0x1E695DFD8];
  v7 = a4;
  v8 = a3;
  v9 = [v6 setWithObject:v8];
  v10 = [(INIntentDescriptor *)self initWithIntentClassName:v8 localizedName:0 bundleIdentifier:0 displayableBundleIdentifier:0 extensionBundleIdentifier:v7 uiExtensionBundleIdentifier:0 counterpartIdentifiers:0 teamIdentifier:0 preferredCallProvider:0 supportedIntents:v9 bundleURL:0 documentTypes:0];

  return v10;
}

- (INIntentDescriptor)initWithIntentClassName:(id)a3 launchableAppBundleId:(id)a4
{
  v6 = MEMORY[0x1E69635F8];
  v7 = a4;
  v8 = a3;
  v9 = [[v6 alloc] initWithBundleIdentifier:v7 allowPlaceholder:0 error:0];
  v10 = [v9 localizedName];
  v11 = [v9 in_counterpartIdentifiers];
  v12 = [v9 teamIdentifier];
  v13 = [MEMORY[0x1E695DFD8] setWithObject:v8];
  v14 = [v9 in_documentTypes];
  v15 = [(INIntentDescriptor *)self initWithIntentClassName:v8 localizedName:v10 bundleIdentifier:v7 displayableBundleIdentifier:0 extensionBundleIdentifier:0 uiExtensionBundleIdentifier:0 counterpartIdentifiers:v11 teamIdentifier:v12 preferredCallProvider:0 supportedIntents:v13 bundleURL:0 documentTypes:v14];

  return v15;
}

- (INIntentDescriptor)initWithIntentTypeName:(id)a3
{
  v4 = a3;
  v16 = 0;
  v17 = 0;
  v5 = INParseCustomIntentTypeName(v4, &v17, &v16);
  v6 = v17;
  v7 = v16;
  if (v5)
  {
    self = [(INIntentDescriptor *)self initWithIntentClassName:v6 launchableAppBundleId:v7];
    v8 = self;
  }

  else
  {
    v9 = INIntentSchemaGetIntentDescriptionWithType(v4);
    v10 = v9;
    if (v9)
    {
      v11 = NSStringFromClass([v9 facadeClass]);
      v12 = MEMORY[0x1E695DFD8];
      v13 = NSStringFromClass([v10 facadeClass]);
      v14 = [v12 setWithObject:v13];
      self = [(INIntentDescriptor *)self initWithIntentClassName:v11 localizedName:0 bundleIdentifier:0 displayableBundleIdentifier:0 extensionBundleIdentifier:0 uiExtensionBundleIdentifier:0 counterpartIdentifiers:0 teamIdentifier:0 preferredCallProvider:0 supportedIntents:v14 bundleURL:0 documentTypes:0];

      v8 = self;
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

- (INIntentDescriptor)initWithIntent:(id)a3
{
  v3 = a3;
  [v3 launchId];
  v35 = 0;
  v34 = v36 = 0;
  INExtractAppInfoFromSiriLaunchIdWithoutLaunchServices(v34, &v36, &v35);
  v4 = v36;
  v30 = v35;
  v5 = v3;
  if (v5)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = [v5 preferredCallProvider];
      v31 = v5;
    }

    else
    {

      v6 = 0;
      v31 = 0;
    }

    v7 = v5;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = [v7 preferredCallProvider];
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
      v10 = v6;
    }

    v28 = v10;
  }

  else
  {
    v31 = 0;
    v28 = 0;
    v29 = 0;
  }

  v11 = [v5 _className];
  v12 = v11;
  if (v11)
  {
    v13 = v11;
  }

  else
  {
    v14 = objc_opt_class();
    v13 = NSStringFromClass(v14);
  }

  v15 = v13;

  v16 = [objc_alloc(MEMORY[0x1E69635F8]) initWithBundleIdentifier:v4 allowPlaceholder:0 error:0];
  v17 = [v16 localizedName];
  v18 = [v5 extensionBundleId];
  v26 = [v5 _uiExtensionBundleId];
  v19 = [v16 in_counterpartIdentifiers];
  v20 = [v16 teamIdentifier];
  v21 = [MEMORY[0x1E695DFD8] setWithObject:v15];
  v22 = [v16 in_documentTypes];
  v27 = v15;
  v23 = v15;
  v24 = v22;
  v33 = [(INIntentDescriptor *)self initWithIntentClassName:v23 localizedName:v17 bundleIdentifier:v4 displayableBundleIdentifier:0 extensionBundleIdentifier:v18 uiExtensionBundleIdentifier:v26 counterpartIdentifiers:v19 teamIdentifier:v20 preferredCallProvider:v28 supportedIntents:v21 bundleURL:v30 documentTypes:v22];

  return v33;
}

@end