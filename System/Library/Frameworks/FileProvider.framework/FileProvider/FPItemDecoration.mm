@interface FPItemDecoration
+ (id)_decorationCache;
+ (id)_fetchFromCacheWithIdentifier:(id)a3 bundleIdentifier:(id)a4;
+ (id)_loadDecorationsFromPlist:(id)a3 bundleIdentifier:(id)a4 bundle:(__CFBundle *)a5;
+ (id)infoForItem:(id)a3 parentInfo:(id)a4;
+ (void)_invalidateCache;
+ (void)_loadBuiltinDecorationTypes;
+ (void)fetchInfoForItem:(id)a3 completionHandler:(id)a4;
+ (void)initialize;
- (FPItemDecoration)initWithPlistEntry:(id)a3 bundle:(__CFBundle *)a4 bundleIdentifier:(id)a5;
- (id)labelWithInfo:(id)a3 error:(id *)a4 style:(unint64_t)a5;
- (id)labelWithItem:(id)a3 error:(id *)a4 style:(unint64_t)a5;
- (id)labelsWithInfo:(id)a3 error:(id *)a4;
- (id)labelsWithItem:(id)a3 error:(id *)a4;
- (void)folderStatusForItem:(id)a3 completionHandler:(id)a4;
@end

@implementation FPItemDecoration

+ (void)initialize
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __30__FPItemDecoration_initialize__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (initialize_once != -1)
  {
    dispatch_once(&initialize_once, block);
  }
}

void __30__FPItemDecoration_initialize__block_invoke(uint64_t a1)
{
  [*(a1 + 32) _loadBuiltinDecorationTypes];
  v2 = +[FPProviderDomainChangesReceiver sharedChangesReceiver];
  v1 = [v2 addChangesHandler:&__block_literal_global_31];
}

+ (void)_loadBuiltinDecorationTypes
{
  v3 = [MEMORY[0x1E696AAE8] bundleForClass:a1];
  v4 = [v3 bundleURL];
  v5 = CFBundleCreate(0, v4);

  v6 = [v3 objectForInfoDictionaryKey:@"NSFileProviderDecorations"];
  v7 = [v3 bundleIdentifier];
  v8 = [a1 _loadDecorationsFromPlist:v6 bundleIdentifier:v7 bundle:v5];

  if (v8)
  {
    v9 = [a1 _decorationCache];
    v10 = [v3 bundleIdentifier];
    [v9 setObject:v8 forKey:v10];
  }

  else
  {
    v9 = fp_current_or_default_log();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *v11 = 0;
      _os_log_impl(&dword_1AAAE1000, v9, OS_LOG_TYPE_DEFAULT, "[WARNING] Failed to load built-in decorations", v11, 2u);
    }
  }

  CFRelease(v5);
}

+ (id)_decorationCache
{
  if (_decorationCache_once != -1)
  {
    +[FPItemDecoration _decorationCache];
  }

  v3 = _decorationCache_cache;

  return v3;
}

uint64_t __36__FPItemDecoration__decorationCache__block_invoke()
{
  _decorationCache_cache = objc_opt_new();

  return MEMORY[0x1EEE66BB8]();
}

+ (void)_invalidateCache
{
  v12 = *MEMORY[0x1E69E9840];
  v2 = a1;
  objc_sync_enter(v2);
  v3 = [v2 _decorationCache];
  v4 = [v3 allKeys];
  v5 = [v4 mutableCopy];

  v6 = [MEMORY[0x1E696AAE8] bundleForClass:v2];
  v7 = [v6 bundleIdentifier];

  [v5 removeObject:v7];
  v8 = fp_current_or_default_log();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v10 = 138412290;
    v11 = v5;
    _os_log_impl(&dword_1AAAE1000, v8, OS_LOG_TYPE_INFO, "[INFO] Invalidating decoration cache for %@", &v10, 0xCu);
  }

  [v3 removeObjectsForKeys:v5];
  objc_sync_exit(v2);

  +[FPItemCollection refreshActiveCollectionsForDecorationChange];
  v9 = *MEMORY[0x1E69E9840];
}

+ (id)_loadDecorationsFromPlist:(id)a3 bundleIdentifier:(id)a4 bundle:(__CFBundle *)a5
{
  v29 = *MEMORY[0x1E69E9840];
  v7 = a4;
  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = __70__FPItemDecoration__loadDecorationsFromPlist_bundleIdentifier_bundle___block_invoke;
  v25[3] = &unk_1E793A830;
  v8 = v7;
  v26 = v8;
  v27 = a5;
  v9 = [a3 fp_map:v25];
  v10 = [MEMORY[0x1E695DF90] dictionary];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v11 = v9;
  v12 = [v11 countByEnumeratingWithState:&v21 objects:v28 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v22;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v22 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v21 + 1) + 8 * i);
        v17 = [v16 decorationIdentifier];
        [v10 setObject:v16 forKeyedSubscript:v17];
      }

      v13 = [v11 countByEnumeratingWithState:&v21 objects:v28 count:16];
    }

    while (v13);
  }

  v18 = [v10 copy];
  v19 = *MEMORY[0x1E69E9840];

  return v18;
}

FPItemDecoration *__70__FPItemDecoration__loadDecorationsFromPlist_bundleIdentifier_bundle___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [[FPItemDecoration alloc] initWithPlistEntry:v3 bundle:*(a1 + 40) bundleIdentifier:*(a1 + 32)];
  }

  else
  {
    v5 = fp_current_or_default_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __70__FPItemDecoration__loadDecorationsFromPlist_bundleIdentifier_bundle___block_invoke_cold_1(a1, v5);
    }

    v4 = 0;
  }

  return v4;
}

+ (id)_fetchFromCacheWithIdentifier:(id)a3 bundleIdentifier:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = a1;
  objc_sync_enter(v8);
  v9 = [v8 _decorationCache];
  v10 = [v9 objectForKey:v7];
  if (!v10)
  {
    v11 = [MEMORY[0x1E6963678] pluginKitProxyForIdentifier:v7];
    v12 = v11;
    if (v11)
    {
      v13 = [v11 bundleURL];
      Unique = _CFBundleCreateUnique();
    }

    else
    {
      Unique = 0;
    }

    ValueForInfoDictionaryKey = CFBundleGetValueForInfoDictionaryKey(Unique, @"NSExtension");
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v16 = [ValueForInfoDictionaryKey objectForKey:@"NSFileProviderDecorations"];
    }

    else
    {
      v16 = 0;
    }

    v10 = MEMORY[0x1E695E0F8];
    if (v12)
    {
      if (Unique)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v10 = [v8 _loadDecorationsFromPlist:v16 bundleIdentifier:v7 bundle:Unique];
        }
      }
    }

    [v9 setObject:v10 forKey:v7];
    if (Unique)
    {
      CFRelease(Unique);
    }
  }

  v17 = [v10 objectForKeyedSubscript:v6];

  objc_sync_exit(v8);

  return v17;
}

- (FPItemDecoration)initWithPlistEntry:(id)a3 bundle:(__CFBundle *)a4 bundleIdentifier:(id)a5
{
  v45[4] = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a5;
  v36.receiver = self;
  v36.super_class = FPItemDecoration;
  v10 = [(FPItemDecoration *)&v36 init];
  v11 = v10;
  if (!v10)
  {
    goto LABEL_14;
  }

  objc_storeStrong(&v10->_bundleIdentifier, a5);
  v12 = objc_opt_new();
  [v12 setCfBundle:a4];
  [v12 setTableNames:&unk_1F1FC9AE8];
  v13 = [v8 objectForKey:@"Identifier"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v15 = fp_current_or_default_log();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      [FPItemDecoration initWithPlistEntry:bundle:bundleIdentifier:];
    }

    goto LABEL_9;
  }

  decorationIdentifier = v11->_decorationIdentifier;
  v11->_decorationIdentifier = v13;

  v13 = [v8 objectForKey:@"BadgeImageType"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 && v13)
  {
    v15 = fp_current_or_default_log();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      [FPItemDecoration initWithPlistEntry:bundle:bundleIdentifier:];
    }

    goto LABEL_9;
  }

  imageType = v11->_imageType;
  v11->_imageType = v13;

  v13 = [v8 objectForKey:@"Category"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v15 = fp_current_or_default_log();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      [FPItemDecoration initWithPlistEntry:bundle:bundleIdentifier:];
    }

    goto LABEL_9;
  }

  type = v11->_type;
  v11->_type = v13;

  v45[0] = @"Badge";
  v45[1] = @"Sharing";
  v45[2] = @"FolderBadge";
  v45[3] = @"FolderStatus";
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v45 count:4];
  if (([(NSString *)v13 containsObject:v11->_type]& 1) != 0)
  {
    v15 = [v8 objectForKey:@"Label"];
    v19 = [FPStringFormat formatForPlistObject:v15 localizationLookup:v12];
    labelTitle = v11->_labelTitle;
    v11->_labelTitle = v19;

    if (v11->_labelTitle)
    {
      v21 = [(FPItemDecoration *)v11 parentDependingKeys];
      v22 = [(FPItemDecoration *)v11 styleDependingKeys];
      v23 = [(FPStringFormat *)v11->_labelTitle keyPaths];
      v34[0] = MEMORY[0x1E69E9820];
      v34[1] = 3221225472;
      v34[2] = __63__FPItemDecoration_initWithPlistEntry_bundle_bundleIdentifier___block_invoke;
      v34[3] = &unk_1E793A858;
      v35 = v21;
      v31 = v21;
      v24 = [v23 fp_filter:v34];
      v32[0] = MEMORY[0x1E69E9820];
      v32[1] = 3221225472;
      v32[2] = __63__FPItemDecoration_initWithPlistEntry_bundle_bundleIdentifier___block_invoke_2;
      v32[3] = &unk_1E793A858;
      v33 = v22;
      v25 = v22;
      v26 = [v23 fp_filter:v32];
      v11->_dependsOnParent = [v24 count] != 0;
      v11->_dependsOnStyle = v26 != 0;

LABEL_14:
      v16 = v11;
      goto LABEL_15;
    }

    v30 = fp_current_or_default_log();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      [FPItemDecoration initWithPlistEntry:bundle:bundleIdentifier:];
    }

    goto LABEL_22;
  }

  v15 = fp_current_or_default_log();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
  {
    v29 = v11->_type;
    v30 = [(NSString *)v13 componentsJoinedByString:@", "];
    *buf = 138413058;
    v38 = @"NSFileProviderDecorations";
    v39 = 2112;
    v40 = v9;
    v41 = 2112;
    v42 = v29;
    v43 = 2112;
    v44 = v30;
    _os_log_error_impl(&dword_1AAAE1000, v15, OS_LOG_TYPE_ERROR, "[ERROR] Malformed entry in %@ of bundle %@: type is %@. Valid types are (%@)", buf, 0x2Au);
LABEL_22:
  }

LABEL_9:

  v16 = 0;
LABEL_15:

  v27 = *MEMORY[0x1E69E9840];
  return v16;
}

uint64_t __63__FPItemDecoration_initWithPlistEntry_bundle_bundleIdentifier___block_invoke(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = *(a1 + 32);
  v5 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = *v11;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(v4);
        }

        if ([v3 hasPrefix:{*(*(&v10 + 1) + 8 * i), v10}])
        {
          v5 = 1;
          goto LABEL_11;
        }
      }

      v5 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v8 = *MEMORY[0x1E69E9840];
  return v5;
}

uint64_t __63__FPItemDecoration_initWithPlistEntry_bundle_bundleIdentifier___block_invoke_2(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = *(a1 + 32);
  v5 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = *v11;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(v4);
        }

        if ([v3 containsString:{*(*(&v10 + 1) + 8 * i), v10}])
        {
          v5 = 1;
          goto LABEL_11;
        }
      }

      v5 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v8 = *MEMORY[0x1E69E9840];
  return v5;
}

- (id)labelWithItem:(id)a3 error:(id *)a4 style:(unint64_t)a5
{
  v18[1] = *MEMORY[0x1E69E9840];
  v17 = @"item";
  v8 = [_FPItemDecorationValueResolver resolverForItem:a3 style:a5];
  v18[0] = v8;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v18 forKeys:&v17 count:1];

  if (self->_dependsOnParent)
  {
    v10 = [MEMORY[0x1E696AAA8] currentHandler];
    v11 = [(FPItemDecoration *)self decorationIdentifier];
    v12 = objc_opt_class();
    v13 = NSStringFromSelector(sel_labelWithInfo_error_);
    [v10 handleFailureInMethod:a2 object:self file:@"FPItemDecoration.m" lineNumber:273 description:{@"Label for decoration %@ depends on parent. %@ %@ should be called for folder status.", v11, v12, v13}];
  }

  v14 = [(FPStringFormat *)self->_labelTitle evaluateWithValuesByName:v9 error:a4];

  v15 = *MEMORY[0x1E69E9840];

  return v14;
}

- (id)labelWithInfo:(id)a3 error:(id *)a4 style:(unint64_t)a5
{
  v22[3] = *MEMORY[0x1E69E9840];
  v8 = a3;
  if ([v8 count])
  {
    v9 = [_FPItemDecorationFallbackLookup alloc];
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __46__FPItemDecoration_labelWithInfo_error_style___block_invoke;
    v20[3] = &__block_descriptor_40_e16__16__0__FPItem_8l;
    v20[4] = a5;
    v10 = [v8 fp_map:v20];
    v11 = [(_FPItemDecorationFallbackLookup *)v9 initWithItems:v10];

    v21[0] = @"item";
    v12 = [v8 firstObject];
    v13 = [_FPItemDecorationValueResolver resolverForItem:v12 style:a5];
    v22[0] = v13;
    v21[1] = @"rootItem";
    v14 = [v8 lastObject];
    v15 = [_FPItemDecorationValueResolver resolverForItem:v14 style:a5];
    v21[2] = @"parentItem";
    v22[1] = v15;
    v22[2] = v11;
    v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v22 forKeys:v21 count:3];

    v17 = [(FPStringFormat *)self->_labelTitle evaluateWithValuesByName:v16 error:a4];
  }

  else
  {
    v17 = 0;
  }

  v18 = *MEMORY[0x1E69E9840];

  return v17;
}

- (id)labelsWithInfo:(id)a3 error:(id *)a4
{
  v23 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [MEMORY[0x1E695DF70] array];
  dependsOnStyle = self->_dependsOnStyle;
  v18 = 0u;
  v19 = 0u;
  if (dependsOnStyle)
  {
    v9 = &unk_1F1FC9B48;
  }

  else
  {
    v9 = &unk_1F1FC9B30;
  }

  v20 = 0uLL;
  v21 = 0uLL;
  v10 = [v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v19;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v19 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = -[FPItemDecoration labelWithInfo:error:style:](self, "labelWithInfo:error:style:", v6, a4, [*(*(&v18 + 1) + 8 * i) unsignedIntegerValue]);
        if (v14)
        {
          [v7 addObject:v14];
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v11);
  }

  if ([v7 count])
  {
    v15 = v7;
  }

  else
  {
    v15 = 0;
  }

  v16 = *MEMORY[0x1E69E9840];

  return v15;
}

- (id)labelsWithItem:(id)a3 error:(id *)a4
{
  v28 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [MEMORY[0x1E695DF70] array];
  dependsOnStyle = self->_dependsOnStyle;
  v23 = 0u;
  v24 = 0u;
  if (dependsOnStyle)
  {
    v9 = &unk_1F1FC9B78;
  }

  else
  {
    v9 = &unk_1F1FC9B60;
  }

  v25 = 0uLL;
  v26 = 0uLL;
  v10 = [v9 countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v24;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v24 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v23 + 1) + 8 * i);
        v22 = 0;
        v15 = -[FPItemDecoration labelWithItem:error:style:](self, "labelWithItem:error:style:", v6, &v22, [v14 unsignedIntegerValue]);
        v16 = v22;
        v17 = v16;
        if (v15)
        {
          [v7 addObject:v15];
        }

        else if (a4 && v16)
        {
          v18 = v16;
          *a4 = v17;
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v11);
  }

  if ([v7 count])
  {
    v19 = v7;
  }

  else
  {
    v19 = 0;
  }

  v20 = *MEMORY[0x1E69E9840];

  return v19;
}

- (void)folderStatusForItem:(id)a3 completionHandler:(id)a4
{
  v6 = a4;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __58__FPItemDecoration_folderStatusForItem_completionHandler___block_invoke;
  v8[3] = &unk_1E793A8A0;
  v8[4] = self;
  v9 = v6;
  v7 = v6;
  [FPItemDecoration fetchInfoForItem:a3 completionHandler:v8];
}

void __58__FPItemDecoration_folderStatusForItem_completionHandler___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v4 = *(a1 + 40);
    v5 = *(*(a1 + 40) + 16);

    v5();
  }

  else
  {
    v6 = *(a1 + 32);
    v9 = 0;
    v7 = [v6 labelWithInfo:a2 error:&v9];
    v8 = v9;
    (*(*(a1 + 40) + 16))();
  }
}

+ (void)fetchInfoForItem:(id)a3 completionHandler:(id)a4
{
  v5 = a4;
  v6 = a3;
  v8 = +[FPItemManager defaultManager];
  v7 = [v6 itemID];

  [v8 _fetchHierarchyForItemID:v7 recursively:1 completionHandler:v5];
}

+ (id)infoForItem:(id)a3 parentInfo:(id)a4
{
  v13[1] = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [FPItemDecoration infoForItem:a2 parentInfo:a1];
  }

  v13[0] = v7;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:1];
  v10 = [v9 arrayByAddingObjectsFromArray:v8];

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

void __70__FPItemDecoration__loadDecorationsFromPlist_bundleIdentifier_bundle___block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v4 = 138412546;
  v5 = @"NSFileProviderDecorations";
  v6 = 2112;
  v7 = v2;
  _os_log_error_impl(&dword_1AAAE1000, a2, OS_LOG_TYPE_ERROR, "[ERROR] Malformed entry in %@ entry of bundle %@", &v4, 0x16u);
  v3 = *MEMORY[0x1E69E9840];
}

- (void)initWithPlistEntry:bundle:bundleIdentifier:.cold.1()
{
  OUTLINED_FUNCTION_3();
  v10 = *MEMORY[0x1E69E9840];
  v0 = objc_opt_class();
  objc_opt_class();
  OUTLINED_FUNCTION_1_5();
  v2 = OUTLINED_FUNCTION_0_5(v1);
  OUTLINED_FUNCTION_2_3(&dword_1AAAE1000, v3, v4, "[ERROR] Malformed entry in %@ of bundle %@: object for key %@ should have class %@, but has %@", v5, v6, v7, v8, 2u);

  v9 = *MEMORY[0x1E69E9840];
}

- (void)initWithPlistEntry:bundle:bundleIdentifier:.cold.2()
{
  OUTLINED_FUNCTION_3();
  v10 = *MEMORY[0x1E69E9840];
  v0 = objc_opt_class();
  objc_opt_class();
  OUTLINED_FUNCTION_1_5();
  v2 = OUTLINED_FUNCTION_0_5(v1);
  OUTLINED_FUNCTION_2_3(&dword_1AAAE1000, v3, v4, "[ERROR] Malformed entry in %@ of bundle %@: object for key %@ should have class %@, but has %@", v5, v6, v7, v8, 2u);

  v9 = *MEMORY[0x1E69E9840];
}

- (void)initWithPlistEntry:bundle:bundleIdentifier:.cold.3()
{
  OUTLINED_FUNCTION_3();
  v10 = *MEMORY[0x1E69E9840];
  v0 = objc_opt_class();
  objc_opt_class();
  OUTLINED_FUNCTION_1_5();
  v2 = OUTLINED_FUNCTION_0_5(v1);
  OUTLINED_FUNCTION_2_3(&dword_1AAAE1000, v3, v4, "[ERROR] Malformed entry in %@ of bundle %@: object for key %@ should have class %@, but has %@", v5, v6, v7, v8, 2u);

  v9 = *MEMORY[0x1E69E9840];
}

- (void)initWithPlistEntry:bundle:bundleIdentifier:.cold.4()
{
  v5 = *MEMORY[0x1E69E9840];
  v3[0] = 138412546;
  OUTLINED_FUNCTION_1_5();
  v4 = v0;
  _os_log_error_impl(&dword_1AAAE1000, v1, OS_LOG_TYPE_ERROR, "[ERROR] Malformed entry in %@ of bundle %@", v3, 0x16u);
  v2 = *MEMORY[0x1E69E9840];
}

+ (void)infoForItem:(uint64_t)a1 parentInfo:(uint64_t)a2 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"FPItemDecoration.m" lineNumber:365 description:@"parentInfo has wrong type"];
}

@end