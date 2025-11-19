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
    [a1 _evaluateActivationRule:v8 withExtensionItemsRepresentation:v9 error:a5];
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
  v7 = [v6 UUID];

  if (v7)
  {
    v8 = [MEMORY[0x1E69C4A88] defaultHost];
    v9 = [v6 UUID];
    v10 = [v8 findPlugInByUUID:v9 withError:a4];

    if (v10)
    {
      v11 = [[EXConcreteExtension alloc] _initWithPKPlugin:v10 identity:v6];
    }

    else
    {
      v13 = _EXLegacyLog();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v14 = [v6 UUID];
        v15 = [v14 UUIDString];
        v19 = 138412290;
        v20 = v15;
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
  if ((objc_opt_isKindOfClass() & 1) == 0 || ([a1 _identity], (v5 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v6 = objc_alloc(MEMORY[0x1E69635D0]);
    v7 = [a1 uuid];
    v8 = [v6 initWithUUID:v7 error:a3];

    if (v8)
    {
      v5 = [[_EXExtensionIdentity alloc] initWithApplicationExtensionRecord:v8];
    }

    else
    {
      v9 = _EXDefaultLog();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v10 = [a1 uuid];
        v13 = 138412546;
        v14 = a1;
        v15 = 2112;
        v16 = v10;
      }

      v5 = 0;
    }
  }

  v11 = *MEMORY[0x1E69E9840];

  return v5;
}

- (id)preferredLanguages
{
  v1 = [a1 _plugIn];
  v2 = [v1 preferredLanguages];

  return v2;
}

- (void)setPreferredLanguages:()ExtensionKitAdditions
{
  v13 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [a1 _plugIn];
  v6 = _EXLegacyLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [v5 uuid];
    v9 = 138543618;
    v10 = v7;
    v11 = 2114;
    v12 = v4;
    _os_log_impl(&dword_1847D1000, v6, OS_LOG_TYPE_DEFAULT, "Setting preferred languages on %{public}@: %{public}@", &v9, 0x16u);
  }

  [v5 setPreferredLanguages:v4];
  v8 = *MEMORY[0x1E69E9840];
}

- (BOOL)requiresMacCatalystBehavior
{
  v14 = *MEMORY[0x1E69E9840];
  v1 = [a1 _plugIn];
  v2 = [v1 uuid];

  v9 = 0;
  v3 = [objc_alloc(MEMORY[0x1E69635D0]) initWithUUID:v2 error:&v9];
  v4 = v9;
  if (v3)
  {
    v5 = [v3 extensionPointRecord];
    v6 = [v5 platform]== 6;
  }

  else
  {
    v5 = _EXLegacyLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      v11 = 0;
      v12 = 2114;
      v13 = v4;
      _os_log_impl(&dword_1847D1000, v5, OS_LOG_TYPE_DEFAULT, "Extension point not found for: %{public}@ with error: %{public}@", buf, 0x16u);
    }

    v6 = 0;
  }

  v7 = *MEMORY[0x1E69E9840];
  return v6;
}

- (id)containingBundleIdentifier
{
  v2 = objc_alloc(MEMORY[0x1E69635D0]);
  v3 = [a1 identifier];
  v4 = [v2 initWithBundleIdentifier:v3 error:0];

  if (v4)
  {
    v5 = [v4 containingBundleRecord];
    v6 = [v5 bundleIdentifier];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)uuid
{
  v1 = [a1 _plugIn];
  v2 = [v1 uuid];

  return v2;
}

- (id)URL
{
  v1 = [a1 _plugIn];
  v2 = [v1 url];

  return v2;
}

- (id)extensionRecord
{
  v2 = objc_alloc(MEMORY[0x1E69635D0]);
  v3 = [a1 uuid];
  v4 = [v2 initWithUUID:v3 error:0];

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