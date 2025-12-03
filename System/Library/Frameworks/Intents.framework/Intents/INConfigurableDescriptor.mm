@interface INConfigurableDescriptor
- (BOOL)supportsIntent:(id)intent;
- (INConfigurableDescriptor)initWithExtensionBundleIdentifier:(id)identifier kind:(id)kind intentClassName:(id)name;
- (id)_extensionRecordWithError:(id *)error;
@end

@implementation INConfigurableDescriptor

- (id)_extensionRecordWithError:(id *)error
{
  v5 = objc_alloc(MEMORY[0x1E69635D0]);
  extensionBundleIdentifier = [(INConfigurableDescriptor *)self extensionBundleIdentifier];
  v7 = [v5 initWithBundleIdentifier:extensionBundleIdentifier error:error];

  return v7;
}

- (BOOL)supportsIntent:(id)intent
{
  intentCopy = intent;
  if (intentCopy)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = intentCopy;
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  appIntentIdentifier = [v6 appIntentIdentifier];

  if (appIntentIdentifier)
  {
    [MEMORY[0x1E696AEC0] stringWithFormat:@"appintent:%@", appIntentIdentifier];
  }

  else
  {
    [intentCopy _className];
  }
  v8 = ;
  intentClassName = [(INConfigurableDescriptor *)self intentClassName];
  v10 = [intentClassName isEqualToString:v8];

  if (v10)
  {
    v23 = 0;
    v11 = [(INConfigurableDescriptor *)self _extensionRecordWithError:&v23];
    v12 = v23;
    if (v11)
    {
      v13 = objc_alloc(MEMORY[0x1E69635F8]);
      _intents_bundleIdForLaunching = [intentCopy _intents_bundleIdForLaunching];
      v22 = v12;
      v15 = [v13 initWithBundleIdentifier:_intents_bundleIdForLaunching allowPlaceholder:0 error:&v22];
      v16 = v22;

      if (v15)
      {
        containingBundleRecord = [v11 containingBundleRecord];
        bundleIdentifier = [containingBundleRecord bundleIdentifier];
        bundleIdentifier2 = [v15 bundleIdentifier];
        v20 = [bundleIdentifier isEqualToString:bundleIdentifier2];
      }

      else
      {
        v20 = 0;
      }

      v12 = v16;
    }

    else
    {
      v20 = 0;
    }
  }

  else
  {
    v20 = 0;
  }

  return v20;
}

- (INConfigurableDescriptor)initWithExtensionBundleIdentifier:(id)identifier kind:(id)kind intentClassName:(id)name
{
  identifierCopy = identifier;
  kindCopy = kind;
  nameCopy = name;
  v19.receiver = self;
  v19.super_class = INConfigurableDescriptor;
  v11 = [(INConfigurableDescriptor *)&v19 init];
  if (v11)
  {
    v12 = [identifierCopy copy];
    extensionBundleIdentifier = v11->_extensionBundleIdentifier;
    v11->_extensionBundleIdentifier = v12;

    v14 = [kindCopy copy];
    kind = v11->_kind;
    v11->_kind = v14;

    v16 = [nameCopy copy];
    intentClassName = v11->_intentClassName;
    v11->_intentClassName = v16;
  }

  return v11;
}

@end