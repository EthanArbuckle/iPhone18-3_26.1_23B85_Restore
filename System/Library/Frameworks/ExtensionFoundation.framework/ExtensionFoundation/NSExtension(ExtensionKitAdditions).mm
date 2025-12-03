@interface NSExtension(ExtensionKitAdditions)
+ (id)extensionRepresentedBy:()ExtensionKitAdditions error:;
+ (void)evaluateActivationRule:()ExtensionKitAdditions withExtensionItemsRepresentation:error:;
- (BOOL)requiresMacCatalystBehavior;
- (_EXExtensionIdentity)extensionIdentityWithError:()ExtensionKitAdditions;
- (id)URL;
- (id)containingBundleIdentifier;
- (id)extensionRecord;
- (id)preferredLanguages;
- (id)uuid;
- (void)setPreferredLanguages:()ExtensionKitAdditions;
@end

@implementation NSExtension(ExtensionKitAdditions)

+ (void)evaluateActivationRule:()ExtensionKitAdditions withExtensionItemsRepresentation:error:
{
  v8 = a3;
  v9 = a4;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [self _evaluateActivationRule:v8 withExtensionItemsRepresentation:v9 error:a5];
  }

  else
  {
    v10 = _EXDefaultLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
    {
      +[NSExtension(ExtensionKitAdditions) evaluateActivationRule:withExtensionItemsRepresentation:error:];
    }

    __break(1u);
  }
}

+ (id)extensionRepresentedBy:()ExtensionKitAdditions error:
{
  v21 = *MEMORY[0x1E69E9840];
  v5 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v18 = _EXDefaultLog();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_FAULT))
    {
      [NSExtension(ExtensionKitAdditions) extensionRepresentedBy:v5 error:v18];
    }

    __break(1u);
  }

  v6 = v5;
  uUID = [v6 UUID];

  if (uUID)
  {
    defaultHost = [MEMORY[0x1E69C4A88] defaultHost];
    uUID2 = [v6 UUID];
    v10 = [defaultHost findPlugInByUUID:uUID2 withError:a4];

    if (v10)
    {
      v11 = [[EXConcreteExtension alloc] _initWithPKPlugin:v10 identity:v6];
    }

    else
    {
      v13 = _EXLegacyLog();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        uUID3 = [v6 UUID];
        uUIDString = [uUID3 UUIDString];
        v19 = 138412290;
        v20 = uUIDString;
        _os_log_impl(&dword_1847D1000, v13, OS_LOG_TYPE_DEFAULT, "Couldn't find pkplugin with uuid: %@", &v19, 0xCu);
      }

      v11 = 0;
    }
  }

  else
  {
    v12 = _EXLegacyLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [NSExtension(ExtensionKitAdditions) extensionRepresentedBy:v6 error:v12];
    }

    if (a4)
    {
      [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.extensionKit.errorDomain" code:5 userInfo:MEMORY[0x1E695E0F8]];
      *a4 = v11 = 0;
    }

    else
    {
      v11 = 0;
    }
  }

  v16 = *MEMORY[0x1E69E9840];

  return v11;
}

- (_EXExtensionIdentity)extensionIdentityWithError:()ExtensionKitAdditions
{
  v17 = *MEMORY[0x1E69E9840];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 || ([self _identity], (v5 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v6 = objc_alloc(MEMORY[0x1E69635D0]);
    uuid = [self uuid];
    v8 = [v6 initWithUUID:uuid error:a3];

    if (v8)
    {
      v5 = [[_EXExtensionIdentity alloc] initWithApplicationExtensionRecord:v8];
    }

    else
    {
      v9 = _EXDefaultLog();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        uuid2 = [self uuid];
        v13 = 138412546;
        selfCopy = self;
        v15 = 2112;
        v16 = uuid2;
      }

      v5 = 0;
    }
  }

  v11 = *MEMORY[0x1E69E9840];

  return v5;
}

- (id)preferredLanguages
{
  _plugIn = [self _plugIn];
  preferredLanguages = [_plugIn preferredLanguages];

  return preferredLanguages;
}

- (void)setPreferredLanguages:()ExtensionKitAdditions
{
  v13 = *MEMORY[0x1E69E9840];
  v4 = a3;
  _plugIn = [self _plugIn];
  v6 = _EXLegacyLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    uuid = [_plugIn uuid];
    v9 = 138543618;
    v10 = uuid;
    v11 = 2114;
    v12 = v4;
    _os_log_impl(&dword_1847D1000, v6, OS_LOG_TYPE_DEFAULT, "Setting preferred languages on %{public}@: %{public}@", &v9, 0x16u);
  }

  [_plugIn setPreferredLanguages:v4];
  v8 = *MEMORY[0x1E69E9840];
}

- (BOOL)requiresMacCatalystBehavior
{
  v14 = *MEMORY[0x1E69E9840];
  _plugIn = [self _plugIn];
  uuid = [_plugIn uuid];

  v9 = 0;
  v3 = [objc_alloc(MEMORY[0x1E69635D0]) initWithUUID:uuid error:&v9];
  v4 = v9;
  if (v3)
  {
    extensionPointRecord = [v3 extensionPointRecord];
    v6 = [extensionPointRecord platform]== 6;
  }

  else
  {
    extensionPointRecord = _EXLegacyLog();
    if (os_log_type_enabled(extensionPointRecord, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      v11 = 0;
      v12 = 2114;
      v13 = v4;
      _os_log_impl(&dword_1847D1000, extensionPointRecord, OS_LOG_TYPE_DEFAULT, "Extension point not found for: %{public}@ with error: %{public}@", buf, 0x16u);
    }

    v6 = 0;
  }

  v7 = *MEMORY[0x1E69E9840];
  return v6;
}

- (id)containingBundleIdentifier
{
  v2 = objc_alloc(MEMORY[0x1E69635D0]);
  identifier = [self identifier];
  v4 = [v2 initWithBundleIdentifier:identifier error:0];

  if (v4)
  {
    containingBundleRecord = [v4 containingBundleRecord];
    bundleIdentifier = [containingBundleRecord bundleIdentifier];
  }

  else
  {
    bundleIdentifier = 0;
  }

  return bundleIdentifier;
}

- (id)uuid
{
  _plugIn = [self _plugIn];
  uuid = [_plugIn uuid];

  return uuid;
}

- (id)URL
{
  _plugIn = [self _plugIn];
  v2 = [_plugIn url];

  return v2;
}

- (id)extensionRecord
{
  v2 = objc_alloc(MEMORY[0x1E69635D0]);
  uuid = [self uuid];
  v4 = [v2 initWithUUID:uuid error:0];

  return v4;
}

+ (void)evaluateActivationRule:()ExtensionKitAdditions withExtensionItemsRepresentation:error:.cold.1()
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = 136315906;
  v3 = "[self isKindOfClass:EXConcreteExtension.class]";
  v4 = 2080;
  v5 = "/Library/Caches/com.apple.xbs/Sources/ExtensionFoundation/ExtensionFoundation/Source/NSExtension/NSExtensionSupport/NSExtension+ExtensionKitAdditions.m";
  v6 = 1024;
  OUTLINED_FUNCTION_0_3();
  v1 = *MEMORY[0x1E69E9840];
}

+ (void)extensionRepresentedBy:()ExtensionKitAdditions error:.cold.1(uint64_t a1, NSObject *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  objc_opt_class();
  v4 = 136315906;
  v5 = "[extensionRep isKindOfClass:_EXExtensionIdentity.class]";
  v6 = 2080;
  v7 = "/Library/Caches/com.apple.xbs/Sources/ExtensionFoundation/ExtensionFoundation/Source/NSExtension/NSExtensionSupport/NSExtension+ExtensionKitAdditions.m";
  v8 = 1024;
  OUTLINED_FUNCTION_0_3();
  v3 = *MEMORY[0x1E69E9840];
}

+ (void)extensionRepresentedBy:()ExtensionKitAdditions error:.cold.2(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138543362;
  v4 = a1;
  _os_log_error_impl(&dword_1847D1000, a2, OS_LOG_TYPE_ERROR, "UUID not found for extension representation: %{public}@", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

@end