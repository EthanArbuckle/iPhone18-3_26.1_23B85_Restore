@interface NSURL(AppleMediaServices_Project)
+ (id)ams_realHomeDirectory;
- (id)ams_URLByAppendingQueryItems:()AppleMediaServices_Project preservingQueryEncoding:;
- (id)ams_URLByAppendingQueryParameter:()AppleMediaServices_Project name:;
- (id)ams_URLByAppendingQueryParameters:()AppleMediaServices_Project preservingQueryEncoding:;
- (id)ams_URLByDeletingTrailingSlash;
- (id)ams_URLByReplacingQueryItems:()AppleMediaServices_Project withEncodedParameters:;
- (id)ams_URLByReplacingQueryParameters:()AppleMediaServices_Project withEncodedParameters:;
- (id)ams_URLByReplacingSchemeWithScheme:()AppleMediaServices_Project;
- (id)ams_URLBySortingQueryParameters;
- (id)ams_URLQueryAllowedCharacterSet;
- (id)ams_schemeSwizzledURL;
- (uint64_t)ams_isBagLoadURL;
- (uint64_t)ams_isHTTP;
- (uint64_t)ams_isSecure;
@end

@implementation NSURL(AppleMediaServices_Project)

+ (id)ams_realHomeDirectory
{
  v87 = *MEMORY[0x1E69E9840];
  if (_os_feature_enabled_impl())
  {
    v3 = CPSharedResourcesDirectory();
    goto LABEL_114;
  }

  v4 = sysconf(71);
  if (v4 == -1)
  {
    v5 = +[AMSUnitTests isRunningUnitTests];
    v6 = +[AMSLogConfig sharedConfig];
    v7 = v6;
    if (v5)
    {
      if (!v6)
      {
        v7 = +[AMSLogConfig sharedConfig];
      }

      v8 = [v7 OSLogObject];
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        v9 = AMSLogKey();
        v10 = MEMORY[0x1E696AEC0];
        v11 = objc_opt_class();
        v12 = v11;
        if (v9)
        {
          v1 = AMSLogKey();
          [v10 stringWithFormat:@"%@: [%@] ", v12, v1];
        }

        else
        {
          [v10 stringWithFormat:@"%@: ", v11];
        }
        v13 = ;
        v20 = *__error();
        LODWORD(buf.pw_name) = 138543618;
        *(&buf.pw_name + 4) = v13;
        WORD2(buf.pw_passwd) = 1026;
        *(&buf.pw_passwd + 6) = v20;
        _os_log_impl(&dword_192869000, v8, OS_LOG_TYPE_ERROR, "%{public}@Failed to query sysconf for buffer size using _SC_GETPW_R_SIZE_MAX. errno = %{public}d", &buf, 0x12u);
        if (v9)
        {

          v13 = v1;
        }
      }

      v7 = [MEMORY[0x1E696AD88] defaultCenter];
      v14 = +[AMSLogConfig sharedConfig];
      [v7 postNotificationName:@"com.apple.AppleMediaServicesTests.FaultLogged" object:v14 userInfo:0];
    }

    else
    {
      if (!v6)
      {
        v7 = +[AMSLogConfig sharedConfig];
      }

      v14 = [v7 OSLogObject];
      if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
      {
        v15 = AMSLogKey();
        v16 = MEMORY[0x1E696AEC0];
        v17 = objc_opt_class();
        v18 = v17;
        if (v15)
        {
          v1 = AMSLogKey();
          [v16 stringWithFormat:@"%@: [%@] ", v18, v1];
        }

        else
        {
          [v16 stringWithFormat:@"%@: ", v17];
        }
        v19 = ;
        v21 = *__error();
        LODWORD(buf.pw_name) = 138543618;
        *(&buf.pw_name + 4) = v19;
        WORD2(buf.pw_passwd) = 1026;
        *(&buf.pw_passwd + 6) = v21;
        _os_log_impl(&dword_192869000, v14, OS_LOG_TYPE_FAULT, "%{public}@Failed to query sysconf for buffer size using _SC_GETPW_R_SIZE_MAX. errno = %{public}d", &buf, 0x12u);
        if (v15)
        {

          v19 = v1;
        }
      }
    }

    v4 = 4096;
  }

  v22 = malloc_type_malloc(v4, 0x7AEF67A8uLL);
  if (v22)
  {
    memset(&buf, 0, sizeof(buf));
    v77 = 0;
    v23 = getuid();
    v24 = getpwuid_r(v23, &buf, v22, v4, &v77);
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __58__NSURL_AppleMediaServices_Project__ams_realHomeDirectory__block_invoke;
    aBlock[3] = &__block_descriptor_40_e5_v8__0l;
    aBlock[4] = v22;
    v75 = _Block_copy(aBlock);
    if (v24)
    {
      if (+[AMSUnitTests isRunningUnitTests])
      {
        v25 = +[AMSLogConfig sharedConfig];
        if (!v25)
        {
          v25 = +[AMSLogConfig sharedConfig];
        }

        v26 = [v25 OSLogObject];
        if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
        {
          v27 = AMSLogKey();
          v28 = MEMORY[0x1E696AEC0];
          if (v27)
          {
            v29 = objc_opt_class();
            a1 = AMSLogKey();
            [v28 stringWithFormat:@"%@: [%@] ", v29, a1];
          }

          else
          {
            [MEMORY[0x1E696AEC0] stringWithFormat:@"%@: ", objc_opt_class()];
          }
          v30 = ;
          *v78 = 138544130;
          v79 = v30;
          v80 = 1026;
          v81 = v23;
          v82 = 2050;
          v83 = v4;
          v84 = 1026;
          v85 = v24;
          _os_log_impl(&dword_192869000, v26, OS_LOG_TYPE_ERROR, "%{public}@Failed to get the real home directory path. getpwuid_r failed for UID %{public}d. bufferSize = %{public}zu | status = %{public}d", v78, 0x22u);
          if (v27)
          {

            v30 = a1;
          }
        }

        v41 = [MEMORY[0x1E696AD88] defaultCenter];
        v42 = +[AMSLogConfig sharedConfig];
        [v41 postNotificationName:@"com.apple.AppleMediaServicesTests.FaultLogged" object:v42 userInfo:0];
      }

      else
      {
        v41 = +[AMSLogConfig sharedConfig];
        if (!v41)
        {
          v41 = +[AMSLogConfig sharedConfig];
        }

        v42 = [v41 OSLogObject];
        if (os_log_type_enabled(v42, OS_LOG_TYPE_FAULT))
        {
          v43 = AMSLogKey();
          v44 = MEMORY[0x1E696AEC0];
          if (v43)
          {
            v45 = objc_opt_class();
            a1 = AMSLogKey();
            [v44 stringWithFormat:@"%@: [%@] ", v45, a1];
          }

          else
          {
            [MEMORY[0x1E696AEC0] stringWithFormat:@"%@: ", objc_opt_class()];
          }
          v46 = ;
          *v78 = 138544130;
          v79 = v46;
          v80 = 1026;
          v81 = v23;
          v82 = 2050;
          v83 = v4;
          v84 = 1026;
          v85 = v24;
          _os_log_impl(&dword_192869000, v42, OS_LOG_TYPE_FAULT, "%{public}@Failed to get the real home directory path. getpwuid_r failed for UID %{public}d. bufferSize = %{public}zu | status = %{public}d", v78, 0x22u);
          if (v43)
          {

            v46 = a1;
          }
        }
      }

      goto LABEL_112;
    }

    if (v77)
    {
      if (buf.pw_dir)
      {
        v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:?];
LABEL_113:
        v75[2]();

        goto LABEL_114;
      }

      if (+[AMSUnitTests isRunningUnitTests])
      {
        v54 = +[AMSLogConfig sharedConfig];
        if (!v54)
        {
          v54 = +[AMSLogConfig sharedConfig];
        }

        v55 = [v54 OSLogObject];
        if (os_log_type_enabled(v55, OS_LOG_TYPE_ERROR))
        {
          v60 = AMSLogKey();
          v61 = MEMORY[0x1E696AEC0];
          if (v60)
          {
            v62 = objc_opt_class();
            a1 = AMSLogKey();
            [v61 stringWithFormat:@"%@: [%@] ", v62, a1];
          }

          else
          {
            [MEMORY[0x1E696AEC0] stringWithFormat:@"%@: ", objc_opt_class()];
          }
          v63 = ;
          *v78 = 138543618;
          v79 = v63;
          v80 = 1026;
          v81 = v23;
          _os_log_impl(&dword_192869000, v55, OS_LOG_TYPE_ERROR, "%{public}@Failed to get the real home directory path. getpwuid_r found a user for UID %{public}d, but pw_dir is NULL.", v78, 0x12u);
          if (v60)
          {

            v63 = a1;
          }
        }

LABEL_98:

        v41 = [MEMORY[0x1E696AD88] defaultCenter];
        v42 = +[AMSLogConfig sharedConfig];
        [v41 postNotificationName:@"com.apple.AppleMediaServicesTests.FaultLogged" object:v42 userInfo:0];
LABEL_112:

        v3 = 0;
        goto LABEL_113;
      }

      v41 = +[AMSLogConfig sharedConfig];
      if (!v41)
      {
        v41 = +[AMSLogConfig sharedConfig];
      }

      v42 = [v41 OSLogObject];
      if (!os_log_type_enabled(v42, OS_LOG_TYPE_FAULT))
      {
        goto LABEL_112;
      }

      v64 = AMSLogKey();
      v72 = MEMORY[0x1E696AEC0];
      if (v64)
      {
        v73 = objc_opt_class();
        a1 = AMSLogKey();
        [v72 stringWithFormat:@"%@: [%@] ", v73, a1];
      }

      else
      {
        [MEMORY[0x1E696AEC0] stringWithFormat:@"%@: ", objc_opt_class()];
      }
      v67 = ;
      *v78 = 138543618;
      v79 = v67;
      v80 = 1026;
      v81 = v23;
      _os_log_impl(&dword_192869000, v42, OS_LOG_TYPE_FAULT, "%{public}@Failed to get the real home directory path. getpwuid_r found a user for UID %{public}d, but pw_dir is NULL.", v78, 0x12u);
      if (v64)
      {

        v67 = a1;
      }
    }

    else
    {
      if (+[AMSUnitTests isRunningUnitTests])
      {
        v54 = +[AMSLogConfig sharedConfig];
        if (!v54)
        {
          v54 = +[AMSLogConfig sharedConfig];
        }

        v55 = [v54 OSLogObject];
        if (os_log_type_enabled(v55, OS_LOG_TYPE_ERROR))
        {
          v56 = AMSLogKey();
          v57 = MEMORY[0x1E696AEC0];
          if (v56)
          {
            v58 = objc_opt_class();
            a1 = AMSLogKey();
            [v57 stringWithFormat:@"%@: [%@] ", v58, a1];
          }

          else
          {
            [MEMORY[0x1E696AEC0] stringWithFormat:@"%@: ", objc_opt_class()];
          }
          v59 = ;
          *v78 = 138543618;
          v79 = v59;
          v80 = 1026;
          v81 = v23;
          _os_log_impl(&dword_192869000, v55, OS_LOG_TYPE_ERROR, "%{public}@Failed to get the real home directory path. getpwuid_r did not find a user for UID %{public}d.", v78, 0x12u);
          if (v56)
          {

            v59 = a1;
          }
        }

        goto LABEL_98;
      }

      v41 = +[AMSLogConfig sharedConfig];
      if (!v41)
      {
        v41 = +[AMSLogConfig sharedConfig];
      }

      v42 = [v41 OSLogObject];
      if (!os_log_type_enabled(v42, OS_LOG_TYPE_FAULT))
      {
        goto LABEL_112;
      }

      v64 = AMSLogKey();
      v65 = MEMORY[0x1E696AEC0];
      if (v64)
      {
        v66 = objc_opt_class();
        a1 = AMSLogKey();
        [v65 stringWithFormat:@"%@: [%@] ", v66, a1];
      }

      else
      {
        [MEMORY[0x1E696AEC0] stringWithFormat:@"%@: ", objc_opt_class()];
      }
      v67 = ;
      *v78 = 138543618;
      v79 = v67;
      v80 = 1026;
      v81 = v23;
      _os_log_impl(&dword_192869000, v42, OS_LOG_TYPE_FAULT, "%{public}@Failed to get the real home directory path. getpwuid_r did not find a user for UID %{public}d.", v78, 0x12u);
      if (v64)
      {

        v67 = a1;
      }
    }

    goto LABEL_112;
  }

  v31 = +[AMSUnitTests isRunningUnitTests];
  v32 = +[AMSLogConfig sharedConfig];
  v33 = v32;
  if (v31)
  {
    if (!v32)
    {
      v33 = +[AMSLogConfig sharedConfig];
    }

    v34 = [v33 OSLogObject];
    if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
    {
      v35 = AMSLogKey();
      v36 = MEMORY[0x1E696AEC0];
      v37 = objc_opt_class();
      v38 = v37;
      if (v35)
      {
        v39 = AMSLogKey();
        v40 = [v36 stringWithFormat:@"%@: [%@] ", v38, v39];
      }

      else
      {
        v40 = [v36 stringWithFormat:@"%@: ", v37];
        v39 = v40;
      }

      v68 = *__error();
      LODWORD(buf.pw_name) = 138543874;
      *(&buf.pw_name + 4) = v40;
      WORD2(buf.pw_passwd) = 2050;
      *(&buf.pw_passwd + 6) = v4;
      HIWORD(buf.pw_gid) = 1026;
      LODWORD(buf.pw_change) = v68;
      _os_log_impl(&dword_192869000, v34, OS_LOG_TYPE_ERROR, "%{public}@Failed to allocate buffer for getpwuid_r(). bufferSize = %{public}zu, errno = %{public}d", &buf, 0x1Cu);
      if (v35)
      {
      }
    }

    v69 = [MEMORY[0x1E696AD88] defaultCenter];
    v70 = +[AMSLogConfig sharedConfig];
    [v69 postNotificationName:@"com.apple.AppleMediaServicesTests.FaultLogged" object:v70 userInfo:0];
  }

  else
  {
    if (!v32)
    {
      v33 = +[AMSLogConfig sharedConfig];
    }

    v47 = [v33 OSLogObject];
    if (os_log_type_enabled(v47, OS_LOG_TYPE_FAULT))
    {
      v48 = AMSLogKey();
      v49 = MEMORY[0x1E696AEC0];
      v50 = objc_opt_class();
      v51 = v50;
      if (v48)
      {
        v52 = AMSLogKey();
        v53 = [v49 stringWithFormat:@"%@: [%@] ", v51, v52];
      }

      else
      {
        v53 = [v49 stringWithFormat:@"%@: ", v50];
        v52 = v53;
      }

      v71 = *__error();
      LODWORD(buf.pw_name) = 138543874;
      *(&buf.pw_name + 4) = v53;
      WORD2(buf.pw_passwd) = 2050;
      *(&buf.pw_passwd + 6) = v4;
      HIWORD(buf.pw_gid) = 1026;
      LODWORD(buf.pw_change) = v71;
      _os_log_impl(&dword_192869000, v47, OS_LOG_TYPE_FAULT, "%{public}@Failed to allocate buffer for getpwuid_r(). bufferSize = %{public}zu, errno = %{public}d", &buf, 0x1Cu);
      if (v48)
      {
      }
    }
  }

  v3 = 0;
LABEL_114:

  return v3;
}

- (id)ams_URLBySortingQueryParameters
{
  v2 = [objc_alloc(MEMORY[0x1E696AF20]) initWithURL:a1 resolvingAgainstBaseURL:0];
  v3 = [v2 percentEncodedQueryItems];
  if ([v3 count])
  {
    v4 = [a1 _sortedQueryItemsFromQueryItems:v3];
    [v2 setPercentEncodedQueryItems:v4];

    v5 = [a1 fragment];
    if (v5 && (v6 = v5, [a1 fragment], v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v7, "isEqualToString:", &stru_1F071BA78), v7, v6, (v8 & 1) == 0))
    {
      v10 = [a1 fragment];
      [v2 setFragment:v10];
    }

    else
    {
      [v2 setFragment:0];
    }

    v11 = [v2 URL];
    v12 = v11;
    if (v11)
    {
      v13 = v11;
    }

    else
    {
      v13 = a1;
    }

    v9 = v13;
  }

  else
  {
    v9 = a1;
  }

  return v9;
}

- (uint64_t)ams_isBagLoadURL
{
  v2 = [MEMORY[0x1E695DFF8] URLWithString:0x1F071F838];
  v3 = [MEMORY[0x1E695DFF8] URLWithString:0x1F071F858];
  v4 = [a1 host];
  v5 = [v2 host];
  v6 = [v4 hasSuffix:v5];
  if (v6)
  {
    v7 = [a1 path];
    v8 = [v2 path];
    if ([v7 isEqualToString:v8])
    {
      v9 = 1;
LABEL_9:

      goto LABEL_10;
    }

    v15 = v8;
    v17 = v7;
  }

  v10 = [a1 host];
  v11 = [v3 host];
  if ([v10 hasSuffix:v11])
  {
    v12 = [a1 path];
    v13 = [v3 path];
    v9 = [v12 isEqualToString:v13];
  }

  else
  {
    v9 = 0;
  }

  v8 = v16;
  v7 = v18;
  if (v6)
  {
    goto LABEL_9;
  }

LABEL_10:

  return v9;
}

- (uint64_t)ams_isSecure
{
  v1 = [a1 scheme];
  v2 = [v1 isEqualToString:@"https"];

  return v2;
}

- (uint64_t)ams_isHTTP
{
  v2 = [a1 scheme];
  if ([v2 isEqualToString:@"http"])
  {
    v3 = 1;
  }

  else
  {
    v4 = [a1 scheme];
    v3 = [v4 isEqualToString:@"https"];
  }

  return v3;
}

- (id)ams_schemeSwizzledURL
{
  v1 = a1;
  v2 = [v1 scheme];
  v3 = [MEMORY[0x1E695DFD8] setWithArray:&unk_1F0779C88];
  v4 = [MEMORY[0x1E695DFD8] setWithArray:&unk_1F0779CA0];
  if ([v3 containsObject:v2])
  {
    v5 = @"http";
  }

  else
  {
    if (![v4 containsObject:v2])
    {
      goto LABEL_6;
    }

    v5 = @"https";
  }

  v6 = [v1 absoluteString];
  v7 = [v6 substringFromIndex:{objc_msgSend(v2, "length")}];
  v8 = [(__CFString *)v5 stringByAppendingString:v7];

  v9 = [MEMORY[0x1E695DFF8] URLWithString:v8];

  v1 = v9;
LABEL_6:

  return v1;
}

- (id)ams_URLQueryAllowedCharacterSet
{
  if (qword_1ED6E3308 != -1)
  {
    dispatch_once(&qword_1ED6E3308, &__block_literal_global_162);
  }

  v1 = _MergedGlobals_167;

  return v1;
}

- (id)ams_URLByAppendingQueryParameter:()AppleMediaServices_Project name:
{
  v13[1] = *MEMORY[0x1E69E9840];
  v12 = a4;
  v13[0] = a3;
  v6 = MEMORY[0x1E695DF20];
  v7 = a4;
  v8 = a3;
  v9 = [v6 dictionaryWithObjects:v13 forKeys:&v12 count:1];

  v10 = [a1 ams_URLByAppendingQueryParameters:v9];

  return v10;
}

- (id)ams_URLByAppendingQueryParameters:()AppleMediaServices_Project preservingQueryEncoding:
{
  v6 = [a3 ams_arrayUsingTransform:&__block_literal_global_138];
  v7 = [a1 ams_URLByAppendingQueryItems:v6 preservingQueryEncoding:a4];

  return v7;
}

- (id)ams_URLByAppendingQueryItems:()AppleMediaServices_Project preservingQueryEncoding:
{
  v42 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [MEMORY[0x1E695DFF8] _isAppendWithUnmodifiedParametersFeatureFlagEnabled];
  v35 = a1;
  v8 = [objc_alloc(MEMORY[0x1E696AF20]) initWithURL:a1 resolvingAgainstBaseURL:0];
  v34 = v8;
  if (v7 & 1) != 0 || (a4)
  {
    goto LABEL_6;
  }

  v9 = +[AMSProcessInfo currentProcess];
  v10 = [v9 bundleIdentifier];
  if ([v10 isEqualToString:@"com.apple.Music"])
  {

LABEL_6:
    v14 = [v8 percentEncodedQueryItems];
    v15 = 1;
    goto LABEL_7;
  }

  v11 = +[AMSProcessInfo currentProcess];
  v12 = [v11 bundleIdentifier];
  v13 = [v12 isEqualToString:@"com.apple.TVMusic"];

  if (v13)
  {
    goto LABEL_6;
  }

  v14 = [v8 queryItems];
  v15 = 0;
LABEL_7:
  v16 = MEMORY[0x1E695E0F0];
  if (v14)
  {
    v16 = v14;
  }

  v17 = v16;

  v33 = v17;
  v18 = [v17 ams_filterUsingTest:&__block_literal_global_148];
  v19 = [v18 mutableCopy];

  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  obj = v6;
  v20 = [obj countByEnumeratingWithState:&v37 objects:v41 count:16];
  if (v20)
  {
    v21 = v20;
    v22 = *v38;
    do
    {
      for (i = 0; i != v21; ++i)
      {
        if (*v38 != v22)
        {
          objc_enumerationMutation(obj);
        }

        v24 = *(*(&v37 + 1) + 8 * i);
        if (v15)
        {
          v25 = MEMORY[0x1E696AF60];
          v26 = [*(*(&v37 + 1) + 8 * i) name];
          v27 = [v24 value];
          v28 = [v35 ams_URLQueryAllowedCharacterSet];
          v29 = [v27 stringByAddingPercentEncodingWithAllowedCharacters:v28];
          v30 = [v25 queryItemWithName:v26 value:v29];

          [v19 addObject:v30];
        }

        else
        {
          [v19 addObject:*(*(&v37 + 1) + 8 * i)];
        }
      }

      v21 = [obj countByEnumeratingWithState:&v37 objects:v41 count:16];
    }

    while (v21);
  }

  v31 = [v35 ams_URLByReplacingQueryItems:v19 withEncodedParameters:v15];

  return v31;
}

- (id)ams_URLByDeletingTrailingSlash
{
  v2 = [a1 absoluteString];
  if ([v2 hasSuffix:@"/"])
  {
    v3 = [v2 substringToIndex:{objc_msgSend(v2, "length") - 1}];
    v4 = [MEMORY[0x1E695DFF8] URLWithString:v3];
  }

  else
  {
    v4 = a1;
  }

  return v4;
}

- (id)ams_URLByReplacingSchemeWithScheme:()AppleMediaServices_Project
{
  v4 = a3;
  v5 = [a1 absoluteString];
  v6 = [a1 scheme];
  v7 = [v5 substringFromIndex:{objc_msgSend(v6, "length")}];
  v8 = [v4 stringByAppendingString:v7];

  v9 = [MEMORY[0x1E695DFF8] URLWithString:v8];

  return v9;
}

- (id)ams_URLByReplacingQueryParameters:()AppleMediaServices_Project withEncodedParameters:
{
  v6 = MEMORY[0x1E695DF70];
  v7 = a3;
  v8 = objc_alloc_init(v6);
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __93__NSURL_AppleMediaServices_Project__ams_URLByReplacingQueryParameters_withEncodedParameters___block_invoke;
  v12[3] = &unk_1E73B7EE0;
  v13 = v8;
  v9 = v8;
  [v7 enumerateKeysAndObjectsUsingBlock:v12];

  v10 = [a1 ams_URLByReplacingQueryItems:v9 withEncodedParameters:a4];

  return v10;
}

- (id)ams_URLByReplacingQueryItems:()AppleMediaServices_Project withEncodedParameters:
{
  v6 = MEMORY[0x1E696AF20];
  v7 = a3;
  v8 = [[v6 alloc] initWithURL:a1 resolvingAgainstBaseURL:0];
  v9 = v8;
  if (a4)
  {
    [v8 setPercentEncodedQueryItems:v7];
  }

  else
  {
    [v8 setQueryItems:v7];
  }

  v10 = [v9 URL];

  return v10;
}

@end