@interface INAppResolver
+ (id)sharedResolver;
+ (void)initialize;
- (BOOL)cacheHasResultForDescriptor:(id)a3;
- (INAppResolver)init;
- (INExecutionCounterpartMapper)_counterpartMapper;
- (INExecutionFrameworkMapper)_frameworkMapper;
- (INSystemAppMapper)_systemAppMapper;
- (id)_optionsForIntentClassName:(id)a3;
- (id)_resolvedAppIntentMatchingDescriptor:(id)a3 availableActions:(id)a4 availableEntities:(id)a5;
- (id)_resolvedAppMatchingDescriptor:(id)a3;
- (id)_resolvedIntentMatchingDescriptor:(id)a3;
- (id)_resolvedUserActivityMatchingDescriptor:(id)a3;
- (id)cachedResultForKey:(id)a3;
- (id)counterpartIdentifiersForLocalIdentifier:(id)a3;
- (id)localIdentifiersForCounterpartIdentifier:(id)a3;
- (id)optionsForCurrentContextWithIntentClassName:(id)a3;
- (id)resolveDescriptorByLinkingFileProvidersToFilesApp:(id)a3;
- (id)resolveDescriptorBySwappingIdentifiersWithExtensionIfApplicable:(id)a3;
- (id)resolvedAppIntentMatchingDescriptor:(id)a3 availableActions:(id)a4 availableEntities:(id)a5;
- (id)resolvedAppMatchingDescriptor:(id)a3;
- (id)resolvedIntentMatchingDescriptor:(id)a3;
- (id)resolvedUserActivityMatchingDescriptor:(id)a3;
- (void)cacheResult:(id)a3 forDescriptor:(id)a4;
- (void)dealloc;
- (void)installedApplicationsDidChange:(id)a3;
- (void)invalidateCache;
- (void)setOptions:(id)a3 forIntentClassName:(id)a4;
@end

@implementation INAppResolver

+ (id)sharedResolver
{
  if (sharedResolver_onceToken != -1)
  {
    dispatch_once(&sharedResolver_onceToken, &__block_literal_global_23234);
  }

  v3 = sharedResolver_sharedResolver;

  return v3;
}

- (INSystemAppMapper)_systemAppMapper
{
  systemAppMapper = self->_systemAppMapper;
  if (!systemAppMapper)
  {
    v4 = objc_alloc_init(INSystemAppMapper);
    v5 = self->_systemAppMapper;
    self->_systemAppMapper = v4;

    systemAppMapper = self->_systemAppMapper;
  }

  return systemAppMapper;
}

- (INExecutionFrameworkMapper)_frameworkMapper
{
  frameworkMapper = self->_frameworkMapper;
  if (!frameworkMapper)
  {
    v4 = objc_alloc_init(INExecutionFrameworkMapper);
    v5 = self->_frameworkMapper;
    self->_frameworkMapper = v4;

    frameworkMapper = self->_frameworkMapper;
  }

  return frameworkMapper;
}

- (INExecutionCounterpartMapper)_counterpartMapper
{
  counterpartMapper = self->_counterpartMapper;
  if (!counterpartMapper)
  {
    v4 = objc_alloc_init(INExecutionCounterpartMapper);
    v5 = self->_counterpartMapper;
    self->_counterpartMapper = v4;

    counterpartMapper = self->_counterpartMapper;
  }

  return counterpartMapper;
}

- (void)dealloc
{
  v3 = [MEMORY[0x1E696ABB0] defaultCenter];
  [v3 removeObserver:self name:@"com.apple.LaunchServices.applicationRegistered" object:0];
  [v3 removeObserver:self name:@"com.apple.LaunchServices.applicationUnregistered" object:0];

  v4.receiver = self;
  v4.super_class = INAppResolver;
  [(INAppResolver *)&v4 dealloc];
}

- (INAppResolver)init
{
  v12.receiver = self;
  v12.super_class = INAppResolver;
  v2 = [(INAppResolver *)&v12 init];
  if (v2)
  {
    v3 = objc_alloc_init(INLinkActionProvider);
    linkActionProvider = v2->_linkActionProvider;
    v2->_linkActionProvider = v3;

    v5 = objc_alloc_init(MEMORY[0x1E695DF90]);
    cachedResults = v2->_cachedResults;
    v2->_cachedResults = v5;

    v2->_cacheLock._os_unfair_lock_opaque = 0;
    v7 = objc_alloc_init(MEMORY[0x1E695DF90]);
    intentClassNameToResolverOptions = v2->_intentClassNameToResolverOptions;
    v2->_intentClassNameToResolverOptions = v7;

    v2->_resolverOptionsLock._os_unfair_lock_opaque = 0;
    v9 = [MEMORY[0x1E696ABB0] defaultCenter];
    [v9 addObserver:v2 selector:sel_installedApplicationsDidChange_ name:@"com.apple.LaunchServices.applicationRegistered" object:0];
    [v9 addObserver:v2 selector:sel_installedApplicationsDidChange_ name:@"com.apple.LaunchServices.applicationUnregistered" object:0];
    v10 = v2;
  }

  return v2;
}

- (id)_optionsForIntentClassName:(id)a3
{
  if (a3)
  {
    v4 = a3;
    os_unfair_lock_lock(&self->_resolverOptionsLock);
    v5 = [(INAppResolver *)self intentClassNameToResolverOptions];
    v6 = [v5 objectForKey:v4];

    os_unfair_lock_unlock(&self->_resolverOptionsLock);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)setOptions:(id)a3 forIntentClassName:(id)a4
{
  v9 = a3;
  v6 = a4;
  if (v6)
  {
    os_unfair_lock_lock(&self->_resolverOptionsLock);
    v7 = [(INAppResolver *)self intentClassNameToResolverOptions];
    v8 = v7;
    if (v9)
    {
      [v7 setObject:v9 forKey:v6];
    }

    else
    {
      [v7 removeObjectForKey:v6];
    }

    os_unfair_lock_unlock(&self->_resolverOptionsLock);
  }
}

- (id)optionsForCurrentContextWithIntentClassName:(id)a3
{
  v4 = [(INAppResolver *)self _optionsForIntentClassName:a3];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = [(INAppResolver *)self globalOptions];
  }

  v7 = v6;

  return v7;
}

- (void)installedApplicationsDidChange:(id)a3
{
  v4 = [a3 userInfo];
  v5 = [v4 objectForKey:@"isPlaceholder"];

  if (v5)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = v5;
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  v8 = [v7 BOOLValue];
  if ((v8 & 1) == 0)
  {
    [(INAppResolver *)self invalidateCache];
    v9 = [(INAppResolver *)self linkActionProvider];
    [v9 evictCache];
  }
}

- (void)invalidateCache
{
  os_unfair_lock_lock(&self->_cacheLock);
  v3 = [(INAppResolver *)self cachedResults];
  [v3 removeAllObjects];

  os_unfair_lock_unlock(&self->_cacheLock);
}

- (id)cachedResultForKey:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_cacheLock);
  v5 = [(INAppResolver *)self cachedResults];
  v6 = [v5 objectForKey:v4];

  os_unfair_lock_unlock(&self->_cacheLock);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = 0;
  }

  else
  {
    v7 = v6;
  }

  return v7;
}

- (void)cacheResult:(id)a3 forDescriptor:(id)a4
{
  v10 = a3;
  v6 = a4;
  os_unfair_lock_lock(&self->_cacheLock);
  v7 = [(INAppResolver *)self cachedResults];
  v8 = v7;
  if (v10)
  {
    [v7 setObject:v10 forKey:v6];
  }

  else
  {
    v9 = [MEMORY[0x1E695DFB0] null];
    [v8 setObject:v9 forKey:v6];
  }

  os_unfair_lock_unlock(&self->_cacheLock);
}

- (BOOL)cacheHasResultForDescriptor:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_cacheLock);
  v5 = [(INAppResolver *)self cachedResults];
  v6 = [v5 objectForKey:v4];

  if (v6)
  {
    if ([v6 isMemberOfClass:objc_opt_class()])
    {
      isKindOfClass = 1;
    }

    else
    {
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();
    }
  }

  else
  {
    isKindOfClass = 0;
  }

  os_unfair_lock_unlock(&self->_cacheLock);

  return isKindOfClass & 1;
}

- (id)_resolvedAppIntentMatchingDescriptor:(id)a3 availableActions:(id)a4 availableEntities:(id)a5
{
  v152 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (v9)
  {
    v11 = [(INAppResolver *)self linkActionProvider];
    [v11 cacheActions:v9];
  }

  if (v10)
  {
    v12 = [(INAppResolver *)self linkActionProvider];
    [v12 cacheEntities:v10];
  }

  v124 = v10;
  context = objc_autoreleasePoolPush();
  v132 = self;
  v13 = [(INAppResolver *)self resolveDescriptorBySwappingIdentifiersWithExtensionIfApplicable:v8];
  v121 = v13;
  if (v13)
  {
    v14 = v13;
    obja = [INAppIntentDescriptor alloc];
    v130 = [v8 intentIdentifier];
    v126 = [v14 localizedName];
    [v14 bundleIdentifier];
    v15 = v118 = v9;
    v16 = [v14 extensionBundleIdentifier];
    v17 = [v14 counterpartIdentifiers];
    v18 = [v14 teamIdentifier];
    v19 = [v14 supportedIntents];
    v20 = [v8 supportedEntities];
    v21 = [v14 bundleURL];
    v22 = [v14 documentTypes];
    v23 = [(INAppIntentDescriptor *)obja initWithIntentIdentifier:v130 localizedName:v126 bundleIdentifier:v15 extensionBundleIdentifier:v16 counterpartIdentifiers:v17 teamIdentifier:v18 supportedIntents:v19 supportedEntities:v20 bundleURL:v21 documentTypes:v22];

    v9 = v118;
    v8 = v23;
  }

  v24 = [v8 bundleIdentifier];
  v123 = v24;
  if (v24)
  {
    v25 = v24;
    if ([v24 length])
    {
      v26 = [(INAppResolver *)v132 _systemAppMapper];
      v27 = [v8 intentIdentifier];
      v28 = [v26 matchForBundleIdentifier:v25 intentName:v27];

      v117 = v28;
      if (v28)
      {
        v29 = v124;
        if ([v28 appIsUnavailableOnCurrentPlatform])
        {
          v30 = v8;
        }

        else
        {
          v119 = v9;
          v43 = [v28 bundleIdentifierForCurrentPlatform];
          v44 = v43;
          if (v43 && [v43 length])
          {
            v45 = [objc_alloc(MEMORY[0x1E69635F8]) initWithBundleIdentifier:v44 allowPlaceholder:0 error:0];
            v46 = [(INAppResolver *)v132 linkActionProvider];
            v47 = [v46 supportedActionIdentifiersForBundleIdentifier:v44];

            v48 = [(INAppResolver *)v132 linkActionProvider];
            v49 = [v48 supportedEntityIdentifiersForBundleIdentifier:v44];

            v50 = [INAppIntentDescriptor alloc];
            v51 = [v8 intentIdentifier];
            v52 = [MEMORY[0x1E695DFD8] setWithArray:v47];
            v53 = [MEMORY[0x1E695DFD8] setWithArray:v49];
            v54 = v50;
            v29 = v124;
            v55 = [(INAppIntentDescriptor *)v54 initWithIntentIdentifier:v51 applicationRecord:v45 supportedAppIntents:v52 supportedEntities:v53];

            v30 = v55;
          }

          else
          {
            v56 = INSiriLogContextIntents;
            if (os_log_type_enabled(INSiriLogContextIntents, OS_LOG_TYPE_FAULT))
            {
              v111 = v56;
              v112 = [v8 intentIdentifier];
              *buf = 136315394;
              v149 = "[INAppResolver _resolvedAppIntentMatchingDescriptor:availableActions:availableEntities:]";
              v150 = 2112;
              v151 = v112;
              _os_log_fault_impl(&dword_18E991000, v111, OS_LOG_TYPE_FAULT, "%s Platform bundle identifier unexpectedly nil: %@", buf, 0x16u);

              v29 = v124;
            }

            v30 = v8;
          }

          v9 = v119;
        }

        goto LABEL_83;
      }

      v34 = [(INAppResolver *)v132 linkActionProvider];
      v35 = [v34 supportedActionIdentifiersForBundleIdentifier:v25];

      v116 = [objc_alloc(MEMORY[0x1E69635F8]) initWithBundleIdentifier:v25 allowPlaceholder:0 error:0];
      if (v116)
      {
        v36 = [v116 applicationState];
        if ([v36 isInstalled])
        {
          v37 = [v35 count];

          if (!v37)
          {
            goto LABEL_31;
          }

          v38 = [(INAppResolver *)v132 linkActionProvider];
          v36 = [v38 supportedEntityIdentifiersForBundleIdentifier:v123];

          if (INActionsAndApplicationRecordMatchesRequirementsFromDescriptor(v35, v36, v116, v8))
          {
            v39 = [INAppIntentDescriptor alloc];
            v40 = [v8 intentIdentifier];
            v41 = [MEMORY[0x1E695DFD8] setWithArray:v35];
            v42 = [MEMORY[0x1E695DFD8] setWithArray:v36];
            v131 = [(INAppIntentDescriptor *)v39 initWithIntentIdentifier:v40 applicationRecord:v116 supportedAppIntents:v41 supportedEntities:v42];

            v29 = v124;
LABEL_82:

            v30 = v131;
LABEL_83:

            goto LABEL_84;
          }
        }
      }

LABEL_31:
      v57 = [v8 counterpartIdentifiers];
      v58 = v57;
      v127 = v8;
      v120 = v9;
      if (v57)
      {
        v59 = v57;
      }

      else
      {
        v60 = [v8 bundleIdentifier];
        v59 = [(INAppResolver *)v132 localIdentifiersForCounterpartIdentifier:v60];
      }

      v144 = 0u;
      v145 = 0u;
      v142 = 0u;
      v143 = 0u;
      v61 = v59;
      v62 = [v61 countByEnumeratingWithState:&v142 objects:v147 count:16];
      v115 = v35;
      v125 = v61;
      if (v62)
      {
        v63 = v62;
        v64 = *v143;
LABEL_36:
        v65 = 0;
        while (1)
        {
          if (*v143 != v64)
          {
            objc_enumerationMutation(v61);
          }

          v66 = *(*(&v142 + 1) + 8 * v65);
          v67 = [objc_alloc(MEMORY[0x1E69635F8]) initWithBundleIdentifier:v66 allowPlaceholder:0 error:0];
          v68 = v67;
          if (v67)
          {
            v69 = [v67 applicationState];
            v70 = [v69 isInstalled];

            if (v70)
            {
              v71 = [(INAppResolver *)v132 linkActionProvider];
              v72 = [v71 supportedActionIdentifiersForBundleIdentifier:v66];

              if ([v72 count])
              {
                v73 = [(INAppResolver *)v132 linkActionProvider];
                v74 = [v73 supportedEntityIdentifiersForBundleIdentifier:v66];

                if (INActionsAndApplicationRecordMatchesRequirementsFromDescriptor(v72, v74, v68, v127))
                {
                  v81 = [INAppIntentDescriptor alloc];
                  v8 = v127;
                  v82 = [v127 intentIdentifier];
                  v83 = [MEMORY[0x1E695DFD8] setWithArray:v72];
                  v84 = [MEMORY[0x1E695DFD8] setWithArray:v74];
                  v131 = [(INAppIntentDescriptor *)v81 initWithIntentIdentifier:v82 applicationRecord:v68 supportedAppIntents:v83 supportedEntities:v84];

                  v29 = v124;
                  v85 = v125;
                  v86 = v125;
                  v9 = v120;
                  v35 = v115;
                  goto LABEL_81;
                }

                v61 = v125;
              }
            }
          }

          if (v63 == ++v65)
          {
            v63 = [v61 countByEnumeratingWithState:&v142 objects:v147 count:16];
            if (!v63)
            {
              break;
            }

            goto LABEL_36;
          }
        }
      }

      v75 = [(INAppResolver *)v132 linkActionProvider];
      v76 = [v75 bundleIdentifiers];

      v77 = MEMORY[0x1E695DFD8];
      v140[0] = MEMORY[0x1E69E9820];
      v140[1] = 3221225472;
      v140[2] = __89__INAppResolver__resolvedAppIntentMatchingDescriptor_availableActions_availableEntities___block_invoke;
      v140[3] = &unk_1E727F6A8;
      v140[4] = v132;
      v8 = v127;
      v78 = v127;
      v141 = v78;
      v114 = v76;
      v79 = [v76 if_compactMap:v140];
      v80 = [v77 setWithArray:v79];

      v113 = v80;
      if ([v80 count])
      {
        v35 = v115;
        if ([v80 count] == 1)
        {
          v131 = [v80 anyObject];
          v9 = v120;
          v29 = v124;
          goto LABEL_77;
        }

        v104 = [v80 allObjects];
        v138[0] = MEMORY[0x1E69E9820];
        v138[1] = 3221225472;
        v138[2] = __89__INAppResolver__resolvedAppIntentMatchingDescriptor_availableActions_availableEntities___block_invoke_2;
        v138[3] = &unk_1E727F6D0;
        v139 = v123;
        v105 = [v104 if_firstObjectPassingTest:v138];

        v9 = v120;
        if (v105)
        {
          v106 = v105;
        }

        else
        {
          v106 = [v80 anyObject];
        }

        v131 = v106;
        v29 = v124;
        v85 = v125;
        v86 = v114;

LABEL_80:
LABEL_81:

        goto LABEL_82;
      }

      v136 = 0u;
      v137 = 0u;
      v134 = 0u;
      v135 = 0u;
      v87 = v80;
      v88 = [v87 countByEnumeratingWithState:&v134 objects:v146 count:16];
      if (!v88)
      {

        goto LABEL_75;
      }

      v89 = v88;
      v131 = 0;
      v133 = *v135;
      v90 = 0x7FFFFFFFFFFFFFFFLL;
      obj = v87;
LABEL_53:
      v91 = 0;
      while (1)
      {
        if (*v135 != v133)
        {
          objc_enumerationMutation(obj);
        }

        v92 = *(*(&v134 + 1) + 8 * v91);
        v93 = [v78 localizedName];

        if (v93)
        {
          break;
        }

        v98 = [v78 bundleIdentifier];

        if (!v98)
        {
          goto LABEL_68;
        }

        v99 = [v78 bundleIdentifier];
        v100 = [v92 bundleIdentifier];
        v94 = [v99 commonPrefixWithString:v100 options:0];

        if ([v94 length])
        {
          v101 = [v78 bundleIdentifier];
          v95 = [v101 substringFromIndex:{objc_msgSend(v94, "length")}];

          v102 = [v92 bundleIdentifier];
          v103 = [v102 substringFromIndex:{objc_msgSend(v94, "length")}];

          v96 = INEditDistanceBetweenStrings(v95, v103);
          v8 = v127;
          goto LABEL_58;
        }

LABEL_64:

LABEL_68:
        if (v89 == ++v91)
        {
          v89 = [obj countByEnumeratingWithState:&v134 objects:v146 count:16];
          if (!v89)
          {

            if (v131)
            {
              [(INAppDescriptor *)v131 setRequiresUserConfirmation:v90 > 0];
              goto LABEL_76;
            }

LABEL_75:
            v131 = v78;
LABEL_76:
            v9 = v120;
            v29 = v124;
            v35 = v115;
LABEL_77:
            v85 = v125;
            v86 = v114;
            goto LABEL_80;
          }

          goto LABEL_53;
        }
      }

      v94 = [v78 localizedName];
      v95 = [v92 localizedName];
      v96 = INEditDistanceBetweenStrings(v94, v95);
LABEL_58:

      if (v96 >= v90 || v96 > 5)
      {
        goto LABEL_68;
      }

      v94 = v131;
      v131 = v92;
      v90 = v96;
      goto LABEL_64;
    }
  }

  v31 = [v8 intentIdentifier];
  v32 = [v31 isEqualToString:@"MTUpdateAlarmIntent"];

  v33 = INSiriLogContextIntents;
  if (v32)
  {
    if (os_log_type_enabled(INSiriLogContextIntents, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v149 = "[INAppResolver _resolvedAppIntentMatchingDescriptor:availableActions:availableEntities:]";
      _os_log_impl(&dword_18E991000, v33, OS_LOG_TYPE_INFO, "%s MTUpdateAlarmIntent is only on watchOS.", buf, 0xCu);
    }
  }

  else if (os_log_type_enabled(INSiriLogContextIntents, OS_LOG_TYPE_ERROR))
  {
    v107 = v33;
    v108 = [v8 intentIdentifier];
    *buf = 136315394;
    v149 = "[INAppResolver _resolvedAppIntentMatchingDescriptor:availableActions:availableEntities:]";
    v150 = 2112;
    v151 = v108;
    _os_log_error_impl(&dword_18E991000, v107, OS_LOG_TYPE_ERROR, "%s Resolved bundleIdentifier unexpectedly nil for %@", buf, 0x16u);
  }

  v30 = v8;
  v29 = v124;
LABEL_84:

  objc_autoreleasePoolPop(context);
  v109 = *MEMORY[0x1E69E9840];

  return v30;
}

INAppIntentDescriptor *__89__INAppResolver__resolvedAppIntentMatchingDescriptor_availableActions_availableEntities___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) linkActionProvider];
  v5 = [v4 supportedActionIdentifiersForBundleIdentifier:v3];

  if (v5)
  {
    v6 = [*(a1 + 32) linkActionProvider];
    v7 = [v6 supportedEntityIdentifiersForBundleIdentifier:v3];

    v8 = [objc_alloc(MEMORY[0x1E69635F8]) initWithBundleIdentifier:v3 allowPlaceholder:0 error:0];
    if (v8 && INActionsAndApplicationRecordMatchesRequirementsFromDescriptor(v5, v7, v8, *(a1 + 40)))
    {
      v9 = [INAppIntentDescriptor alloc];
      v10 = [*(a1 + 40) intentIdentifier];
      v11 = [MEMORY[0x1E695DFD8] setWithArray:v5];
      v12 = [MEMORY[0x1E695DFD8] setWithArray:v7];
      v13 = [(INAppIntentDescriptor *)v9 initWithIntentIdentifier:v10 applicationRecord:v8 supportedAppIntents:v11 supportedEntities:v12];
    }

    else
    {
      v13 = 0;
    }
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

uint64_t __89__INAppResolver__resolvedAppIntentMatchingDescriptor_availableActions_availableEntities___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 bundleIdentifier];
  if ([v4 isEqualToString:*(a1 + 32)])
  {
    v5 = 1;
  }

  else
  {
    v6 = [v3 counterpartIdentifiers];
    v5 = [v6 containsObject:*(a1 + 32)];
  }

  return v5;
}

- (id)resolvedAppIntentMatchingDescriptor:(id)a3 availableActions:(id)a4 availableEntities:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (INDescriptorContainsBundleIdentifiers(v8))
  {
    v11 = v8;
    if ([(INAppResolver *)self cacheHasResultForDescriptor:v11])
    {
      v12 = [(INAppResolver *)self cachedResultForKey:v11];
    }

    else
    {
      v12 = [(INAppResolver *)self _resolvedAppIntentMatchingDescriptor:v11 availableActions:v9 availableEntities:v10];
      [(INAppResolver *)self cacheResult:v12 forDescriptor:v11];
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (id)counterpartIdentifiersForLocalIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(INAppResolver *)self _counterpartMapper];
  v6 = [v5 counterpartIdentifiersForLocalIdentifier:v4];

  return v6;
}

- (id)localIdentifiersForCounterpartIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(INAppResolver *)self _counterpartMapper];
  v6 = [v5 localIdentifiersForCounterpartIdentifier:v4];

  return v6;
}

- (id)resolveDescriptorByLinkingFileProvidersToFilesApp:(id)a3
{
  v3 = a3;
  v4 = [v3 extensionBundleIdentifier];

  if (v4)
  {
    v5 = objc_alloc(MEMORY[0x1E69635D0]);
    v6 = [v3 extensionBundleIdentifier];
    v7 = [v5 initWithBundleIdentifier:v6 error:0];

    v8 = [v7 extensionPointRecord];
    v9 = [v8 name];
    v10 = [v9 isEqualToString:@"com.apple.fileprovider-nonui"];

    v11 = 0;
    if (v10)
    {
      v12 = [INUserActivityDescriptor alloc];
      v13 = [v3 userActivityType];
      v14 = [v3 localizedName];
      v15 = [v3 extensionBundleIdentifier];
      v16 = [v3 counterpartIdentifiers];
      v17 = [v3 teamIdentifier];
      v18 = [v3 supportedIntents];
      v19 = [v3 bundleURL];
      v11 = [(INUserActivityDescriptor *)v12 initWithUserActivityType:v13 localizedName:v14 bundleIdentifier:@"com.apple.DocumentsApp" extensionBundleIdentifier:v15 counterpartIdentifiers:v16 teamIdentifier:v17 supportedIntents:v18 bundleURL:v19];
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (id)resolveDescriptorBySwappingIdentifiersWithExtensionIfApplicable:(id)a3
{
  v3 = a3;
  v4 = [v3 bundleIdentifier];

  if (v4)
  {
    v5 = objc_alloc(MEMORY[0x1E69635D0]);
    v6 = [v3 bundleIdentifier];
    v7 = [v5 initWithBundleIdentifier:v6 error:0];

    if (v7)
    {
      v8 = [v7 containingBundleRecord];
      v22 = v7;
      if (v8)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v9 = v8;
        }

        else
        {
          v9 = 0;
        }
      }

      else
      {
        v9 = 0;
      }

      v11 = v9;

      v21 = [INAppDescriptor alloc];
      v12 = [v11 localizedName];
      v13 = [v11 bundleIdentifier];
      v14 = [v3 bundleIdentifier];
      v15 = [v11 in_counterpartIdentifiers];
      v16 = [v11 teamIdentifier];
      v17 = [v11 in_supportedIntents];
      v18 = [v11 URL];
      v19 = [v11 in_documentTypes];

      v10 = [(INAppDescriptor *)v21 initWithLocalizedName:v12 bundleIdentifier:v13 extensionBundleIdentifier:v14 counterpartIdentifiers:v15 teamIdentifier:v16 supportedIntents:v17 bundleURL:v18 documentTypes:v19];
      v7 = v22;
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)_resolvedUserActivityMatchingDescriptor:(id)a3
{
  v161 = *MEMORY[0x1E69E9840];
  v4 = a3;
  context = objc_autoreleasePoolPush();
  v131 = [(INAppResolver *)self optionsForCurrentContextWithIntentClassName:0];
  v5 = [(INAppResolver *)self resolveDescriptorBySwappingIdentifiersWithExtensionIfApplicable:v4];
  v120 = v5;
  if (v5)
  {
    v6 = v5;
    v7 = [INUserActivityDescriptor alloc];
    v8 = [v4 userActivityType];
    [v6 localizedName];
    v129 = v4;
    v10 = v9 = v6;
    v11 = [v6 bundleIdentifier];
    v12 = [v9 extensionBundleIdentifier];
    v13 = [v9 counterpartIdentifiers];
    v14 = [v9 teamIdentifier];
    [v9 supportedIntents];
    v16 = v15 = self;
    v17 = [v9 bundleURL];
    v18 = [(INUserActivityDescriptor *)v7 initWithUserActivityType:v8 localizedName:v10 bundleIdentifier:v11 extensionBundleIdentifier:v12 counterpartIdentifiers:v13 teamIdentifier:v14 supportedIntents:v16 bundleURL:v17];

    self = v15;
    v4 = v18;
  }

  v19 = [(INAppResolver *)self resolveDescriptorByLinkingFileProvidersToFilesApp:v4];
  v119 = v19;
  if (v19)
  {
    v20 = v19;

    v4 = v20;
  }

  v21 = off_1E727B000;
  v22 = [v4 extensionBundleIdentifier];

  v130 = v4;
  if (v22)
  {
    v23 = [(INAppResolver *)self _systemAppMapper];
    v24 = [v4 extensionBundleIdentifier];
    v25 = [v23 resolvedAppMatchingExtensionBundleIdentifier:v24];

    if (v25)
    {
      v26 = [INUserActivityDescriptor alloc];
      v27 = [v4 userActivityType];
      v28 = [v25 localizedName];
      v29 = [v25 bundleIdentifier];
      v30 = [v25 extensionBundleIdentifier];
      v31 = [v25 counterpartIdentifiers];
      v32 = [v25 teamIdentifier];
      v33 = [v25 supportedIntents];
      v34 = v25;
LABEL_8:
      v35 = [v34 bundleURL];
      v36 = [(INUserActivityDescriptor *)v26 initWithUserActivityType:v27 localizedName:v28 bundleIdentifier:v29 extensionBundleIdentifier:v30 counterpartIdentifiers:v31 teamIdentifier:v32 supportedIntents:v33 bundleURL:v35];

      v4 = v130;
LABEL_36:

      goto LABEL_87;
    }
  }

  v37 = [v4 bundleIdentifier];

  if (v37)
  {
    v38 = objc_alloc(MEMORY[0x1E69635F8]);
    v39 = [v4 bundleIdentifier];
    v25 = [v38 initWithBundleIdentifier:v39 allowPlaceholder:0 error:0];

    v40 = [v25 applicationState];
    if ([v40 isInstalled])
    {
      v41 = INApplicationRecordMatchesRequirementsFromUserActivityDescriptor(v25, v4, v131);

      if (v41)
      {
        v26 = [INUserActivityDescriptor alloc];
        v27 = [v4 userActivityType];
        v28 = [v25 localizedName];
        v29 = [v25 bundleIdentifier];
        v30 = [v4 extensionBundleIdentifier];
        v31 = [v25 in_counterpartIdentifiers];
        v32 = [v25 teamIdentifier];
        v33 = [v25 in_supportedIntents];
        v34 = v4;
        goto LABEL_8;
      }
    }

    else
    {
    }
  }

  v135 = self;
  v155 = 0u;
  v156 = 0u;
  v153 = 0u;
  v154 = 0u;
  v25 = [v4 counterpartIdentifiers];
  v42 = [v25 countByEnumeratingWithState:&v153 objects:v160 count:16];
  if (!v42)
  {
    goto LABEL_26;
  }

  v43 = v42;
  v44 = *v154;
  do
  {
    for (i = 0; i != v43; ++i)
    {
      if (*v154 != v44)
      {
        objc_enumerationMutation(v25);
      }

      v27 = [objc_alloc(MEMORY[0x1E69635F8]) initWithBundleIdentifier:*(*(&v153 + 1) + 8 * i) allowPlaceholder:0 error:0];
      v46 = [v27 applicationState];
      if ([v46 isInstalled])
      {
        v47 = INApplicationRecordMatchesRequirementsFromUserActivityDescriptor(v27, v4, v131);

        if (v47)
        {
          v136 = [INUserActivityDescriptor alloc];
          v132 = [v4 userActivityType];
          v62 = [v27 localizedName];
          v63 = [v27 bundleIdentifier];
          v64 = [v4 extensionBundleIdentifier];
          v65 = [v27 in_counterpartIdentifiers];
          v66 = [v27 teamIdentifier];
          v67 = [v27 in_supportedIntents];
          v68 = [v130 bundleURL];
          v36 = [(INUserActivityDescriptor *)v136 initWithUserActivityType:v132 localizedName:v62 bundleIdentifier:v63 extensionBundleIdentifier:v64 counterpartIdentifiers:v65 teamIdentifier:v66 supportedIntents:v67 bundleURL:v68];

          v4 = v130;
          goto LABEL_36;
        }
      }

      else
      {
      }
    }

    v43 = [v25 countByEnumeratingWithState:&v153 objects:v160 count:16];
  }

  while (v43);
LABEL_26:

  v48 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v49 = [(INAppResolver *)v135 _counterpartMapper];
  v50 = [v4 bundleIdentifier];
  v51 = [v49 localIdentifiersForCounterpartIdentifier:v50];

  v151 = 0u;
  v152 = 0u;
  v149 = 0u;
  v150 = 0u;
  v52 = v51;
  v53 = [v52 countByEnumeratingWithState:&v149 objects:v159 count:16];
  if (v53)
  {
    v54 = v53;
    v55 = *v150;
    do
    {
      for (j = 0; j != v54; ++j)
      {
        if (*v150 != v55)
        {
          objc_enumerationMutation(v52);
        }

        v57 = [[INUserActivityDescriptor alloc] initWithUserActivityType:0 localizedName:0 bundleIdentifier:*(*(&v149 + 1) + 8 * j) extensionBundleIdentifier:0 counterpartIdentifiers:0 teamIdentifier:0 supportedIntents:0 bundleURL:0];
        [v48 addObject:v57];
      }

      v54 = [v52 countByEnumeratingWithState:&v149 objects:v159 count:16];
    }

    while (v54);
  }

  v58 = [(INAppResolver *)v135 _systemAppMapper];
  v59 = [v4 bundleIdentifier];
  v60 = [v58 matchForBundleIdentifier:v59];

  v61 = v60;
  if (v60)
  {
    if ([v60 appIsUnavailableOnCurrentPlatform])
    {
      v36 = v4;
      goto LABEL_86;
    }

    v69 = [INUserActivityDescriptor alloc];
    v70 = [v60 bundleIdentifierForCurrentPlatform];
    v71 = [(INUserActivityDescriptor *)v69 initWithUserActivityType:0 localizedName:0 bundleIdentifier:v70 extensionBundleIdentifier:0 counterpartIdentifiers:0 teamIdentifier:0 supportedIntents:0 bundleURL:0];

    [v48 addObject:v71];
    v61 = v60;
  }

  v146[0] = MEMORY[0x1E69E9820];
  v146[1] = 3221225472;
  v146[2] = __57__INAppResolver__resolvedUserActivityMatchingDescriptor___block_invoke;
  v146[3] = &unk_1E727F680;
  v128 = v4;
  v147 = v128;
  v72 = v131;
  v148 = v72;
  v73 = [v48 if_compactMap:v146];
  [v48 removeAllObjects];
  if ([v73 count] == 1)
  {
    v36 = [v73 anyObject];
    goto LABEL_85;
  }

  v118 = v73;
  if ([v73 count] >= 2)
  {
    [v73 allObjects];
    v75 = v74 = v61;
    [v48 addObjectsFromArray:v75];

    v61 = v74;
  }

  else
  {
    v94 = [v73 count];
    if (v61 && !v94)
    {
      v93 = v128;
      goto LABEL_59;
    }
  }

  v137 = v52;
  if (![v118 count])
  {
    v116 = v61;
    v144 = 0u;
    v145 = 0u;
    v142 = 0u;
    v143 = 0u;
    obj = [MEMORY[0x1E69635F8] enumeratorWithOptions:0];
    v76 = [obj countByEnumeratingWithState:&v142 objects:v158 count:16];
    v77 = v128;
    if (v76)
    {
      v78 = v76;
      v79 = *v143;
      v123 = v72;
      v124 = v48;
      v122 = *v143;
      do
      {
        v80 = 0;
        v126 = v78;
        do
        {
          if (*v143 != v79)
          {
            objc_enumerationMutation(obj);
          }

          v81 = *(*(&v142 + 1) + 8 * v80);
          v82 = objc_autoreleasePoolPush();
          if (INApplicationRecordMatchesRequirementsFromUserActivityDescriptor(v81, v77, v72))
          {
            v133 = v82;
            v83 = objc_alloc(v21[359]);
            v84 = [v77 userActivityType];
            v85 = [v81 localizedName];
            v86 = [v81 bundleIdentifier];
            v87 = [v77 extensionBundleIdentifier];
            v88 = [v81 in_counterpartIdentifiers];
            v89 = [v81 teamIdentifier];
            v90 = [v81 in_supportedIntents];
            v91 = [v77 bundleURL];
            v92 = [v83 initWithUserActivityType:v84 localizedName:v85 bundleIdentifier:v86 extensionBundleIdentifier:v87 counterpartIdentifiers:v88 teamIdentifier:v89 supportedIntents:v90 bundleURL:v91];

            v77 = v128;
            v4 = v130;

            v48 = v124;
            v21 = off_1E727B000;

            v78 = v126;
            v79 = v122;

            v72 = v123;
            [v124 addObject:v92];

            v82 = v133;
          }

          objc_autoreleasePoolPop(v82);
          ++v80;
        }

        while (v78 != v80);
        v78 = [obj countByEnumeratingWithState:&v142 objects:v158 count:16];
      }

      while (v78);
    }

    v52 = v137;
    v61 = v116;
  }

  if ([v48 count] == 1)
  {
    v93 = [v48 anyObject];
LABEL_59:
    v36 = v93;
    goto LABEL_84;
  }

  v117 = v61;
  v140 = 0u;
  v141 = 0u;
  v138 = 0u;
  v139 = 0u;
  v95 = v48;
  v96 = [v95 countByEnumeratingWithState:&v138 objects:v157 count:16];
  if (!v96)
  {

    v100 = v128;
    goto LABEL_82;
  }

  v97 = v96;
  v125 = v48;
  v36 = 0;
  v98 = *v139;
  v99 = 0x7FFFFFFFFFFFFFFFLL;
  v100 = v128;
  v134 = v95;
  while (2)
  {
    v101 = 0;
    while (2)
    {
      if (*v139 != v98)
      {
        objc_enumerationMutation(v134);
      }

      v102 = *(*(&v138 + 1) + 8 * v101);
      v103 = [v100 localizedName];

      if (v103)
      {
        v104 = [v100 localizedName];
        v105 = [v102 localizedName];
        v106 = INEditDistanceBetweenStrings(v104, v105);
        goto LABEL_67;
      }

      v108 = [v100 bundleIdentifier];

      if (v108)
      {
        v109 = [v100 bundleIdentifier];
        v110 = [v102 bundleIdentifier];
        v104 = [v109 commonPrefixWithString:v110 options:0];

        if ([v104 length])
        {
          v111 = [v100 bundleIdentifier];
          v105 = [v111 substringFromIndex:{objc_msgSend(v104, "length")}];

          v112 = [v102 bundleIdentifier];
          v113 = [v112 substringFromIndex:{objc_msgSend(v104, "length")}];

          v106 = INEditDistanceBetweenStrings(v105, v113);
          v100 = v128;
LABEL_67:

          if (v106 >= v99 || v106 > 5)
          {
            goto LABEL_77;
          }

          v104 = v36;
          v36 = v102;
          v99 = v106;
        }
      }

LABEL_77:
      v52 = v137;
      if (v97 != ++v101)
      {
        continue;
      }

      break;
    }

    v97 = [v134 countByEnumeratingWithState:&v138 objects:v157 count:16];
    if (v97)
    {
      continue;
    }

    break;
  }

  v48 = v125;
  if (v36)
  {
    [(INAppDescriptor *)v36 setRequiresUserConfirmation:v99 > 0];
    goto LABEL_83;
  }

LABEL_82:
  v36 = v100;
LABEL_83:
  v4 = v130;
  v61 = v117;
LABEL_84:
  v73 = v118;
LABEL_85:

LABEL_86:
LABEL_87:

  objc_autoreleasePoolPop(context);
  v114 = *MEMORY[0x1E69E9840];

  return v36;
}

INUserActivityDescriptor *__57__INAppResolver__resolvedUserActivityMatchingDescriptor___block_invoke(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x1E69635F8];
  v4 = a2;
  v5 = [v3 alloc];
  v6 = [v4 bundleIdentifier];

  v7 = [v5 initWithBundleIdentifier:v6 allowPlaceholder:0 error:0];
  if (!v7)
  {
    goto LABEL_5;
  }

  v8 = [v7 applicationState];
  if (![v8 isInstalled])
  {
    v17 = 0;
    goto LABEL_7;
  }

  v9 = INApplicationRecordMatchesRequirementsFromUserActivityDescriptor(v7, *(a1 + 32), *(a1 + 40));

  if (!v9)
  {
LABEL_5:
    v17 = 0;
    goto LABEL_8;
  }

  v19 = [INUserActivityDescriptor alloc];
  v8 = [*(a1 + 32) userActivityType];
  v10 = [v7 localizedName];
  v11 = [v7 bundleIdentifier];
  v12 = [*(a1 + 32) extensionBundleIdentifier];
  v13 = [v7 in_counterpartIdentifiers];
  v14 = [v7 teamIdentifier];
  v15 = [v7 in_supportedIntents];
  v16 = [*(a1 + 32) bundleURL];
  v17 = [(INUserActivityDescriptor *)v19 initWithUserActivityType:v8 localizedName:v10 bundleIdentifier:v11 extensionBundleIdentifier:v12 counterpartIdentifiers:v13 teamIdentifier:v14 supportedIntents:v15 bundleURL:v16];

LABEL_7:
LABEL_8:

  return v17;
}

- (id)resolvedUserActivityMatchingDescriptor:(id)a3
{
  v4 = a3;
  if (INDescriptorContainsBundleIdentifiers(v4))
  {
    v5 = v4;
    if ([(INAppResolver *)self cacheHasResultForDescriptor:v5])
    {
      v6 = [(INAppResolver *)self cachedResultForKey:v5];
    }

    else
    {
      v6 = [(INAppResolver *)self _resolvedUserActivityMatchingDescriptor:v5];
      [(INAppResolver *)self cacheResult:v6 forDescriptor:v5];
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)_resolvedIntentMatchingDescriptor:(id)a3
{
  v210 = *MEMORY[0x1E69E9840];
  v4 = a3;
  context = objc_autoreleasePoolPush();
  v5 = [(INAppResolver *)self resolveDescriptorBySwappingIdentifiersWithExtensionIfApplicable:v4];
  v165 = v5;
  v173 = self;
  if (v5)
  {
    v6 = v5;
    objc = [INIntentDescriptor alloc];
    v169 = [(INIntentDescriptor *)v4 intentClassName];
    v167 = [v6 localizedName];
    v7 = [v6 bundleIdentifier];
    v8 = [v6 bundleIdentifier];
    v161 = [v6 extensionBundleIdentifier];
    v9 = [(INIntentDescriptor *)v4 uiExtensionBundleIdentifier];
    v157 = [v6 counterpartIdentifiers];
    v152 = [v6 teamIdentifier];
    v10 = [(INIntentDescriptor *)v4 preferredCallProvider];
    [v6 supportedIntents];
    v12 = v11 = v6;
    [v11 bundleURL];
    v14 = v13 = v4;
    v15 = [v11 documentTypes];
    objd = [(INIntentDescriptor *)objc initWithIntentClassName:v169 localizedName:v167 bundleIdentifier:v7 displayableBundleIdentifier:v8 extensionBundleIdentifier:v161 uiExtensionBundleIdentifier:v9 counterpartIdentifiers:v157 teamIdentifier:v152 preferredCallProvider:v10 supportedIntents:v12 bundleURL:v14 documentTypes:v15];

    v4 = objd;
  }

  v16 = [(INAppDescriptor *)v4 extensionBundleIdentifier];

  if (v16)
  {
    v17 = v173;
    v18 = [(INAppResolver *)v173 _systemAppMapper];
    v19 = [(INAppDescriptor *)v4 extensionBundleIdentifier];
    goto LABEL_7;
  }

  v20 = [(INAppDescriptor *)v4 bundleIdentifier];

  v17 = v173;
  if (v20)
  {
    v18 = [(INAppResolver *)v173 _systemAppMapper];
    v19 = [(INAppDescriptor *)v4 bundleIdentifier];
LABEL_7:
    v21 = v19;
    v22 = [(INIntentDescriptor *)v4 preferredCallProvider];
    v23 = [(INIntentDescriptor *)v4 intentClassName];
    v24 = [v18 resolvedIntentMatchingExtensionBundleIdentifier:v21 preferredCallProvider:v22 intentClassName:v23];

    if (v24)
    {
      goto LABEL_112;
    }
  }

  v25 = [(INIntentDescriptor *)v4 intentClassName];
  v168 = [(INAppResolver *)v17 optionsForCurrentContextWithIntentClassName:v25];

  v26 = [(INAppDescriptor *)v4 bundleIdentifier];

  if (v26)
  {
    v27 = objc_alloc(MEMORY[0x1E69635F8]);
    v28 = [(INAppDescriptor *)v4 bundleIdentifier];
    v29 = [v27 initWithBundleIdentifier:v28 allowPlaceholder:0 error:0];

    v30 = [v29 applicationState];
    if ([v30 isInstalled])
    {
      v31 = INApplicationRecordMatchesRequirementsFromIntentDescriptor(v29, v4, v168);

      if (v31)
      {
        v32 = [v29 localizedName];
        v33 = [(INIntentDescriptor *)v4 displayableBundleIdentifier];
        v34 = v33;
        if (v33)
        {
          v35 = v33;
        }

        else
        {
          v35 = [v29 bundleIdentifier];
        }

        v112 = v35;

        v113 = [v29 bundleIdentifier];
        v114 = [v113 isEqualToString:v112];

        v175 = v112;
        if (v114)
        {
          objb = v32;
        }

        else
        {
          v115 = [objc_alloc(MEMORY[0x1E69635F8]) initWithBundleIdentifier:v112 allowPlaceholder:0 error:0];
          v116 = [v115 localizedName];

          if (v116)
          {
            v117 = [v115 localizedName];

            objb = v117;
          }

          else
          {
            objb = v32;
          }
        }

        v172 = [INIntentDescriptor alloc];
        v156 = [(INIntentDescriptor *)v4 intentClassName];
        v164 = [v29 bundleIdentifier];
        v160 = [(INAppDescriptor *)v4 extensionBundleIdentifier];
        v137 = [(INIntentDescriptor *)v4 uiExtensionBundleIdentifier];
        v151 = [v29 in_counterpartIdentifiers];
        v147 = [v29 teamIdentifier];
        v138 = [(INIntentDescriptor *)v4 preferredCallProvider];
        v139 = [v29 in_supportedIntents];
        v140 = [(INAppDescriptor *)v4 bundleURL];
        v141 = [v29 in_documentTypes];
        v142 = [(INIntentDescriptor *)v172 initWithIntentClassName:v156 localizedName:objb bundleIdentifier:v164 displayableBundleIdentifier:v175 extensionBundleIdentifier:v160 uiExtensionBundleIdentifier:v137 counterpartIdentifiers:v151 teamIdentifier:v147 preferredCallProvider:v138 supportedIntents:v139 bundleURL:v140 documentTypes:v141];

        v24 = v142;
LABEL_110:

        goto LABEL_111;
      }
    }

    else
    {
    }
  }

  v203 = 0u;
  v204 = 0u;
  v201 = 0u;
  v202 = 0u;
  v29 = [(INAppDescriptor *)v4 counterpartIdentifiers];
  v36 = [v29 countByEnumeratingWithState:&v201 objects:v209 count:16];
  if (v36)
  {
    v37 = v36;
    v38 = *v202;
    do
    {
      for (i = 0; i != v37; ++i)
      {
        if (*v202 != v38)
        {
          objc_enumerationMutation(v29);
        }

        v40 = [objc_alloc(MEMORY[0x1E69635F8]) initWithBundleIdentifier:*(*(&v201 + 1) + 8 * i) allowPlaceholder:0 error:0];
        v41 = [v40 applicationState];
        if ([v41 isInstalled])
        {
          v42 = INApplicationRecordMatchesRequirementsFromIntentDescriptor(v40, v4, v168);

          if (v42)
          {
            v85 = [v40 localizedName];
            v86 = [(INIntentDescriptor *)v4 displayableBundleIdentifier];
            v87 = v86;
            if (v86)
            {
              v88 = v86;
            }

            else
            {
              v88 = [v40 bundleIdentifier];
            }

            v89 = v88;

            v90 = [v40 bundleIdentifier];
            v91 = [v90 isEqualToString:v89];

            obja = v89;
            if (v91)
            {
              v174 = v85;
            }

            else
            {
              v92 = [objc_alloc(MEMORY[0x1E69635F8]) initWithBundleIdentifier:v89 allowPlaceholder:0 error:0];
              v93 = [v92 localizedName];

              if (v93)
              {
                v94 = [v92 localizedName];

                v174 = v94;
              }

              else
              {
                v174 = v85;
              }
            }

            v170 = [INIntentDescriptor alloc];
            v149 = [(INIntentDescriptor *)v4 intentClassName];
            v162 = [v40 bundleIdentifier];
            v159 = [(INAppDescriptor *)v4 extensionBundleIdentifier];
            v154 = [(INIntentDescriptor *)v4 uiExtensionBundleIdentifier];
            v146 = [v40 in_counterpartIdentifiers];
            v145 = [v40 teamIdentifier];
            v106 = [(INIntentDescriptor *)v4 preferredCallProvider];
            v107 = [v40 in_supportedIntents];
            v108 = [(INAppDescriptor *)v4 bundleURL];
            [v40 in_documentTypes];
            v110 = v109 = v4;
            v111 = [(INIntentDescriptor *)v170 initWithIntentClassName:v149 localizedName:v174 bundleIdentifier:v162 displayableBundleIdentifier:obja extensionBundleIdentifier:v159 uiExtensionBundleIdentifier:v154 counterpartIdentifiers:v146 teamIdentifier:v145 preferredCallProvider:v106 supportedIntents:v107 bundleURL:v108 documentTypes:v110];

            v4 = v109;
            v24 = v111;

            goto LABEL_110;
          }
        }

        else
        {
        }
      }

      v37 = [v29 countByEnumeratingWithState:&v201 objects:v209 count:16];
    }

    while (v37);
  }

  v43 = [(INAppDescriptor *)v4 bundleIdentifier];

  v44 = v173;
  if (v43)
  {
    v45 = [(INAppResolver *)v173 _systemAppMapper];
    v46 = [(INAppDescriptor *)v4 bundleIdentifier];
    v47 = [(INIntentDescriptor *)v4 preferredCallProvider];
    v48 = [(INIntentDescriptor *)v4 intentClassName];
    v24 = [v45 resolvedIntentMatchingAppBundleIdentifier:v46 preferredCallProvider:v47 intentClassName:v48];

    if (v24)
    {
      goto LABEL_111;
    }
  }

  v49 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v50 = [(INAppDescriptor *)v4 extensionBundleIdentifier];

  if (v50)
  {
    v51 = [(INAppDescriptor *)v4 extensionBundleIdentifier];
    v52 = [(INAppResolver *)v173 _frameworkMapper];
    v53 = [v52 launchableAppBundleIdentifierForSystemExtensionBundleIdentifier:v51];

    v54 = [(INAppResolver *)v173 _frameworkMapper];
    v55 = [v54 displayableAppBundleIdentifierForSystemExtensionBundleIdentifier:v51];

    if (v53 | v55)
    {
      if ([(INIntentDescriptor *)v4 preferredCallProvider]== 2)
      {
        v56 = [(INAppResolver *)v173 _systemAppMapper];
        v57 = [v56 bundleIdentifiersForIntentExecutionMatchingBundleIdentifier:@"com.apple.facetime"];
        v58 = [v57 firstObject];

        v55 = v58;
      }

      v59 = [INIntentDescriptor alloc];
      v60 = [(INAppDescriptor *)v4 extensionBundleIdentifier];
      v61 = [(INIntentDescriptor *)v59 initWithIntentClassName:0 localizedName:0 bundleIdentifier:v53 displayableBundleIdentifier:v55 extensionBundleIdentifier:v60 uiExtensionBundleIdentifier:0 counterpartIdentifiers:0 teamIdentifier:0 preferredCallProvider:[(INIntentDescriptor *)v4 preferredCallProvider] supportedIntents:0 bundleURL:0 documentTypes:0];

      [v49 addObject:v61];
      v44 = v173;
    }
  }

  v62 = v44;
  v63 = [(INAppResolver *)v44 _systemAppMapper];
  v64 = [(INAppDescriptor *)v4 bundleIdentifier];
  v65 = [v63 bundleIdentifiersForIntentExecutionMatchingBundleIdentifier:v64];

  v199 = 0u;
  v200 = 0u;
  v197 = 0u;
  v198 = 0u;
  obj = v65;
  v66 = [obj countByEnumeratingWithState:&v197 objects:v208 count:16];
  v67 = v66;
  if (v66)
  {
    v68 = *v198;
    v69 = v66;
    do
    {
      for (j = 0; j != v69; ++j)
      {
        if (*v198 != v68)
        {
          objc_enumerationMutation(obj);
        }

        v71 = [[INIntentDescriptor alloc] initWithIntentClassName:0 localizedName:0 bundleIdentifier:*(*(&v197 + 1) + 8 * j) displayableBundleIdentifier:0 extensionBundleIdentifier:0 uiExtensionBundleIdentifier:0 counterpartIdentifiers:0 teamIdentifier:0 preferredCallProvider:0 supportedIntents:0 bundleURL:0 documentTypes:0];
        [v49 addObject:v71];
      }

      v69 = [obj countByEnumeratingWithState:&v197 objects:v208 count:16];
    }

    while (v69);
  }

  v72 = [(INAppResolver *)v62 _counterpartMapper];
  v73 = [(INAppDescriptor *)v4 bundleIdentifier];
  v74 = [v72 localIdentifiersForCounterpartIdentifier:v73];

  v195 = 0u;
  v196 = 0u;
  v193 = 0u;
  v194 = 0u;
  v75 = v74;
  v76 = [v75 countByEnumeratingWithState:&v193 objects:v207 count:16];
  if (v76)
  {
    v77 = v76;
    v78 = *v194;
    do
    {
      for (k = 0; k != v77; ++k)
      {
        if (*v194 != v78)
        {
          objc_enumerationMutation(v75);
        }

        v80 = [[INIntentDescriptor alloc] initWithIntentClassName:0 localizedName:0 bundleIdentifier:*(*(&v193 + 1) + 8 * k) displayableBundleIdentifier:0 extensionBundleIdentifier:0 uiExtensionBundleIdentifier:0 counterpartIdentifiers:0 teamIdentifier:0 preferredCallProvider:0 supportedIntents:0 bundleURL:0 documentTypes:0];
        [v49 addObject:v80];
      }

      v77 = [v75 countByEnumeratingWithState:&v193 objects:v207 count:16];
    }

    while (v77);
  }

  v190[0] = MEMORY[0x1E69E9820];
  v190[1] = 3221225472;
  v190[2] = __51__INAppResolver__resolvedIntentMatchingDescriptor___block_invoke;
  v190[3] = &unk_1E727F658;
  v158 = v4;
  v81 = v4;
  v191 = v81;
  v82 = v168;
  v192 = v82;
  v83 = [v49 if_compactMap:v190];
  [v49 removeAllObjects];
  if ([v83 count] == 1)
  {
    v84 = v83;
LABEL_72:
    v105 = [v84 anyObject];
LABEL_73:
    v24 = v105;
    goto LABEL_74;
  }

  if ([v83 count] < 2)
  {
    v118 = [v83 count];
    if (v67 && !v118)
    {
      v105 = v81;
      goto LABEL_73;
    }
  }

  else
  {
    v95 = [v83 allObjects];
    [v49 addObjectsFromArray:v95];
  }

  if (![v83 count])
  {
    v148 = v83;
    v153 = v75;
    v188 = 0u;
    v189 = 0u;
    v186 = 0u;
    v187 = 0u;
    v96 = [MEMORY[0x1E69635F8] enumeratorWithOptions:0];
    v97 = [v96 countByEnumeratingWithState:&v186 objects:v206 count:16];
    if (v97)
    {
      v98 = v97;
      v99 = *v187;
      do
      {
        for (m = 0; m != v98; ++m)
        {
          if (*v187 != v99)
          {
            objc_enumerationMutation(v96);
          }

          v101 = *(*(&v186 + 1) + 8 * m);
          v102 = objc_autoreleasePoolPush();
          if (INApplicationRecordMatchesRequirementsFromIntentDescriptor(v101, v81, v82))
          {
            v103 = [(INAppDescriptor *)[INIntentDescriptor alloc] initWithApplicationRecord:v101];
            v104 = [(INIntentDescriptor *)v103 mergeWithDescriptor:v81];
            [v49 addObject:v104];
          }

          objc_autoreleasePoolPop(v102);
        }

        v98 = [v96 countByEnumeratingWithState:&v186 objects:v206 count:16];
      }

      while (v98);
    }

    v83 = v148;
    v75 = v153;
  }

  if ([v49 count] == 1)
  {
    v84 = v49;
    goto LABEL_72;
  }

  v155 = v75;
  v184 = 0u;
  v185 = 0u;
  v182 = 0u;
  v183 = 0u;
  v119 = v49;
  v171 = [v119 countByEnumeratingWithState:&v182 objects:v205 count:16];
  if (!v171)
  {

    goto LABEL_116;
  }

  v150 = v83;
  v24 = 0;
  v120 = *v183;
  v176 = 0x7FFFFFFFFFFFFFFFLL;
  v163 = v81;
  do
  {
    for (n = 0; n != v171; ++n)
    {
      if (*v183 != v120)
      {
        objc_enumerationMutation(v119);
      }

      v122 = *(*(&v182 + 1) + 8 * n);
      v123 = [(INAppDescriptor *)v81 localizedName];

      if (v123)
      {
        v124 = [(INAppDescriptor *)v81 localizedName];
        v125 = [v122 localizedName];
        v126 = INEditDistanceBetweenStrings(v124, v125);
      }

      else
      {
        v128 = [(INAppDescriptor *)v81 bundleIdentifier];

        if (!v128)
        {
          continue;
        }

        v129 = [(INAppDescriptor *)v81 bundleIdentifier];
        v130 = [v122 bundleIdentifier];
        v124 = [v129 commonPrefixWithString:v130 options:0];

        if (![v124 length])
        {
          goto LABEL_99;
        }

        v131 = [(INAppDescriptor *)v81 bundleIdentifier];
        v125 = [v131 substringFromIndex:{objc_msgSend(v124, "length")}];

        v132 = [v122 bundleIdentifier];
        [v132 substringFromIndex:{objc_msgSend(v124, "length")}];
        v133 = v120;
        v134 = v119;
        v136 = v135 = v24;

        v126 = INEditDistanceBetweenStrings(v125, v136);
        v24 = v135;
        v119 = v134;
        v120 = v133;
        v81 = v163;
      }

      if (v126 < v176 && v126 <= 5)
      {
        v124 = v24;
        v24 = v122;
        v176 = v126;
LABEL_99:

        continue;
      }
    }

    v171 = [v119 countByEnumeratingWithState:&v182 objects:v205 count:16];
  }

  while (v171);

  v83 = v150;
  if (v24)
  {
    [(INAppDescriptor *)v24 setRequiresUserConfirmation:v176 > 0];
    goto LABEL_117;
  }

LABEL_116:
  v24 = v81;
LABEL_117:
  v75 = v155;
LABEL_74:

  v4 = v158;
LABEL_111:

LABEL_112:
  objc_autoreleasePoolPop(context);

  v143 = *MEMORY[0x1E69E9840];

  return v24;
}

id __51__INAppResolver__resolvedIntentMatchingDescriptor___block_invoke(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x1E69635F8];
  v4 = a2;
  v5 = [v3 alloc];
  v6 = [v4 bundleIdentifier];

  v7 = [v5 initWithBundleIdentifier:v6 allowPlaceholder:0 error:0];
  if (!v7)
  {
    goto LABEL_5;
  }

  v8 = [v7 applicationState];
  if (![(INAppDescriptor *)v8 isInstalled])
  {
    v10 = 0;
    goto LABEL_7;
  }

  v9 = INApplicationRecordMatchesRequirementsFromIntentDescriptor(v7, *(a1 + 32), *(a1 + 40));

  if (!v9)
  {
LABEL_5:
    v10 = 0;
    goto LABEL_8;
  }

  v8 = [(INAppDescriptor *)[INIntentDescriptor alloc] initWithApplicationRecord:v7];
  v10 = [(INIntentDescriptor *)v8 mergeWithDescriptor:*(a1 + 32)];
LABEL_7:

LABEL_8:

  return v10;
}

- (id)resolvedIntentMatchingDescriptor:(id)a3
{
  v4 = a3;
  if (INDescriptorContainsBundleIdentifiers(v4))
  {
    v5 = v4;
    if ([(INAppResolver *)self cacheHasResultForDescriptor:v5])
    {
      v6 = [(INAppResolver *)self cachedResultForKey:v5];
    }

    else
    {
      v6 = [(INAppResolver *)self _resolvedIntentMatchingDescriptor:v5];
      [(INAppResolver *)self cacheResult:v6 forDescriptor:v5];
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)_resolvedAppMatchingDescriptor:(id)a3
{
  v124 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v100 = [(INAppResolver *)self optionsForCurrentContextWithIntentClassName:0];
  v6 = [v4 bundleIdentifier];

  if (v6)
  {
    v7 = objc_alloc(MEMORY[0x1E69635F8]);
    v8 = [v4 bundleIdentifier];
    v9 = [v7 initWithBundleIdentifier:v8 allowPlaceholder:0 error:0];

    v10 = [v9 applicationState];
    if ([v10 isInstalled])
    {
      v11 = INApplicationRecordMatchesRequirementsFromDescriptor(v9, v4, v100);

      if (v11)
      {
        v12 = [v4 descriptorWithRecord:v9];

        goto LABEL_66;
      }
    }

    else
    {
    }
  }

  v95 = v5;
  v118 = 0u;
  v119 = 0u;
  v116 = 0u;
  v117 = 0u;
  v13 = [v4 counterpartIdentifiers];
  v14 = [v13 countByEnumeratingWithState:&v116 objects:v123 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v117;
    do
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v117 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v18 = [objc_alloc(MEMORY[0x1E69635F8]) initWithBundleIdentifier:*(*(&v116 + 1) + 8 * i) allowPlaceholder:0 error:0];
        v19 = [v18 applicationState];
        if ([v19 isInstalled])
        {
          v20 = INApplicationRecordMatchesRequirementsFromDescriptor(v18, v4, v100);

          if (v20)
          {
            v12 = [v4 descriptorWithRecord:v18];

            goto LABEL_65;
          }
        }

        else
        {
        }
      }

      v15 = [v13 countByEnumeratingWithState:&v116 objects:v123 count:16];
    }

    while (v15);
  }

  v13 = [(INAppResolver *)self resolveDescriptorBySwappingIdentifiersWithExtensionIfApplicable:v4];
  if (v13)
  {
    v21 = objc_alloc(MEMORY[0x1E69635F8]);
    v22 = [v13 bundleURL];
    v23 = [v21 initWithURL:v22 allowPlaceholder:0 error:0];

    v24 = [v23 applicationState];
    if ([v24 isInstalled])
    {
      v25 = INApplicationRecordMatchesRequirementsFromDescriptor(v23, v4, v100);

      if (v25)
      {
        v12 = [v4 descriptorWithRecord:v23];
        goto LABEL_64;
      }
    }

    else
    {
    }

    v26 = v13;

    v4 = v26;
  }

  v27 = [v4 extensionBundleIdentifier];

  if (!v27)
  {
    goto LABEL_26;
  }

  v28 = [(INAppResolver *)self _systemAppMapper];
  v29 = [v4 extensionBundleIdentifier];
  v12 = [v28 resolvedAppMatchingExtensionBundleIdentifier:v29];

  if (!v12)
  {
LABEL_26:
    v94 = v13;
    v23 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    v30 = [(INAppResolver *)self _counterpartMapper];
    v31 = [v4 bundleIdentifier];
    v32 = [v30 localIdentifiersForCounterpartIdentifier:v31];

    v114 = 0u;
    v115 = 0u;
    v112 = 0u;
    v113 = 0u;
    v33 = v32;
    v34 = [v33 countByEnumeratingWithState:&v112 objects:v122 count:16];
    if (v34)
    {
      v35 = v34;
      v36 = *v113;
      do
      {
        for (j = 0; j != v35; ++j)
        {
          if (*v113 != v36)
          {
            objc_enumerationMutation(v33);
          }

          v38 = [[INAppDescriptor alloc] initWithBundleIdentifier:*(*(&v112 + 1) + 8 * j)];
          [v23 addObject:v38];
        }

        v35 = [v33 countByEnumeratingWithState:&v112 objects:v122 count:16];
      }

      while (v35);
    }

    v39 = [(INAppResolver *)self _systemAppMapper];
    v40 = [v4 bundleIdentifier];
    v41 = [v39 matchForBundleIdentifier:v40];

    v42 = v41;
    if (v41)
    {
      if ([v41 appIsUnavailableOnCurrentPlatform])
      {
        v12 = v4;
        goto LABEL_63;
      }

      v43 = [INAppDescriptor alloc];
      v44 = [v41 bundleIdentifierForCurrentPlatform];
      v45 = [(INAppDescriptor *)v43 initWithBundleIdentifier:v44];

      v42 = v41;
      [v23 addObject:v45];
    }

    v46 = [v4 extensionBundleIdentifier];

    if (v46)
    {
      v47 = v42;
      v48 = [v4 extensionBundleIdentifier];
      v49 = [(INAppResolver *)self _frameworkMapper];
      v50 = [v49 launchableAppBundleIdentifierForSystemExtensionBundleIdentifier:v48];

      v51 = [(INAppResolver *)self _frameworkMapper];
      v52 = [v51 displayableAppBundleIdentifierForSystemExtensionBundleIdentifier:v48];

      if (v50)
      {
        v53 = [[INAppDescriptor alloc] initWithBundleIdentifier:v50];
        [v23 addObject:v53];
      }

      if (v52)
      {
        v54 = [[INAppDescriptor alloc] initWithBundleIdentifier:v52];
        [v23 addObject:v54];
      }

      v42 = v47;
    }

    v109[0] = MEMORY[0x1E69E9820];
    v109[1] = 3221225472;
    v109[2] = __48__INAppResolver__resolvedAppMatchingDescriptor___block_invoke;
    v109[3] = &unk_1E727F630;
    v93 = v4;
    v55 = v4;
    v110 = v55;
    v56 = v100;
    v111 = v56;
    v57 = [v23 if_compactMap:v109];
    [v23 removeAllObjects];
    if ([v57 count] == 1)
    {
      v58 = v57;
LABEL_60:
      v68 = [v58 anyObject];
LABEL_61:
      v12 = v68;
      goto LABEL_62;
    }

    if ([v57 count] < 2)
    {
      v71 = [v57 count];
      if (v42 && !v71)
      {
        v68 = v55;
        goto LABEL_61;
      }
    }

    else
    {
      v59 = [v57 allObjects];
      [v23 addObjectsFromArray:v59];
    }

    if (![v57 count])
    {
      v89 = v57;
      v91 = v42;
      v107 = 0u;
      v108 = 0u;
      v105 = 0u;
      v106 = 0u;
      v60 = [MEMORY[0x1E69635F8] enumeratorWithOptions:0];
      v61 = [v60 countByEnumeratingWithState:&v105 objects:v121 count:16];
      if (v61)
      {
        v62 = v61;
        v63 = *v106;
        do
        {
          for (k = 0; k != v62; ++k)
          {
            if (*v106 != v63)
            {
              objc_enumerationMutation(v60);
            }

            v65 = *(*(&v105 + 1) + 8 * k);
            v66 = objc_autoreleasePoolPush();
            if (INApplicationRecordMatchesRequirementsFromDescriptor(v65, v55, v56))
            {
              v67 = [[INAppDescriptor alloc] initWithApplicationRecord:v65];
              [v23 addObject:v67];
            }

            objc_autoreleasePoolPop(v66);
          }

          v62 = [v60 countByEnumeratingWithState:&v105 objects:v121 count:16];
        }

        while (v62);
      }

      v57 = v89;
      v42 = v91;
    }

    if ([v23 count] == 1)
    {
      v58 = v23;
      goto LABEL_60;
    }

    v92 = v42;
    v103 = 0u;
    v104 = 0u;
    v101 = 0u;
    v102 = 0u;
    v72 = v23;
    v98 = [v72 countByEnumeratingWithState:&v101 objects:v120 count:16];
    if (!v98)
    {

      goto LABEL_94;
    }

    v90 = v57;
    v12 = 0;
    v96 = v55;
    v97 = *v102;
    v99 = 0x7FFFFFFFFFFFFFFFLL;
LABEL_74:
    v73 = 0;
    while (1)
    {
      if (*v102 != v97)
      {
        objc_enumerationMutation(v72);
      }

      v74 = *(*(&v101 + 1) + 8 * v73);
      v75 = [v55 localizedName];

      if (v75)
      {
        break;
      }

      v80 = [v55 bundleIdentifier];

      if (!v80)
      {
        goto LABEL_89;
      }

      v81 = [v55 bundleIdentifier];
      v82 = [v74 bundleIdentifier];
      v76 = [v81 commonPrefixWithString:v82 options:0];

      if ([v76 length])
      {
        v83 = [v55 bundleIdentifier];
        v77 = [v83 substringFromIndex:{objc_msgSend(v76, "length")}];

        v84 = [v74 bundleIdentifier];
        [v84 substringFromIndex:{objc_msgSend(v76, "length")}];
        v85 = v33;
        v86 = v72;
        v88 = v87 = v12;

        v78 = INEditDistanceBetweenStrings(v77, v88);
        v12 = v87;
        v72 = v86;
        v33 = v85;
        v55 = v96;
        goto LABEL_79;
      }

LABEL_85:

LABEL_89:
      if (v98 == ++v73)
      {
        v98 = [v72 countByEnumeratingWithState:&v101 objects:v120 count:16];
        if (!v98)
        {

          v57 = v90;
          if (v12)
          {
            [v12 setRequiresUserConfirmation:v99 > 0];
            goto LABEL_95;
          }

LABEL_94:
          v12 = v55;
LABEL_95:
          v42 = v92;
LABEL_62:

          v4 = v93;
LABEL_63:

          v13 = v94;
LABEL_64:

          goto LABEL_65;
        }

        goto LABEL_74;
      }
    }

    v76 = [v55 localizedName];
    v77 = [v74 localizedName];
    v78 = INEditDistanceBetweenStrings(v76, v77);
LABEL_79:

    if (v78 >= v99 || v78 > 5)
    {
      goto LABEL_89;
    }

    v76 = v12;
    v12 = v74;
    v99 = v78;
    goto LABEL_85;
  }

LABEL_65:

  v5 = v95;
LABEL_66:

  objc_autoreleasePoolPop(v5);
  v69 = *MEMORY[0x1E69E9840];

  return v12;
}

id __48__INAppResolver__resolvedAppMatchingDescriptor___block_invoke(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x1E69635F8];
  v4 = a2;
  v5 = [v3 alloc];
  v6 = [v4 bundleIdentifier];

  v7 = [v5 initWithBundleIdentifier:v6 allowPlaceholder:0 error:0];
  if (v7)
  {
    v8 = [v7 applicationState];
    if ([v8 isInstalled])
    {
      v9 = INApplicationRecordMatchesRequirementsFromDescriptor(v7, *(a1 + 32), *(a1 + 40));

      if (v9)
      {
        v10 = [*(a1 + 32) descriptorWithRecord:v7];
        goto LABEL_7;
      }
    }

    else
    {
    }
  }

  v10 = 0;
LABEL_7:

  return v10;
}

- (id)resolvedAppMatchingDescriptor:(id)a3
{
  v4 = a3;
  if (INDescriptorContainsBundleIdentifiers(v4))
  {
    v5 = v4;
    if ([(INAppResolver *)self cacheHasResultForDescriptor:v5])
    {
      v6 = [(INAppResolver *)self cachedResultForKey:v5];
    }

    else
    {
      v6 = [(INAppResolver *)self _resolvedAppMatchingDescriptor:v5];
      [(INAppResolver *)self cacheResult:v6 forDescriptor:v5];
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (void)initialize
{
  if (objc_opt_class() == a1 && INAppResolverLogInitIfNeeded_once != -1)
  {

    dispatch_once(&INAppResolverLogInitIfNeeded_once, &__block_literal_global_6_72047);
  }
}

uint64_t __31__INAppResolver_sharedResolver__block_invoke()
{
  v0 = objc_alloc_init(INAppResolver);
  v1 = sharedResolver_sharedResolver;
  sharedResolver_sharedResolver = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

@end