@interface _INVocabularyValidator
+ (void)initialize;
- (BOOL)_bundleID:(id)d isWhitelistedForVocabularyType:(int64_t)type;
- (id)_intentsUsingVocabularyType:(int64_t)type;
- (id)_pathToAppWithBundleID:(id)d;
- (id)_validatedItemsFromVocabularyObject:(id)object ofType:(int64_t)type loggingWarnings:(BOOL)warnings withItemFactory:(id)factory;
- (unint64_t)maximumNumberOfVocabularyStringsForType:(int64_t)type;
- (void)_confirmExistenceOfWatchAppForCompanionBundleID:(id)d handlingIntents:(id)intents completion:(id)completion;
- (void)_determineIfBundleID:(id)d appPath:(id)path canProvideVocabularyOfType:(int64_t)type completion:(id)completion;
- (void)determineIfBundleID:(id)d canProvideVocabularyOfType:(int64_t)type completion:(id)completion;
@end

@implementation _INVocabularyValidator

- (unint64_t)maximumNumberOfVocabularyStringsForType:(int64_t)type
{
  if (type > 699)
  {
    if (type > 49999)
    {
      if (type > 50001)
      {
        if (type == 50002)
        {
          return 10;
        }

        if (type == 50003)
        {
          return 2000;
        }

        return 0;
      }

      if (type != 50000)
      {
        return 500;
      }

      return 1000;
    }

    if ((type - 700) < 5)
    {
      return 500;
    }
  }

  else
  {
    if (type > 299)
    {
      if ((type - 300) >= 2)
      {
        if ((type - 400) >= 2)
        {
          if ((type - 500) < 2)
          {
            return 200;
          }

          return 0;
        }

        return 500;
      }

      return 1000;
    }

    if (type <= 99)
    {
      if (type == 1)
      {
        return 1500;
      }

      if (type == 2)
      {
        return 1000;
      }
    }

    else if ((type - 100) < 2 || type == 200)
    {
      return 500;
    }
  }

  return 0;
}

- (void)determineIfBundleID:(id)d canProvideVocabularyOfType:(int64_t)type completion:(id)completion
{
  dCopy = d;
  completionCopy = completion;
  if (completionCopy)
  {
    if ([(_INVocabularyValidator *)self _bundleID:dCopy isWhitelistedForVocabularyType:type])
    {
      completionCopy[2](completionCopy, 1);
    }

    else
    {
      v9 = [(_INVocabularyValidator *)self _pathToAppWithBundleID:dCopy];
      [(_INVocabularyValidator *)self _determineIfBundleID:dCopy appPath:v9 canProvideVocabularyOfType:type completion:completionCopy];
    }
  }
}

- (id)_pathToAppWithBundleID:(id)d
{
  v19 = *MEMORY[0x1E69E9840];
  dCopy = d;
  v12 = 0;
  v4 = [MEMORY[0x1E6963620] bundleRecordWithBundleIdentifier:dCopy allowPlaceholder:0 error:&v12];
  v5 = v12;
  if (!v4)
  {
    v6 = INSiriLogContextIntents;
    if (os_log_type_enabled(INSiriLogContextIntents, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v14 = "[_INVocabularyValidator _pathToAppWithBundleID:]";
      v15 = 2114;
      v16 = dCopy;
      v17 = 2114;
      v18 = v5;
      _os_log_error_impl(&dword_18E991000, v6, OS_LOG_TYPE_ERROR, "%s Could not get a bundle record for %{public}@ %{public}@", buf, 0x20u);
    }
  }

  if_containingAppRecord = [v4 if_containingAppRecord];
  v8 = [if_containingAppRecord URL];
  path = [v8 path];

  v10 = *MEMORY[0x1E69E9840];

  return path;
}

- (void)_determineIfBundleID:(id)d appPath:(id)path canProvideVocabularyOfType:(int64_t)type completion:(id)completion
{
  v52 = *MEMORY[0x1E69E9840];
  dCopy = d;
  pathCopy = path;
  completionCopy = completion;
  if (completionCopy)
  {
    v13 = INPluginKitCompatiblePathFromPath(pathCopy);
    if (v13)
    {
      v14 = [(_INVocabularyValidator *)self _intentsUsingVocabularyType:type];
      if ([v14 count])
      {
        v32 = v13;
        v33 = dCopy;
        v30 = [objc_alloc(MEMORY[0x1E69635F8]) initWithBundleIdentifier:dCopy allowPlaceholder:0 error:0];
        v15 = [INAppInfo appInfoWithApplicationRecord:?];
        v39 = 0u;
        v40 = 0u;
        v41 = 0u;
        v42 = 0u;
        v31 = v14;
        v16 = v14;
        v17 = [v16 countByEnumeratingWithState:&v39 objects:v45 count:16];
        if (v17)
        {
          v18 = v17;
          v19 = *v40;
          while (2)
          {
            for (i = 0; i != v18; ++i)
            {
              if (*v40 != v19)
              {
                objc_enumerationMutation(v16);
              }

              v21 = *(*(&v39 + 1) + 8 * i);
              supportedIntents = [v15 supportedIntents];
              LODWORD(v21) = [supportedIntents containsObject:v21];

              if (v21)
              {
                completionCopy[2](completionCopy, 1);
                v13 = v32;
                dCopy = v33;
                goto LABEL_17;
              }
            }

            v18 = [v16 countByEnumeratingWithState:&v39 objects:v45 count:16];
            if (v18)
            {
              continue;
            }

            break;
          }
        }

        v43[0] = *MEMORY[0x1E696A2F8];
        v43[1] = @"IntentsSupported";
        v44[0] = @"com.apple.intents-service";
        v44[1] = v16;
        v43[2] = *MEMORY[0x1E69C4AB0];
        v13 = v32;
        v44[2] = v32;
        v23 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v44 forKeys:v43 count:3];
        v24 = MEMORY[0x1E696ABD0];
        v34[0] = MEMORY[0x1E69E9820];
        v34[1] = 3221225472;
        v34[2] = __93___INVocabularyValidator__determineIfBundleID_appPath_canProvideVocabularyOfType_completion___block_invoke;
        v34[3] = &unk_1E7282378;
        v38 = completionCopy;
        dCopy = v33;
        v35 = v33;
        selfCopy = self;
        v37 = v16;
        [v24 extensionsWithMatchingAttributes:v23 completion:v34];

        v16 = v23;
LABEL_17:

        v14 = v31;
      }

      else
      {
        v26 = INSiriLogContextIntents;
        if (os_log_type_enabled(INSiriLogContextIntents, OS_LOG_TYPE_ERROR))
        {
          v28 = v26;
          v29 = _INStringFromVocabularyStringType(type);
          *buf = 136315394;
          v47 = "[_INVocabularyValidator _determineIfBundleID:appPath:canProvideVocabularyOfType:completion:]";
          v48 = 2114;
          v49 = v29;
          _os_log_error_impl(&dword_18E991000, v28, OS_LOG_TYPE_ERROR, "%s No intents use user-vocabulary of type %{public}@", buf, 0x16u);
        }

        completionCopy[2](completionCopy, 0);
      }
    }

    else
    {
      v25 = INSiriLogContextIntents;
      if (os_log_type_enabled(INSiriLogContextIntents, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315650;
        v47 = "[_INVocabularyValidator _determineIfBundleID:appPath:canProvideVocabularyOfType:completion:]";
        v48 = 2114;
        v49 = dCopy;
        v50 = 2114;
        v51 = pathCopy;
        _os_log_error_impl(&dword_18E991000, v25, OS_LOG_TYPE_ERROR, "%s Couldn't get realpath() to %{public}@ %{public}@", buf, 0x20u);
      }

      completionCopy[2](completionCopy, 0);
    }
  }

  v27 = *MEMORY[0x1E69E9840];
}

- (void)_confirmExistenceOfWatchAppForCompanionBundleID:(id)d handlingIntents:(id)intents completion:(id)completion
{
  v28 = *MEMORY[0x1E69E9840];
  dCopy = d;
  intentsCopy = intents;
  completionCopy = completion;
  if (completionCopy)
  {
    if (INSupportsPairedDevice_onceToken != -1)
    {
      dispatch_once(&INSupportsPairedDevice_onceToken, &__block_literal_global_81);
    }

    if (INSupportsPairedDevice_supportsPairedDevice == 1)
    {
      v20 = 0;
      v21 = &v20;
      v22 = 0x2050000000;
      v10 = getACXDeviceConnectionClass_softClass;
      v23 = getACXDeviceConnectionClass_softClass;
      if (!getACXDeviceConnectionClass_softClass)
      {
        *&buf = MEMORY[0x1E69E9820];
        *(&buf + 1) = 3221225472;
        v25 = __getACXDeviceConnectionClass_block_invoke;
        v26 = &unk_1E72888B8;
        v27 = &v20;
        __getACXDeviceConnectionClass_block_invoke(&buf);
        v10 = v21[3];
      }

      v11 = v10;
      _Block_object_dispose(&v20, 8);
      sharedDeviceConnection = [v10 sharedDeviceConnection];
      v16[0] = MEMORY[0x1E69E9820];
      v16[1] = 3221225472;
      v16[2] = __101___INVocabularyValidator__confirmExistenceOfWatchAppForCompanionBundleID_handlingIntents_completion___block_invoke;
      v16[3] = &unk_1E7282350;
      v19 = completionCopy;
      v17 = sharedDeviceConnection;
      v18 = intentsCopy;
      v13 = sharedDeviceConnection;
      [v13 fetchWatchAppBundleIDForCompanionAppBundleID:dCopy completion:v16];
    }

    else
    {
      v14 = INSiriLogContextIntents;
      if (os_log_type_enabled(INSiriLogContextIntents, OS_LOG_TYPE_INFO))
      {
        LODWORD(buf) = 136315138;
        *(&buf + 4) = "[_INVocabularyValidator _confirmExistenceOfWatchAppForCompanionBundleID:handlingIntents:completion:]";
        _os_log_impl(&dword_18E991000, v14, OS_LOG_TYPE_INFO, "%s No watch pairing capability", &buf, 0xCu);
      }

      (*(completionCopy + 2))(completionCopy, 0);
    }
  }

  v15 = *MEMORY[0x1E69E9840];
}

- (BOOL)_bundleID:(id)d isWhitelistedForVocabularyType:(int64_t)type
{
  v19 = *MEMORY[0x1E69E9840];
  dCopy = d;
  if ([dCopy isEqualToString:@"com.apple.mobileslideshow"])
  {
    v6 = (type - 100) < 2 || type == 50003;
    v7 = (type - 1) < 2 || v6;
    goto LABEL_29;
  }

  v7 = 0;
  if (type > 49999)
  {
    if (type == 50003)
    {
      goto LABEL_20;
    }

    if (type == 50000)
    {
      v8 = [MEMORY[0x1E6963618] bundleProxyForIdentifier:dCopy];
      v9 = v8;
      if (v8)
      {
        bundleType = [v8 bundleType];
        if ([bundleType isEqualToString:*MEMORY[0x1E6963570]] && (objc_msgSend(v9, "bundleURL"), v11 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v11, "path"), v12 = objc_claimAutoreleasedReturnValue(), v13 = objc_msgSend(v12, "hasPrefix:", @"/System/Library/"), v12, v11, (v13 & 1) != 0) || (objc_msgSend(bundleType, "isEqualToString:", *MEMORY[0x1E6963578]) & 1) != 0)
        {
          v7 = 1;
        }

        else
        {
          v7 = [bundleType isEqualToString:*MEMORY[0x1E69635A8]];
        }
      }

      else
      {
        v7 = 1;
      }
    }
  }

  else
  {
    if (type != 2)
    {
      if (type != 301)
      {
        goto LABEL_29;
      }

      if (([dCopy isEqualToString:@"com.apple.passd"] & 1) == 0)
      {
LABEL_24:
        v7 = 0;
        goto LABEL_29;
      }

LABEL_20:
      v7 = 1;
      goto LABEL_29;
    }

    if (![dCopy isEqualToString:@"com.apple.MobileSMS"])
    {
      goto LABEL_24;
    }

    v14 = INSiriLogContextIntents;
    v7 = 1;
    if (os_log_type_enabled(INSiriLogContextIntents, OS_LOG_TYPE_INFO))
    {
      v17 = 136315138;
      v18 = "[_INVocabularyValidator _bundleID:isWhitelistedForVocabularyType:]";
      _os_log_impl(&dword_18E991000, v14, OS_LOG_TYPE_INFO, "%s INVocabularyValidator returning true for whitelisted app com.apple.MobileSMS", &v17, 0xCu);
    }
  }

LABEL_29:

  v15 = *MEMORY[0x1E69E9840];
  return v7;
}

- (id)_validatedItemsFromVocabularyObject:(id)object ofType:(int64_t)type loggingWarnings:(BOOL)warnings withItemFactory:(id)factory
{
  warningsCopy = warnings;
  v45 = *MEMORY[0x1E69E9840];
  objectCopy = object;
  factoryCopy = factory;
  v12 = [(_INVocabularyValidator *)self maximumNumberOfVocabularyStringsForType:type];
  v13 = objc_alloc(MEMORY[0x1E695DF70]);
  v14 = [objectCopy count];
  if (v14 >= v12)
  {
    v15 = v12;
  }

  else
  {
    v15 = v14;
  }

  v16 = [v13 initWithCapacity:v15];
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v17 = objectCopy;
  v34 = [v17 countByEnumeratingWithState:&v39 objects:v44 count:16];
  if (v34)
  {
    v18 = *v40;
    v32 = v17;
    v33 = factoryCopy;
    v31 = *v40;
    do
    {
      for (i = 0; i != v34; ++i)
      {
        if (*v40 != v18)
        {
          objc_enumerationMutation(v17);
        }

        v20 = factoryCopy[2](factoryCopy, *(*(&v39 + 1) + 8 * i));
        v21 = v20;
        if (!v20 || ![v20 count])
        {
          goto LABEL_28;
        }

        v37 = 0u;
        v38 = 0u;
        v35 = 0u;
        v36 = 0u;
        v21 = v21;
        v22 = [v21 countByEnumeratingWithState:&v35 objects:v43 count:16];
        if (!v22)
        {
          goto LABEL_27;
        }

        v23 = v22;
        v24 = *v36;
        while (2)
        {
          for (j = 0; j != v23; ++j)
          {
            if (*v36 != v24)
            {
              objc_enumerationMutation(v21);
            }

            v26 = *(*(&v35 + 1) + 8 * j);
            validate = [v26 validate];
            if (validate == 1)
            {
              if ([v16 count] >= v12)
              {

                v17 = v32;
                factoryCopy = v33;
                goto LABEL_32;
              }

              [v16 addObject:v26];
            }

            else
            {
              if (!warningsCopy)
              {
                continue;
              }

              if (validate == 4)
              {
                v28 = _INStringFromVocabularyStringType(type);
                NSLog(@"WARNING: ignoring a vocabulary item of type %@ because the vocabulary identifier is too long", v28);
              }

              else
              {
                if (validate != 3)
                {
                  continue;
                }

                v28 = _INStringFromVocabularyStringType(type);
                NSLog(@"WARNING: ignoring a vocabulary item of type %@ because the string is too long", v28);
              }
            }
          }

          v23 = [v21 countByEnumeratingWithState:&v35 objects:v43 count:16];
          if (v23)
          {
            continue;
          }

          break;
        }

LABEL_27:

        v17 = v32;
        factoryCopy = v33;
        v18 = v31;
LABEL_28:
      }

      v34 = [v17 countByEnumeratingWithState:&v39 objects:v44 count:16];
    }

    while (v34);
  }

LABEL_32:

  v29 = *MEMORY[0x1E69E9840];

  return v16;
}

- (id)_intentsUsingVocabularyType:(int64_t)type
{
  if (_intentsUsingVocabularyType__onceToken != -1)
  {
    dispatch_once(&_intentsUsingVocabularyType__onceToken, &__block_literal_global_66723);
  }

  v4 = _intentsUsingVocabularyType__sIntentsUsingSyncSlot;
  v5 = [MEMORY[0x1E696AD98] numberWithInteger:type];
  v6 = [v4 objectForKeyedSubscript:v5];

  return v6;
}

+ (void)initialize
{
  if (objc_opt_class() == self && INLogInitIfNeeded_once != -1)
  {

    dispatch_once(&INLogInitIfNeeded_once, &__block_literal_global_72043);
  }
}

@end