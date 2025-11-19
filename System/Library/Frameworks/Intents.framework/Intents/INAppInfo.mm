@interface INAppInfo
+ (id)_appInfoWithApplicationRecord:(id)a3 applicationExtensionRecords:(id)a4 userActivityTypes:(id)a5;
+ (id)appInfoWithAppProxy:(id)a3;
+ (id)appInfoWithApplicationRecord:(id)a3;
+ (id)appInfoWithData:(id)a3 error:(id *)a4;
+ (id)appInfoWithIntent:(id)a3;
- (INAppInfo)init;
- (INAppInfo)initWithCoder:(id)a3;
- (NSString)companionApplicationIdentifier;
- (void)encodeWithCoder:(id)a3;
@end

@implementation INAppInfo

- (INAppInfo)init
{
  v3.receiver = self;
  v3.super_class = INAppInfo;
  result = [(INAppInfo *)&v3 init];
  if (result)
  {
    result->_supportsMultiwindow = 0;
  }

  return result;
}

- (INAppInfo)initWithCoder:(id)a3
{
  v4 = a3;
  v61.receiver = self;
  v61.super_class = INAppInfo;
  v5 = [(INAppInfo *)&v61 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"applicationIdentifier"];
    [(INAppInfo *)v5 setApplicationIdentifier:v6];

    v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"companionApplicationIdentifier"];
    v8 = MEMORY[0x1E695DFD8];
    v9 = objc_opt_class();
    v10 = [v8 setWithObjects:{v9, objc_opt_class(), 0}];
    v11 = [v4 decodeObjectOfClasses:v10 forKey:@"counterpartIdentifiers"];
    [(INAppInfo *)v5 setCounterpartIdentifiers:v11];

    v12 = [(INAppInfo *)v5 counterpartIdentifiers];

    if (!v12)
    {
      v13 = [MEMORY[0x1E695DEC8] if_arrayWithObjectIfNonNil:v7];
      [(INAppInfo *)v5 setCounterpartIdentifiers:v13];
    }

    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"developmentRegion"];
    [(INAppInfo *)v5 setDevelopmentRegion:v14];

    v15 = MEMORY[0x1E695DFD8];
    v16 = objc_opt_class();
    v17 = [v15 setWithObjects:{v16, objc_opt_class(), 0}];
    v18 = [v4 decodeObjectOfClasses:v17 forKey:@"supportedActions"];
    if (v18)
    {
      [(INAppInfo *)v5 setSupportedActions:v18];
    }

    else
    {
      v19 = objc_opt_new();
      [(INAppInfo *)v5 setSupportedActions:v19];
    }

    v20 = MEMORY[0x1E695DFD8];
    v21 = objc_opt_class();
    v22 = [v20 setWithObjects:{v21, objc_opt_class(), 0}];
    v23 = [v4 decodeObjectOfClasses:v22 forKey:@"supportedIntents"];
    if (v23)
    {
      [(INAppInfo *)v5 setSupportedIntents:v23];
    }

    else
    {
      v24 = objc_opt_new();
      [(INAppInfo *)v5 setSupportedIntents:v24];
    }

    v25 = MEMORY[0x1E695DFD8];
    v26 = objc_opt_class();
    v27 = [v25 setWithObjects:{v26, objc_opt_class(), 0}];
    v28 = [v4 decodeObjectOfClasses:v27 forKey:@"supportedIntentsByApp"];
    if (v28)
    {
      [(INAppInfo *)v5 setSupportedIntentsByApp:v28];
    }

    else
    {
      v29 = objc_opt_new();
      [(INAppInfo *)v5 setSupportedIntentsByApp:v29];
    }

    v30 = MEMORY[0x1E695DFD8];
    v31 = objc_opt_class();
    v32 = [v30 setWithObjects:{v31, objc_opt_class(), 0}];
    v33 = [v4 decodeObjectOfClasses:v32 forKey:@"supportedActionsByExtensions"];
    if (v33)
    {
      [(INAppInfo *)v5 setSupportedActionsByExtensions:v33];
    }

    else
    {
      v34 = objc_opt_new();
      [(INAppInfo *)v5 setSupportedActionsByExtensions:v34];
    }

    v35 = MEMORY[0x1E695DFD8];
    v36 = objc_opt_class();
    v37 = objc_opt_class();
    v38 = [v35 setWithObjects:{v36, v37, objc_opt_class(), 0}];
    v39 = [v4 decodeObjectOfClasses:v38 forKey:@"supportedIntentsGroupedByExtensionPoints"];
    [(INAppInfo *)v5 setSupportedIntentsGroupedByExtensionPoints:v39];

    v40 = MEMORY[0x1E695DFD8];
    v41 = objc_opt_class();
    v42 = [v40 setWithObjects:{v41, objc_opt_class(), 0}];
    v43 = [v4 decodeObjectOfClasses:v42 forKey:@"actionsRestrictedWhileLocked"];
    if (v43)
    {
      [(INAppInfo *)v5 setActionsRestrictedWhileLocked:v43];
    }

    else
    {
      v44 = objc_opt_new();
      [(INAppInfo *)v5 setActionsRestrictedWhileLocked:v44];
    }

    v45 = MEMORY[0x1E695DFD8];
    v46 = objc_opt_class();
    v47 = [v45 setWithObjects:{v46, objc_opt_class(), 0}];
    v48 = [v4 decodeObjectOfClasses:v47 forKey:@"actionsRestrictedWhileProtectedDataUnavailable"];
    if (v48)
    {
      [(INAppInfo *)v5 setActionsRestrictedWhileProtectedDataUnavailable:v48];
    }

    else
    {
      v49 = objc_opt_new();
      [(INAppInfo *)v5 setActionsRestrictedWhileProtectedDataUnavailable:v49];
    }

    v50 = MEMORY[0x1E695DFD8];
    v51 = objc_opt_class();
    v52 = [v50 setWithObjects:{v51, objc_opt_class(), 0}];
    v53 = [v4 decodeObjectOfClasses:v52 forKey:@"definedIntents"];
    if (v53)
    {
      [(INAppInfo *)v5 setDefinedIntents:v53];
    }

    else
    {
      v54 = objc_opt_new();
      [(INAppInfo *)v5 setDefinedIntents:v54];
    }

    v55 = MEMORY[0x1E695DFD8];
    v56 = objc_opt_class();
    v57 = [v55 setWithObjects:{v56, objc_opt_class(), 0}];
    v58 = [v4 decodeObjectOfClasses:v57 forKey:@"supportedMediaCategories"];
    if (v58)
    {
      [(INAppInfo *)v5 setSupportedMediaCategories:v58];
    }

    else
    {
      v59 = objc_opt_new();
      [(INAppInfo *)v5 setSupportedMediaCategories:v59];
    }

    -[INAppInfo setSupportsMultiwindow:](v5, "setSupportsMultiwindow:", [v4 decodeBoolForKey:@"supportsMultiwindow"]);
    -[INAppInfo setRequiresAppLaunchPreflight:](v5, "setRequiresAppLaunchPreflight:", [v4 decodeBoolForKey:@"requiresAppLaunchPreflight"]);
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  applicationIdentifier = self->_applicationIdentifier;
  v6 = a3;
  [v6 encodeObject:applicationIdentifier forKey:@"applicationIdentifier"];
  v5 = [(NSArray *)self->_counterpartIdentifiers firstObject];
  [v6 encodeObject:v5 forKey:@"companionApplicationIdentifier"];

  [v6 encodeObject:self->_counterpartIdentifiers forKey:@"counterpartIdentifiers"];
  [v6 encodeObject:self->_developmentRegion forKey:@"developmentRegion"];
  [v6 encodeObject:self->_supportedActions forKey:@"supportedActions"];
  [v6 encodeObject:self->_supportedIntents forKey:@"supportedIntents"];
  [v6 encodeObject:self->_supportedIntentsByApp forKey:@"supportedIntentsByApp"];
  [v6 encodeObject:self->_supportedActionsByExtensions forKey:@"supportedActionsByExtensions"];
  [v6 encodeObject:self->_supportedIntentsGroupedByExtensionPoints forKey:@"supportedIntentsGroupedByExtensionPoints"];
  [v6 encodeObject:self->_actionsRestrictedWhileLocked forKey:@"actionsRestrictedWhileLocked"];
  [v6 encodeObject:self->_actionsRestrictedWhileProtectedDataUnavailable forKey:@"actionsRestrictedWhileProtectedDataUnavailable"];
  [v6 encodeObject:self->_definedIntents forKey:@"definedIntents"];
  [v6 encodeObject:self->_supportedMediaCategories forKey:@"supportedMediaCategories"];
  [v6 encodeBool:self->_supportsMultiwindow forKey:@"supportsMultiwindow"];
  [v6 encodeBool:self->_requiresAppLaunchPreflight forKey:@"requiresAppLaunchPreflight"];
}

- (NSString)companionApplicationIdentifier
{
  v2 = [(INAppInfo *)self counterpartIdentifiers];
  v3 = [v2 firstObject];

  return v3;
}

+ (id)_appInfoWithApplicationRecord:(id)a3 applicationExtensionRecords:(id)a4 userActivityTypes:(id)a5
{
  v75 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v61 = a5;
  v62 = v7;
  if (!v61)
  {
    v61 = [MEMORY[0x1E695DFD8] set];
  }

  v9 = MEMORY[0x1E695DFD8];
  v10 = [v7 supportedIntents];
  v60 = [v9 setWithArray:v10];

  v11 = MEMORY[0x1E695DFD8];
  v12 = [v7 intentsRestrictedWhileLocked];
  v58 = [v11 setWithArray:v12];

  v13 = MEMORY[0x1E695DFD8];
  v14 = [v7 intentsRestrictedWhileProtectedDataUnavailable];
  v59 = [v13 setWithArray:v14];

  v15 = MEMORY[0x1E695DFD8];
  v16 = [v7 supportedIntentMediaCategories];
  v57 = [v15 setWithArray:v16];

  v64 = [MEMORY[0x1E695DFA8] set];
  v17 = [MEMORY[0x1E695DF90] dictionary];
  v67 = 0u;
  v68 = 0u;
  v65 = 0u;
  v66 = 0u;
  obj = v8;
  v18 = [obj countByEnumeratingWithState:&v65 objects:v74 count:16];
  if (v18)
  {
    v19 = *v66;
    do
    {
      for (i = 0; i != v18; ++i)
      {
        if (*v66 != v19)
        {
          objc_enumerationMutation(obj);
        }

        v21 = *(*(&v65 + 1) + 8 * i);
        v22 = [v21 if_extensionAttributesDictionary];
        v23 = [v22 objectForKeyedSubscript:@"IntentsSupported"];
        if ([v23 count])
        {
          v24 = [v21 extensionPointRecord];
          v25 = [v24 identifier];

          v26 = [MEMORY[0x1E695DFD8] setWithArray:v23];
          [v17 setObject:v26 forKeyedSubscript:v25];

          [v64 addObjectsFromArray:v23];
        }
      }

      v18 = [obj countByEnumeratingWithState:&v65 objects:v74 count:16];
    }

    while (v18);
  }

  v27 = MEMORY[0x1E695DFD8];
  v28 = [obj if_flatMap:&__block_literal_global_29];
  v29 = [v27 setWithArray:v28];

  v30 = MEMORY[0x1E695DFD8];
  v31 = [obj if_flatMap:&__block_literal_global_31];
  v32 = [v30 setWithArray:v31];

  v33 = MEMORY[0x1E695DFD8];
  v34 = [obj if_flatMap:&__block_literal_global_33];
  v35 = [v33 setWithArray:v34];

  v36 = objc_alloc_init(objc_opt_class());
  v37 = v62;
  if (v62)
  {
    v38 = [v62 bundleIdentifier];
    [v36 setApplicationIdentifier:v38];

    v39 = [v62 infoDictionary];
    v40 = [v39 objectForKey:*MEMORY[0x1E695E4E0] ofClass:objc_opt_class()];
    [v36 setDevelopmentRegion:v40];

    [v36 setSupportsMultiwindow:{objc_msgSend(v62, "supportsMultiwindow")}];
    v70 = 0;
    v71 = &v70;
    v72 = 0x2050000000;
    v41 = getPDCPreflightManagerClass_softClass;
    v73 = getPDCPreflightManagerClass_softClass;
    if (!getPDCPreflightManagerClass_softClass)
    {
      v69[0] = MEMORY[0x1E69E9820];
      v69[1] = 3221225472;
      v69[2] = __getPDCPreflightManagerClass_block_invoke;
      v69[3] = &unk_1E72888B8;
      v69[4] = &v70;
      __getPDCPreflightManagerClass_block_invoke(v69);
      v41 = v71[3];
    }

    v42 = v41;
    _Block_object_dispose(&v70, 8);
    v43 = [[v41 alloc] initWithTargetQueue:0];
    [v36 setRequiresAppLaunchPreflight:{objc_msgSend(v43, "requiresPreflightForApplicationRecord:", v62)}];

    v44 = [v62 counterpartIdentifiers];
    [v36 setCounterpartIdentifiers:v44];

    v37 = v62;
  }

  v45 = v37 == 0;
  [v36 setSupportedIntentsByApp:v60];
  v46 = [v61 mutableCopy];
  [v46 unionSet:v64];
  [v36 setSupportedActions:v46];

  v47 = [v62 in_supportedIntents];
  [v36 setSupportedIntents:v47];

  [v36 setSupportedActionsByExtensions:v64];
  [v36 setSupportedIntentsGroupedByExtensionPoints:v17];
  v48 = [v61 mutableCopy];
  [v48 minusSet:v64];
  [v48 minusSet:v60];
  [v48 unionSet:v29];
  [v48 unionSet:v32];
  [v48 unionSet:v58];
  [v48 unionSet:v59];
  [v36 setActionsRestrictedWhileLocked:v48];

  v49 = [v32 mutableCopy];
  [v49 unionSet:v59];
  [v36 setActionsRestrictedWhileProtectedDataUnavailable:v49];

  if (!v45)
  {
    v50 = MEMORY[0x1E695DFD8];
    v51 = [v62 intentDefinitionURLs];
    v52 = [v51 allKeys];
    v53 = [v50 setWithArray:v52];
    [v36 setDefinedIntents:v53];
  }

  v54 = [v35 mutableCopy];
  [v54 unionSet:v57];
  [v36 setSupportedMediaCategories:v54];

  v55 = *MEMORY[0x1E69E9840];

  return v36;
}

void *__89__INAppInfo__appInfoWithApplicationRecord_applicationExtensionRecords_userActivityTypes___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = [a2 if_extensionAttributesDictionary];
  v3 = [v2 objectForKeyedSubscript:@"SupportedMediaCategories"];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = MEMORY[0x1E695E0F0];
  }

  v6 = v5;

  return v5;
}

void *__89__INAppInfo__appInfoWithApplicationRecord_applicationExtensionRecords_userActivityTypes___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = [a2 if_extensionAttributesDictionary];
  v3 = [v2 objectForKeyedSubscript:@"IntentsRestrictedWhileProtectedDataUnavailable"];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = MEMORY[0x1E695E0F0];
  }

  v6 = v5;

  return v5;
}

void *__89__INAppInfo__appInfoWithApplicationRecord_applicationExtensionRecords_userActivityTypes___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 if_extensionAttributesDictionary];
  v3 = [v2 objectForKeyedSubscript:@"IntentsRestrictedWhileLocked"];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = MEMORY[0x1E695E0F0];
  }

  v6 = v5;

  return v5;
}

+ (id)appInfoWithIntent:(id)a3
{
  v31 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 extensionBundleId];
  v6 = [v5 length];

  if (!v6)
  {
    v14 = [v4 launchId];
    v23 = 0;
    INExtractAppInfoFromSiriLaunchId(v14, &v23, 0);
    v10 = v23;

    v22 = 0;
    v12 = [objc_alloc(MEMORY[0x1E69635F8]) initWithBundleIdentifier:v10 allowPlaceholder:0 error:&v22];
    v9 = v22;
    if (v9 && (v15 = INSiriLogContextIntents, os_log_type_enabled(INSiriLogContextIntents, OS_LOG_TYPE_ERROR)))
    {
      *buf = 136315394;
      v26 = "+[INAppInfo appInfoWithIntent:]";
      v27 = 2112;
      v28 = v9;
      _os_log_error_impl(&dword_18E991000, v15, OS_LOG_TYPE_ERROR, "%s Unable to create application record: %@", buf, 0x16u);
      if (v12)
      {
        goto LABEL_9;
      }
    }

    else if (v12)
    {
LABEL_9:
      v13 = [a1 appInfoWithApplicationRecord:v12];
      goto LABEL_10;
    }

    if (v10)
    {
      v16 = [_INVCIntentDefinitionManagerClass() appInfoForBundleID:v10];
      v12 = 0;
    }

    else
    {
      v12 = 0;
      v16 = 0;
    }

    goto LABEL_11;
  }

  v7 = objc_alloc(MEMORY[0x1E69635D0]);
  v8 = [v4 extensionBundleId];
  v21 = 0;
  v9 = [v7 initWithBundleIdentifier:v8 error:&v21];
  v10 = v21;

  if (v10 && (v11 = INSiriLogContextIntents, os_log_type_enabled(INSiriLogContextIntents, OS_LOG_TYPE_ERROR)))
  {
    v17 = v11;
    v18 = [v4 extensionBundleId];
    *buf = 136315650;
    v26 = "+[INAppInfo appInfoWithIntent:]";
    v27 = 2112;
    v28 = v18;
    v29 = 2112;
    v30 = v10;
    _os_log_error_impl(&dword_18E991000, v17, OS_LOG_TYPE_ERROR, "%s Unable to create application extension record <%@>: %@", buf, 0x20u);

    if (v9)
    {
      goto LABEL_5;
    }
  }

  else if (v9)
  {
LABEL_5:
    v24 = v9;
    v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v24 count:1];
    v13 = [a1 _appInfoWithApplicationRecord:0 applicationExtensionRecords:v12 userActivityTypes:0];
LABEL_10:
    v16 = v13;
LABEL_11:

    goto LABEL_14;
  }

  v16 = 0;
LABEL_14:

  v19 = *MEMORY[0x1E69E9840];

  return v16;
}

+ (id)appInfoWithData:(id)a3 error:(id *)a4
{
  v5 = MEMORY[0x1E696ACD0];
  v6 = a3;
  v7 = [v5 unarchivedObjectOfClass:objc_opt_class() fromData:v6 error:a4];

  return v7;
}

+ (id)appInfoWithApplicationRecord:(id)a3
{
  v4 = a3;
  v5 = MEMORY[0x1E695DFD8];
  v6 = [v4 if_userActivityTypes];
  v7 = [v5 setWithArray:v6];

  v8 = [v4 applicationExtensionRecords];
  v9 = [v8 allObjects];
  v10 = [v9 if_objectsPassingTest:&__block_literal_global_4122];
  v11 = [v10 mutableCopy];

  v12 = [v4 bundleIdentifier];
  LOBYTE(v9) = [v12 hasPrefix:@"com.apple.shortcuts"];

  if (v9)
  {
    v13 = @"com.apple.WorkflowKit.ShortcutsIntents";
  }

  else
  {
    v14 = [v4 bundleIdentifier];
    v15 = [v14 isEqualToString:@"com.apple.mobiletimer"];

    if (!v15)
    {
      goto LABEL_6;
    }

    v13 = @"com.apple.mobiletimer-framework.MobileTimerIntents";
  }

  v16 = [objc_alloc(MEMORY[0x1E69635D0]) initWithBundleIdentifier:v13 error:0];
  [v11 if_addObjectIfNonNil:v16];

LABEL_6:
  v17 = [a1 _appInfoWithApplicationRecord:v4 applicationExtensionRecords:v11 userActivityTypes:v7];

  return v17;
}

uint64_t __42__INAppInfo_appInfoWithApplicationRecord___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 extensionPointRecord];
  v3 = [v2 identifier];
  v4 = [v3 isEqualToString:@"com.apple.intents-service"];

  return v4;
}

+ (id)appInfoWithAppProxy:(id)a3
{
  v23 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [MEMORY[0x1E6963620] bundleRecordForCurrentProcess];
  v6 = [v5 bundleIdentifier];
  v7 = [v4 applicationIdentifier];
  v8 = [v6 isEqualToString:v7];

  if (v8)
  {
    v9 = v5;
    if (v9)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v10 = v9;
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

    v13 = v10;
  }

  else
  {
    v11 = objc_alloc(MEMORY[0x1E69635F8]);
    v12 = [v4 applicationIdentifier];
    v18 = 0;
    v13 = [v11 initWithBundleIdentifier:v12 allowPlaceholder:0 error:&v18];
    v9 = v18;

    if (!v9)
    {
      goto LABEL_12;
    }

    v14 = INSiriLogContextIntents;
    if (os_log_type_enabled(INSiriLogContextIntents, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v20 = "+[INAppInfo appInfoWithAppProxy:]";
      v21 = 2112;
      v22 = v9;
      _os_log_error_impl(&dword_18E991000, v14, OS_LOG_TYPE_ERROR, "%s Unable to create app info with application record: %@", buf, 0x16u);
    }
  }

LABEL_12:
  if (v13)
  {
    v15 = [a1 appInfoWithApplicationRecord:v13];
  }

  else
  {
    v15 = 0;
  }

  v16 = *MEMORY[0x1E69E9840];

  return v15;
}

@end