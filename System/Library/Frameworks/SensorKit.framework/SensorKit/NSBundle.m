@interface NSBundle
+ (void)sk_bundleWithIdentifier:(void *)a3 partnerAppDirectoryURL:;
- (uint64_t)sr_bundleTypeWithPartnerAppDirectoryURL:(void *)a1;
@end

@implementation NSBundle

+ (void)sk_bundleWithIdentifier:(void *)a3 partnerAppDirectoryURL:
{
  v38[2] = *MEMORY[0x1E69E9840];
  objc_opt_self();
  if (_MergedGlobals_6 != -1)
  {
    dispatch_once(&_MergedGlobals_6, &__block_literal_global_7);
  }

  v5 = qword_1EE02AB38;
  if (os_log_type_enabled(qword_1EE02AB38, OS_LOG_TYPE_INFO))
  {
    *buf = 138543362;
    v33 = a2;
    _os_log_impl(&dword_1C914D000, v5, OS_LOG_TYPE_INFO, "Looking for %{public}@ in LaunchServices", buf, 0xCu);
  }

  v30 = 0;
  v6 = [MEMORY[0x1E69635F8] sr_applicationRecordWithIdentifier:a2 error:&v30];
  if (!v6)
  {
    if (_MergedGlobals_6 != -1)
    {
      dispatch_once(&_MergedGlobals_6, &__block_literal_global_7);
    }

    v7 = qword_1EE02AB38;
    if (os_log_type_enabled(qword_1EE02AB38, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      v33 = a2;
      v34 = 2114;
      v35 = v30;
      _os_log_impl(&dword_1C914D000, v7, OS_LOG_TYPE_DEFAULT, "No application record found for %{public}@ because %{public}@", buf, 0x16u);
    }
  }

  v8 = [objc_msgSend(v6 "URL")];
  if (!v8)
  {
    if (_MergedGlobals_6 != -1)
    {
      dispatch_once(&_MergedGlobals_6, &__block_literal_global_7);
    }

    v9 = qword_1EE02AB38;
    if (os_log_type_enabled(qword_1EE02AB38, OS_LOG_TYPE_INFO))
    {
      *buf = 138543618;
      v33 = a2;
      v34 = 2114;
      v35 = a3;
      _os_log_impl(&dword_1C914D000, v9, OS_LOG_TYPE_INFO, "Searching for study bundle %{public}@ in %{public}@", buf, 0x16u);
    }

    v10 = [a2 stringByAppendingPathExtension:@"bundle"];
    v11 = [MEMORY[0x1E695DFF8] fileURLWithPath:v10 isDirectory:0 relativeToURL:a3];
    v8 = [objc_msgSend(MEMORY[0x1E696AAE8] bundleWithURL:{v11), "bundlePath"}];
    if (!v8)
    {
      if (_MergedGlobals_6 != -1)
      {
        dispatch_once(&_MergedGlobals_6, &__block_literal_global_7);
      }

      v20 = qword_1EE02AB38;
      if (os_log_type_enabled(qword_1EE02AB38, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543874;
        v33 = a2;
        v34 = 2114;
        v35 = a3;
        v36 = 2114;
        v37 = @"loadedStudies.plist";
        _os_log_impl(&dword_1C914D000, v20, OS_LOG_TYPE_DEFAULT, "%{public}@ not found in %{public}@. Trying %{public}@", buf, 0x20u);
      }

      v21 = [MEMORY[0x1E695DFF8] fileURLWithPath:@"loadedStudies.plist" isDirectory:0 relativeToURL:a3];
      if (_MergedGlobals_6 != -1)
      {
        dispatch_once(&_MergedGlobals_6, &__block_literal_global_7);
      }

      v22 = qword_1EE02AB38;
      if (os_log_type_enabled(qword_1EE02AB38, OS_LOG_TYPE_INFO))
      {
        *buf = 138543618;
        v33 = a2;
        v34 = 2114;
        v35 = v21;
        _os_log_impl(&dword_1C914D000, v22, OS_LOG_TYPE_INFO, "Searching for %{public}@ in plist %{public}@", buf, 0x16u);
      }

      if (v21)
      {
        v31 = 0;
        v23 = [MEMORY[0x1E695DF20] dictionaryWithContentsOfURL:v21 error:&v31];
        if (v31)
        {
          if (_MergedGlobals_6 != -1)
          {
            dispatch_once(&_MergedGlobals_6, &__block_literal_global_7);
          }

          v24 = qword_1EE02AB38;
          if (!os_log_type_enabled(qword_1EE02AB38, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_18;
          }

          *buf = 138543362;
          v33 = v21;
          v25 = "Error creating dictionary from %{public}@";
        }

        else
        {
          v26 = [objc_msgSend(v23 objectForKeyedSubscript:{@"studies", "objectForKeyedSubscript:", a2}];
          if (!v26)
          {
            if (_MergedGlobals_6 != -1)
            {
              dispatch_once(&_MergedGlobals_6, &__block_literal_global_7);
            }

            v29 = qword_1EE02AB38;
            if (os_log_type_enabled(qword_1EE02AB38, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138543618;
              v33 = a2;
              v34 = 2114;
              v35 = v21;
              _os_log_impl(&dword_1C914D000, v29, OS_LOG_TYPE_DEFAULT, "No %{public}@ was found in %{public}@", buf, 0x16u);
            }

            goto LABEL_18;
          }

          v27 = [objc_msgSend(MEMORY[0x1E696AEC0] stringWithFormat:@"%@-v%@", a2, objc_msgSend(v26, "stringValue")), "stringByAppendingPathExtension:", @"bundle"];
          v28 = MEMORY[0x1E696AEC0];
          v38[0] = [a3 path];
          v38[1] = v27;
          v12 = [v28 pathWithComponents:{objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObjects:count:", v38, 2)}];
          if ([objc_msgSend(MEMORY[0x1E696AC08] "defaultManager")])
          {
            if (!v12)
            {
              goto LABEL_18;
            }

            goto LABEL_17;
          }

          if (_MergedGlobals_6 != -1)
          {
            dispatch_once(&_MergedGlobals_6, &__block_literal_global_7);
          }

          v24 = qword_1EE02AB38;
          if (!os_log_type_enabled(qword_1EE02AB38, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_18;
          }

          *buf = 138543362;
          v33 = v12;
          v25 = "Failed to locate bundle %{public}@";
        }
      }

      else
      {
        if (_MergedGlobals_6 != -1)
        {
          dispatch_once(&_MergedGlobals_6, &__block_literal_global_7);
        }

        v24 = qword_1EE02AB38;
        if (!os_log_type_enabled(qword_1EE02AB38, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_18;
        }

        *buf = 138543362;
        v33 = 0;
        v25 = "Failed to location %{public}@";
      }

      _os_log_error_impl(&dword_1C914D000, v24, OS_LOG_TYPE_ERROR, v25, buf, 0xCu);
      goto LABEL_18;
    }
  }

  v12 = v8;
LABEL_17:
  v13 = [MEMORY[0x1E696AAE8] bundleWithPath:v12];
  if (v13)
  {
LABEL_19:
    v14 = v13;
    if (_MergedGlobals_6 != -1)
    {
      dispatch_once(&_MergedGlobals_6, &__block_literal_global_7);
    }

    v15 = qword_1EE02AB38;
    if (os_log_type_enabled(qword_1EE02AB38, OS_LOG_TYPE_INFO))
    {
      v16 = [v14 bundleURL];
      *buf = 138543618;
      v33 = a2;
      v34 = 2114;
      v35 = v16;
      _os_log_impl(&dword_1C914D000, v15, OS_LOG_TYPE_INFO, "Found bundle for %{public}@ at %{public}@", buf, 0x16u);
    }

    goto LABEL_28;
  }

LABEL_18:
  v13 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:a2];
  if (v13)
  {
    goto LABEL_19;
  }

  if (_MergedGlobals_6 != -1)
  {
    dispatch_once(&_MergedGlobals_6, &__block_literal_global_7);
  }

  v17 = qword_1EE02AB38;
  if (os_log_type_enabled(qword_1EE02AB38, OS_LOG_TYPE_ERROR))
  {
    *buf = 138543362;
    v33 = a2;
    _os_log_error_impl(&dword_1C914D000, v17, OS_LOG_TYPE_ERROR, "Failed to find bundle for %{public}@", buf, 0xCu);
  }

  v14 = 0;
LABEL_28:
  v18 = *MEMORY[0x1E69E9840];
  return v14;
}

uint64_t __51__NSBundle_SensorKitPrivate__sk_requiredCategories__block_invoke(uint64_t a1, void *a2, void *a3)
{
  result = isValidString(a2);
  if (result)
  {
    objc_opt_class();
    result = objc_opt_isKindOfClass();
    if (result)
    {
      v7 = [a3 objectForKeyedSubscript:@"Required"];
      objc_opt_class();
      result = objc_opt_isKindOfClass();
      if (result)
      {
        result = [v7 BOOLValue];
        if (result)
        {
          v8 = *(a1 + 32);

          return [v8 addObject:a2];
        }
      }
    }
  }

  return result;
}

uint64_t __61__NSBundle_SensorKitPrivate__sk_perCategoryDetailDescription__block_invoke(uint64_t a1, void *a2, void *a3)
{
  result = isValidString(a2);
  if (result)
  {
    objc_opt_class();
    result = objc_opt_isKindOfClass();
    if (result)
    {
      v7 = [a3 objectForKeyedSubscript:@"Description"];
      v8 = [*(a1 + 32) objectForInfoDictionaryKey:v7];
      if (v8)
      {
        v7 = v8;
      }

      result = isValidString(v7);
      if (result)
      {
        v9 = *(a1 + 40);

        return [v9 setObject:v7 forKeyedSubscript:a2];
      }
    }
  }

  return result;
}

- (uint64_t)sr_bundleTypeWithPartnerAppDirectoryURL:(void *)a1
{
  v21 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
LABEL_26:
    v6 = 0;
    goto LABEL_27;
  }

  v16 = 0;
  if ([a1 bundleIdentifier])
  {
    if ([MEMORY[0x1E69635F8] sr_applicationRecordWithIdentifier:objc_msgSend(a1 error:{"bundleIdentifier"), &v16}])
    {
      if (_MergedGlobals_6 != -1)
      {
        dispatch_once(&_MergedGlobals_6, &__block_literal_global_7);
      }

      v4 = qword_1EE02AB38;
      if (os_log_type_enabled(qword_1EE02AB38, OS_LOG_TYPE_INFO))
      {
        v5 = [a1 bundleIdentifier];
        *buf = 138543362;
        v18 = v5;
        _os_log_impl(&dword_1C914D000, v4, OS_LOG_TYPE_INFO, "Detected %{public}@ as app bundle type", buf, 0xCu);
      }

      v6 = 2;
      goto LABEL_27;
    }

    if (_MergedGlobals_6 != -1)
    {
      dispatch_once(&_MergedGlobals_6, &__block_literal_global_7);
    }

    v8 = qword_1EE02AB38;
    if (os_log_type_enabled(qword_1EE02AB38, OS_LOG_TYPE_DEFAULT))
    {
      v9 = [a1 bundleIdentifier];
      *buf = 138543618;
      v18 = v9;
      v19 = 2114;
      v20 = v16;
      _os_log_impl(&dword_1C914D000, v8, OS_LOG_TYPE_DEFAULT, "No application record found for %{public}@ because %{public}@", buf, 0x16u);
    }
  }

  else
  {
    if (_MergedGlobals_6 != -1)
    {
      dispatch_once(&_MergedGlobals_6, &__block_literal_global_7);
    }

    v7 = qword_1EE02AB38;
    if (os_log_type_enabled(qword_1EE02AB38, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v18 = [a1 bundleURL];
      _os_log_error_impl(&dword_1C914D000, v7, OS_LOG_TYPE_ERROR, "No bundle identifier found for bundle URL: %{public}@", buf, 0xCu);
    }
  }

  if (![objc_msgSend(objc_msgSend(MEMORY[0x1E695DFF8] fileURLWithPath:objc_msgSend(objc_msgSend(a1 isDirectory:"bundleURL") relativeToURL:{"lastPathComponent"), 1, a2), "path"), "isEqualToString:", objc_msgSend(objc_msgSend(a1, "bundleURL"), "path")}])
  {
    if (_MergedGlobals_6 != -1)
    {
      dispatch_once(&_MergedGlobals_6, &__block_literal_global_7);
    }

    v12 = qword_1EE02AB38;
    if (os_log_type_enabled(qword_1EE02AB38, OS_LOG_TYPE_ERROR))
    {
      v15 = [a1 bundleIdentifier];
      *buf = 138543362;
      v18 = v15;
      _os_log_error_impl(&dword_1C914D000, v12, OS_LOG_TYPE_ERROR, "Failed to detect a bundle type for %{public}@", buf, 0xCu);
    }

    goto LABEL_26;
  }

  if (_MergedGlobals_6 != -1)
  {
    dispatch_once(&_MergedGlobals_6, &__block_literal_global_7);
  }

  v10 = qword_1EE02AB38;
  v6 = 1;
  if (os_log_type_enabled(qword_1EE02AB38, OS_LOG_TYPE_INFO))
  {
    v11 = [a1 bundleIdentifier];
    *buf = 138543362;
    v18 = v11;
    v6 = 1;
    _os_log_impl(&dword_1C914D000, v10, OS_LOG_TYPE_INFO, "Detected %{public}@ as study bundle type", buf, 0xCu);
  }

LABEL_27:
  v13 = *MEMORY[0x1E69E9840];
  return v6;
}

@end