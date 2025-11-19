@interface NSExtension(MapsExtension)
- (id)_containingAppDisplayName;
- (id)_containingAppIdentifer;
- (id)_displayName;
- (id)_extensionVendorContextForUUID:()MapsExtension withErrorHandler:;
- (id)_iconWithFormat:()MapsExtension;
- (uint64_t)_canSupportIntent:()MapsExtension;
- (uint64_t)_canSupportIntentClass:()MapsExtension;
- (uint64_t)_mapExtensionType;
@end

@implementation NSExtension(MapsExtension)

- (uint64_t)_canSupportIntentClass:()MapsExtension
{
  v18 = *MEMORY[0x1E69E9840];
  if (!a3)
  {
    return 0;
  }

  v4 = [a1 attributes];
  v5 = [v4 objectForKeyedSubscript:*MEMORY[0x1E696E558]];

  if (v5 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v6 = NSStringFromClass(a3);
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v7 = v5;
    v8 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v8)
    {
      v9 = *v14;
      while (2)
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v14 != v9)
          {
            objc_enumerationMutation(v7);
          }

          v11 = *(*(&v13 + 1) + 8 * i);
          objc_opt_class();
          if (objc_opt_isKindOfClass() & 1) != 0 && ([v11 isEqualToString:{v6, v13}])
          {
            v8 = 1;
            goto LABEL_17;
          }
        }

        v8 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
        if (v8)
        {
          continue;
        }

        break;
      }
    }

LABEL_17:
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (uint64_t)_canSupportIntent:()MapsExtension
{
  v2 = objc_opt_class();

  return [a1 _canSupportIntentClass:v2];
}

- (id)_iconWithFormat:()MapsExtension
{
  v4 = [a1 _containingAppIdentifer];
  if (v4)
  {
    v5 = MEMORY[0x1E69DCAB8];
    v6 = +[MKSystemController sharedInstance];
    [v6 screenScale];
    v7 = [v5 _applicationIconImageForBundleIdentifier:v4 format:a3 scale:?];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (uint64_t)_mapExtensionType
{
  v2 = [a1 extensionPointIdentifier];
  v3 = [v2 isEqualToString:*MEMORY[0x1E696E580]];

  if (v3)
  {
    return 0;
  }

  v5 = [a1 extensionPointIdentifier];
  v6 = [v5 isEqualToString:*MEMORY[0x1E696E588]];

  if (v6)
  {
    return 1;
  }

  v7 = [a1 extensionPointIdentifier];
  v8 = [v7 isEqualToString:@"com.apple.maps.ui-services"];

  return v8;
}

- (id)_extensionVendorContextForUUID:()MapsExtension withErrorHandler:
{
  v6 = a4;
  v7 = [a1 _extensionContextForUUID:a3];
  v8 = v7;
  if (v7)
  {
    v9 = [v7 _auxiliaryConnection];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __78__NSExtension_MapsExtension___extensionVendorContextForUUID_withErrorHandler___block_invoke;
    v13[3] = &unk_1E76C95A8;
    v14 = v6;
    v10 = [v9 remoteObjectProxyWithErrorHandler:v13];
  }

  else
  {
    v11 = [MEMORY[0x1E696ABC0] _errorWithExtensionServiceError:10];
    (*(v6 + 2))(v6, v11);

    v10 = 0;
  }

  return v10;
}

- (id)_containingAppIdentifer
{
  v1 = [a1 _plugIn];
  if (v1)
  {
    v2 = objc_alloc(MEMORY[0x1E69635D0]);
    v3 = [v1 valueForKey:@"uuid"];
    v4 = [v2 initWithUUID:v3 error:0];

    v5 = [v4 containingBundleRecord];
    v6 = [v5 bundleIdentifier];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)_containingAppDisplayName
{
  v2 = objc_alloc(MEMORY[0x1E69635F8]);
  v3 = [a1 _containingAppIdentifer];
  v4 = [v2 initWithBundleIdentifier:v3 allowPlaceholder:0 error:0];
  v5 = [v4 localizedName];
  v6 = [v5 copy];

  return v6;
}

- (id)_displayName
{
  v1 = [a1 objectForInfoDictionaryKey:*MEMORY[0x1E695E120]];
  v2 = [v1 copy];

  return v2;
}

@end