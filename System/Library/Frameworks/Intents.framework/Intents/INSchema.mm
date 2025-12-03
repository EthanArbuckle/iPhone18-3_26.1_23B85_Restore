@interface INSchema
+ (BOOL)_defaultSchemaCanSupportIntent:(id)intent;
+ (id)_cache;
+ (id)_defaultSchemaForBundle:(id)bundle contentOptions:(unint64_t)options;
+ (id)_loadSystemSchema;
+ (id)_schemaWithIntentDefinitionURLs:(id)ls bundleIdentifier:(id)identifier mainBundleIdentifier:(id)bundleIdentifier contentOptions:(unint64_t)options;
+ (id)_supportedClasses;
+ (id)_supportedTypesDictionary;
+ (id)defaultSchema;
+ (id)systemSchema;
+ (void)_resetCache;
- (INSchema)init;
- (INSchema)initWithCoder:(id)coder;
- (id)_classNamesForClass:(Class)class;
- (id)_codableDescriptionWithDictionary:(id)dictionary intentDefinitionNamespace:(id)namespace filename:(id)filename bundleIdentifier:(id)identifier codableDescriptionClass:(Class)class;
- (id)_codableDescriptionsForClass:(Class)class;
- (id)_configurableParameterCombinationsForClassName:(id)name;
- (id)_dictionaryRepresentationForIntentCodableDescription:(id)description intentResponseCodableDescription:(id)codableDescription appInfo:(id)info localizer:(id)localizer;
- (id)_initWithContentsOfURLs:(id)ls bundleIdentifier:(id)identifier mainBundleIdentifier:(id)bundleIdentifier contentOptions:(unint64_t)options;
- (id)_intentResponseWithDictionary:(id)dictionary intentDefinitionNamespace:(id)namespace className:(id)name filename:(id)filename bundleIdentifier:(id)identifier referencedCodableDescriptions:(id)descriptions;
- (id)_intentWithDictionary:(id)dictionary intentDefinitionNamespace:(id)namespace filename:(id)filename bundleIdentifier:(id)identifier;
- (id)_objectDescriptionForClass:(Class)class identifier:(id)identifier;
- (id)_objectDescriptionForTypeOfClass:(Class)class;
- (id)_objectDescriptionWithSemanticKeypath:(id)keypath;
- (id)_parameterCombinationsForClass:(Class)class;
- (id)_parameterCombinationsForClassName:(id)name;
- (id)_typesWithDictionary:(id)dictionary filename:(id)filename bundleIdentifier:(id)identifier;
- (id)descriptionAtIndent:(unint64_t)indent;
- (id)dictionaryRepresentationForIntent:(id)intent;
- (id)dictionaryRepresentationForIntent:(id)intent localizer:(id)localizer;
- (id)intentCodableDescriptionWithIntentClassName:(id)name;
- (id)intentResponseCodableDescriptionWithIntentClassName:(id)name;
- (id)intentResponseCodableDescriptionWithIntentResponseClassName:(id)name;
- (id)intentWithName:(id)name;
- (void)_loadIntentsFromArrayOfDictionaries:(id)dictionaries intentDefinitionNamespace:(id)namespace fromFile:(id)file bundleIdentifier:(id)identifier referencedCodableDescriptions:(id)descriptions contentOptions:(unint64_t)options;
- (void)_setObjectDescription:(id)description forClass:(Class)class identifier:(id)identifier;
- (void)encodeWithCoder:(id)coder;
@end

@implementation INSchema

+ (id)defaultSchema
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __25__INSchema_defaultSchema__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (defaultSchema_onceToken != -1)
  {
    dispatch_once(&defaultSchema_onceToken, block);
  }

  v2 = defaultSchema_schema;

  return v2;
}

void __25__INSchema_defaultSchema__block_invoke(void *a1)
{
  v3 = INContainingBundleURLForCurrentProcess();
  v4 = a1[4];
  v11 = v3;
  if (v3 && ([MEMORY[0x1E696AC08] defaultManager], a1 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v11, "path"), v1 = objc_claimAutoreleasedReturnValue(), objc_msgSend(a1, "isReadableFileAtPath:", v1)))
  {
    v5 = [MEMORY[0x1E696AAE8] bundleWithURL:v11];
    v6 = 0;
    v7 = 1;
  }

  else
  {
    v5 = [MEMORY[0x1E696AAE8] mainBundle];
    v7 = 0;
    v6 = 1;
  }

  v8 = [v4 _defaultSchemaForBundle:v5];
  v9 = defaultSchema_schema;
  defaultSchema_schema = v8;

  if (v6)
  {
  }

  if (v7)
  {
  }

  v10 = v11;
  if (v11)
  {

    v10 = v11;
  }
}

+ (id)_cache
{
  if (_cache_onceToken != -1)
  {
    dispatch_once(&_cache_onceToken, &__block_literal_global_82);
  }

  v3 = _cache_schemaCache;

  return v3;
}

uint64_t __18__INSchema__cache__block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x1E695DEE0]);
  v1 = _cache_schemaCache;
  _cache_schemaCache = v0;

  v2 = _cache_schemaCache;

  return [v2 setEvictsObjectsWhenApplicationEntersBackground:0];
}

void __37__INSchema__supportedTypesDictionary__block_invoke()
{
  v16 = *MEMORY[0x1E69E9840];
  v0 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v1 = &unk_1F02DD200;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v2 = [&unk_1F02DD200 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v12;
    do
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v12 != v4)
        {
          objc_enumerationMutation(&unk_1F02DD200);
        }

        v6 = *(*(&v11 + 1) + 8 * i);
        v7 = [v6 objectForKeyedSubscript:@"Name"];
        if (v7)
        {
          [v0 if_setObjectIfNonNil:v6 forKey:v7];
        }
      }

      v3 = [&unk_1F02DD200 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v3);
  }

  v8 = [v0 copy];
  v9 = _supportedTypesDictionary_supportedTypesDictionary;
  _supportedTypesDictionary_supportedTypesDictionary = v8;

  v10 = *MEMORY[0x1E69E9840];
}

+ (id)systemSchema
{
  if (systemSchema_isImmortal)
  {
    goto LABEL_5;
  }

  currentThread = [MEMORY[0x1E696AF00] currentThread];
  if ([currentThread isMainThread])
  {

LABEL_5:
    os_unfair_lock_lock(&systemSchemaAccessorLock);
    systemSchema_isImmortal = 1;
    if (!systemSchema)
    {
      _loadSystemSchema = [self _loadSystemSchema];
      v7 = systemSchema;
      systemSchema = _loadSystemSchema;
    }

    os_unfair_lock_unlock(&systemSchemaAccessorLock);
    v8 = systemSchema;
    goto LABEL_8;
  }

  currentProcess = [MEMORY[0x1E69C75D0] currentProcess];
  isApplication = [currentProcess isApplication];

  if (isApplication)
  {
    goto LABEL_5;
  }

  os_unfair_lock_lock(&systemSchemaAccessorLock);
  v10 = systemSchema;
  if (!systemSchema)
  {
    _loadSystemSchema2 = [self _loadSystemSchema];
    v12 = systemSchema;
    systemSchema = _loadSystemSchema2;

    v10 = systemSchema;
  }

  v8 = v10;
  if (systemSchema_timerSource)
  {
    dispatch_source_cancel(systemSchema_timerSource);
  }

  v13 = dispatch_get_global_queue(-2, 0);
  v14 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, v13);
  v15 = systemSchema_timerSource;
  systemSchema_timerSource = v14;

  dispatch_source_set_event_handler(systemSchema_timerSource, &__block_literal_global_38);
  v16 = dispatch_time(0, 10000000000);
  dispatch_source_set_timer(systemSchema_timerSource, v16, 0xFFFFFFFFFFFFFFFFLL, 0x3B9ACA00uLL);
  dispatch_resume(systemSchema_timerSource);
  os_unfair_lock_unlock(&systemSchemaAccessorLock);
LABEL_8:

  return v8;
}

- (INSchema)init
{
  v14.receiver = self;
  v14.super_class = INSchema;
  v2 = [(INSchema *)&v14 init];
  if (v2)
  {
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    schemaDictionary = v2->_schemaDictionary;
    v2->_schemaDictionary = dictionary;

    dictionary2 = [MEMORY[0x1E695DF90] dictionary];
    parameterCombinationDictionary = v2->_parameterCombinationDictionary;
    v2->_parameterCombinationDictionary = dictionary2;

    dictionary3 = [MEMORY[0x1E695DF90] dictionary];
    configurableParameterCombinationDictionary = v2->_configurableParameterCombinationDictionary;
    v2->_configurableParameterCombinationDictionary = dictionary3;

    v9 = objc_alloc_init(MEMORY[0x1E695DF90]);
    types = v2->_types;
    v2->_types = v9;

    v11 = objc_alloc_init(MEMORY[0x1E695DF90]);
    enums = v2->_enums;
    v2->_enums = v11;
  }

  return v2;
}

+ (id)_loadSystemSchema
{
  v2 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v3 = [INSchema alloc];
  v4 = INSchemaURLsWithBundle(v2);
  bundleIdentifier = [v2 bundleIdentifier];
  v6 = [(INSchema *)v3 _initWithContentsOfURLs:v4 bundleIdentifier:bundleIdentifier mainBundleIdentifier:0 contentOptions:31];

  return v6;
}

+ (void)_resetCache
{
  _cache = [self _cache];
  [_cache removeAllObjects];

  os_unfair_lock_lock(&systemSchemaAccessorLock);
  v3 = systemSchema;
  systemSchema = 0;

  os_unfair_lock_unlock(&systemSchemaAccessorLock);
}

void __24__INSchema_systemSchema__block_invoke()
{
  os_unfair_lock_lock(&systemSchemaAccessorLock);
  if ((systemSchema_isImmortal & 1) == 0)
  {
    v0 = systemSchema;
    systemSchema = 0;
  }

  os_unfair_lock_unlock(&systemSchemaAccessorLock);
}

- (id)descriptionAtIndent:(unint64_t)indent
{
  v5 = MEMORY[0x1E696AEC0];
  v11.receiver = self;
  v11.super_class = INSchema;
  v6 = [(INSchema *)&v11 description];
  _dictionaryRepresentation = [(INSchema *)self _dictionaryRepresentation];
  v8 = [_dictionaryRepresentation descriptionAtIndent:indent];
  v9 = [v5 stringWithFormat:@"%@ %@", v6, v8];

  return v9;
}

- (INSchema)initWithCoder:(id)coder
{
  coderCopy = coder;
  v20.receiver = self;
  v20.super_class = INSchema;
  v5 = [(INSchema *)&v20 init];
  if (v5)
  {
    v6 = MEMORY[0x1E695DFD8];
    v7 = objc_opt_class();
    v8 = objc_opt_class();
    v9 = objc_opt_class();
    v10 = objc_opt_class();
    v11 = objc_opt_class();
    v12 = objc_opt_class();
    v13 = objc_opt_class();
    v14 = [v6 setWithObjects:{v7, v8, v9, v10, v11, v12, v13, objc_opt_class(), 0}];
    v15 = [coderCopy decodeObjectOfClasses:v14 forKey:@"schemaDictionary"];
    schemaDictionary = v5->_schemaDictionary;
    v5->_schemaDictionary = v15;

    v17 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_mainBundleIdentifier"];
    mainBundleIdentifier = v5->_mainBundleIdentifier;
    v5->_mainBundleIdentifier = v17;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  schemaDictionary = self->_schemaDictionary;
  coderCopy = coder;
  [coderCopy encodeObject:schemaDictionary forKey:@"schemaDictionary"];
  [coderCopy encodeObject:self->_mainBundleIdentifier forKey:@"_mainBundleIdentifier"];
}

- (id)_objectDescriptionWithSemanticKeypath:(id)keypath
{
  v26 = *MEMORY[0x1E69E9840];
  keypathCopy = keypath;
  if (keypathCopy)
  {
    if (!self->_typeForSemanticKeypathDictionary)
    {
      v5 = MEMORY[0x1E695DF90];
      _types = [(INSchema *)self _types];
      v7 = [v5 dictionaryWithCapacity:{objc_msgSend(_types, "count")}];

      v23 = 0u;
      v24 = 0u;
      v21 = 0u;
      v22 = 0u;
      _types2 = [(INSchema *)self _types];
      allValues = [_types2 allValues];

      v10 = [allValues countByEnumeratingWithState:&v21 objects:v25 count:16];
      if (v10)
      {
        v11 = v10;
        v12 = *v22;
        do
        {
          for (i = 0; i != v11; ++i)
          {
            if (*v22 != v12)
            {
              objc_enumerationMutation(allValues);
            }

            v14 = *(*(&v21 + 1) + 8 * i);
            semanticRoot = [v14 semanticRoot];
            if (semanticRoot)
            {
              [(NSDictionary *)v7 setObject:v14 forKey:semanticRoot];
            }
          }

          v11 = [allValues countByEnumeratingWithState:&v21 objects:v25 count:16];
        }

        while (v11);
      }

      typeForSemanticKeypathDictionary = self->_typeForSemanticKeypathDictionary;
      self->_typeForSemanticKeypathDictionary = v7;
    }

    _typeForSemanticKeypathDictionary = [(INSchema *)self _typeForSemanticKeypathDictionary];
    v18 = [_typeForSemanticKeypathDictionary objectForKeyedSubscript:keypathCopy];
  }

  else
  {
    v18 = 0;
  }

  v19 = *MEMORY[0x1E69E9840];

  return v18;
}

- (id)_dictionaryRepresentationForIntentCodableDescription:(id)description intentResponseCodableDescription:(id)codableDescription appInfo:(id)info localizer:(id)localizer
{
  v102 = *MEMORY[0x1E69E9840];
  descriptionCopy = description;
  codableDescriptionCopy = codableDescription;
  infoCopy = info;
  localizerCopy = localizer;
  className = [descriptionCopy className];
  v14 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v15 = className;
  v16 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v76 = descriptionCopy;
  v17 = [descriptionCopy dictionaryRepresentationWithLocalizer:localizerCopy];
  v18 = [v17 mutableCopy];

  if (infoCopy)
  {
    actionsRestrictedWhileProtectedDataUnavailable = [infoCopy actionsRestrictedWhileProtectedDataUnavailable];
    v20 = [actionsRestrictedWhileProtectedDataUnavailable containsObject:v15];

    if (v20)
    {
      v21 = 2;
    }

    else
    {
      actionsRestrictedWhileLocked = [infoCopy actionsRestrictedWhileLocked];
      v23 = [actionsRestrictedWhileLocked containsObject:v15];

      v21 = v23;
    }

    v24 = [MEMORY[0x1E696AD98] numberWithInteger:v21];
    v25 = [MEMORY[0x1E696AEC0] stringWithFormat:@"INIntent%@", @"Restrictions"];
    [v18 if_setObjectIfNonNil:v24 forKey:v25];
  }

  v77 = infoCopy;
  v26 = [codableDescriptionCopy dictionaryRepresentationWithLocalizer:localizerCopy];
  v27 = [MEMORY[0x1E696AEC0] stringWithFormat:@"INIntent%@", @"Response"];
  v75 = v26;
  [v18 setObject:v26 forKey:v27];

  v95[0] = MEMORY[0x1E69E9820];
  v95[1] = 3221225472;
  v95[2] = __116__INSchema__dictionaryRepresentationForIntentCodableDescription_intentResponseCodableDescription_appInfo_localizer___block_invoke;
  v95[3] = &unk_1E727EA40;
  v28 = localizerCopy;
  v96 = v28;
  v29 = MEMORY[0x193AD7780](v95);
  v73 = [(INSchema *)self _parameterCombinationsForClassName:v15];
  (*(v29 + 16))(v29);
  v31 = v30 = v15;
  v32 = [MEMORY[0x1E696AEC0] stringWithFormat:@"INIntent%@", @"ParameterCombinations"];
  [v18 setObject:v31 forKey:v32];

  [(INSchema *)self _configurableParameterCombinationsForClassName:v30];
  v72 = v74 = v29;
  v33 = (*(v29 + 16))(v29);
  v34 = [MEMORY[0x1E696AEC0] stringWithFormat:@"INIntent%@", @"ManagedParameterCombinations"];
  [v18 setObject:v33 forKey:v34];

  v93 = 0u;
  v94 = 0u;
  v91 = 0u;
  v92 = 0u;
  referencedCodableDescriptions = [v76 referencedCodableDescriptions];
  v36 = [referencedCodableDescriptions countByEnumeratingWithState:&v91 objects:v101 count:16];
  if (v36)
  {
    v37 = v36;
    v38 = *v92;
    do
    {
      for (i = 0; i != v37; ++i)
      {
        if (*v92 != v38)
        {
          objc_enumerationMutation(referencedCodableDescriptions);
        }

        v40 = [*(*(&v91 + 1) + 8 * i) dictionaryRepresentationWithLocalizer:v28];
        [v16 addObject:v40];
      }

      v37 = [referencedCodableDescriptions countByEnumeratingWithState:&v91 objects:v101 count:16];
    }

    while (v37);
  }

  v89 = 0u;
  v90 = 0u;
  v87 = 0u;
  v88 = 0u;
  referencedCodableEnums = [v76 referencedCodableEnums];
  v42 = [referencedCodableEnums countByEnumeratingWithState:&v87 objects:v100 count:16];
  if (v42)
  {
    v43 = v42;
    v44 = *v88;
    do
    {
      for (j = 0; j != v43; ++j)
      {
        if (*v88 != v44)
        {
          objc_enumerationMutation(referencedCodableEnums);
        }

        v46 = [*(*(&v87 + 1) + 8 * j) dictionaryRepresentationWithLocalizer:v28];
        [v14 addObject:v46];
      }

      v43 = [referencedCodableEnums countByEnumeratingWithState:&v87 objects:v100 count:16];
    }

    while (v43);
  }

  v85 = 0u;
  v86 = 0u;
  v83 = 0u;
  v84 = 0u;
  referencedCodableDescriptions2 = [codableDescriptionCopy referencedCodableDescriptions];
  v48 = [referencedCodableDescriptions2 countByEnumeratingWithState:&v83 objects:v99 count:16];
  if (v48)
  {
    v49 = v48;
    v50 = *v84;
    do
    {
      for (k = 0; k != v49; ++k)
      {
        if (*v84 != v50)
        {
          objc_enumerationMutation(referencedCodableDescriptions2);
        }

        v52 = [*(*(&v83 + 1) + 8 * k) dictionaryRepresentationWithLocalizer:v28];
        [v16 addObject:v52];
      }

      v49 = [referencedCodableDescriptions2 countByEnumeratingWithState:&v83 objects:v99 count:16];
    }

    while (v49);
  }

  v81 = 0u;
  v82 = 0u;
  v79 = 0u;
  v80 = 0u;
  referencedCodableEnums2 = [codableDescriptionCopy referencedCodableEnums];
  v54 = [referencedCodableEnums2 countByEnumeratingWithState:&v79 objects:v98 count:16];
  if (v54)
  {
    v55 = v54;
    v56 = *v80;
    do
    {
      for (m = 0; m != v55; ++m)
      {
        if (*v80 != v56)
        {
          objc_enumerationMutation(referencedCodableEnums2);
        }

        v58 = [*(*(&v79 + 1) + 8 * m) dictionaryRepresentationWithLocalizer:v28];
        [v14 addObject:v58];
      }

      v55 = [referencedCodableEnums2 countByEnumeratingWithState:&v79 objects:v98 count:16];
    }

    while (v55);
  }

  v59 = objc_alloc_init(MEMORY[0x1E695DF90]);
  intentDefinitionNamespace = [v76 intentDefinitionNamespace];
  v61 = intentDefinitionNamespace;
  if (intentDefinitionNamespace)
  {
    v62 = intentDefinitionNamespace;
  }

  else
  {
    v62 = &stru_1F01E0850;
  }

  [v59 setObject:v62 forKeyedSubscript:@"INIntentDefinitionNamespace"];

  allObjects = [v14 allObjects];
  v64 = [MEMORY[0x1E696AEC0] stringWithFormat:@"INEnum%@", @"s"];
  [v59 setObject:allObjects forKeyedSubscript:v64];

  allObjects2 = [v16 allObjects];
  v66 = [MEMORY[0x1E696AEC0] stringWithFormat:@"INType%@", @"s"];
  [v59 setObject:allObjects2 forKeyedSubscript:v66];

  v97 = v18;
  v67 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v97 count:1];
  v68 = [MEMORY[0x1E696AEC0] stringWithFormat:@"INIntent%@", @"s"];
  [v59 setObject:v67 forKeyedSubscript:v68];

  developmentRegion = [v77 developmentRegion];
  [v59 setObject:developmentRegion forKeyedSubscript:*MEMORY[0x1E695E4E0]];

  v70 = *MEMORY[0x1E69E9840];

  return v59;
}

id __116__INSchema__dictionaryRepresentationForIntentCodableDescription_intentResponseCodableDescription_appInfo_localizer___block_invoke(uint64_t a1, void *a2)
{
  v22 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(v3, "count")}];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v18;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v18 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v17 + 1) + 8 * i);
        v11 = [v10 allObjects];
        v12 = [v11 componentsJoinedByString:{@", "}];

        v13 = [v5 objectForKeyedSubscript:v10];
        v14 = [v13 dictionaryRepresentationWithLocalizer:*(a1 + 32)];
        [v4 setObject:v14 forKey:v12];
      }

      v7 = [v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v7);
  }

  v15 = *MEMORY[0x1E69E9840];

  return v4;
}

- (id)dictionaryRepresentationForIntent:(id)intent localizer:(id)localizer
{
  v44 = *MEMORY[0x1E69E9840];
  intentCopy = intent;
  localizerCopy = localizer;
  _className = [intentCopy _className];
  v9 = [(INSchema *)self intentCodableDescriptionWithIntentClassName:_className];
  v10 = [(INSchema *)self intentResponseCodableDescriptionWithIntentClassName:_className];
  v11 = v10;
  v12 = 0;
  if (v9 && v10)
  {
    v13 = [INAppInfo appInfoWithIntent:intentCopy];
    v32 = 0;
    v33 = &v32;
    v34 = 0x3032000000;
    v35 = __Block_byref_object_copy__11851;
    v36 = __Block_byref_object_dispose__11852;
    v37 = 0;
    v26[0] = MEMORY[0x1E69E9820];
    v26[1] = 3221225472;
    v26[2] = __56__INSchema_dictionaryRepresentationForIntent_localizer___block_invoke;
    v26[3] = &unk_1E727EA18;
    v31 = &v32;
    v26[4] = self;
    v14 = v9;
    v27 = v14;
    v28 = v11;
    v24 = v13;
    v29 = v24;
    v30 = localizerCopy;
    v15 = MEMORY[0x193AD7780](v26);
    _localizationTable = [v14 _localizationTable];
    bundleIdentifier = [_localizationTable bundleIdentifier];

    if (bundleIdentifier)
    {
      v18 = +[INImageServiceConnection sharedConnection];
      v19 = [MEMORY[0x1E695DFD8] setWithObject:bundleIdentifier];
      v25 = 0;
      [v18 accessBundleContentForBundleIdentifiers:v19 withBlock:v15 error:&v25];
      v20 = v25;

      if (!v20)
      {
LABEL_10:
        v12 = v33[5];

        _Block_object_dispose(&v32, 8);
        goto LABEL_11;
      }
    }

    else
    {
      v20 = 0;
    }

    v21 = INSiriLogContextIntents;
    if (os_log_type_enabled(INSiriLogContextIntents, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v39 = "[INSchema dictionaryRepresentationForIntent:localizer:]";
      v40 = 2112;
      v41 = bundleIdentifier;
      v42 = 2112;
      v43 = v20;
      _os_log_error_impl(&dword_18E991000, v21, OS_LOG_TYPE_ERROR, "%s Error accessing bundle (%@) content: %@", buf, 0x20u);
    }

    v15[2](v15);
    goto LABEL_10;
  }

LABEL_11:

  v22 = *MEMORY[0x1E69E9840];

  return v12;
}

uint64_t __56__INSchema_dictionaryRepresentationForIntent_localizer___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _dictionaryRepresentationForIntentCodableDescription:*(a1 + 40) intentResponseCodableDescription:*(a1 + 48) appInfo:*(a1 + 56) localizer:*(a1 + 64)];
  v3 = *(*(a1 + 72) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8](v2, v4);
}

- (id)dictionaryRepresentationForIntent:(id)intent
{
  intentCopy = intent;
  v5 = objc_opt_new();
  v6 = [(INSchema *)self dictionaryRepresentationForIntent:intentCopy localizer:v5];

  return v6;
}

- (id)_objectDescriptionForTypeOfClass:(Class)class
{
  classCopy = class;
  if (class)
  {
    _typeForClassDictionary = [(INSchema *)self _typeForClassDictionary];
    v5 = NSStringFromClass(classCopy);
    classCopy = [_typeForClassDictionary objectForKeyedSubscript:v5];
  }

  return classCopy;
}

- (id)_codableDescriptionsForClass:(Class)class
{
  schemaDictionary = self->_schemaDictionary;
  v4 = NSStringFromClass(class);
  v5 = [(NSMutableDictionary *)schemaDictionary objectForKeyedSubscript:v4];
  allValues = [v5 allValues];

  return allValues;
}

- (id)_classNamesForClass:(Class)class
{
  schemaDictionary = self->_schemaDictionary;
  v4 = NSStringFromClass(class);
  v5 = [(NSMutableDictionary *)schemaDictionary objectForKeyedSubscript:v4];
  allKeys = [v5 allKeys];

  return allKeys;
}

- (id)_configurableParameterCombinationsForClassName:(id)name
{
  v4 = [name componentsSeparatedByString:@"."];
  lastObject = [v4 lastObject];

  if (lastObject)
  {
    v6 = [(NSMutableDictionary *)self->_configurableParameterCombinationDictionary objectForKeyedSubscript:lastObject];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)_parameterCombinationsForClassName:(id)name
{
  v4 = [name componentsSeparatedByString:@"."];
  lastObject = [v4 lastObject];

  if (lastObject)
  {
    v6 = [(NSMutableDictionary *)self->_parameterCombinationDictionary objectForKeyedSubscript:lastObject];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)_parameterCombinationsForClass:(Class)class
{
  v4 = NSStringFromClass(class);
  v5 = [(INSchema *)self _parameterCombinationsForClassName:v4];

  return v5;
}

- (id)_objectDescriptionForClass:(Class)class identifier:(id)identifier
{
  v6 = [identifier componentsSeparatedByString:@"."];
  lastObject = [v6 lastObject];

  if (lastObject)
  {
    schemaDictionary = self->_schemaDictionary;
    v9 = NSStringFromClass(class);
    v10 = [(NSMutableDictionary *)schemaDictionary objectForKeyedSubscript:v9];
    v11 = [v10 objectForKeyedSubscript:lastObject];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (void)_setObjectDescription:(id)description forClass:(Class)class identifier:(id)identifier
{
  schemaDictionary = self->_schemaDictionary;
  identifierCopy = identifier;
  descriptionCopy = description;
  v11 = NSStringFromClass(class);
  v12 = [(NSMutableDictionary *)schemaDictionary objectForKeyedSubscript:v11];
  v13 = v12;
  if (v12)
  {
    v16 = v12;
  }

  else
  {
    v16 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v14 = self->_schemaDictionary;
    v15 = NSStringFromClass(class);
    [(NSMutableDictionary *)v14 setObject:v16 forKeyedSubscript:v15];
  }

  [v16 setObject:descriptionCopy forKey:identifierCopy];
}

- (void)_loadIntentsFromArrayOfDictionaries:(id)dictionaries intentDefinitionNamespace:(id)namespace fromFile:(id)file bundleIdentifier:(id)identifier referencedCodableDescriptions:(id)descriptions contentOptions:(unint64_t)options
{
  optionsCopy = options;
  v54 = *MEMORY[0x1E69E9840];
  dictionariesCopy = dictionaries;
  namespaceCopy = namespace;
  fileCopy = file;
  identifierCopy = identifier;
  descriptionsCopy = descriptions;
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  obj = dictionariesCopy;
  v44 = [dictionariesCopy countByEnumeratingWithState:&v49 objects:v53 count:16];
  if (v44)
  {
    v43 = *v50;
    do
    {
      v14 = 0;
      do
      {
        if (*v50 != v43)
        {
          objc_enumerationMutation(obj);
        }

        v15 = *(*(&v49 + 1) + 8 * v14);
        v16 = [MEMORY[0x1E696AEC0] stringWithFormat:@"INIntent%@", @"UnsupportedPlatforms"];
        v47 = [v15 objectForKeyedSubscript:v16];

        if ((optionsCopy & 8) != 0)
        {
          v18 = [MEMORY[0x1E696AEC0] stringWithFormat:@"INIntent%@", @"ParameterCombinations"];
          v19 = [v15 objectForKeyedSubscript:v18];
          v17 = _INParameterCombinationsWithDictionary(v19, fileCopy, identifierCopy);
        }

        else
        {
          v17 = 0;
        }

        if ((optionsCopy & 0x10) != 0)
        {
          v21 = [MEMORY[0x1E696AEC0] stringWithFormat:@"INIntent%@", @"ManagedParameterCombinations"];
          v22 = [v15 objectForKeyedSubscript:v21];
          v20 = _INParameterCombinationsWithDictionary(v22, fileCopy, identifierCopy);
        }

        else
        {
          v20 = 0;
        }

        if (optionsCopy)
        {
          v23 = [(INSchema *)self _intentWithDictionary:v15 intentDefinitionNamespace:namespaceCopy filename:fileCopy bundleIdentifier:identifierCopy];
          className = [v23 className];
          v25 = [className stringByAppendingString:@"Response"];

          v26 = [(INSchema *)self _intentResponseWithDictionary:v15 intentDefinitionNamespace:namespaceCopy className:v25 filename:fileCopy bundleIdentifier:identifierCopy referencedCodableDescriptions:descriptionsCopy];
          [v23 _establishReferencedCodableDescriptionsUsingTypes:descriptionsCopy intentResponseCodableDescription:v26];
          v27 = objc_opt_class();
          className2 = [v23 className];
          [(INSchema *)self _setObjectDescription:v23 forClass:v27 identifier:className2];

          [(INSchema *)self _setObjectDescription:v26 forClass:objc_opt_class() identifier:v25];
        }

        v29 = [MEMORY[0x1E696AEC0] stringWithFormat:@"INIntent%@", @"Name"];
        v30 = [v15 objectForKeyedSubscript:v29];

        v31 = [MEMORY[0x1E696AEC0] stringWithFormat:@"INIntent%@", @"ClassName"];
        v32 = [v15 objectForKeyedSubscript:v31];

        if (![v32 length])
        {
          v33 = MEMORY[0x1E696AEC0];
          v34 = [MEMORY[0x1E696AEC0] stringWithFormat:@"INIntent%@", @"ClassPrefix"];
          v35 = [v15 objectForKeyedSubscript:v34];
          v36 = v35;
          v37 = &stru_1F01E0850;
          if (v35)
          {
            v37 = v35;
          }

          v38 = [v33 stringWithFormat:@"%@%@Intent", v37, v30];

          v32 = v38;
        }

        [(NSMutableDictionary *)self->_parameterCombinationDictionary setObject:v17 forKeyedSubscript:v32];
        [(NSMutableDictionary *)self->_configurableParameterCombinationDictionary setObject:v20 forKeyedSubscript:v32];

        ++v14;
      }

      while (v44 != v14);
      v44 = [obj countByEnumeratingWithState:&v49 objects:v53 count:16];
    }

    while (v44);
  }

  v39 = *MEMORY[0x1E69E9840];
}

- (id)_intentResponseWithDictionary:(id)dictionary intentDefinitionNamespace:(id)namespace className:(id)name filename:(id)filename bundleIdentifier:(id)identifier referencedCodableDescriptions:(id)descriptions
{
  v14 = MEMORY[0x1E696AEC0];
  descriptionsCopy = descriptions;
  identifierCopy = identifier;
  filenameCopy = filename;
  nameCopy = name;
  namespaceCopy = namespace;
  dictionaryCopy = dictionary;
  v21 = [v14 stringWithFormat:@"INIntent%@", @"Response"];
  v22 = [dictionaryCopy objectForKeyedSubscript:v21];

  v23 = [(INSchema *)self _codableDescriptionWithDictionary:v22 intentDefinitionNamespace:namespaceCopy filename:filenameCopy bundleIdentifier:identifierCopy codableDescriptionClass:objc_opt_class()];

  [v23 _establishReferencedCodableDescriptionsUsingTypes:descriptionsCopy];
  [v23 setClassName:nameCopy];

  return v23;
}

- (id)_intentWithDictionary:(id)dictionary intentDefinitionNamespace:(id)namespace filename:(id)filename bundleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  filenameCopy = filename;
  namespaceCopy = namespace;
  dictionaryCopy = dictionary;
  v14 = [(INSchema *)self _codableDescriptionWithDictionary:dictionaryCopy intentDefinitionNamespace:namespaceCopy filename:filenameCopy bundleIdentifier:identifierCopy codableDescriptionClass:objc_opt_class()];

  return v14;
}

- (id)_typesWithDictionary:(id)dictionary filename:(id)filename bundleIdentifier:(id)identifier
{
  v67 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  filenameCopy = filename;
  identifierCopy = identifier;
  v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"INType%@", @"s"];
  v10 = [dictionaryCopy objectForKeyedSubscript:v9];

  v43 = dictionaryCopy;
  v51 = [dictionaryCopy objectForKeyedSubscript:@"INIntentDefinitionNamespace"];
  v11 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:{objc_msgSend(v10, "count")}];
  v60 = 0u;
  v61 = 0u;
  v62 = 0u;
  v63 = 0u;
  obj = v10;
  v12 = [obj countByEnumeratingWithState:&v60 objects:v66 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v61;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v61 != v14)
        {
          objc_enumerationMutation(obj);
        }

        v16 = *(*(&v60 + 1) + 8 * i);
        v17 = [(INSchema *)self _codableDescriptionWithDictionary:v16 intentDefinitionNamespace:v51 filename:filenameCopy bundleIdentifier:identifierCopy codableDescriptionClass:objc_opt_class()];
        _mainBundleIdentifier = [(INSchema *)self _mainBundleIdentifier];
        [v17 setMainBundleIdentifier:_mainBundleIdentifier];

        v19 = [MEMORY[0x1E696AEC0] stringWithFormat:@"INType%@", @"SemanticRoot"];
        v20 = [v16 objectForKeyedSubscript:v19];

        if (v20)
        {
          [v17 setSemanticRoot:v20];
        }

        typeName = [v17 typeName];
        v22 = INIntentDefinitionNamespacedName(v51, typeName);
        [v11 setObject:v17 forKeyedSubscript:v22];
      }

      v13 = [obj countByEnumeratingWithState:&v60 objects:v66 count:16];
    }

    while (v13);
  }

  v58 = 0u;
  v59 = 0u;
  v56 = 0u;
  v57 = 0u;
  allValues = [v11 allValues];
  v49 = [allValues countByEnumeratingWithState:&v56 objects:v65 count:16];
  if (v49)
  {
    v46 = *v57;
    do
    {
      v23 = 0;
      do
      {
        if (*v57 != v46)
        {
          objc_enumerationMutation(allValues);
        }

        v50 = v23;
        v24 = *(*(&v56 + 1) + 8 * v23);
        v52 = 0u;
        v53 = 0u;
        v54 = 0u;
        v55 = 0u;
        attributes = [v24 attributes];
        allValues2 = [attributes allValues];

        v27 = [allValues2 countByEnumeratingWithState:&v52 objects:v64 count:16];
        if (v27)
        {
          v28 = v27;
          v29 = *v53;
          do
          {
            for (j = 0; j != v28; ++j)
            {
              if (*v53 != v29)
              {
                objc_enumerationMutation(allValues2);
              }

              v31 = *(*(&v52 + 1) + 8 * j);
              if (v31)
              {
                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  v32 = v31;
                }

                else
                {
                  v32 = 0;
                }
              }

              else
              {
                v32 = 0;
              }

              v33 = v32;

              objectTypeNamespace = [v33 objectTypeNamespace];
              objectTypeName = [v33 objectTypeName];
              v36 = INIntentDefinitionNamespacedName(objectTypeNamespace, objectTypeName);
              v37 = [v11 objectForKeyedSubscript:v36];

              if (v33)
              {
                WeakRetained = objc_loadWeakRetained(v33 + 21);
                if (!WeakRetained || (v39 = WeakRetained, v40 = objc_loadWeakRetained(v33 + 21), v40, v39, v40 != v37))
                {
                  [v33 setCodableDescription:v37];
                }
              }
            }

            v28 = [allValues2 countByEnumeratingWithState:&v52 objects:v64 count:16];
          }

          while (v28);
        }

        v23 = v50 + 1;
      }

      while (v50 + 1 != v49);
      v49 = [allValues countByEnumeratingWithState:&v56 objects:v65 count:16];
    }

    while (v49);
  }

  v41 = *MEMORY[0x1E69E9840];

  return v11;
}

- (id)_codableDescriptionWithDictionary:(id)dictionary intentDefinitionNamespace:(id)namespace filename:(id)filename bundleIdentifier:(id)identifier codableDescriptionClass:(Class)class
{
  identifierCopy = identifier;
  filenameCopy = filename;
  namespaceCopy = namespace;
  dictionaryCopy = dictionary;
  v16 = objc_alloc_init(class);
  [v16 setSchema:self];
  [v16 updateWithDictionary:dictionaryCopy];

  [v16 setIntentDefinitionNamespace:namespaceCopy];
  v17 = [INCodableLocalizationTable alloc];
  stringByDeletingPathExtension = [filenameCopy stringByDeletingPathExtension];

  v19 = [(INCodableLocalizationTable *)v17 initWithBundleIdentifier:identifierCopy tableName:stringByDeletingPathExtension];
  [v16 _setLocalizationTable:v19];

  return v16;
}

- (id)intentWithName:(id)name
{
  nameCopy = name;
  v5 = objc_opt_class();
  v6 = NSClassFromString(nameCopy);
  if (v6)
  {
    v7 = v6;
    if ([(objc_class *)v6 isSubclassOfClass:v5])
    {
      v8 = v7;
    }

    else
    {
      v8 = 0;
    }

    v6 = v8;
  }

  v9 = [v6 alloc];
  uUID = [MEMORY[0x1E696AFB0] UUID];
  uUIDString = [uUID UUIDString];
  v12 = [v9 _initWithIdentifier:uUIDString schema:self name:nameCopy data:0];

  return v12;
}

- (id)_initWithContentsOfURLs:(id)ls bundleIdentifier:(id)identifier mainBundleIdentifier:(id)bundleIdentifier contentOptions:(unint64_t)options
{
  v103 = *MEMORY[0x1E69E9840];
  lsCopy = ls;
  identifierCopy = identifier;
  bundleIdentifierCopy = bundleIdentifier;
  v11 = [(INSchema *)self init];
  if (v11)
  {
    v11->_system = [identifierCopy isEqualToString:@"com.apple.Intents"];
    objc_storeStrong(&v11->_mainBundleIdentifier, bundleIdentifier);
    v12 = [lsCopy copy];
    definitionFileURLs = v11->_definitionFileURLs;
    v11->_definitionFileURLs = v12;

    v89 = 0u;
    v90 = 0u;
    v87 = 0u;
    v88 = 0u;
    v64 = lsCopy;
    obj = lsCopy;
    v75 = [obj countByEnumeratingWithState:&v87 objects:v96 count:16];
    if (v75)
    {
      v14 = *v88;
      v15 = 0x1E695D000uLL;
      v67 = identifierCopy;
      v68 = v11;
      v66 = *v88;
      do
      {
        for (i = 0; i != v75; ++i)
        {
          if (*v88 != v14)
          {
            objc_enumerationMutation(obj);
          }

          v17 = *(*(&v87 + 1) + 8 * i);
          v18 = objc_autoreleasePoolPush();
          v19 = objc_autoreleasePoolPush();
          v20 = *(v15 + 3872);
          v86 = 0;
          v21 = [v20 dictionaryWithContentsOfURL:v17 error:&v86];
          v80 = v86;
          if (v21)
          {
            context = v19;
            v78 = v18;
            v76 = [v21 objectForKeyedSubscript:@"INIntentDefinitionNamespace"];
            optionsCopy2 = options;
            if ((options & 2) != 0)
            {
              v73 = v17;
              v74 = i;
              enums = v11->_enums;
              lastPathComponent = [v17 lastPathComponent];
              v72 = v21;
              v24 = v21;
              v25 = identifierCopy;
              v26 = [MEMORY[0x1E696AEC0] stringWithFormat:@"INEnum%@", @"s"];
              v27 = [v24 objectForKeyedSubscript:v26];

              v70 = v24;
              v28 = [v24 objectForKeyedSubscript:@"INIntentDefinitionNamespace"];
              v29 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:{objc_msgSend(v27, "count")}];
              v91 = 0u;
              v92 = 0u;
              v93 = 0u;
              v94 = 0u;
              v81 = v27;
              v30 = [v81 countByEnumeratingWithState:&v91 objects:buf count:16];
              if (v30)
              {
                v31 = v30;
                v32 = *v92;
                do
                {
                  for (j = 0; j != v31; ++j)
                  {
                    if (*v92 != v32)
                    {
                      objc_enumerationMutation(v81);
                    }

                    v34 = *(*(&v91 + 1) + 8 * j);
                    v35 = objc_alloc_init(INCodableEnum);
                    [(INCodableEnum *)v35 updateWithDictionary:v34];
                    v36 = [INCodableLocalizationTable alloc];
                    stringByDeletingPathExtension = [lastPathComponent stringByDeletingPathExtension];
                    v38 = [(INCodableLocalizationTable *)v36 initWithBundleIdentifier:v25 tableName:stringByDeletingPathExtension];
                    [(INCodableEnum *)v35 _setLocalizationTable:v38];

                    [(INCodableEnum *)v35 _setEnumNamespace:v28];
                    name = [(INCodableEnum *)v35 name];
                    v40 = INIntentDefinitionNamespacedName(v28, name);
                    [v29 setObject:v35 forKey:v40];
                  }

                  v31 = [v81 countByEnumeratingWithState:&v91 objects:buf count:16];
                }

                while (v31);
              }

              v41 = [v29 copy];
              [(NSMutableDictionary *)enums addEntriesFromDictionary:v41];

              identifierCopy = v67;
              v11 = v68;
              optionsCopy2 = options;
              v14 = v66;
              v17 = v73;
              i = v74;
              v21 = v72;
            }

            v42 = i;
            if ((optionsCopy2 & 4) != 0)
            {
              [v17 lastPathComponent];
              v46 = v44 = v17;
              v43 = [(INSchema *)v11 _typesWithDictionary:v21 filename:v46 bundleIdentifier:identifierCopy];

              [(NSMutableDictionary *)v11->_types addEntriesFromDictionary:v43];
            }

            else
            {
              v43 = 0;
              v44 = v17;
            }

            v47 = [MEMORY[0x1E696AEC0] stringWithFormat:@"INIntent%@", @"s"];
            v48 = [v21 objectForKeyedSubscript:v47];

            objc_autoreleasePoolPop(context);
            v49 = objc_autoreleasePoolPush();
            lastPathComponent2 = [v44 lastPathComponent];
            [(INSchema *)v11 _loadIntentsFromArrayOfDictionaries:v48 intentDefinitionNamespace:v76 fromFile:lastPathComponent2 bundleIdentifier:identifierCopy referencedCodableDescriptions:v43 contentOptions:options];

            objc_autoreleasePoolPop(v49);
            i = v42;
            v18 = v78;
            v15 = 0x1E695D000;
          }

          else
          {
            v45 = INSiriLogContextIntents;
            if (os_log_type_enabled(INSiriLogContextIntents, OS_LOG_TYPE_ERROR))
            {
              v51 = v45;
              path = [v17 path];
              *buf = 136315650;
              v98 = "[INSchema _initWithContentsOfURLs:bundleIdentifier:mainBundleIdentifier:contentOptions:]";
              v99 = 2114;
              v100 = path;
              v101 = 2114;
              v102 = v80;
              _os_log_error_impl(&dword_18E991000, v51, OS_LOG_TYPE_ERROR, "%s Invalid intent definition plist found at %{public}@, error: %{public}@", buf, 0x20u);
            }

            objc_autoreleasePoolPop(v19);
          }

          objc_autoreleasePoolPop(v18);
        }

        v75 = [obj countByEnumeratingWithState:&v87 objects:v96 count:16];
      }

      while (v75);
    }

    v53 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{-[NSMutableDictionary count](v11->_types, "count")}];
    v82 = 0u;
    v83 = 0u;
    v84 = 0u;
    v85 = 0u;
    allValues = [(NSMutableDictionary *)v11->_types allValues];
    v55 = [allValues countByEnumeratingWithState:&v82 objects:v95 count:16];
    if (v55)
    {
      v56 = v55;
      v57 = *v83;
      do
      {
        for (k = 0; k != v56; ++k)
        {
          if (*v83 != v57)
          {
            objc_enumerationMutation(allValues);
          }

          v59 = *(*(&v82 + 1) + 8 * k);
          className = [v59 className];
          [(NSDictionary *)v53 setObject:v59 forKey:className];
        }

        v56 = [allValues countByEnumeratingWithState:&v82 objects:v95 count:16];
      }

      while (v56);
    }

    typeForClassDictionary = v11->_typeForClassDictionary;
    v11->_typeForClassDictionary = v53;

    lsCopy = v64;
  }

  v62 = *MEMORY[0x1E69E9840];
  return v11;
}

- (id)intentResponseCodableDescriptionWithIntentResponseClassName:(id)name
{
  nameCopy = name;
  v5 = [(INSchema *)self _objectDescriptionForClass:objc_opt_class() identifier:nameCopy];
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

  if ([(INSchema *)self isSystem])
  {
    goto LABEL_17;
  }

  v8 = objc_opt_class();
  v9 = NSClassFromString(nameCopy);
  if (v9)
  {
    v10 = v9;
    if ([(objc_class *)v9 isSubclassOfClass:v8])
    {
      v11 = v10;
    }

    else
    {
      v11 = 0;
    }

    v9 = v11;
  }

  v12 = INIntentSchemaGetIntentResponseDescriptionWithFacadeClass(v9);

  if (!v12)
  {
LABEL_17:
    v16 = v7;
  }

  else
  {
    v13 = +[INSchema systemSchema];
    v14 = [v13 _objectDescriptionForClass:objc_opt_class() identifier:nameCopy];

    if (v14)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v15 = v14;
      }

      else
      {
        v15 = 0;
      }
    }

    else
    {
      v15 = 0;
    }

    v16 = v15;
  }

  return v16;
}

- (id)intentResponseCodableDescriptionWithIntentClassName:(id)name
{
  v4 = [name stringByAppendingString:@"Response"];
  v5 = [(INSchema *)self intentResponseCodableDescriptionWithIntentResponseClassName:v4];

  return v5;
}

- (id)intentCodableDescriptionWithIntentClassName:(id)name
{
  nameCopy = name;
  v5 = [(INSchema *)self _objectDescriptionForClass:objc_opt_class() identifier:nameCopy];
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

  if ([(INSchema *)self isSystem])
  {
    goto LABEL_17;
  }

  v8 = objc_opt_class();
  v9 = NSClassFromString(nameCopy);
  if (v9)
  {
    v10 = v9;
    if ([(objc_class *)v9 isSubclassOfClass:v8])
    {
      v11 = v10;
    }

    else
    {
      v11 = 0;
    }

    v9 = v11;
  }

  v12 = INIntentSchemaGetIntentDescriptionWithFacadeClass(v9);

  if (!v12)
  {
LABEL_17:
    v16 = v7;
  }

  else
  {
    v13 = +[INSchema systemSchema];
    v14 = [v13 _objectDescriptionForClass:objc_opt_class() identifier:nameCopy];

    if (v14)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v15 = v14;
      }

      else
      {
        v15 = 0;
      }
    }

    else
    {
      v15 = 0;
    }

    v17 = v15;

    v16 = [v17 copy];
    [v16 _updateWithIntentCodableDescription:v7];
  }

  return v16;
}

+ (id)_supportedClasses
{
  if (_supportedClasses_onceToken != -1)
  {
    dispatch_once(&_supportedClasses_onceToken, &__block_literal_global_117);
  }

  v3 = _supportedClasses_supportedClasses;

  return v3;
}

void __29__INSchema__supportedClasses__block_invoke()
{
  v21 = *MEMORY[0x1E69E9840];
  v0 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  +[INSchema _supportedTypesDictionary];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v14 = v19 = 0u;
  obj = [v14 allValues];
  v1 = [obj countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v1)
  {
    v2 = v1;
    v3 = *v17;
    do
    {
      for (i = 0; i != v2; ++i)
      {
        if (*v17 != v3)
        {
          objc_enumerationMutation(obj);
        }

        v5 = [*(*(&v16 + 1) + 8 * i) objectForKeyedSubscript:@"ObjCType"];
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

        v8 = [MEMORY[0x1E696AB08] characterSetWithCharactersInString:@" <"];
        v9 = [v7 componentsSeparatedByCharactersInSet:v8];

        v10 = [v9 firstObject];

        [v0 if_addObjectIfNonNil:NSClassFromString(v10)];
      }

      v2 = [obj countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v2);
  }

  v11 = [v0 copy];
  v12 = _supportedClasses_supportedClasses;
  _supportedClasses_supportedClasses = v11;

  v13 = *MEMORY[0x1E69E9840];
}

+ (id)_supportedTypesDictionary
{
  if (_supportedTypesDictionary_onceToken != -1)
  {
    dispatch_once(&_supportedTypesDictionary_onceToken, &__block_literal_global_115);
  }

  v3 = _supportedTypesDictionary_supportedTypesDictionary;

  return v3;
}

+ (id)_schemaWithIntentDefinitionURLs:(id)ls bundleIdentifier:(id)identifier mainBundleIdentifier:(id)bundleIdentifier contentOptions:(unint64_t)options
{
  v67 = *MEMORY[0x1E69E9840];
  lsCopy = ls;
  identifierCopy = identifier;
  bundleIdentifierCopy = bundleIdentifier;
  _cache = [objc_opt_class() _cache];
  v12 = [lsCopy valueForKeyPath:@"path"];
  v13 = [v12 sortedArrayUsingSelector:sel_compare_];
  v14 = [v13 componentsJoinedByString:@"-"];

  v15 = MEMORY[0x1E696AEC0];
  v16 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:options];
  v17 = [v15 stringWithFormat:@"%@-%@", v14, v16];

  v18 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@-%@", v14, &unk_1F02D7F00];
  v19 = [lsCopy count];
  v20 = 0;
  v51 = v17;
  if (v17 && v19)
  {
    v49 = v18;
    optionsCopy = options;
    v46 = v14;
    v47 = _cache;
    v48 = bundleIdentifierCopy;
    v52 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithCapacity:v19];
    v54 = 0u;
    v55 = 0u;
    v56 = 0u;
    v57 = 0u;
    v21 = lsCopy;
    v22 = [v21 countByEnumeratingWithState:&v54 objects:v66 count:16];
    if (v22)
    {
      v23 = v22;
      v24 = *v55;
      do
      {
        for (i = 0; i != v23; ++i)
        {
          if (*v55 != v24)
          {
            objc_enumerationMutation(v21);
          }

          v26 = *(*(&v54 + 1) + 8 * i);
          defaultManager = [MEMORY[0x1E696AC08] defaultManager];
          path = [v26 path];
          v53 = 0;
          v29 = [defaultManager attributesOfItemAtPath:path error:&v53];
          v30 = v53;

          if (v29)
          {
            v31 = v30 == 0;
          }

          else
          {
            v31 = 0;
          }

          if (v31)
          {
            fileModificationDate = [v29 fileModificationDate];
            if (fileModificationDate)
            {
              [v52 addObject:fileModificationDate];
            }
          }

          else
          {
            v32 = INSiriLogContextIntents;
            if (os_log_type_enabled(INSiriLogContextIntents, OS_LOG_TYPE_ERROR))
            {
              v33 = v32;
              path2 = [v26 path];
              *buf = 136315650;
              v61 = "+[INSchema _schemaWithIntentDefinitionURLs:bundleIdentifier:mainBundleIdentifier:contentOptions:]";
              v62 = 2112;
              v63 = path2;
              v64 = 2114;
              v65 = v30;
              _os_log_error_impl(&dword_18E991000, v33, OS_LOG_TYPE_ERROR, "%s Error reading file (%@) attributes: %{public}@", buf, 0x20u);
            }
          }
        }

        v23 = [v21 countByEnumeratingWithState:&v54 objects:v66 count:16];
      }

      while (v23);
    }

    _cache = v47;
    v36 = [v47 objectForKey:v49];
    if ([v49 isEqualToString:v51])
    {
      bundleIdentifierCopy = v48;
      v37 = identifierCopy;
    }

    else
    {
      bundleIdentifierCopy = v48;
      v37 = identifierCopy;
      if (v36)
      {
        [v47 removeObjectForKey:v51];
      }

      else
      {
        v36 = [v47 objectForKey:v51];
      }
    }

    v20 = [v36 objectForKeyedSubscript:@"schema"];
    if (v20 && ([v36 objectForKeyedSubscript:@"schemaModificationsDates"], v38 = objc_claimAutoreleasedReturnValue(), v39 = objc_msgSend(v38, "isEqualToSet:", v52), v38, (v39 & 1) != 0))
    {
      v14 = v46;
      v40 = v52;
    }

    else
    {
      v41 = [[INSchema alloc] _initWithContentsOfURLs:v21 bundleIdentifier:v37 mainBundleIdentifier:bundleIdentifierCopy contentOptions:optionsCopy];

      if (v41)
      {
        v58[0] = @"schemaModificationsDates";
        v58[1] = @"schema";
        v40 = v52;
        v59[0] = v52;
        v59[1] = v41;
        v42 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v59 forKeys:v58 count:2];
        [v47 setObject:v42 forKey:v51];

        v20 = v41;
        v14 = v46;
      }

      else
      {
        v20 = 0;
        v14 = v46;
        v40 = v52;
      }
    }

    v18 = v49;
  }

  v43 = *MEMORY[0x1E69E9840];

  return v20;
}

+ (id)_defaultSchemaForBundle:(id)bundle contentOptions:(unint64_t)options
{
  bundleCopy = bundle;
  bundleIdentifier = [bundleCopy bundleIdentifier];
  v8 = [bundleIdentifier isEqualToString:@"com.apple.Intents"];

  if (v8)
  {
    systemSchema = [self systemSchema];
  }

  else
  {
    mainBundle = [MEMORY[0x1E696AAE8] mainBundle];
    bundleIdentifier2 = [mainBundle bundleIdentifier];
    v12 = [INSchema _applicationBundleIdentifierFromBundleIdentifier:bundleIdentifier2];

    v13 = INSchemaURLsWithBundle(bundleCopy);
    bundleIdentifier3 = [bundleCopy bundleIdentifier];
    systemSchema = [self _schemaWithIntentDefinitionURLs:v13 bundleIdentifier:bundleIdentifier3 mainBundleIdentifier:v12 contentOptions:options];
  }

  return systemSchema;
}

uint64_t __58__INSchema_schemaWithBundleRecord_fallbackToSystemSchema___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = INSchemaFileExtensions();
  v4 = [v2 pathExtension];

  v5 = [v3 containsObject:v4];
  return v5;
}

+ (BOOL)_defaultSchemaCanSupportIntent:(id)intent
{
  intentCopy = intent;
  v4 = INContainingAppProxyForCurrentProcess();
  v5 = v4;
  if (v4)
  {
    siriActionDefinitionURLs = [v4 siriActionDefinitionURLs];
    v7 = [siriActionDefinitionURLs objectForKey:intentCopy];
    v8 = v7 != 0;
  }

  else
  {
    v8 = 1;
  }

  return v8;
}

@end