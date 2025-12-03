@interface INAppResolver
+ (id)sharedResolver;
+ (void)initialize;
- (BOOL)cacheHasResultForDescriptor:(id)descriptor;
- (INAppResolver)init;
- (INExecutionCounterpartMapper)_counterpartMapper;
- (INExecutionFrameworkMapper)_frameworkMapper;
- (INSystemAppMapper)_systemAppMapper;
- (id)_optionsForIntentClassName:(id)name;
- (id)_resolvedAppIntentMatchingDescriptor:(id)descriptor availableActions:(id)actions availableEntities:(id)entities;
- (id)_resolvedAppMatchingDescriptor:(id)descriptor;
- (id)_resolvedIntentMatchingDescriptor:(id)descriptor;
- (id)_resolvedUserActivityMatchingDescriptor:(id)descriptor;
- (id)cachedResultForKey:(id)key;
- (id)counterpartIdentifiersForLocalIdentifier:(id)identifier;
- (id)localIdentifiersForCounterpartIdentifier:(id)identifier;
- (id)optionsForCurrentContextWithIntentClassName:(id)name;
- (id)resolveDescriptorByLinkingFileProvidersToFilesApp:(id)app;
- (id)resolveDescriptorBySwappingIdentifiersWithExtensionIfApplicable:(id)applicable;
- (id)resolvedAppIntentMatchingDescriptor:(id)descriptor availableActions:(id)actions availableEntities:(id)entities;
- (id)resolvedAppMatchingDescriptor:(id)descriptor;
- (id)resolvedIntentMatchingDescriptor:(id)descriptor;
- (id)resolvedUserActivityMatchingDescriptor:(id)descriptor;
- (void)cacheResult:(id)result forDescriptor:(id)descriptor;
- (void)dealloc;
- (void)installedApplicationsDidChange:(id)change;
- (void)invalidateCache;
- (void)setOptions:(id)options forIntentClassName:(id)name;
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
  defaultCenter = [MEMORY[0x1E696ABB0] defaultCenter];
  [defaultCenter removeObserver:self name:@"com.apple.LaunchServices.applicationRegistered" object:0];
  [defaultCenter removeObserver:self name:@"com.apple.LaunchServices.applicationUnregistered" object:0];

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
    defaultCenter = [MEMORY[0x1E696ABB0] defaultCenter];
    [defaultCenter addObserver:v2 selector:sel_installedApplicationsDidChange_ name:@"com.apple.LaunchServices.applicationRegistered" object:0];
    [defaultCenter addObserver:v2 selector:sel_installedApplicationsDidChange_ name:@"com.apple.LaunchServices.applicationUnregistered" object:0];
    v10 = v2;
  }

  return v2;
}

- (id)_optionsForIntentClassName:(id)name
{
  if (name)
  {
    nameCopy = name;
    os_unfair_lock_lock(&self->_resolverOptionsLock);
    intentClassNameToResolverOptions = [(INAppResolver *)self intentClassNameToResolverOptions];
    v6 = [intentClassNameToResolverOptions objectForKey:nameCopy];

    os_unfair_lock_unlock(&self->_resolverOptionsLock);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)setOptions:(id)options forIntentClassName:(id)name
{
  optionsCopy = options;
  nameCopy = name;
  if (nameCopy)
  {
    os_unfair_lock_lock(&self->_resolverOptionsLock);
    intentClassNameToResolverOptions = [(INAppResolver *)self intentClassNameToResolverOptions];
    v8 = intentClassNameToResolverOptions;
    if (optionsCopy)
    {
      [intentClassNameToResolverOptions setObject:optionsCopy forKey:nameCopy];
    }

    else
    {
      [intentClassNameToResolverOptions removeObjectForKey:nameCopy];
    }

    os_unfair_lock_unlock(&self->_resolverOptionsLock);
  }
}

- (id)optionsForCurrentContextWithIntentClassName:(id)name
{
  v4 = [(INAppResolver *)self _optionsForIntentClassName:name];
  v5 = v4;
  if (v4)
  {
    globalOptions = v4;
  }

  else
  {
    globalOptions = [(INAppResolver *)self globalOptions];
  }

  v7 = globalOptions;

  return v7;
}

- (void)installedApplicationsDidChange:(id)change
{
  userInfo = [change userInfo];
  v5 = [userInfo objectForKey:@"isPlaceholder"];

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

  bOOLValue = [v7 BOOLValue];
  if ((bOOLValue & 1) == 0)
  {
    [(INAppResolver *)self invalidateCache];
    linkActionProvider = [(INAppResolver *)self linkActionProvider];
    [linkActionProvider evictCache];
  }
}

- (void)invalidateCache
{
  os_unfair_lock_lock(&self->_cacheLock);
  cachedResults = [(INAppResolver *)self cachedResults];
  [cachedResults removeAllObjects];

  os_unfair_lock_unlock(&self->_cacheLock);
}

- (id)cachedResultForKey:(id)key
{
  keyCopy = key;
  os_unfair_lock_lock(&self->_cacheLock);
  cachedResults = [(INAppResolver *)self cachedResults];
  v6 = [cachedResults objectForKey:keyCopy];

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

- (void)cacheResult:(id)result forDescriptor:(id)descriptor
{
  resultCopy = result;
  descriptorCopy = descriptor;
  os_unfair_lock_lock(&self->_cacheLock);
  cachedResults = [(INAppResolver *)self cachedResults];
  v8 = cachedResults;
  if (resultCopy)
  {
    [cachedResults setObject:resultCopy forKey:descriptorCopy];
  }

  else
  {
    null = [MEMORY[0x1E695DFB0] null];
    [v8 setObject:null forKey:descriptorCopy];
  }

  os_unfair_lock_unlock(&self->_cacheLock);
}

- (BOOL)cacheHasResultForDescriptor:(id)descriptor
{
  descriptorCopy = descriptor;
  os_unfair_lock_lock(&self->_cacheLock);
  cachedResults = [(INAppResolver *)self cachedResults];
  v6 = [cachedResults objectForKey:descriptorCopy];

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

- (id)_resolvedAppIntentMatchingDescriptor:(id)descriptor availableActions:(id)actions availableEntities:(id)entities
{
  v152 = *MEMORY[0x1E69E9840];
  descriptorCopy = descriptor;
  actionsCopy = actions;
  entitiesCopy = entities;
  if (actionsCopy)
  {
    linkActionProvider = [(INAppResolver *)self linkActionProvider];
    [linkActionProvider cacheActions:actionsCopy];
  }

  if (entitiesCopy)
  {
    linkActionProvider2 = [(INAppResolver *)self linkActionProvider];
    [linkActionProvider2 cacheEntities:entitiesCopy];
  }

  v124 = entitiesCopy;
  context = objc_autoreleasePoolPush();
  selfCopy = self;
  v13 = [(INAppResolver *)self resolveDescriptorBySwappingIdentifiersWithExtensionIfApplicable:descriptorCopy];
  v121 = v13;
  if (v13)
  {
    v14 = v13;
    obja = [INAppIntentDescriptor alloc];
    intentIdentifier = [descriptorCopy intentIdentifier];
    localizedName = [v14 localizedName];
    [v14 bundleIdentifier];
    v15 = v118 = actionsCopy;
    extensionBundleIdentifier = [v14 extensionBundleIdentifier];
    counterpartIdentifiers = [v14 counterpartIdentifiers];
    teamIdentifier = [v14 teamIdentifier];
    supportedIntents = [v14 supportedIntents];
    supportedEntities = [descriptorCopy supportedEntities];
    bundleURL = [v14 bundleURL];
    documentTypes = [v14 documentTypes];
    v23 = [(INAppIntentDescriptor *)obja initWithIntentIdentifier:intentIdentifier localizedName:localizedName bundleIdentifier:v15 extensionBundleIdentifier:extensionBundleIdentifier counterpartIdentifiers:counterpartIdentifiers teamIdentifier:teamIdentifier supportedIntents:supportedIntents supportedEntities:supportedEntities bundleURL:bundleURL documentTypes:documentTypes];

    actionsCopy = v118;
    descriptorCopy = v23;
  }

  bundleIdentifier = [descriptorCopy bundleIdentifier];
  v123 = bundleIdentifier;
  if (bundleIdentifier)
  {
    v25 = bundleIdentifier;
    if ([bundleIdentifier length])
    {
      _systemAppMapper = [(INAppResolver *)selfCopy _systemAppMapper];
      intentIdentifier2 = [descriptorCopy intentIdentifier];
      v28 = [_systemAppMapper matchForBundleIdentifier:v25 intentName:intentIdentifier2];

      v117 = v28;
      if (v28)
      {
        v29 = v124;
        if ([v28 appIsUnavailableOnCurrentPlatform])
        {
          v30 = descriptorCopy;
        }

        else
        {
          v119 = actionsCopy;
          bundleIdentifierForCurrentPlatform = [v28 bundleIdentifierForCurrentPlatform];
          v44 = bundleIdentifierForCurrentPlatform;
          if (bundleIdentifierForCurrentPlatform && [bundleIdentifierForCurrentPlatform length])
          {
            v45 = [objc_alloc(MEMORY[0x1E69635F8]) initWithBundleIdentifier:v44 allowPlaceholder:0 error:0];
            linkActionProvider3 = [(INAppResolver *)selfCopy linkActionProvider];
            v47 = [linkActionProvider3 supportedActionIdentifiersForBundleIdentifier:v44];

            linkActionProvider4 = [(INAppResolver *)selfCopy linkActionProvider];
            v49 = [linkActionProvider4 supportedEntityIdentifiersForBundleIdentifier:v44];

            v50 = [INAppIntentDescriptor alloc];
            intentIdentifier3 = [descriptorCopy intentIdentifier];
            v52 = [MEMORY[0x1E695DFD8] setWithArray:v47];
            v53 = [MEMORY[0x1E695DFD8] setWithArray:v49];
            v54 = v50;
            v29 = v124;
            v55 = [(INAppIntentDescriptor *)v54 initWithIntentIdentifier:intentIdentifier3 applicationRecord:v45 supportedAppIntents:v52 supportedEntities:v53];

            v30 = v55;
          }

          else
          {
            v56 = INSiriLogContextIntents;
            if (os_log_type_enabled(INSiriLogContextIntents, OS_LOG_TYPE_FAULT))
            {
              v111 = v56;
              intentIdentifier4 = [descriptorCopy intentIdentifier];
              *buf = 136315394;
              v149 = "[INAppResolver _resolvedAppIntentMatchingDescriptor:availableActions:availableEntities:]";
              v150 = 2112;
              v151 = intentIdentifier4;
              _os_log_fault_impl(&dword_18E991000, v111, OS_LOG_TYPE_FAULT, "%s Platform bundle identifier unexpectedly nil: %@", buf, 0x16u);

              v29 = v124;
            }

            v30 = descriptorCopy;
          }

          actionsCopy = v119;
        }

        goto LABEL_83;
      }

      linkActionProvider5 = [(INAppResolver *)selfCopy linkActionProvider];
      v35 = [linkActionProvider5 supportedActionIdentifiersForBundleIdentifier:v25];

      v116 = [objc_alloc(MEMORY[0x1E69635F8]) initWithBundleIdentifier:v25 allowPlaceholder:0 error:0];
      if (v116)
      {
        applicationState = [v116 applicationState];
        if ([applicationState isInstalled])
        {
          v37 = [v35 count];

          if (!v37)
          {
            goto LABEL_31;
          }

          linkActionProvider6 = [(INAppResolver *)selfCopy linkActionProvider];
          applicationState = [linkActionProvider6 supportedEntityIdentifiersForBundleIdentifier:v123];

          if (INActionsAndApplicationRecordMatchesRequirementsFromDescriptor(v35, applicationState, v116, descriptorCopy))
          {
            v39 = [INAppIntentDescriptor alloc];
            intentIdentifier5 = [descriptorCopy intentIdentifier];
            v41 = [MEMORY[0x1E695DFD8] setWithArray:v35];
            v42 = [MEMORY[0x1E695DFD8] setWithArray:applicationState];
            anyObject = [(INAppIntentDescriptor *)v39 initWithIntentIdentifier:intentIdentifier5 applicationRecord:v116 supportedAppIntents:v41 supportedEntities:v42];

            v29 = v124;
LABEL_82:

            v30 = anyObject;
LABEL_83:

            goto LABEL_84;
          }
        }
      }

LABEL_31:
      counterpartIdentifiers2 = [descriptorCopy counterpartIdentifiers];
      v58 = counterpartIdentifiers2;
      v127 = descriptorCopy;
      v120 = actionsCopy;
      if (counterpartIdentifiers2)
      {
        v59 = counterpartIdentifiers2;
      }

      else
      {
        bundleIdentifier2 = [descriptorCopy bundleIdentifier];
        v59 = [(INAppResolver *)selfCopy localIdentifiersForCounterpartIdentifier:bundleIdentifier2];
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
            applicationState2 = [v67 applicationState];
            isInstalled = [applicationState2 isInstalled];

            if (isInstalled)
            {
              linkActionProvider7 = [(INAppResolver *)selfCopy linkActionProvider];
              v72 = [linkActionProvider7 supportedActionIdentifiersForBundleIdentifier:v66];

              if ([v72 count])
              {
                linkActionProvider8 = [(INAppResolver *)selfCopy linkActionProvider];
                v74 = [linkActionProvider8 supportedEntityIdentifiersForBundleIdentifier:v66];

                if (INActionsAndApplicationRecordMatchesRequirementsFromDescriptor(v72, v74, v68, v127))
                {
                  v81 = [INAppIntentDescriptor alloc];
                  descriptorCopy = v127;
                  intentIdentifier6 = [v127 intentIdentifier];
                  v83 = [MEMORY[0x1E695DFD8] setWithArray:v72];
                  v84 = [MEMORY[0x1E695DFD8] setWithArray:v74];
                  anyObject = [(INAppIntentDescriptor *)v81 initWithIntentIdentifier:intentIdentifier6 applicationRecord:v68 supportedAppIntents:v83 supportedEntities:v84];

                  v29 = v124;
                  v85 = v125;
                  v86 = v125;
                  actionsCopy = v120;
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

      linkActionProvider9 = [(INAppResolver *)selfCopy linkActionProvider];
      bundleIdentifiers = [linkActionProvider9 bundleIdentifiers];

      v77 = MEMORY[0x1E695DFD8];
      v140[0] = MEMORY[0x1E69E9820];
      v140[1] = 3221225472;
      v140[2] = __89__INAppResolver__resolvedAppIntentMatchingDescriptor_availableActions_availableEntities___block_invoke;
      v140[3] = &unk_1E727F6A8;
      v140[4] = selfCopy;
      descriptorCopy = v127;
      v78 = v127;
      v141 = v78;
      v114 = bundleIdentifiers;
      v79 = [bundleIdentifiers if_compactMap:v140];
      v80 = [v77 setWithArray:v79];

      v113 = v80;
      if ([v80 count])
      {
        v35 = v115;
        if ([v80 count] == 1)
        {
          anyObject = [v80 anyObject];
          actionsCopy = v120;
          v29 = v124;
          goto LABEL_77;
        }

        allObjects = [v80 allObjects];
        v138[0] = MEMORY[0x1E69E9820];
        v138[1] = 3221225472;
        v138[2] = __89__INAppResolver__resolvedAppIntentMatchingDescriptor_availableActions_availableEntities___block_invoke_2;
        v138[3] = &unk_1E727F6D0;
        v139 = v123;
        v105 = [allObjects if_firstObjectPassingTest:v138];

        actionsCopy = v120;
        if (v105)
        {
          anyObject2 = v105;
        }

        else
        {
          anyObject2 = [v80 anyObject];
        }

        anyObject = anyObject2;
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
      anyObject = 0;
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
        localizedName2 = [v78 localizedName];

        if (localizedName2)
        {
          break;
        }

        bundleIdentifier3 = [v78 bundleIdentifier];

        if (!bundleIdentifier3)
        {
          goto LABEL_68;
        }

        bundleIdentifier4 = [v78 bundleIdentifier];
        bundleIdentifier5 = [v92 bundleIdentifier];
        localizedName3 = [bundleIdentifier4 commonPrefixWithString:bundleIdentifier5 options:0];

        if ([localizedName3 length])
        {
          bundleIdentifier6 = [v78 bundleIdentifier];
          localizedName4 = [bundleIdentifier6 substringFromIndex:{objc_msgSend(localizedName3, "length")}];

          bundleIdentifier7 = [v92 bundleIdentifier];
          v103 = [bundleIdentifier7 substringFromIndex:{objc_msgSend(localizedName3, "length")}];

          v96 = INEditDistanceBetweenStrings(localizedName4, v103);
          descriptorCopy = v127;
          goto LABEL_58;
        }

LABEL_64:

LABEL_68:
        if (v89 == ++v91)
        {
          v89 = [obj countByEnumeratingWithState:&v134 objects:v146 count:16];
          if (!v89)
          {

            if (anyObject)
            {
              [(INAppDescriptor *)anyObject setRequiresUserConfirmation:v90 > 0];
              goto LABEL_76;
            }

LABEL_75:
            anyObject = v78;
LABEL_76:
            actionsCopy = v120;
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

      localizedName3 = [v78 localizedName];
      localizedName4 = [v92 localizedName];
      v96 = INEditDistanceBetweenStrings(localizedName3, localizedName4);
LABEL_58:

      if (v96 >= v90 || v96 > 5)
      {
        goto LABEL_68;
      }

      localizedName3 = anyObject;
      anyObject = v92;
      v90 = v96;
      goto LABEL_64;
    }
  }

  intentIdentifier7 = [descriptorCopy intentIdentifier];
  v32 = [intentIdentifier7 isEqualToString:@"MTUpdateAlarmIntent"];

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
    intentIdentifier8 = [descriptorCopy intentIdentifier];
    *buf = 136315394;
    v149 = "[INAppResolver _resolvedAppIntentMatchingDescriptor:availableActions:availableEntities:]";
    v150 = 2112;
    v151 = intentIdentifier8;
    _os_log_error_impl(&dword_18E991000, v107, OS_LOG_TYPE_ERROR, "%s Resolved bundleIdentifier unexpectedly nil for %@", buf, 0x16u);
  }

  v30 = descriptorCopy;
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

- (id)resolvedAppIntentMatchingDescriptor:(id)descriptor availableActions:(id)actions availableEntities:(id)entities
{
  descriptorCopy = descriptor;
  actionsCopy = actions;
  entitiesCopy = entities;
  if (INDescriptorContainsBundleIdentifiers(descriptorCopy))
  {
    v11 = descriptorCopy;
    if ([(INAppResolver *)self cacheHasResultForDescriptor:v11])
    {
      v12 = [(INAppResolver *)self cachedResultForKey:v11];
    }

    else
    {
      v12 = [(INAppResolver *)self _resolvedAppIntentMatchingDescriptor:v11 availableActions:actionsCopy availableEntities:entitiesCopy];
      [(INAppResolver *)self cacheResult:v12 forDescriptor:v11];
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (id)counterpartIdentifiersForLocalIdentifier:(id)identifier
{
  identifierCopy = identifier;
  _counterpartMapper = [(INAppResolver *)self _counterpartMapper];
  v6 = [_counterpartMapper counterpartIdentifiersForLocalIdentifier:identifierCopy];

  return v6;
}

- (id)localIdentifiersForCounterpartIdentifier:(id)identifier
{
  identifierCopy = identifier;
  _counterpartMapper = [(INAppResolver *)self _counterpartMapper];
  v6 = [_counterpartMapper localIdentifiersForCounterpartIdentifier:identifierCopy];

  return v6;
}

- (id)resolveDescriptorByLinkingFileProvidersToFilesApp:(id)app
{
  appCopy = app;
  extensionBundleIdentifier = [appCopy extensionBundleIdentifier];

  if (extensionBundleIdentifier)
  {
    v5 = objc_alloc(MEMORY[0x1E69635D0]);
    extensionBundleIdentifier2 = [appCopy extensionBundleIdentifier];
    v7 = [v5 initWithBundleIdentifier:extensionBundleIdentifier2 error:0];

    extensionPointRecord = [v7 extensionPointRecord];
    name = [extensionPointRecord name];
    v10 = [name isEqualToString:@"com.apple.fileprovider-nonui"];

    v11 = 0;
    if (v10)
    {
      v12 = [INUserActivityDescriptor alloc];
      userActivityType = [appCopy userActivityType];
      localizedName = [appCopy localizedName];
      extensionBundleIdentifier3 = [appCopy extensionBundleIdentifier];
      counterpartIdentifiers = [appCopy counterpartIdentifiers];
      teamIdentifier = [appCopy teamIdentifier];
      supportedIntents = [appCopy supportedIntents];
      bundleURL = [appCopy bundleURL];
      v11 = [(INUserActivityDescriptor *)v12 initWithUserActivityType:userActivityType localizedName:localizedName bundleIdentifier:@"com.apple.DocumentsApp" extensionBundleIdentifier:extensionBundleIdentifier3 counterpartIdentifiers:counterpartIdentifiers teamIdentifier:teamIdentifier supportedIntents:supportedIntents bundleURL:bundleURL];
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (id)resolveDescriptorBySwappingIdentifiersWithExtensionIfApplicable:(id)applicable
{
  applicableCopy = applicable;
  bundleIdentifier = [applicableCopy bundleIdentifier];

  if (bundleIdentifier)
  {
    v5 = objc_alloc(MEMORY[0x1E69635D0]);
    bundleIdentifier2 = [applicableCopy bundleIdentifier];
    v7 = [v5 initWithBundleIdentifier:bundleIdentifier2 error:0];

    if (v7)
    {
      containingBundleRecord = [v7 containingBundleRecord];
      v22 = v7;
      if (containingBundleRecord)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v9 = containingBundleRecord;
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
      localizedName = [v11 localizedName];
      bundleIdentifier3 = [v11 bundleIdentifier];
      bundleIdentifier4 = [applicableCopy bundleIdentifier];
      in_counterpartIdentifiers = [v11 in_counterpartIdentifiers];
      teamIdentifier = [v11 teamIdentifier];
      in_supportedIntents = [v11 in_supportedIntents];
      v18 = [v11 URL];
      in_documentTypes = [v11 in_documentTypes];

      v10 = [(INAppDescriptor *)v21 initWithLocalizedName:localizedName bundleIdentifier:bundleIdentifier3 extensionBundleIdentifier:bundleIdentifier4 counterpartIdentifiers:in_counterpartIdentifiers teamIdentifier:teamIdentifier supportedIntents:in_supportedIntents bundleURL:v18 documentTypes:in_documentTypes];
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

- (id)_resolvedUserActivityMatchingDescriptor:(id)descriptor
{
  v161 = *MEMORY[0x1E69E9840];
  descriptorCopy = descriptor;
  context = objc_autoreleasePoolPush();
  v131 = [(INAppResolver *)self optionsForCurrentContextWithIntentClassName:0];
  v5 = [(INAppResolver *)self resolveDescriptorBySwappingIdentifiersWithExtensionIfApplicable:descriptorCopy];
  v120 = v5;
  if (v5)
  {
    v6 = v5;
    v7 = [INUserActivityDescriptor alloc];
    userActivityType = [descriptorCopy userActivityType];
    [v6 localizedName];
    v129 = descriptorCopy;
    v10 = v9 = v6;
    bundleIdentifier = [v6 bundleIdentifier];
    extensionBundleIdentifier = [v9 extensionBundleIdentifier];
    counterpartIdentifiers = [v9 counterpartIdentifiers];
    teamIdentifier = [v9 teamIdentifier];
    [v9 supportedIntents];
    v16 = v15 = self;
    bundleURL = [v9 bundleURL];
    v18 = [(INUserActivityDescriptor *)v7 initWithUserActivityType:userActivityType localizedName:v10 bundleIdentifier:bundleIdentifier extensionBundleIdentifier:extensionBundleIdentifier counterpartIdentifiers:counterpartIdentifiers teamIdentifier:teamIdentifier supportedIntents:v16 bundleURL:bundleURL];

    self = v15;
    descriptorCopy = v18;
  }

  v19 = [(INAppResolver *)self resolveDescriptorByLinkingFileProvidersToFilesApp:descriptorCopy];
  v119 = v19;
  if (v19)
  {
    v20 = v19;

    descriptorCopy = v20;
  }

  v21 = off_1E727B000;
  extensionBundleIdentifier2 = [descriptorCopy extensionBundleIdentifier];

  v130 = descriptorCopy;
  if (extensionBundleIdentifier2)
  {
    _systemAppMapper = [(INAppResolver *)self _systemAppMapper];
    extensionBundleIdentifier3 = [descriptorCopy extensionBundleIdentifier];
    counterpartIdentifiers3 = [_systemAppMapper resolvedAppMatchingExtensionBundleIdentifier:extensionBundleIdentifier3];

    if (counterpartIdentifiers3)
    {
      v26 = [INUserActivityDescriptor alloc];
      userActivityType2 = [descriptorCopy userActivityType];
      localizedName = [counterpartIdentifiers3 localizedName];
      bundleIdentifier2 = [counterpartIdentifiers3 bundleIdentifier];
      extensionBundleIdentifier4 = [counterpartIdentifiers3 extensionBundleIdentifier];
      counterpartIdentifiers2 = [counterpartIdentifiers3 counterpartIdentifiers];
      teamIdentifier2 = [counterpartIdentifiers3 teamIdentifier];
      supportedIntents = [counterpartIdentifiers3 supportedIntents];
      v34 = counterpartIdentifiers3;
LABEL_8:
      bundleURL2 = [v34 bundleURL];
      anyObject = [(INUserActivityDescriptor *)v26 initWithUserActivityType:userActivityType2 localizedName:localizedName bundleIdentifier:bundleIdentifier2 extensionBundleIdentifier:extensionBundleIdentifier4 counterpartIdentifiers:counterpartIdentifiers2 teamIdentifier:teamIdentifier2 supportedIntents:supportedIntents bundleURL:bundleURL2];

      descriptorCopy = v130;
LABEL_36:

      goto LABEL_87;
    }
  }

  bundleIdentifier3 = [descriptorCopy bundleIdentifier];

  if (bundleIdentifier3)
  {
    v38 = objc_alloc(MEMORY[0x1E69635F8]);
    bundleIdentifier4 = [descriptorCopy bundleIdentifier];
    counterpartIdentifiers3 = [v38 initWithBundleIdentifier:bundleIdentifier4 allowPlaceholder:0 error:0];

    applicationState = [counterpartIdentifiers3 applicationState];
    if ([applicationState isInstalled])
    {
      v41 = INApplicationRecordMatchesRequirementsFromUserActivityDescriptor(counterpartIdentifiers3, descriptorCopy, v131);

      if (v41)
      {
        v26 = [INUserActivityDescriptor alloc];
        userActivityType2 = [descriptorCopy userActivityType];
        localizedName = [counterpartIdentifiers3 localizedName];
        bundleIdentifier2 = [counterpartIdentifiers3 bundleIdentifier];
        extensionBundleIdentifier4 = [descriptorCopy extensionBundleIdentifier];
        counterpartIdentifiers2 = [counterpartIdentifiers3 in_counterpartIdentifiers];
        teamIdentifier2 = [counterpartIdentifiers3 teamIdentifier];
        supportedIntents = [counterpartIdentifiers3 in_supportedIntents];
        v34 = descriptorCopy;
        goto LABEL_8;
      }
    }

    else
    {
    }
  }

  selfCopy = self;
  v155 = 0u;
  v156 = 0u;
  v153 = 0u;
  v154 = 0u;
  counterpartIdentifiers3 = [descriptorCopy counterpartIdentifiers];
  v42 = [counterpartIdentifiers3 countByEnumeratingWithState:&v153 objects:v160 count:16];
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
        objc_enumerationMutation(counterpartIdentifiers3);
      }

      userActivityType2 = [objc_alloc(MEMORY[0x1E69635F8]) initWithBundleIdentifier:*(*(&v153 + 1) + 8 * i) allowPlaceholder:0 error:0];
      applicationState2 = [userActivityType2 applicationState];
      if ([applicationState2 isInstalled])
      {
        v47 = INApplicationRecordMatchesRequirementsFromUserActivityDescriptor(userActivityType2, descriptorCopy, v131);

        if (v47)
        {
          v136 = [INUserActivityDescriptor alloc];
          userActivityType3 = [descriptorCopy userActivityType];
          localizedName2 = [userActivityType2 localizedName];
          bundleIdentifier5 = [userActivityType2 bundleIdentifier];
          extensionBundleIdentifier5 = [descriptorCopy extensionBundleIdentifier];
          in_counterpartIdentifiers = [userActivityType2 in_counterpartIdentifiers];
          teamIdentifier3 = [userActivityType2 teamIdentifier];
          in_supportedIntents = [userActivityType2 in_supportedIntents];
          bundleURL3 = [v130 bundleURL];
          anyObject = [(INUserActivityDescriptor *)v136 initWithUserActivityType:userActivityType3 localizedName:localizedName2 bundleIdentifier:bundleIdentifier5 extensionBundleIdentifier:extensionBundleIdentifier5 counterpartIdentifiers:in_counterpartIdentifiers teamIdentifier:teamIdentifier3 supportedIntents:in_supportedIntents bundleURL:bundleURL3];

          descriptorCopy = v130;
          goto LABEL_36;
        }
      }

      else
      {
      }
    }

    v43 = [counterpartIdentifiers3 countByEnumeratingWithState:&v153 objects:v160 count:16];
  }

  while (v43);
LABEL_26:

  v48 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  _counterpartMapper = [(INAppResolver *)selfCopy _counterpartMapper];
  bundleIdentifier6 = [descriptorCopy bundleIdentifier];
  v51 = [_counterpartMapper localIdentifiersForCounterpartIdentifier:bundleIdentifier6];

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

  _systemAppMapper2 = [(INAppResolver *)selfCopy _systemAppMapper];
  bundleIdentifier7 = [descriptorCopy bundleIdentifier];
  v60 = [_systemAppMapper2 matchForBundleIdentifier:bundleIdentifier7];

  v61 = v60;
  if (v60)
  {
    if ([v60 appIsUnavailableOnCurrentPlatform])
    {
      anyObject = descriptorCopy;
      goto LABEL_86;
    }

    v69 = [INUserActivityDescriptor alloc];
    bundleIdentifierForCurrentPlatform = [v60 bundleIdentifierForCurrentPlatform];
    v71 = [(INUserActivityDescriptor *)v69 initWithUserActivityType:0 localizedName:0 bundleIdentifier:bundleIdentifierForCurrentPlatform extensionBundleIdentifier:0 counterpartIdentifiers:0 teamIdentifier:0 supportedIntents:0 bundleURL:0];

    [v48 addObject:v71];
    v61 = v60;
  }

  v146[0] = MEMORY[0x1E69E9820];
  v146[1] = 3221225472;
  v146[2] = __57__INAppResolver__resolvedUserActivityMatchingDescriptor___block_invoke;
  v146[3] = &unk_1E727F680;
  v128 = descriptorCopy;
  v147 = v128;
  v72 = v131;
  v148 = v72;
  v73 = [v48 if_compactMap:v146];
  [v48 removeAllObjects];
  if ([v73 count] == 1)
  {
    anyObject = [v73 anyObject];
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
      anyObject2 = v128;
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
            userActivityType4 = [v77 userActivityType];
            localizedName3 = [v81 localizedName];
            bundleIdentifier8 = [v81 bundleIdentifier];
            extensionBundleIdentifier6 = [v77 extensionBundleIdentifier];
            in_counterpartIdentifiers2 = [v81 in_counterpartIdentifiers];
            teamIdentifier4 = [v81 teamIdentifier];
            in_supportedIntents2 = [v81 in_supportedIntents];
            bundleURL4 = [v77 bundleURL];
            v92 = [v83 initWithUserActivityType:userActivityType4 localizedName:localizedName3 bundleIdentifier:bundleIdentifier8 extensionBundleIdentifier:extensionBundleIdentifier6 counterpartIdentifiers:in_counterpartIdentifiers2 teamIdentifier:teamIdentifier4 supportedIntents:in_supportedIntents2 bundleURL:bundleURL4];

            v77 = v128;
            descriptorCopy = v130;

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
    anyObject2 = [v48 anyObject];
LABEL_59:
    anyObject = anyObject2;
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
  anyObject = 0;
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
      localizedName4 = [v100 localizedName];

      if (localizedName4)
      {
        localizedName5 = [v100 localizedName];
        localizedName6 = [v102 localizedName];
        v106 = INEditDistanceBetweenStrings(localizedName5, localizedName6);
        goto LABEL_67;
      }

      bundleIdentifier9 = [v100 bundleIdentifier];

      if (bundleIdentifier9)
      {
        bundleIdentifier10 = [v100 bundleIdentifier];
        bundleIdentifier11 = [v102 bundleIdentifier];
        localizedName5 = [bundleIdentifier10 commonPrefixWithString:bundleIdentifier11 options:0];

        if ([localizedName5 length])
        {
          bundleIdentifier12 = [v100 bundleIdentifier];
          localizedName6 = [bundleIdentifier12 substringFromIndex:{objc_msgSend(localizedName5, "length")}];

          bundleIdentifier13 = [v102 bundleIdentifier];
          v113 = [bundleIdentifier13 substringFromIndex:{objc_msgSend(localizedName5, "length")}];

          v106 = INEditDistanceBetweenStrings(localizedName6, v113);
          v100 = v128;
LABEL_67:

          if (v106 >= v99 || v106 > 5)
          {
            goto LABEL_77;
          }

          localizedName5 = anyObject;
          anyObject = v102;
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
  if (anyObject)
  {
    [(INAppDescriptor *)anyObject setRequiresUserConfirmation:v99 > 0];
    goto LABEL_83;
  }

LABEL_82:
  anyObject = v100;
LABEL_83:
  descriptorCopy = v130;
  v61 = v117;
LABEL_84:
  v73 = v118;
LABEL_85:

LABEL_86:
LABEL_87:

  objc_autoreleasePoolPop(context);
  v114 = *MEMORY[0x1E69E9840];

  return anyObject;
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

- (id)resolvedUserActivityMatchingDescriptor:(id)descriptor
{
  descriptorCopy = descriptor;
  if (INDescriptorContainsBundleIdentifiers(descriptorCopy))
  {
    v5 = descriptorCopy;
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

- (id)_resolvedIntentMatchingDescriptor:(id)descriptor
{
  v210 = *MEMORY[0x1E69E9840];
  descriptorCopy = descriptor;
  context = objc_autoreleasePoolPush();
  v5 = [(INAppResolver *)self resolveDescriptorBySwappingIdentifiersWithExtensionIfApplicable:descriptorCopy];
  v165 = v5;
  selfCopy = self;
  if (v5)
  {
    v6 = v5;
    objc = [INIntentDescriptor alloc];
    intentClassName = [(INIntentDescriptor *)descriptorCopy intentClassName];
    localizedName = [v6 localizedName];
    bundleIdentifier = [v6 bundleIdentifier];
    bundleIdentifier2 = [v6 bundleIdentifier];
    extensionBundleIdentifier = [v6 extensionBundleIdentifier];
    uiExtensionBundleIdentifier = [(INIntentDescriptor *)descriptorCopy uiExtensionBundleIdentifier];
    counterpartIdentifiers = [v6 counterpartIdentifiers];
    teamIdentifier = [v6 teamIdentifier];
    preferredCallProvider = [(INIntentDescriptor *)descriptorCopy preferredCallProvider];
    [v6 supportedIntents];
    v12 = v11 = v6;
    [v11 bundleURL];
    v14 = v13 = descriptorCopy;
    documentTypes = [v11 documentTypes];
    objd = [(INIntentDescriptor *)objc initWithIntentClassName:intentClassName localizedName:localizedName bundleIdentifier:bundleIdentifier displayableBundleIdentifier:bundleIdentifier2 extensionBundleIdentifier:extensionBundleIdentifier uiExtensionBundleIdentifier:uiExtensionBundleIdentifier counterpartIdentifiers:counterpartIdentifiers teamIdentifier:teamIdentifier preferredCallProvider:preferredCallProvider supportedIntents:v12 bundleURL:v14 documentTypes:documentTypes];

    descriptorCopy = objd;
  }

  extensionBundleIdentifier2 = [(INAppDescriptor *)descriptorCopy extensionBundleIdentifier];

  if (extensionBundleIdentifier2)
  {
    v17 = selfCopy;
    _systemAppMapper = [(INAppResolver *)selfCopy _systemAppMapper];
    extensionBundleIdentifier3 = [(INAppDescriptor *)descriptorCopy extensionBundleIdentifier];
    goto LABEL_7;
  }

  bundleIdentifier3 = [(INAppDescriptor *)descriptorCopy bundleIdentifier];

  v17 = selfCopy;
  if (bundleIdentifier3)
  {
    _systemAppMapper = [(INAppResolver *)selfCopy _systemAppMapper];
    extensionBundleIdentifier3 = [(INAppDescriptor *)descriptorCopy bundleIdentifier];
LABEL_7:
    v21 = extensionBundleIdentifier3;
    preferredCallProvider2 = [(INIntentDescriptor *)descriptorCopy preferredCallProvider];
    intentClassName2 = [(INIntentDescriptor *)descriptorCopy intentClassName];
    v24 = [_systemAppMapper resolvedIntentMatchingExtensionBundleIdentifier:v21 preferredCallProvider:preferredCallProvider2 intentClassName:intentClassName2];

    if (v24)
    {
      goto LABEL_112;
    }
  }

  intentClassName3 = [(INIntentDescriptor *)descriptorCopy intentClassName];
  v168 = [(INAppResolver *)v17 optionsForCurrentContextWithIntentClassName:intentClassName3];

  bundleIdentifier4 = [(INAppDescriptor *)descriptorCopy bundleIdentifier];

  if (bundleIdentifier4)
  {
    v27 = objc_alloc(MEMORY[0x1E69635F8]);
    bundleIdentifier5 = [(INAppDescriptor *)descriptorCopy bundleIdentifier];
    counterpartIdentifiers2 = [v27 initWithBundleIdentifier:bundleIdentifier5 allowPlaceholder:0 error:0];

    applicationState = [counterpartIdentifiers2 applicationState];
    if ([applicationState isInstalled])
    {
      v31 = INApplicationRecordMatchesRequirementsFromIntentDescriptor(counterpartIdentifiers2, descriptorCopy, v168);

      if (v31)
      {
        localizedName2 = [counterpartIdentifiers2 localizedName];
        displayableBundleIdentifier = [(INIntentDescriptor *)descriptorCopy displayableBundleIdentifier];
        v34 = displayableBundleIdentifier;
        if (displayableBundleIdentifier)
        {
          bundleIdentifier6 = displayableBundleIdentifier;
        }

        else
        {
          bundleIdentifier6 = [counterpartIdentifiers2 bundleIdentifier];
        }

        v112 = bundleIdentifier6;

        bundleIdentifier7 = [counterpartIdentifiers2 bundleIdentifier];
        v114 = [bundleIdentifier7 isEqualToString:v112];

        v175 = v112;
        if (v114)
        {
          objb = localizedName2;
        }

        else
        {
          v115 = [objc_alloc(MEMORY[0x1E69635F8]) initWithBundleIdentifier:v112 allowPlaceholder:0 error:0];
          localizedName3 = [v115 localizedName];

          if (localizedName3)
          {
            localizedName4 = [v115 localizedName];

            objb = localizedName4;
          }

          else
          {
            objb = localizedName2;
          }
        }

        v172 = [INIntentDescriptor alloc];
        intentClassName4 = [(INIntentDescriptor *)descriptorCopy intentClassName];
        bundleIdentifier8 = [counterpartIdentifiers2 bundleIdentifier];
        extensionBundleIdentifier4 = [(INAppDescriptor *)descriptorCopy extensionBundleIdentifier];
        uiExtensionBundleIdentifier2 = [(INIntentDescriptor *)descriptorCopy uiExtensionBundleIdentifier];
        in_counterpartIdentifiers = [counterpartIdentifiers2 in_counterpartIdentifiers];
        teamIdentifier2 = [counterpartIdentifiers2 teamIdentifier];
        preferredCallProvider3 = [(INIntentDescriptor *)descriptorCopy preferredCallProvider];
        in_supportedIntents = [counterpartIdentifiers2 in_supportedIntents];
        bundleURL = [(INAppDescriptor *)descriptorCopy bundleURL];
        in_documentTypes = [counterpartIdentifiers2 in_documentTypes];
        v142 = [(INIntentDescriptor *)v172 initWithIntentClassName:intentClassName4 localizedName:objb bundleIdentifier:bundleIdentifier8 displayableBundleIdentifier:v175 extensionBundleIdentifier:extensionBundleIdentifier4 uiExtensionBundleIdentifier:uiExtensionBundleIdentifier2 counterpartIdentifiers:in_counterpartIdentifiers teamIdentifier:teamIdentifier2 preferredCallProvider:preferredCallProvider3 supportedIntents:in_supportedIntents bundleURL:bundleURL documentTypes:in_documentTypes];

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
  counterpartIdentifiers2 = [(INAppDescriptor *)descriptorCopy counterpartIdentifiers];
  v36 = [counterpartIdentifiers2 countByEnumeratingWithState:&v201 objects:v209 count:16];
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
          objc_enumerationMutation(counterpartIdentifiers2);
        }

        v40 = [objc_alloc(MEMORY[0x1E69635F8]) initWithBundleIdentifier:*(*(&v201 + 1) + 8 * i) allowPlaceholder:0 error:0];
        applicationState2 = [v40 applicationState];
        if ([applicationState2 isInstalled])
        {
          v42 = INApplicationRecordMatchesRequirementsFromIntentDescriptor(v40, descriptorCopy, v168);

          if (v42)
          {
            localizedName5 = [v40 localizedName];
            displayableBundleIdentifier2 = [(INIntentDescriptor *)descriptorCopy displayableBundleIdentifier];
            v87 = displayableBundleIdentifier2;
            if (displayableBundleIdentifier2)
            {
              bundleIdentifier9 = displayableBundleIdentifier2;
            }

            else
            {
              bundleIdentifier9 = [v40 bundleIdentifier];
            }

            v89 = bundleIdentifier9;

            bundleIdentifier10 = [v40 bundleIdentifier];
            v91 = [bundleIdentifier10 isEqualToString:v89];

            obja = v89;
            if (v91)
            {
              v174 = localizedName5;
            }

            else
            {
              v92 = [objc_alloc(MEMORY[0x1E69635F8]) initWithBundleIdentifier:v89 allowPlaceholder:0 error:0];
              localizedName6 = [v92 localizedName];

              if (localizedName6)
              {
                localizedName7 = [v92 localizedName];

                v174 = localizedName7;
              }

              else
              {
                v174 = localizedName5;
              }
            }

            v170 = [INIntentDescriptor alloc];
            intentClassName5 = [(INIntentDescriptor *)descriptorCopy intentClassName];
            bundleIdentifier11 = [v40 bundleIdentifier];
            extensionBundleIdentifier5 = [(INAppDescriptor *)descriptorCopy extensionBundleIdentifier];
            uiExtensionBundleIdentifier3 = [(INIntentDescriptor *)descriptorCopy uiExtensionBundleIdentifier];
            in_counterpartIdentifiers2 = [v40 in_counterpartIdentifiers];
            teamIdentifier3 = [v40 teamIdentifier];
            preferredCallProvider4 = [(INIntentDescriptor *)descriptorCopy preferredCallProvider];
            in_supportedIntents2 = [v40 in_supportedIntents];
            bundleURL2 = [(INAppDescriptor *)descriptorCopy bundleURL];
            [v40 in_documentTypes];
            v110 = v109 = descriptorCopy;
            v111 = [(INIntentDescriptor *)v170 initWithIntentClassName:intentClassName5 localizedName:v174 bundleIdentifier:bundleIdentifier11 displayableBundleIdentifier:obja extensionBundleIdentifier:extensionBundleIdentifier5 uiExtensionBundleIdentifier:uiExtensionBundleIdentifier3 counterpartIdentifiers:in_counterpartIdentifiers2 teamIdentifier:teamIdentifier3 preferredCallProvider:preferredCallProvider4 supportedIntents:in_supportedIntents2 bundleURL:bundleURL2 documentTypes:v110];

            descriptorCopy = v109;
            v24 = v111;

            goto LABEL_110;
          }
        }

        else
        {
        }
      }

      v37 = [counterpartIdentifiers2 countByEnumeratingWithState:&v201 objects:v209 count:16];
    }

    while (v37);
  }

  bundleIdentifier12 = [(INAppDescriptor *)descriptorCopy bundleIdentifier];

  v44 = selfCopy;
  if (bundleIdentifier12)
  {
    _systemAppMapper2 = [(INAppResolver *)selfCopy _systemAppMapper];
    bundleIdentifier13 = [(INAppDescriptor *)descriptorCopy bundleIdentifier];
    preferredCallProvider5 = [(INIntentDescriptor *)descriptorCopy preferredCallProvider];
    intentClassName6 = [(INIntentDescriptor *)descriptorCopy intentClassName];
    v24 = [_systemAppMapper2 resolvedIntentMatchingAppBundleIdentifier:bundleIdentifier13 preferredCallProvider:preferredCallProvider5 intentClassName:intentClassName6];

    if (v24)
    {
      goto LABEL_111;
    }
  }

  v49 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  extensionBundleIdentifier6 = [(INAppDescriptor *)descriptorCopy extensionBundleIdentifier];

  if (extensionBundleIdentifier6)
  {
    extensionBundleIdentifier7 = [(INAppDescriptor *)descriptorCopy extensionBundleIdentifier];
    _frameworkMapper = [(INAppResolver *)selfCopy _frameworkMapper];
    v53 = [_frameworkMapper launchableAppBundleIdentifierForSystemExtensionBundleIdentifier:extensionBundleIdentifier7];

    _frameworkMapper2 = [(INAppResolver *)selfCopy _frameworkMapper];
    v55 = [_frameworkMapper2 displayableAppBundleIdentifierForSystemExtensionBundleIdentifier:extensionBundleIdentifier7];

    if (v53 | v55)
    {
      if ([(INIntentDescriptor *)descriptorCopy preferredCallProvider]== 2)
      {
        _systemAppMapper3 = [(INAppResolver *)selfCopy _systemAppMapper];
        v57 = [_systemAppMapper3 bundleIdentifiersForIntentExecutionMatchingBundleIdentifier:@"com.apple.facetime"];
        firstObject = [v57 firstObject];

        v55 = firstObject;
      }

      v59 = [INIntentDescriptor alloc];
      extensionBundleIdentifier8 = [(INAppDescriptor *)descriptorCopy extensionBundleIdentifier];
      v61 = [(INIntentDescriptor *)v59 initWithIntentClassName:0 localizedName:0 bundleIdentifier:v53 displayableBundleIdentifier:v55 extensionBundleIdentifier:extensionBundleIdentifier8 uiExtensionBundleIdentifier:0 counterpartIdentifiers:0 teamIdentifier:0 preferredCallProvider:[(INIntentDescriptor *)descriptorCopy preferredCallProvider] supportedIntents:0 bundleURL:0 documentTypes:0];

      [v49 addObject:v61];
      v44 = selfCopy;
    }
  }

  v62 = v44;
  _systemAppMapper4 = [(INAppResolver *)v44 _systemAppMapper];
  bundleIdentifier14 = [(INAppDescriptor *)descriptorCopy bundleIdentifier];
  v65 = [_systemAppMapper4 bundleIdentifiersForIntentExecutionMatchingBundleIdentifier:bundleIdentifier14];

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

  _counterpartMapper = [(INAppResolver *)v62 _counterpartMapper];
  bundleIdentifier15 = [(INAppDescriptor *)descriptorCopy bundleIdentifier];
  v74 = [_counterpartMapper localIdentifiersForCounterpartIdentifier:bundleIdentifier15];

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
  v158 = descriptorCopy;
  v81 = descriptorCopy;
  v191 = v81;
  v82 = v168;
  v192 = v82;
  v83 = [v49 if_compactMap:v190];
  [v49 removeAllObjects];
  if ([v83 count] == 1)
  {
    v84 = v83;
LABEL_72:
    anyObject = [v84 anyObject];
LABEL_73:
    v24 = anyObject;
    goto LABEL_74;
  }

  if ([v83 count] < 2)
  {
    v118 = [v83 count];
    if (v67 && !v118)
    {
      anyObject = v81;
      goto LABEL_73;
    }
  }

  else
  {
    allObjects = [v83 allObjects];
    [v49 addObjectsFromArray:allObjects];
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
      localizedName8 = [(INAppDescriptor *)v81 localizedName];

      if (localizedName8)
      {
        localizedName9 = [(INAppDescriptor *)v81 localizedName];
        localizedName10 = [v122 localizedName];
        v126 = INEditDistanceBetweenStrings(localizedName9, localizedName10);
      }

      else
      {
        bundleIdentifier16 = [(INAppDescriptor *)v81 bundleIdentifier];

        if (!bundleIdentifier16)
        {
          continue;
        }

        bundleIdentifier17 = [(INAppDescriptor *)v81 bundleIdentifier];
        bundleIdentifier18 = [v122 bundleIdentifier];
        localizedName9 = [bundleIdentifier17 commonPrefixWithString:bundleIdentifier18 options:0];

        if (![localizedName9 length])
        {
          goto LABEL_99;
        }

        bundleIdentifier19 = [(INAppDescriptor *)v81 bundleIdentifier];
        localizedName10 = [bundleIdentifier19 substringFromIndex:{objc_msgSend(localizedName9, "length")}];

        bundleIdentifier20 = [v122 bundleIdentifier];
        [bundleIdentifier20 substringFromIndex:{objc_msgSend(localizedName9, "length")}];
        v133 = v120;
        v134 = v119;
        v136 = v135 = v24;

        v126 = INEditDistanceBetweenStrings(localizedName10, v136);
        v24 = v135;
        v119 = v134;
        v120 = v133;
        v81 = v163;
      }

      if (v126 < v176 && v126 <= 5)
      {
        localizedName9 = v24;
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

  descriptorCopy = v158;
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

- (id)resolvedIntentMatchingDescriptor:(id)descriptor
{
  descriptorCopy = descriptor;
  if (INDescriptorContainsBundleIdentifiers(descriptorCopy))
  {
    v5 = descriptorCopy;
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

- (id)_resolvedAppMatchingDescriptor:(id)descriptor
{
  v124 = *MEMORY[0x1E69E9840];
  descriptorCopy = descriptor;
  v5 = objc_autoreleasePoolPush();
  v100 = [(INAppResolver *)self optionsForCurrentContextWithIntentClassName:0];
  bundleIdentifier = [descriptorCopy bundleIdentifier];

  if (bundleIdentifier)
  {
    v7 = objc_alloc(MEMORY[0x1E69635F8]);
    bundleIdentifier2 = [descriptorCopy bundleIdentifier];
    v9 = [v7 initWithBundleIdentifier:bundleIdentifier2 allowPlaceholder:0 error:0];

    applicationState = [v9 applicationState];
    if ([applicationState isInstalled])
    {
      v11 = INApplicationRecordMatchesRequirementsFromDescriptor(v9, descriptorCopy, v100);

      if (v11)
      {
        v12 = [descriptorCopy descriptorWithRecord:v9];

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
  counterpartIdentifiers = [descriptorCopy counterpartIdentifiers];
  v14 = [counterpartIdentifiers countByEnumeratingWithState:&v116 objects:v123 count:16];
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
          objc_enumerationMutation(counterpartIdentifiers);
        }

        v18 = [objc_alloc(MEMORY[0x1E69635F8]) initWithBundleIdentifier:*(*(&v116 + 1) + 8 * i) allowPlaceholder:0 error:0];
        applicationState2 = [v18 applicationState];
        if ([applicationState2 isInstalled])
        {
          v20 = INApplicationRecordMatchesRequirementsFromDescriptor(v18, descriptorCopy, v100);

          if (v20)
          {
            v12 = [descriptorCopy descriptorWithRecord:v18];

            goto LABEL_65;
          }
        }

        else
        {
        }
      }

      v15 = [counterpartIdentifiers countByEnumeratingWithState:&v116 objects:v123 count:16];
    }

    while (v15);
  }

  counterpartIdentifiers = [(INAppResolver *)self resolveDescriptorBySwappingIdentifiersWithExtensionIfApplicable:descriptorCopy];
  if (counterpartIdentifiers)
  {
    v21 = objc_alloc(MEMORY[0x1E69635F8]);
    bundleURL = [counterpartIdentifiers bundleURL];
    v23 = [v21 initWithURL:bundleURL allowPlaceholder:0 error:0];

    applicationState3 = [v23 applicationState];
    if ([applicationState3 isInstalled])
    {
      v25 = INApplicationRecordMatchesRequirementsFromDescriptor(v23, descriptorCopy, v100);

      if (v25)
      {
        v12 = [descriptorCopy descriptorWithRecord:v23];
        goto LABEL_64;
      }
    }

    else
    {
    }

    v26 = counterpartIdentifiers;

    descriptorCopy = v26;
  }

  extensionBundleIdentifier = [descriptorCopy extensionBundleIdentifier];

  if (!extensionBundleIdentifier)
  {
    goto LABEL_26;
  }

  _systemAppMapper = [(INAppResolver *)self _systemAppMapper];
  extensionBundleIdentifier2 = [descriptorCopy extensionBundleIdentifier];
  v12 = [_systemAppMapper resolvedAppMatchingExtensionBundleIdentifier:extensionBundleIdentifier2];

  if (!v12)
  {
LABEL_26:
    v94 = counterpartIdentifiers;
    v23 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    _counterpartMapper = [(INAppResolver *)self _counterpartMapper];
    bundleIdentifier3 = [descriptorCopy bundleIdentifier];
    v32 = [_counterpartMapper localIdentifiersForCounterpartIdentifier:bundleIdentifier3];

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

    _systemAppMapper2 = [(INAppResolver *)self _systemAppMapper];
    bundleIdentifier4 = [descriptorCopy bundleIdentifier];
    v41 = [_systemAppMapper2 matchForBundleIdentifier:bundleIdentifier4];

    v42 = v41;
    if (v41)
    {
      if ([v41 appIsUnavailableOnCurrentPlatform])
      {
        v12 = descriptorCopy;
        goto LABEL_63;
      }

      v43 = [INAppDescriptor alloc];
      bundleIdentifierForCurrentPlatform = [v41 bundleIdentifierForCurrentPlatform];
      v45 = [(INAppDescriptor *)v43 initWithBundleIdentifier:bundleIdentifierForCurrentPlatform];

      v42 = v41;
      [v23 addObject:v45];
    }

    extensionBundleIdentifier3 = [descriptorCopy extensionBundleIdentifier];

    if (extensionBundleIdentifier3)
    {
      v47 = v42;
      extensionBundleIdentifier4 = [descriptorCopy extensionBundleIdentifier];
      _frameworkMapper = [(INAppResolver *)self _frameworkMapper];
      v50 = [_frameworkMapper launchableAppBundleIdentifierForSystemExtensionBundleIdentifier:extensionBundleIdentifier4];

      _frameworkMapper2 = [(INAppResolver *)self _frameworkMapper];
      v52 = [_frameworkMapper2 displayableAppBundleIdentifierForSystemExtensionBundleIdentifier:extensionBundleIdentifier4];

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
    v93 = descriptorCopy;
    v55 = descriptorCopy;
    v110 = v55;
    v56 = v100;
    v111 = v56;
    v57 = [v23 if_compactMap:v109];
    [v23 removeAllObjects];
    if ([v57 count] == 1)
    {
      v58 = v57;
LABEL_60:
      anyObject = [v58 anyObject];
LABEL_61:
      v12 = anyObject;
      goto LABEL_62;
    }

    if ([v57 count] < 2)
    {
      v71 = [v57 count];
      if (v42 && !v71)
      {
        anyObject = v55;
        goto LABEL_61;
      }
    }

    else
    {
      allObjects = [v57 allObjects];
      [v23 addObjectsFromArray:allObjects];
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
      localizedName = [v55 localizedName];

      if (localizedName)
      {
        break;
      }

      bundleIdentifier5 = [v55 bundleIdentifier];

      if (!bundleIdentifier5)
      {
        goto LABEL_89;
      }

      bundleIdentifier6 = [v55 bundleIdentifier];
      bundleIdentifier7 = [v74 bundleIdentifier];
      localizedName2 = [bundleIdentifier6 commonPrefixWithString:bundleIdentifier7 options:0];

      if ([localizedName2 length])
      {
        bundleIdentifier8 = [v55 bundleIdentifier];
        localizedName3 = [bundleIdentifier8 substringFromIndex:{objc_msgSend(localizedName2, "length")}];

        bundleIdentifier9 = [v74 bundleIdentifier];
        [bundleIdentifier9 substringFromIndex:{objc_msgSend(localizedName2, "length")}];
        v85 = v33;
        v86 = v72;
        v88 = v87 = v12;

        v78 = INEditDistanceBetweenStrings(localizedName3, v88);
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

          descriptorCopy = v93;
LABEL_63:

          counterpartIdentifiers = v94;
LABEL_64:

          goto LABEL_65;
        }

        goto LABEL_74;
      }
    }

    localizedName2 = [v55 localizedName];
    localizedName3 = [v74 localizedName];
    v78 = INEditDistanceBetweenStrings(localizedName2, localizedName3);
LABEL_79:

    if (v78 >= v99 || v78 > 5)
    {
      goto LABEL_89;
    }

    localizedName2 = v12;
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

- (id)resolvedAppMatchingDescriptor:(id)descriptor
{
  descriptorCopy = descriptor;
  if (INDescriptorContainsBundleIdentifiers(descriptorCopy))
  {
    v5 = descriptorCopy;
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
  if (objc_opt_class() == self && INAppResolverLogInitIfNeeded_once != -1)
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