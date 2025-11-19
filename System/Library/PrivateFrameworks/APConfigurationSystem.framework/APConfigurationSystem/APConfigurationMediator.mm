@interface APConfigurationMediator
+ (NSString)configSystemDirectoryPath;
+ (NSString)resourcesBundleDirectoryPath;
+ (id)_configSystemErrorWithDescription:(id)a3;
+ (id)_loadFromDefaultsForClass:(Class)a3 error:(id *)a4;
+ (id)_loadFromJSONForClass:(Class)a3 error:(id *)a4;
+ (id)_resourcesBundleDirectoryPathError:(id *)a3;
+ (id)configurationForClass:(Class)a3 usingCache:(BOOL)a4;
+ (void)_removeFileAtPath:(id)a3;
@end

@implementation APConfigurationMediator

+ (NSString)configSystemDirectoryPath
{
  v2 = NSSearchPathForDirectoriesInDomains(NSApplicationSupportDirectory, 1uLL, 1);
  v5 = objc_msgSend_lastObject(v2, v3, v4);

  v8 = objc_msgSend_mainBundle(MEMORY[0x1E696AAE8], v6, v7);
  v11 = objc_msgSend_bundleIdentifier(v8, v9, v10);

  v13 = objc_msgSend_stringByAppendingPathComponent_(v5, v12, v11);
  v15 = objc_msgSend_stringByAppendingPathComponent_(v13, v14, @"shared/all/ro/");

  v17 = objc_msgSend_stringByAppendingPathComponent_(v15, v16, @"APCS");

  return v17;
}

+ (NSString)resourcesBundleDirectoryPath
{
  v4 = 0;
  v2 = objc_msgSend__resourcesBundleDirectoryPathError_(a1, a2, &v4);

  return v2;
}

+ (id)configurationForClass:(Class)a3 usingCache:(BOOL)a4
{
  v4 = a4;
  v75 = *MEMORY[0x1E69E9840];
  v7 = objc_alloc_init(a3);
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0)
  {
    v25 = APLogForCategory();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      *buf = 138477827;
      v70 = objc_opt_class();
      v26 = v70;
      _os_log_impl(&dword_1CA1CE000, v25, OS_LOG_TYPE_ERROR, "[%{private}@]: Error, class is not Subclass of APConfiguration", buf, 0xCu);
    }

    APSimulateCrash();
    v27 = [APConfiguration alloc];
    v11 = objc_msgSend_dictionary(MEMORY[0x1E695DF20], v28, v29);
    v32 = objc_msgSend_sharedInstance(APConfigurationCache, v30, v31);
    v21 = objc_msgSend_initWithConfig_notifier_(v27, v33, v11, v32);
    goto LABEL_19;
  }

  v11 = objc_msgSend_path(a3, v9, v10);
  if (!objc_msgSend_length(v11, v12, v13))
  {
    v54 = APLogForCategory();
    if (os_log_type_enabled(v54, OS_LOG_TYPE_ERROR))
    {
      v55 = objc_opt_class();
      v56 = v55;
      v57 = NSStringFromClass(a3);
      *buf = 138478083;
      v70 = v55;
      v71 = 2113;
      v72 = v57;
      _os_log_impl(&dword_1CA1CE000, v54, OS_LOG_TYPE_ERROR, "[%{private}@]: Error, getting path for class %{private}@", buf, 0x16u);
    }

    APSimulateCrash();
    v58 = [a3 alloc];
    v32 = objc_msgSend_dictionary(MEMORY[0x1E695DF20], v59, v60);
    v63 = objc_msgSend_sharedInstance(APConfigurationCache, v61, v62);
    v21 = objc_msgSend_initWithConfig_notifier_(v58, v64, v32, v63);

    goto LABEL_19;
  }

  if (v4)
  {
    v16 = objc_msgSend_sharedInstance(APConfigurationCache, v14, v15);
    v19 = objc_msgSend_path(a3, v17, v18);
    v21 = objc_msgSend_configurationForPath_(v16, v20, v19);

    if (v21)
    {
      v23 = objc_msgSend_sharedInstance(APConfigurationCache, v14, v22);
      objc_msgSend_recentlyAccessedObject_(v23, v24, v21);

      goto LABEL_20;
    }
  }

  v68 = 0;
  v21 = objc_msgSend__loadFromJSONForClass_error_(a1, v14, a3, &v68);
  v32 = v68;
  if (v32)
  {
    v36 = APLogForCategory();
    if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
    {
      v37 = objc_opt_class();
      v38 = v37;
      v41 = objc_msgSend_localizedFailureReason(v32, v39, v40);
      v44 = objc_msgSend_userInfo(v32, v42, v43);
      *buf = 138478339;
      v70 = v37;
      v71 = 2113;
      v72 = v41;
      v73 = 2113;
      v74 = v44;
      _os_log_impl(&dword_1CA1CE000, v36, OS_LOG_TYPE_ERROR, "[%{private}@]: Failed to load file, error: %{private}@ %{private}@", buf, 0x20u);
    }

    APSimulateCrash();
    v45 = [a3 alloc];
    v48 = objc_msgSend_dictionary(MEMORY[0x1E695DF20], v46, v47);
    v51 = objc_msgSend_sharedInstance(APConfigurationCache, v49, v50);
    v53 = objc_msgSend_initWithConfig_notifier_(v45, v52, v48, v51);

    v21 = v53;
    goto LABEL_18;
  }

  if (v4)
  {
    v48 = objc_msgSend_sharedInstance(APConfigurationCache, v34, v35);
    objc_msgSend_setConfiguration_(v48, v65, v21);
LABEL_18:
  }

LABEL_19:

LABEL_20:
  v66 = *MEMORY[0x1E69E9840];

  return v21;
}

+ (id)_resourcesBundleDirectoryPathError:(id *)a3
{
  v5 = objc_msgSend_bundleWithIdentifier_(MEMORY[0x1E696AAE8], a2, @"com.apple.ap.APConfigurationSystem");
  v7 = v5;
  if (v5)
  {
    v8 = objc_msgSend_pathForResource_ofType_(v5, v6, @"APCS", &stru_1F49DAC40);
    v10 = v8;
    if (v8)
    {
      v11 = v8;
    }

    else if (a3)
    {
      *a3 = objc_msgSend__configSystemErrorWithDescription_(a1, v9, @"Error Loading Default Bundle: Unable to get path to resources.");
    }
  }

  else if (a3)
  {
    objc_msgSend__configSystemErrorWithDescription_(a1, v6, @"Error Loading Default Bundle: Unable to get bundle.");
    *a3 = v10 = 0;
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

+ (id)_loadFromJSONForClass:(Class)a3 error:(id *)a4
{
  v41 = *MEMORY[0x1E69E9840];
  v7 = objc_msgSend_defaultManager(MEMORY[0x1E696AC08], a2, a3);
  v10 = objc_msgSend_configSystemDirectoryPath(APConfigurationMediator, v8, v9);
  v13 = objc_msgSend_path(a3, v11, v12);
  v15 = objc_msgSend_stringByAppendingPathComponent_(v13, v14, @"ConfigurationNode.json");
  v17 = objc_msgSend_stringByAppendingPathComponent_(v10, v16, v15);

  if (objc_msgSend_fileExistsAtPath_(v7, v18, v17))
  {
    v21 = objc_msgSend_dataWithContentsOfFile_(MEMORY[0x1E695DEF0], v19, v17);
    if (v21)
    {
      v22 = objc_msgSend_JSONObjectWithData_options_error_(MEMORY[0x1E696ACB0], v20, v21, 0, 0);
      if (v22)
      {
        v23 = [a3 alloc];
        v26 = objc_msgSend_sharedInstance(APConfigurationCache, v24, v25);
        v28 = objc_msgSend_initWithConfig_notifier_(v23, v27, v22, v26);
      }

      else
      {
        v33 = APLogForCategory();
        if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
        {
          *buf = 138477827;
          v40 = objc_opt_class();
          v38 = v40;
          _os_log_impl(&dword_1CA1CE000, v33, OS_LOG_TYPE_ERROR, "[%{private}@]: Error parsing JSON file.", buf, 0xCu);
        }

        objc_msgSend__removeFileAtPath_(a1, v34, v17);
        v28 = objc_msgSend__loadFromDefaultsForClass_error_(a1, v35, a3, a4);
      }
    }

    else
    {
      v29 = APLogForCategory();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
      {
        *buf = 138477827;
        v40 = objc_opt_class();
        v30 = v40;
        _os_log_impl(&dword_1CA1CE000, v29, OS_LOG_TYPE_ERROR, "[%{private}@]: Error getting data for JSON", buf, 0xCu);
      }

      objc_msgSend__removeFileAtPath_(a1, v31, v17);
      v28 = objc_msgSend__loadFromDefaultsForClass_error_(a1, v32, a3, a4);
    }
  }

  else
  {
    v28 = objc_msgSend__loadFromDefaultsForClass_error_(a1, v19, a3, a4);
  }

  v36 = *MEMORY[0x1E69E9840];

  return v28;
}

+ (id)_loadFromDefaultsForClass:(Class)a3 error:(id *)a4
{
  v9 = objc_msgSend__resourcesBundleDirectoryPathError_(a1, a2, a4);
  if (v9)
  {
    v10 = objc_msgSend_path(a3, v7, v8);
    v12 = objc_msgSend_stringByAppendingPathComponent_(v9, v11, v10);
    v14 = objc_msgSend_stringByAppendingPathComponent_(v12, v13, @"ConfigurationNode.json");

    v17 = objc_msgSend_defaultManager(MEMORY[0x1E696AC08], v15, v16);
    if (objc_msgSend_fileExistsAtPath_(v17, v18, v14))
    {
      v21 = objc_msgSend_dataWithContentsOfFile_(MEMORY[0x1E695DEF0], v19, v14);
      if (v21)
      {
        v23 = objc_msgSend_JSONObjectWithData_options_error_(MEMORY[0x1E696ACB0], v20, v21, 0, 0);
        if (v23)
        {
          v24 = [a3 alloc];
          v27 = objc_msgSend_sharedInstance(APConfigurationCache, v25, v26);
          v29 = objc_msgSend_initWithConfig_notifier_(v24, v28, v23, v27);
        }

        else if (a4)
        {
          objc_msgSend__configSystemErrorWithDescription_(a1, v22, @"Error Loading Default Bundle: Dictionary for default node is nil.");
          *a4 = v29 = 0;
        }

        else
        {
          v29 = 0;
        }
      }

      else if (a4)
      {
        objc_msgSend__configSystemErrorWithDescription_(a1, v20, @"Error Loading Default Bundle: Data for default node is nil.");
        *a4 = v29 = 0;
      }

      else
      {
        v29 = 0;
      }
    }

    else if (a4)
    {
      objc_msgSend__configSystemErrorWithDescription_(a1, v19, @"Error Loading Default Bundle: JSON file for Node doesn't exist.");
      *a4 = v29 = 0;
    }

    else
    {
      v29 = 0;
    }
  }

  else
  {
    v29 = 0;
  }

  return v29;
}

+ (id)_configSystemErrorWithDescription:(id)a3
{
  v13[1] = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E696ABC0];
  v4 = a3;
  v5 = [v3 alloc];
  v12 = *MEMORY[0x1E696A578];
  v13[0] = v4;
  v7 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v6, v13, &v12, 1);

  v9 = objc_msgSend_initWithDomain_code_userInfo_(v5, v8, @"CPConfigSystem", 0, v7);
  v10 = *MEMORY[0x1E69E9840];

  return v9;
}

+ (void)_removeFileAtPath:(id)a3
{
  v27 = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E696AC08];
  v4 = a3;
  v7 = objc_msgSend_defaultManager(v3, v5, v6);
  v20 = 0;
  objc_msgSend_removeItemAtPath_error_(v7, v8, v4, &v20);

  v9 = v20;
  if (v9)
  {
    v10 = APLogForCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = objc_opt_class();
      v12 = v11;
      v15 = objc_msgSend_localizedFailureReason(v9, v13, v14);
      v18 = objc_msgSend_userInfo(v9, v16, v17);
      *buf = 138478339;
      v22 = v11;
      v23 = 2113;
      v24 = v15;
      v25 = 2113;
      v26 = v18;
      _os_log_impl(&dword_1CA1CE000, v10, OS_LOG_TYPE_ERROR, "[%{private}@]: Failed delete corrupted file, error: %{private}@ %{private}@", buf, 0x20u);
    }
  }

  v19 = *MEMORY[0x1E69E9840];
}

@end