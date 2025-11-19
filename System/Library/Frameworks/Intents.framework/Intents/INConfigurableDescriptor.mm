@interface INConfigurableDescriptor
- (BOOL)supportsIntent:(id)a3;
- (INConfigurableDescriptor)initWithExtensionBundleIdentifier:(id)a3 kind:(id)a4 intentClassName:(id)a5;
- (id)_extensionRecordWithError:(id *)a3;
@end

@implementation INConfigurableDescriptor

- (id)_extensionRecordWithError:(id *)a3
{
  v5 = objc_alloc(MEMORY[0x1E69635D0]);
  v6 = [(INConfigurableDescriptor *)self extensionBundleIdentifier];
  v7 = [v5 initWithBundleIdentifier:v6 error:a3];

  return v7;
}

- (BOOL)supportsIntent:(id)a3
{
  v4 = a3;
  if (v4)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
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
  v7 = [v6 appIntentIdentifier];

  if (v7)
  {
    [MEMORY[0x1E696AEC0] stringWithFormat:@"appintent:%@", v7];
  }

  else
  {
    [v4 _className];
  }
  v8 = ;
  v9 = [(INConfigurableDescriptor *)self intentClassName];
  v10 = [v9 isEqualToString:v8];

  if (v10)
  {
    v23 = 0;
    v11 = [(INConfigurableDescriptor *)self _extensionRecordWithError:&v23];
    v12 = v23;
    if (v11)
    {
      v13 = objc_alloc(MEMORY[0x1E69635F8]);
      v14 = [v4 _intents_bundleIdForLaunching];
      v22 = v12;
      v15 = [v13 initWithBundleIdentifier:v14 allowPlaceholder:0 error:&v22];
      v16 = v22;

      if (v15)
      {
        v17 = [v11 containingBundleRecord];
        v18 = [v17 bundleIdentifier];
        v19 = [v15 bundleIdentifier];
        v20 = [v18 isEqualToString:v19];
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

- (INConfigurableDescriptor)initWithExtensionBundleIdentifier:(id)a3 kind:(id)a4 intentClassName:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v19.receiver = self;
  v19.super_class = INConfigurableDescriptor;
  v11 = [(INConfigurableDescriptor *)&v19 init];
  if (v11)
  {
    v12 = [v8 copy];
    extensionBundleIdentifier = v11->_extensionBundleIdentifier;
    v11->_extensionBundleIdentifier = v12;

    v14 = [v9 copy];
    kind = v11->_kind;
    v11->_kind = v14;

    v16 = [v10 copy];
    intentClassName = v11->_intentClassName;
    v11->_intentClassName = v16;
  }

  return v11;
}

@end