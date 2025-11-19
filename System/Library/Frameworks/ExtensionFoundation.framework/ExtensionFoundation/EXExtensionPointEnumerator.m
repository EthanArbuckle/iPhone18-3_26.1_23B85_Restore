@interface EXExtensionPointEnumerator
+ (id)enumeratorIncludingPlaceHolders;
+ (id)translateAppexptDictionary:(id)a3 definitionURL:(id)a4 isCatalyst:(BOOL)a5;
+ (void)enumerateExtensionPointsInDirectoryAtURL:(id)a3 block:(id)a4;
- (BOOL)validateExtensionPointIdentifier:(id)a3 sdkDictionary:(id)a4;
- (EXExtensionPointEnumerator)initWithSDKDictionary:(id)a3 config:(id)a4;
- (EXExtensionPointEnumerator)initWithSDKDictionary:(id)a3 urls:(id)a4 config:(id)a5;
- (id)flattenEXExtensionPointConfigurationInDictionary:(id)a3 identifier:(id)a4;
- (id)nextObject;
- (id)synthesizeNSExtensionKeysInDictionary:(id)a3 identifier:(id)a4;
- (id)translateXPCCacheDictionary:(id)a3;
- (void)nextObject;
@end

@implementation EXExtensionPointEnumerator

+ (id)enumeratorIncludingPlaceHolders
{
  v2 = _EXRegistrationLog();
  v3 = os_signpost_id_generate(v2);

  v4 = _EXRegistrationLog();
  v5 = v4;
  if (v3 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v4))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1847D1000, v5, OS_SIGNPOST_INTERVAL_BEGIN, v3, "extensionPointDefinitionEnumerator", "", buf, 2u);
  }

  v6 = [objc_opt_class() extensionPointCacheFileURLs];
  v7 = [objc_opt_class() extensionPointDefinitionDirectoryURLs];
  v8 = [v6 arrayByAddingObjectsFromArray:v7];

  v9 = [objc_opt_class() config];
  [v9 setIncludePlaceholders:1];
  v10 = [[EXExtensionPointEnumerator alloc] initWithCacheURLs:v8 config:v9];
  v11 = _EXRegistrationLog();
  v12 = v11;
  if (v3 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v11))
  {
    *v14 = 0;
    _os_signpost_emit_with_name_impl(&dword_1847D1000, v12, OS_SIGNPOST_INTERVAL_END, v3, "extensionPointDefinitionEnumerator", "", v14, 2u);
  }

  return v10;
}

+ (void)enumerateExtensionPointsInDirectoryAtURL:(id)a3 block:(id)a4
{
  v50[2] = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v7 = [v5 path];
  v38 = [v7 containsString:@"/System/iOSSupport/"];

  v8 = *MEMORY[0x1E695DBB8];
  v50[0] = *MEMORY[0x1E695DB78];
  v50[1] = v8;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v50 count:2];
  v10 = [MEMORY[0x1E696AC08] defaultManager];
  v32 = v9;
  v33 = v5;
  v11 = [v10 enumeratorAtURL:v5 includingPropertiesForKeys:v9 options:1 errorHandler:0];

  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  obj = v11;
  v12 = [obj countByEnumeratingWithState:&v44 objects:v49 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v45;
    v34 = *v45;
    do
    {
      v15 = 0;
      v35 = v13;
      do
      {
        if (*v45 != v14)
        {
          objc_enumerationMutation(obj);
        }

        v16 = *(*(&v44 + 1) + 8 * v15);
        v17 = [v16 pathExtension];
        v18 = [v17 caseInsensitiveCompare:@"appexpt"];

        if (!v18)
        {
          v37 = v15;
          v19 = [MEMORY[0x1E695DF20] dictionaryWithContentsOfURL:v16];
          v20 = v19;
          if (v19)
          {
            v42 = 0u;
            v43 = 0u;
            v40 = 0u;
            v41 = 0u;
            v21 = [v19 countByEnumeratingWithState:&v40 objects:v48 count:16];
            if (v21)
            {
              v22 = v21;
              v23 = *v41;
              do
              {
                for (i = 0; i != v22; ++i)
                {
                  if (*v41 != v23)
                  {
                    objc_enumerationMutation(v20);
                  }

                  v25 = *(*(&v40 + 1) + 8 * i);
                  v26 = [v20 _EX_dictionaryForKey:v25];
                  v27 = sdkDictionaryAdditions();
                  v28 = [v27 objectForKeyedSubscript:v25];

                  if (v28)
                  {
                    v29 = [v26 _EX_dictionaryBySettingValuesForKeysWithDictionary:v28];

                    v26 = v29;
                  }

                  v30 = [a1 translateAppexptDictionary:v26 definitionURL:v16 isCatalyst:v38];

                  v6[2](v6, v25, v30);
                }

                v22 = [v20 countByEnumeratingWithState:&v40 objects:v48 count:16];
              }

              while (v22);
            }
          }

          v14 = v34;
          v13 = v35;
          v15 = v37;
        }

        ++v15;
      }

      while (v15 != v13);
      v13 = [obj countByEnumeratingWithState:&v44 objects:v49 count:16];
    }

    while (v13);
  }

  v31 = *MEMORY[0x1E69E9840];
}

- (EXExtensionPointEnumerator)initWithSDKDictionary:(id)a3 config:(id)a4
{
  result = [(EXExtensionPointEnumerator *)self initWithSDKDictionary:a3 urls:MEMORY[0x1E695E0F0] config:a4];
  if (result)
  {
    result->_validateExtensionPoints = 1;
  }

  return result;
}

- (EXExtensionPointEnumerator)initWithSDKDictionary:(id)a3 urls:(id)a4 config:(id)a5
{
  v91 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v83.receiver = self;
  v83.super_class = EXExtensionPointEnumerator;
  v11 = [(EXExtensionPointEnumerator *)&v83 init];
  if (v11)
  {
    obj = a5;
    v58 = v10;
    v60 = v9;
    v12 = objc_opt_new();
    v79 = 0u;
    v80 = 0u;
    v81 = 0u;
    v82 = 0u;
    v59 = v8;
    v13 = v8;
    v14 = [v13 countByEnumeratingWithState:&v79 objects:v90 count:16];
    if (v14)
    {
      v15 = v14;
      v67 = *v80;
      do
      {
        for (i = 0; i != v15; ++i)
        {
          if (*v80 != v67)
          {
            objc_enumerationMutation(v13);
          }

          v17 = *(*(&v79 + 1) + 8 * i);
          v18 = [v13 _EX_dictionaryForKey:{v17, obj}];
          v19 = [objc_opt_class() translateAppexptDictionary:v18 definitionURL:0 isCatalyst:0];

          if ([v19 count])
          {
            v20 = [(NSDictionary *)v12 _EX_dictionaryForKey:v17];
            v21 = v20;
            v22 = MEMORY[0x1E695E0F8];
            if (v20)
            {
              v22 = v20;
            }

            v23 = v22;

            v24 = [v23 _EX_dictionaryBySettingValuesForKeysWithDictionary:v19];

            [(NSDictionary *)v12 setObject:v24 forKey:v17];
          }

          else
          {
            v24 = _EXDefaultLog();
            if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138543362;
              v85 = v17;
            }
          }
        }

        v15 = [v13 countByEnumeratingWithState:&v79 objects:v90 count:16];
      }

      while (v15);
    }

    v77 = 0u;
    v78 = 0u;
    v75 = 0u;
    v76 = 0u;
    v25 = v9;
    v26 = [v25 countByEnumeratingWithState:&v75 objects:v89 count:16];
    if (v26)
    {
      v27 = v26;
      v28 = *v76;
      v61 = *v76;
      v62 = v25;
      do
      {
        v29 = 0;
        v64 = v27;
        do
        {
          if (*v76 != v28)
          {
            objc_enumerationMutation(v25);
          }

          v66 = v29;
          v30 = *(*(&v75 + 1) + 8 * v29);
          if ([v30 _EX_isDirectory])
          {
            v73[0] = MEMORY[0x1E69E9820];
            v73[1] = 3221225472;
            v73[2] = __64__EXExtensionPointEnumerator_initWithSDKDictionary_urls_config___block_invoke;
            v73[3] = &unk_1E6E4E5B0;
            v74 = v12;
            [EXExtensionPointEnumerator enumerateExtensionPointsInDirectoryAtURL:v30 block:v73];
            v31 = v74;
            goto LABEL_45;
          }

          v32 = +[_EXDefaults sharedInstance];
          if ([v32 enforceXPCCacheCodeSigning])
          {
            v33 = [v30 path];
            v34 = [v33 hasSuffix:@"System/Library/xpc/extensions.plist"];

            if (v34)
            {
              v72 = 0;
              v35 = [MEMORY[0x1E695DF20] _EX_dictionaryWithSignedURL:v30 error:&v72];
              v65 = v72;
              if (v35)
              {
                goto LABEL_29;
              }

              goto LABEL_25;
            }
          }

          else
          {
          }

          v35 = [MEMORY[0x1E695DF20] dictionaryWithContentsOfURL:v30];
          v65 = 0;
          if (v35)
          {
LABEL_29:
            v70 = 0u;
            v71 = 0u;
            v68 = 0u;
            v69 = 0u;
            v36 = v35;
            v37 = [v36 countByEnumeratingWithState:&v68 objects:v88 count:16];
            if (v37)
            {
              v38 = v37;
              v63 = v35;
              v39 = *v69;
              do
              {
                for (j = 0; j != v38; ++j)
                {
                  if (*v69 != v39)
                  {
                    objc_enumerationMutation(v36);
                  }

                  v41 = *(*(&v68 + 1) + 8 * j);
                  v42 = [v36 _EX_dictionaryForKey:v41];
                  v43 = [(EXExtensionPointEnumerator *)v11 translateXPCCacheDictionary:v42];

                  if ([v43 count])
                  {
                    v44 = [(NSDictionary *)v12 _EX_dictionaryForKey:v41];
                    v45 = v44;
                    v46 = MEMORY[0x1E695E0F8];
                    if (v44)
                    {
                      v46 = v44;
                    }

                    v47 = v46;

                    v48 = [v47 _EX_dictionaryBySettingValuesForKeysWithDictionary:v43];

                    [(NSDictionary *)v12 setObject:v48 forKey:v41];
                  }

                  else
                  {
                    v48 = _EXDefaultLog();
                    if (os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
                    {
                      *buf = 138543362;
                      v85 = v41;
                    }
                  }
                }

                v38 = [v36 countByEnumeratingWithState:&v68 objects:v88 count:16];
              }

              while (v38);
              v28 = v61;
              v25 = v62;
              v35 = v63;
            }

LABEL_43:
            v31 = v65;
            goto LABEL_44;
          }

LABEL_25:
          v36 = _EXDefaultLog();
          if (!os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_43;
          }

          *buf = 138543618;
          v85 = v30;
          v86 = 2114;
          v31 = v65;
          v87 = v65;
LABEL_44:

          v27 = v64;
LABEL_45:

          v29 = v66 + 1;
        }

        while (v66 + 1 != v27);
        v27 = [v25 countByEnumeratingWithState:&v75 objects:v89 count:16];
      }

      while (v27);
    }

    objc_storeStrong(&v11->_config, obj);
    extensionPoints = v11->_extensionPoints;
    v11->_extensionPoints = v12;
    v50 = v12;

    v51 = [(NSDictionary *)v11->_extensionPoints keyEnumerator];
    extensionPointsKeyEnumerator = v11->_extensionPointsKeyEnumerator;
    v11->_extensionPointsKeyEnumerator = v51;

    v53 = objc_opt_new();
    currentExtensionPoint = v11->_currentExtensionPoint;
    v11->_currentExtensionPoint = v53;

    v11->_validateExtensionPoints = 1;
    v8 = v59;
    v9 = v60;
    v10 = v58;
  }

  v55 = *MEMORY[0x1E69E9840];
  return v11;
}

void __64__EXExtensionPointEnumerator_initWithSDKDictionary_urls_config___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v16 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if ([v6 count])
  {
    v7 = [*(a1 + 32) _EX_dictionaryForKey:v5];
    v8 = v7;
    v9 = MEMORY[0x1E695E0F8];
    if (v7)
    {
      v9 = v7;
    }

    v10 = v9;

    v11 = [v10 _EX_dictionaryBySettingValuesForKeysWithDictionary:v6];

    [*(a1 + 32) setObject:v11 forKey:v5];
  }

  else
  {
    v12 = _EXDefaultLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v14 = 138543362;
      v15 = v5;
    }
  }

  v13 = *MEMORY[0x1E69E9840];
}

+ (id)translateAppexptDictionary:(id)a3 definitionURL:(id)a4 isCatalyst:(BOOL)a5
{
  v18[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = v6;
  v9 = v8;
  if (v7)
  {
    v10 = [v7 absoluteURL];
    v11 = [v10 path];
    v9 = [v8 _EX_dictionaryBySettingObject:v11 forKey:@"EXExtensionPointDefinitionPath"];
  }

  v12 = v9;
  v13 = v12;
  if (v12)
  {
    v17 = @"EXNativeSDKVariant";
    v18[0] = v12;
    v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v18 forKeys:&v17 count:1];
  }

  else
  {
    v14 = MEMORY[0x1E695E0F8];
  }

  v15 = *MEMORY[0x1E69E9840];

  return v14;
}

- (id)translateXPCCacheDictionary:(id)a3
{
  v29 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = _EXRegistrationLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    [EXExtensionPointEnumerator translateXPCCacheDictionary:];
  }

  v5 = [v3 allKeys];
  v6 = [v5 firstObject];
  if ([v6 hasPrefix:@"/System/"])
  {
  }

  else
  {
    v15 = +[_EXDefaults sharedInstance];
    if (([v15 appleInternal] & 1) == 0)
    {

      goto LABEL_20;
    }

    v16 = [v5 firstObject];
    v17 = [v16 hasPrefix:@"/AppleInternal/System"];

    if (!v17)
    {
      v10 = MEMORY[0x1E695E0F8];
      goto LABEL_22;
    }
  }

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v6 = v5;
  v7 = [v6 countByEnumeratingWithState:&v22 objects:v28 count:16];
  if (v7)
  {
    v8 = v7;
    v21 = v5;
    v9 = *v23;
    v10 = MEMORY[0x1E695E0F8];
    while (2)
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v23 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v12 = *(*(&v22 + 1) + 8 * i);
        v13 = [v3 _EX_objectForKey:v12 ofClass:objc_opt_class()];
        v14 = [v13 _EX_dictionaryBySettingObject:v12 forKey:@"EXExtensionPointDefinitionPath"];

        if (v14)
        {

          v26 = @"EXNativeSDKVariant";
          v27 = v14;
          v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v27 forKeys:&v26 count:1];
          v6 = v14;
          goto LABEL_18;
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v22 objects:v28 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }

LABEL_18:
    v5 = v21;
    goto LABEL_21;
  }

LABEL_20:
  v10 = MEMORY[0x1E695E0F8];
LABEL_21:

LABEL_22:
  v18 = _EXRegistrationLog();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
  {
    [EXExtensionPointEnumerator translateXPCCacheDictionary:];
  }

  v19 = *MEMORY[0x1E69E9840];

  return v10;
}

- (id)synthesizeNSExtensionKeysInDictionary:(id)a3 identifier:(id)a4
{
  v27[3] = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v7 = [v5 _EX_objectForKey:@"NSExtension" ofClass:objc_opt_class()];
  if (v7)
  {

LABEL_4:
    v9 = v5;
    goto LABEL_5;
  }

  v8 = [v5 _EX_objectForKey:@"XPCService" ofClass:objc_opt_class()];

  if (v8)
  {
    goto LABEL_4;
  }

  v26[0] = @"NSExtensionPointIdentifier";
  v26[1] = @"NSExtensionPrincipalClassProhibited";
  v27[0] = v6;
  v27[1] = MEMORY[0x1E695E118];
  v26[2] = @"NSExtensionAttributes";
  v24[0] = @"NSExtensionPointName";
  v24[1] = @"NSExtensionPointVersion";
  v25[0] = v6;
  v25[1] = @"1.0";
  v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v25 forKeys:v24 count:2];
  v27[2] = v12;
  v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v27 forKeys:v26 count:3];

  v22[0] = @"NSExtension";
  v22[1] = @"EXRequiresLegacyInfrastructure";
  v23[0] = v13;
  v23[1] = MEMORY[0x1E695E110];
  v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v23 forKeys:v22 count:2];
  v9 = [v5 _EX_dictionaryBySettingValuesForKeysWithDictionary:v14];

  v15 = _EXRegistrationLog();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
  {
    v16 = 138543874;
    v17 = v6;
    v18 = 2114;
    v19 = v5;
    v20 = 2114;
    v21 = v9;
    _os_log_debug_impl(&dword_1847D1000, v15, OS_LOG_TYPE_DEBUG, "Extension point '%{public}@' - Synthesized NSExtension dictionary: %{public}@ -> %{public}@", &v16, 0x20u);
  }

LABEL_5:
  v10 = *MEMORY[0x1E69E9840];

  return v9;
}

- (id)flattenEXExtensionPointConfigurationInDictionary:(id)a3 identifier:(id)a4
{
  v18 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v7 = [v5 _EX_objectForKey:@"EXExtensionPointConfiguration" ofClass:objc_opt_class()];
  v8 = [v5 _EX_dictionaryBySettingValuesForKeysWithDictionary:v7];
  v9 = _EXRegistrationLog();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    v12 = 138543874;
    v13 = v6;
    v14 = 2114;
    v15 = v5;
    v16 = 2114;
    v17 = v8;
    _os_log_debug_impl(&dword_1847D1000, v9, OS_LOG_TYPE_DEBUG, "Extension point '%{public}@' - flattened EXExtensionPointConfiguration dictionary: %{public}@ -> %{public}@", &v12, 0x20u);
  }

  v10 = *MEMORY[0x1E69E9840];

  return v8;
}

- (BOOL)validateExtensionPointIdentifier:(id)a3 sdkDictionary:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (self->_validateExtensionPoints)
  {
    v8 = [(EXExtensionPointEnumerator *)self config];
    v9 = [v8 legacyExtensionPointAllowList];

    if (v9)
    {
      v10 = [v7 objectForKey:@"EXExtensionPointConfiguration"];
      if (v10)
      {

        goto LABEL_9;
      }

      v14 = [v7 objectForKey:@"NSExtension"];

      if (!v14)
      {
        goto LABEL_9;
      }

      v15 = [v9 _EX_BOOLForKey:v6];
      v16 = +[_EXDefaults sharedInstance];
      if ([v16 appleInternal])
      {
        v17 = [v7 _EX_stringForKey:@"EXExtensionPointDefinitionPath"];
        v18 = [v17 hasPrefix:@"/AppleInternal/"];
      }

      else
      {
        v18 = 0;
      }

      v19 = _EXRegistrationLog();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
      {
        [EXExtensionPointEnumerator validateExtensionPointIdentifier:sdkDictionary:];
      }

      if ((v15 | v18))
      {
        goto LABEL_9;
      }

      v20 = +[_EXDefaults sharedInstance];
      v21 = [v20 enforceLegacyExtensionPointAllowList];

      if (v21)
      {
        v22 = _EXRegistrationLog();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_FAULT))
        {
          [EXExtensionPointEnumerator validateExtensionPointIdentifier:sdkDictionary:];
        }

        v11 = 0;
        goto LABEL_10;
      }

      v23 = +[_EXDefaults sharedInstance];
      v24 = [v23 enforceLegacyExtensionPointAllowList];

      if (v24)
      {
LABEL_9:
        v11 = 1;
LABEL_10:

        goto LABEL_11;
      }

      v12 = _EXRegistrationLog();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
      {
        [EXExtensionPointEnumerator validateExtensionPointIdentifier:sdkDictionary:];
      }
    }

    else
    {
      v12 = _EXRegistrationLog();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        *v25 = 0;
        _os_log_impl(&dword_1847D1000, v12, OS_LOG_TYPE_DEFAULT, "NO list of legacy extension points found. All extension points are considered valid... for now.", v25, 2u);
      }
    }

    goto LABEL_9;
  }

  v11 = 1;
LABEL_11:

  return v11;
}

- (id)nextObject
{
  v2 = self;
  v89[2] = *MEMORY[0x1E69E9840];
  ++nextObject_count;
  v3 = 56;
  if ([(NSMutableDictionary *)self->_currentSDKDictionaryForPlatform count])
  {
    goto LABEL_60;
  }

  v4 = [(NSEnumerator *)v2->_extensionPointsKeyEnumerator nextObject];
  if (!v4)
  {
    goto LABEL_60;
  }

  v5 = v4;
  v6 = 0;
  v7 = 0x1E695D000uLL;
  v70 = 56;
  while (1)
  {
    v8 = [(NSDictionary *)v2->_extensionPoints _EX_dictionaryForKey:v5, v70];

    if (!v8)
    {
      goto LABEL_53;
    }

    if ([v8 count])
    {
      break;
    }

    if (![v8 count])
    {
      goto LABEL_53;
    }

LABEL_55:
    v6 = v8;
    if (!v5)
    {
      goto LABEL_59;
    }
  }

  v9 = objc_alloc_init(*(v7 + 3984));
  v72 = v8;
  v10 = [v8 _EX_dictionaryForKey:@"EXNativeSDKVariant"];
  if ([v10 _EX_BOOLForKey:@"EXPlaceholderExtensionPoint" defaultValue:0])
  {
    v11 = [(EXExtensionPointEnumerator *)v2 config];
    v12 = [v11 includePlaceholders];

    if ((v12 & 1) == 0)
    {
      v35 = [(NSEnumerator *)v2->_extensionPointsKeyEnumerator nextObject];

      v5 = v9;
      v8 = v72;
      goto LABEL_54;
    }
  }

  if (![(EXExtensionPointEnumerator *)v2 validateExtensionPointIdentifier:v5 sdkDictionary:v10])
  {

    v10 = 0;
  }

  v13 = [v10 objectForKey:@"EXSupportedPlatforms"];
  if (!v13)
  {
    v89[0] = @"EXSupportedPlatforms";
    v89[1] = @"EXSupportedPlatformsKey";
    v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v89 count:2];
    v13 = [v10 _EX_dictionaryForKeys:v14];
  }

  objc_opt_class();
  v71 = v13;
  if (objc_opt_isKindOfClass())
  {
    v15 = [*(v7 + 3984) dictionary];

    v81 = 0u;
    v82 = 0u;
    v79 = 0u;
    v80 = 0u;
    v16 = v13;
    v17 = [v16 countByEnumeratingWithState:&v79 objects:v88 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = v5;
      v20 = *v80;
      do
      {
        for (i = 0; i != v18; ++i)
        {
          if (*v80 != v20)
          {
            objc_enumerationMutation(v16);
          }

          v22 = [&unk_1EF29DF20 objectForKey:*(*(&v79 + 1) + 8 * i)];
          if (v22)
          {
            [v15 setObject:v10 forKey:v22];
          }
        }

        v18 = [v16 countByEnumeratingWithState:&v79 objects:v88 count:16];
      }

      while (v18);
      v9 = v15;
      v5 = v19;
    }

    else
    {
      v9 = v15;
    }

LABEL_50:
    v7 = 0x1E695D000;
    goto LABEL_51;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v23 = [*(v7 + 3984) dictionary];

    v77 = 0u;
    v78 = 0u;
    v75 = 0u;
    v76 = 0u;
    v16 = v13;
    v24 = [v16 countByEnumeratingWithState:&v75 objects:v87 count:16];
    if (v24)
    {
      v25 = v24;
      v73 = v5;
      v26 = v2;
      v27 = *v76;
      do
      {
        for (j = 0; j != v25; ++j)
        {
          v29 = v23;
          if (*v76 != v27)
          {
            objc_enumerationMutation(v16);
          }

          v30 = *(*(&v75 + 1) + 8 * j);
          v31 = [&unk_1EF29DF48 objectForKey:v30];
          v32 = [v16 objectForKey:v30];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v33 = [v16 objectForKey:v30];
            if (v33 && [(EXExtensionPointEnumerator *)v26 validateExtensionPointIdentifier:v73 sdkDictionary:v33])
            {
              [v29 setObject:v33 forKey:v31];
            }

            v23 = v29;
          }

          else
          {
            objc_opt_class();
            v23 = v29;
            if (objc_opt_isKindOfClass())
            {
              v34 = [v32 BOOLValue];
              if (v10)
              {
                if (v34)
                {
                  [v29 setObject:v10 forKey:v31];
                }
              }
            }
          }
        }

        v25 = [v16 countByEnumeratingWithState:&v75 objects:v87 count:16];
      }

      while (v25);
      v9 = v23;
      v2 = v26;
      v3 = v70;
      v5 = v73;
      goto LABEL_50;
    }

    v9 = v23;
  }

  else
  {
    if (v10)
    {
      v36 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:dyld_get_active_platform()];
      [v9 setObject:v10 forKey:v36];
    }

    v16 = [v72 _EX_dictionaryForKey:@"EXCatalystSDKVariant"];
    if (v16 && [(EXExtensionPointEnumerator *)v2 validateExtensionPointIdentifier:v5 sdkDictionary:v16])
    {
      [v9 setObject:v16 forKey:&unk_1EF29DEF0];
    }
  }

LABEL_51:

  if (![v9 count])
  {

    v8 = 0;
LABEL_53:
    v35 = [(NSEnumerator *)v2->_extensionPointsKeyEnumerator nextObject];
LABEL_54:

    v5 = v35;
    goto LABEL_55;
  }

  currentIdentifier = v2->_currentIdentifier;
  v2->_currentIdentifier = v5;
  v38 = v5;

  v39 = *(&v2->super.super.isa + v3);
  *(&v2->super.super.isa + v3) = v9;

  v8 = v72;
LABEL_59:

LABEL_60:
  dyld_get_active_platform();
  v40 = &OBJC_IVAR____EXExtensionPoint__variant;
  if (![*(&v2->super.super.isa + v3) count])
  {
    v43 = 0;
    goto LABEL_83;
  }

  v41 = [*(&v2->super.super.isa + v3) allKeys];
  v42 = [v41 firstObject];

  v43 = [*(&v2->super.super.isa + v3) objectForKey:v42];
  v44 = [v42 intValue];
  [*(&v2->super.super.isa + v3) removeObjectForKey:v42];

  if (!v43)
  {
    goto LABEL_83;
  }

  v45 = [v43 _EX_stringForKey:@"EXExtensionPointDefinitionPath"];
  v46 = v2;
  if (v45)
  {
    v47 = [MEMORY[0x1E695DFF8] fileURLWithPath:v45 isDirectory:0];
  }

  else
  {
    v47 = 0;
  }

  v74 = v44;
  v48 = [v43 _EX_dictionaryByRemovingObjectForKey:@"EXExtensionPointDefinitionPath"];

  v49 = [v48 _EX_objectForKey:@"XPCService" ofClass:objc_opt_class()];
  if (v49)
  {
    v50 = [v48 _EX_dictionaryForKey:@"EXExtensionPointConfiguration"];
    if (v50)
    {
      v51 = 0;
    }

    else
    {
      v52 = [v48 objectForKey:@"EXSupportsNSExtensionPlistKeys"];
      v51 = v52 == 0;
    }
  }

  else
  {
    v51 = 0;
  }

  v53 = [(EXExtensionPointEnumerator *)v2 synthesizeNSExtensionKeysInDictionary:v48 identifier:v2->_currentIdentifier];

  v54 = [(EXExtensionPointEnumerator *)v2 flattenEXExtensionPointConfigurationInDictionary:v53 identifier:v2->_currentIdentifier];

  v55 = sdkDictionaryAdditions();
  v56 = [v55 objectForKeyedSubscript:v2->_currentIdentifier];

  if (v56)
  {
    v57 = [v54 _EX_dictionaryBySettingValuesForKeysWithDictionary:v56];

    v54 = v57;
  }

  v58 = [v54 objectForKeyedSubscript:@"EXExtensionIconPersonality"];

  if (v58)
  {
    if (v51)
    {
      goto LABEL_76;
    }

LABEL_78:
    v83[0] = @"EXRequiresLegacyInfrastructure";
    v83[1] = @"EXExtensionPointConfiguration";
    v84[0] = MEMORY[0x1E695E110];
    v84[1] = MEMORY[0x1E695E0F8];
    v62 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v84 forKeys:v83 count:2];
    v43 = [v54 _EX_dictionaryBySettingValuesForKeysWithDictionary:v62];

    v59 = 1;
    v54 = v62;
  }

  else
  {
    v85 = @"EXExtensionIconPersonality";
    v86 = @"container";
    v60 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v86 forKeys:&v85 count:1];
    v61 = [v54 _EX_dictionaryBySettingValuesForKeysWithDictionary:v60];

    if (!v51)
    {
      goto LABEL_78;
    }

LABEL_76:
    v43 = [v54 _EX_dictionaryBySettingObject:MEMORY[0x1E695E118] forKey:@"EXRequiresLegacyInfrastructure"];
    v59 = 0;
  }

  [(_EXExtensionPoint *)v46->_currentExtensionPoint setVariant:v59];
  v63 = [v43 _EX_stringForKey:@"EXExtensionPointDomain"];
  v64 = v46;
  v65 = v63 ? v46->_currentIdentifier : 0;
  [(_EXExtensionPoint *)v46->_currentExtensionPoint setIdentifier:v46->_currentIdentifier];
  [(_EXExtensionPoint *)v46->_currentExtensionPoint setSDKDictionary:v43];
  [(_EXExtensionPoint *)v46->_currentExtensionPoint setUrl:v47];
  [(_EXExtensionPoint *)v46->_currentExtensionPoint setPlatform:v74];
  [(_EXExtensionPoint *)v46->_currentExtensionPoint setDomain:v63];
  [(_EXExtensionPoint *)v46->_currentExtensionPoint setName:v65];
  v66 = v46->_currentExtensionPoint;

  v2 = v64;
  v40 = &OBJC_IVAR____EXExtensionPoint__variant;
  if (!v66)
  {
LABEL_83:
    [*(&v2->super.super.isa + v40[15]) reset];
    v66 = 0;
  }

  v67 = _EXRegistrationLog();
  if (os_log_type_enabled(v67, OS_LOG_TYPE_DEBUG))
  {
    [(EXExtensionPointEnumerator *)v66 nextObject];
  }

  v68 = *MEMORY[0x1E69E9840];

  return v66;
}

- (void)translateXPCCacheDictionary:.cold.1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_3(&dword_1847D1000, v0, v1, "Translating SDK Dictionary: %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)translateXPCCacheDictionary:.cold.2()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_3(&dword_1847D1000, v0, v1, "Translated SDK Dictionary: %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)validateExtensionPointIdentifier:sdkDictionary:.cold.1()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1_1(&dword_1847D1000, v0, v1, "NSExtension Extension Point identifier: %{public}@ is legacy: %{public}s");
  v2 = *MEMORY[0x1E69E9840];
}

- (void)validateExtensionPointIdentifier:sdkDictionary:.cold.2()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_6();
  v1 = *MEMORY[0x1E69E9840];
}

- (void)validateExtensionPointIdentifier:sdkDictionary:.cold.3()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_6();
  v1 = *MEMORY[0x1E69E9840];
}

- (void)nextObject
{
  v6 = *MEMORY[0x1E69E9840];
  v3[0] = 67109378;
  v3[1] = nextObject_count;
  v4 = 2114;
  v5 = a1;
  _os_log_debug_impl(&dword_1847D1000, a2, OS_LOG_TYPE_DEBUG, "[%d] Enumerator returning: '%{public}@'", v3, 0x12u);
  v2 = *MEMORY[0x1E69E9840];
}

@end