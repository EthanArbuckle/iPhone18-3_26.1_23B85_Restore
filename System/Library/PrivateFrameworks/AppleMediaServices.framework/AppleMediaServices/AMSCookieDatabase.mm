@interface AMSCookieDatabase
+ (id)_dataVaultPathForIdentifier:(id)a3 error:(id *)a4;
+ (id)_databasePathForIdentifier:(id)a3 error:(id *)a4;
+ (id)_databasePathForIdentifiers:(id)a3 fileManager:(id)a4 error:(id *)a5;
+ (id)_rootDataVaultPathWithError:(id *)a3;
+ (id)cleanUpCookieDatabasesWithValidIdentifiers:(id)a3 fileManager:(id)a4;
+ (id)cookieDatabaseForIdentifier:(id)a3 error:(id *)a4;
+ (id)cookieDatabaseForIdentifiers:(id)a3 error:(id *)a4;
+ (id)cookieDatabaseForIdentifiers:(id)a3 error:(id *)a4 fileManager:(id)a5;
+ (id)databasePathForIdentifiers:(id)a3 error:(id *)a4;
+ (void)_cleanUpProtectionClassAtPath:(id)a3 fileManager:(id)a4;
- (AMSCookieDatabase)initWithConnection:(id)a3 path:(id)a4;
- (BOOL)_addCookieProperties:(id)a3 error:(id *)a4;
- (BOOL)_executeStatement:(id)a3 columns:(id)a4 forCookieProperties:(id)a5 error:(id *)a6;
- (BOOL)_removeCookieProperties:(id)a3 error:(id *)a4;
- (BOOL)connection:(id)a3 needsResetForCorruptionError:(id)a4 error:(id *)a5;
- (BOOL)updateCookiesWithCookiePropertiesToAdd:(id)a3 cookiePropertiesToRemove:(id)a4 error:(id *)a5;
- (id)_cookieDictionaryForCursor:(id)a3;
- (id)cookiePropertiesWithError:(id *)a3;
- (void)_bindCookieProperties:(id)a3 column:(unint64_t)a4 position:(int)a5 using:(id)a6;
- (void)close;
- (void)dealloc;
@end

@implementation AMSCookieDatabase

- (BOOL)_addCookieProperties:(id)a3 error:(id *)a4
{
  v37 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = +[AMSLogConfig sharedAccountsCookiesConfig];
  if (!v7)
  {
    v7 = +[AMSLogConfig sharedConfig];
  }

  v8 = [v7 OSLogObject];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = objc_opt_class();
    v10 = AMSLogKey();
    v11 = AMSHashIfNeeded(v6);
    *buf = 138543874;
    *&buf[4] = v9;
    *&buf[12] = 2114;
    *&buf[14] = v10;
    *&buf[22] = 2114;
    v36 = v11;
    _os_log_impl(&dword_192869000, v8, OS_LOG_TYPE_INFO, "%{public}@ [%{public}@]: Adding cookie properties. cookieProperties = %{public}@", buf, 0x20u);
  }

  v12 = [AMSKeepAlive keepAliveWithName:@"AMSCookies"];
  v13 = AMSCookieDatabaseColumnAllCases();
  v14 = [v13 ams_mapWithTransformIgnoresNil:&__block_literal_global_32];
  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x2020000000;
  LOBYTE(v36) = 1;
  v15 = objc_msgSend(objc_alloc(MEMORY[0x1E696AD60]), "initWithString:", @"REPLACE INTO cookies(");
  v16 = [v14 componentsJoinedByString:{@", "}];
  [v15 appendString:v16];

  [v15 appendString:@") VALUES ("];
  v17 = [MEMORY[0x1E695DEC8] ams_arrayWithItem:@"?" count:{objc_msgSend(v13, "count")}];
  v18 = [v17 componentsJoinedByString:{@", "}];
  [v15 appendString:v18];

  [v15 appendString:@";"]);
  v19 = [(AMSCookieDatabase *)self connection];
  v25 = MEMORY[0x1E69E9820];
  v26 = 3221225472;
  v27 = __48__AMSCookieDatabase__addCookieProperties_error___block_invoke_2;
  v28 = &unk_1E73B6000;
  v20 = v6;
  v29 = v20;
  v30 = self;
  v21 = v15;
  v31 = v21;
  v22 = v13;
  v32 = v22;
  v33 = buf;
  v34 = a4;
  [v19 performTransaction:&v25];

  [v12 invalidate];
  v23 = *(*&buf[8] + 24);

  _Block_object_dispose(buf, 8);
  return v23 & 1;
}

__CFString *__48__AMSCookieDatabase__addCookieProperties_error___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 unsignedIntegerValue];

  return AMSNameForAMSCookieDatabaseColumn(v2);
}

uint64_t __48__AMSCookieDatabase__addCookieProperties_error___block_invoke_2(uint64_t a1)
{
  v43 = *MEMORY[0x1E69E9840];
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v32 objects:v42 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v33;
    while (2)
    {
      v6 = 0;
      do
      {
        if (*v33 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v32 + 1) + 8 * v6);
        v8 = *(a1 + 40);
        v9 = *(a1 + 48);
        v10 = *(a1 + 56);
        v31 = 0;
        v11 = [v8 _executeStatement:v9 columns:v10 forCookieProperties:v7 error:&v31];
        v12 = v31;
        v13 = v12;
        if ((v11 & 1) == 0)
        {
          v15 = +[AMSLogConfig sharedAccountsCookiesConfig];
          if (!v15)
          {
            v15 = +[AMSLogConfig sharedConfig];
          }

          v16 = [v15 OSLogObject];
          if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
          {
            v17 = objc_opt_class();
            v18 = AMSLogKey();
            v19 = AMSLogableError(v13);
            *buf = 138543874;
            v37 = v17;
            v38 = 2114;
            v39 = v18;
            v40 = 2114;
            v41 = v19;
            _os_log_impl(&dword_192869000, v16, OS_LOG_TYPE_ERROR, "%{public}@ [%{public}@]: Failed to add cookies. error = %{public}@", buf, 0x20u);
          }

          if (*(a1 + 72))
          {
            v20 = v13;
            **(a1 + 72) = v13;
          }

          *(*(*(a1 + 64) + 8) + 24) = 0;
          if ([v13 code] == 8)
          {
            v21 = +[AMSUnitTests isRunningUnitTests];
            v22 = +[AMSLogConfig sharedAccountsCookiesConfig];
            v23 = v22;
            if (v21)
            {
              if (!v22)
              {
                v23 = +[AMSLogConfig sharedConfig];
              }

              v24 = [v23 OSLogObject];
              if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
              {
                v25 = objc_opt_class();
                v26 = AMSLogKey();
                *buf = 138543618;
                v37 = v25;
                v38 = 2114;
                v39 = v26;
                _os_log_impl(&dword_192869000, v24, OS_LOG_TYPE_ERROR, "%{public}@ [%{public}@]: Failed to add cookies with read-only error", buf, 0x16u);
              }

              v23 = [MEMORY[0x1E696AD88] defaultCenter];
              v27 = +[AMSLogConfig sharedAccountsCookiesConfig];
              [v23 postNotificationName:@"com.apple.AppleMediaServicesTests.FaultLogged" object:v27 userInfo:0];
            }

            else
            {
              if (!v22)
              {
                v23 = +[AMSLogConfig sharedConfig];
              }

              v27 = [v23 OSLogObject];
              if (os_log_type_enabled(v27, OS_LOG_TYPE_FAULT))
              {
                v28 = objc_opt_class();
                v29 = AMSLogKey();
                *buf = 138543618;
                v37 = v28;
                v38 = 2114;
                v39 = v29;
                _os_log_impl(&dword_192869000, v27, OS_LOG_TYPE_FAULT, "%{public}@ [%{public}@]: Failed to add cookies with read-only error", buf, 0x16u);
              }
            }
          }

          v14 = 0;
          goto LABEL_29;
        }

        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v32 objects:v42 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

  v14 = 1;
LABEL_29:

  return v14;
}

- (void)_bindCookieProperties:(id)a3 column:(unint64_t)a4 position:(int)a5 using:(id)a6
{
  v7 = *&a5;
  v65 = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a6;
  v11 = NSHTTPCookiePropertyKeyForAMSCookieDatabaseColumn(a4);
  if (!v11)
  {
    v22 = +[AMSLogConfig sharedAccountsCookiesConfig];
    if (!v22)
    {
      v22 = +[AMSLogConfig sharedConfig];
    }

    v23 = [v22 OSLogObject];
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      v24 = objc_opt_class();
      v25 = AMSLogKey();
      v26 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a4];
      *buf = 138543874;
      v56 = v24;
      v57 = 2114;
      v58 = v25;
      v59 = 2114;
      v60 = v26;
      _os_log_impl(&dword_192869000, v23, OS_LOG_TYPE_ERROR, "%{public}@ [%{public}@]: Attempting to bind a key for an invalid column. column = %{public}@", buf, 0x20u);
    }

    goto LABEL_49;
  }

  if (a4 <= 6)
  {
    if (a4 > 2)
    {
      if (a4 > 4)
      {
        if (a4 == 5)
        {
          goto LABEL_5;
        }

        v12 = [v9 objectForKeyedSubscript:v11];
        v42 = +[AMSLogConfig sharedAccountsCookiesConfig];
        v34 = v42;
        if (!v12)
        {
          if (!v42)
          {
            v34 = +[AMSLogConfig sharedConfig];
          }

          v45 = [v34 OSLogObject];
          if (os_log_type_enabled(v45, OS_LOG_TYPE_INFO))
          {
            v46 = objc_opt_class();
            AMSLogKey();
            v47 = v10;
            v48 = v9;
            v50 = v49 = v7;
            AMSHashIfNeeded(v11);
            v52 = v51 = v11;
            *buf = 138544130;
            v56 = v46;
            v57 = 2114;
            v58 = v50;
            v59 = 2114;
            v60 = v52;
            v61 = 1026;
            LODWORD(v62) = v49;
            v9 = v48;
            v10 = v47;
            _os_log_impl(&dword_192869000, v45, OS_LOG_TYPE_INFO, "%{public}@ [%{public}@]: Attempting to store a NULL name. key = %{public}@ | position = %{public}d", buf, 0x26u);

            v11 = v51;
          }

          goto LABEL_39;
        }

        if (!v42)
        {
          v34 = +[AMSLogConfig sharedConfig];
        }

        v35 = [v34 OSLogObject];
        if (!os_log_type_enabled(v35, OS_LOG_TYPE_INFO))
        {
LABEL_38:

          [v10 bindString:v12 atPosition:v7];
LABEL_39:

          goto LABEL_49;
        }

        v43 = v7;
        v44 = objc_opt_class();
        v38 = AMSLogKey();
        AMSHashIfNeeded(v11);
        v39 = v54 = v11;
        v40 = AMSHashIfNeeded(v12);
        *buf = 138544386;
        v56 = v44;
        v7 = v43;
        v57 = 2114;
        v58 = v38;
        v59 = 2114;
        v60 = v39;
        v61 = 2114;
        v62 = v40;
        v63 = 1026;
        v64 = v43;
        v41 = "%{public}@ [%{public}@]: Binding a non-null key. key = %{public}@ | value = %{public}@ | position = %{public}d";
LABEL_37:
        _os_log_impl(&dword_192869000, v35, OS_LOG_TYPE_INFO, v41, buf, 0x30u);

        v11 = v54;
        goto LABEL_38;
      }

      if (a4 == 3)
      {
LABEL_25:
        v31 = [v9 objectForKeyedSubscript:v11];
        v32 = v31;
        v33 = &stru_1F071BA78;
        if (v31)
        {
          v33 = v31;
        }

        v12 = v33;

        v34 = +[AMSLogConfig sharedAccountsCookiesConfig];
        if (!v34)
        {
          v34 = +[AMSLogConfig sharedConfig];
        }

        v35 = [v34 OSLogObject];
        if (!os_log_type_enabled(v35, OS_LOG_TYPE_INFO))
        {
          goto LABEL_38;
        }

        v36 = v7;
        v37 = objc_opt_class();
        v38 = AMSLogKey();
        AMSHashIfNeeded(v11);
        v39 = v54 = v11;
        v40 = AMSHashIfNeeded(v12);
        *buf = 138544386;
        v56 = v37;
        v7 = v36;
        v57 = 2114;
        v58 = v38;
        v59 = 2114;
        v60 = v39;
        v61 = 2114;
        v62 = v40;
        v63 = 1026;
        v64 = v36;
        v41 = "%{public}@ [%{public}@]: Binding a nullable key that we can't store as NULL. key = %{public}@ | value = %{public}@ | position = %{public}d";
        goto LABEL_37;
      }

      v27 = [v9 objectForKeyedSubscript:v11];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v28 = MEMORY[0x1E696AC80];
        v29 = [MEMORY[0x1E695DFE8] timeZoneForSecondsFromGMT:0];
        v30 = [v28 stringFromDate:v27 timeZone:v29 formatOptions:1907];

LABEL_42:
        [v10 bindNullableString:v30 atPosition:v7];

LABEL_48:
        goto LABEL_49;
      }

LABEL_43:
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [v10 bindString:v27 atPosition:v7];
      }

      else
      {
        [v10 bindNullAtPosition:v7];
      }

      goto LABEL_48;
    }

    if (!a4)
    {
      goto LABEL_5;
    }

    if (a4 != 1)
    {
      if (a4 != 2)
      {
        goto LABEL_49;
      }

      goto LABEL_5;
    }

LABEL_40:
    v27 = [v9 objectForKeyedSubscript:v11];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v30 = [v27 absoluteString];
      goto LABEL_42;
    }

    goto LABEL_43;
  }

  if (a4 <= 8)
  {
    if (a4 != 7)
    {
      goto LABEL_25;
    }

    goto LABEL_40;
  }

  if (a4 - 9 < 5)
  {
LABEL_5:
    v12 = [v9 objectForKeyedSubscript:v11];
    v13 = +[AMSLogConfig sharedAccountsCookiesConfig];
    if (!v13)
    {
      v13 = +[AMSLogConfig sharedConfig];
    }

    v14 = [v13 OSLogObject];
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      v15 = v10;
      v16 = v9;
      v17 = v7;
      v18 = objc_opt_class();
      v19 = AMSLogKey();
      AMSHashIfNeeded(v11);
      v20 = v53 = v11;
      v21 = AMSHashIfNeeded(v12);
      *buf = 138544386;
      v56 = v18;
      v7 = v17;
      v9 = v16;
      v10 = v15;
      v57 = 2114;
      v58 = v19;
      v59 = 2114;
      v60 = v20;
      v61 = 2114;
      v62 = v21;
      v63 = 1026;
      v64 = v7;
      _os_log_impl(&dword_192869000, v14, OS_LOG_TYPE_INFO, "%{public}@ [%{public}@]: Binding a nullable key. key = %{public}@ | value = %{public}@ | position = %{public}d", buf, 0x30u);

      v11 = v53;
    }

    [v10 bindNullableString:v12 atPosition:v7];
    goto LABEL_39;
  }

  if (a4 == 14)
  {
    [v10 bindNullAtPosition:v7];
  }

LABEL_49:
}

+ (void)_cleanUpProtectionClassAtPath:(id)a3 fileManager:(id)a4
{
  v91 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if ([v7 fileExistsAtPath:v6])
  {
    v81 = 0;
    v8 = [v7 attributesOfItemAtPath:v6 error:&v81];
    v9 = v81;
    if (v8)
    {
      v10 = *MEMORY[0x1E696A3A0];
      v11 = [v8 objectForKeyedSubscript:*MEMORY[0x1E696A3A0]];
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v12 = 0;

LABEL_59:
        goto LABEL_60;
      }

      v12 = v11;

      if (!v12)
      {
        goto LABEL_59;
      }

      v13 = *MEMORY[0x1E696A388];
      if ([v12 isEqualToString:*MEMORY[0x1E696A388]])
      {
        goto LABEL_59;
      }

      v63 = v8;
      v64 = v12;
      v14 = 0x1E73B0000uLL;
      v15 = +[AMSLogConfig sharedAccountsCookiesConfig];
      if (!v15)
      {
        v15 = +[AMSLogConfig sharedConfig];
      }

      v16 = [v15 OSLogObject];
      v72 = v7;
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        v17 = AMSLogKey();
        v18 = MEMORY[0x1E696AEC0];
        v19 = objc_opt_class();
        v20 = v19;
        if (v17)
        {
          v73 = AMSLogKey();
          [v18 stringWithFormat:@"%@: [%@] ", v20, v73];
        }

        else
        {
          [v18 stringWithFormat:@"%@: ", v19];
        }
        v21 = ;
        v29 = AMSHashIfNeeded(v6);
        v30 = AMSHashIfNeeded(v64);
        *buf = 138543874;
        v86 = v21;
        v87 = 2114;
        v88 = v29;
        v89 = 2114;
        v90 = v30;
        _os_log_impl(&dword_192869000, v16, OS_LOG_TYPE_DEFAULT, "%{public}@Correcting file protection type of cookie database. path = %{public}@ | protectionType = %{public}@", buf, 0x20u);
        if (v17)
        {

          v21 = v73;
        }

        v7 = v72;
        v14 = 0x1E73B0000uLL;
      }

      v31 = [v6 stringByDeletingLastPathComponent];
      v32 = v7;
      v33 = v31;
      v80 = v9;
      v34 = [v32 contentsOfDirectoryAtPath:v31 error:&v80];
      v35 = v80;

      log = v33;
      if (v34)
      {
        v62 = v6;
        v83 = v10;
        v84 = v13;
        v36 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v84 forKeys:&v83 count:1];
        v76 = 0u;
        v77 = 0u;
        v78 = 0u;
        v79 = 0u;
        obj = v34;
        v74 = [obj countByEnumeratingWithState:&v76 objects:v82 count:16];
        if (v74)
        {
          v61 = v34;
          v37 = *v77;
          v68 = *v77;
          v69 = v36;
          do
          {
            v38 = 0;
            v39 = v35;
            do
            {
              v40 = v10;
              if (*v77 != v37)
              {
                objc_enumerationMutation(obj);
              }

              v41 = [v33 stringByAppendingPathComponent:*(*(&v76 + 1) + 8 * v38)];
              v75 = v39;
              v42 = [v72 setAttributes:v36 ofItemAtPath:v41 error:&v75];
              v35 = v75;

              if (v42)
              {
                v10 = v40;
              }

              else
              {
                v43 = [*(v14 + 3552) sharedAccountsCookiesConfig];
                if (!v43)
                {
                  v43 = [*(v14 + 3552) sharedConfig];
                }

                v44 = [v43 OSLogObject];
                if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
                {
                  v45 = AMSLogKey();
                  v46 = MEMORY[0x1E696AEC0];
                  v47 = objc_opt_class();
                  v48 = v47;
                  if (v45)
                  {
                    v67 = AMSLogKey();
                    v49 = [v46 stringWithFormat:@"%@: [%@] ", v48, v67];
                    v66 = v49;
                    v50 = v40;
                  }

                  else
                  {
                    v49 = [v46 stringWithFormat:@"%@: ", v47];
                    v50 = v49;
                  }

                  v51 = AMSHashIfNeeded(v41);
                  v52 = AMSLogableError(v35);
                  *buf = 138543874;
                  v86 = v49;
                  v87 = 2114;
                  v88 = v51;
                  v89 = 2114;
                  v90 = v52;
                  _os_log_impl(&dword_192869000, v44, OS_LOG_TYPE_ERROR, "%{public}@Failed to alter file protection class. path = %{public}@ | error = %{public}@", buf, 0x20u);
                  v53 = v50;
                  v10 = v50;
                  if (v45)
                  {

                    v53 = v67;
                  }

                  v33 = log;
                }

                else
                {
                  v10 = v40;
                }

                v14 = 0x1E73B0000;
                v37 = v68;
                v36 = v69;
              }

              ++v38;
              v39 = v35;
            }

            while (v74 != v38);
            v74 = [obj countByEnumeratingWithState:&v76 objects:v82 count:16];
          }

          while (v74);
          v34 = v61;
          v6 = v62;
        }
      }

      else
      {
        v36 = +[AMSLogConfig sharedAccountsCookiesConfig];
        if (!v36)
        {
          v36 = +[AMSLogConfig sharedConfig];
        }

        obj = [v36 OSLogObject];
        if (os_log_type_enabled(obj, OS_LOG_TYPE_ERROR))
        {
          v70 = v36;
          v54 = AMSLogKey();
          v55 = MEMORY[0x1E696AEC0];
          v56 = objc_opt_class();
          v57 = v56;
          if (v54)
          {
            v36 = AMSLogKey();
            [v55 stringWithFormat:@"%@: [%@] ", v57, v36];
          }

          else
          {
            [v55 stringWithFormat:@"%@: ", v56];
          }
          v58 = ;
          v59 = AMSHashIfNeeded(v33);
          v60 = AMSLogableError(v35);
          *buf = 138543874;
          v86 = v58;
          v87 = 2114;
          v88 = v59;
          v89 = 2114;
          v90 = v60;
          _os_log_impl(&dword_192869000, obj, OS_LOG_TYPE_ERROR, "%{public}@Cannot enumerate database parent directory. path = %{public}@ | error = %{public}@", buf, 0x20u);
          if (v54)
          {

            v58 = v36;
          }

          v34 = 0;
          v36 = v70;
        }
      }

      v7 = v72;

      v9 = v35;
      v8 = v63;
      v12 = v64;
    }

    else
    {
      v12 = +[AMSLogConfig sharedAccountsCookiesConfig];
      if (!v12)
      {
        v12 = +[AMSLogConfig sharedConfig];
      }

      log = [v12 OSLogObject];
      if (os_log_type_enabled(log, OS_LOG_TYPE_ERROR))
      {
        v22 = AMSLogKey();
        v23 = MEMORY[0x1E696AEC0];
        v24 = objc_opt_class();
        v25 = v24;
        if (v22)
        {
          v4 = AMSLogKey();
          [v23 stringWithFormat:@"%@: [%@] ", v25, v4];
        }

        else
        {
          [v23 stringWithFormat:@"%@: ", v24];
        }
        v26 = ;
        v27 = AMSHashIfNeeded(v6);
        v28 = AMSLogableError(v9);
        *buf = 138543874;
        v86 = v26;
        v87 = 2114;
        v88 = v27;
        v89 = 2114;
        v90 = v28;
        _os_log_impl(&dword_192869000, log, OS_LOG_TYPE_ERROR, "%{public}@Cannot inspect attributes of database. path = %{public}@ | error = %{public}@", buf, 0x20u);
        if (v22)
        {

          v26 = v4;
        }
      }
    }

    goto LABEL_59;
  }

LABEL_60:
}

- (id)_cookieDictionaryForCursor:(id)a3
{
  v24 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = AMSNameForAMSCookieDatabaseColumn(6uLL);
  v5 = [v3 stringForColumnName:v4];

  if (v5)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v7 = *MEMORY[0x1E695AAF0];
    v18 = v5;
    [v6 setObject:v5 forKeyedSubscript:v7];

    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v8 = [&unk_1F0779BB0 countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v20;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v20 != v10)
          {
            objc_enumerationMutation(&unk_1F0779BB0);
          }

          v12 = [*(*(&v19 + 1) + 8 * i) unsignedIntegerValue];
          v13 = NSHTTPCookiePropertyKeyForAMSCookieDatabaseColumn(v12);
          v14 = AMSNameForAMSCookieDatabaseColumn(v12);
          v15 = [v3 stringForColumnName:v14];

          if ([v15 isEqualToString:&stru_1F071BA78])
          {

            v15 = 0;
          }

          [v6 setObject:v15 forKeyedSubscript:v13];
        }

        v9 = [&unk_1F0779BB0 countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v9);
    }

    v16 = [v6 copy];

    v5 = v18;
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

+ (id)_databasePathForIdentifier:(id)a3 error:(id *)a4
{
  v29 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = [a1 _dataVaultPathForIdentifier:v7 error:a4];
  if (v8)
  {
    v9 = +[AMSLogConfig sharedAccountsCookiesConfig];
    if (!v9)
    {
      v9 = +[AMSLogConfig sharedConfig];
    }

    v10 = [v9 OSLogObject];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = objc_opt_class();
      v12 = AMSLogKey();
      v13 = NSStringFromSelector(a2);
      v14 = AMSHashIfNeeded(v13);
      v15 = AMSHashIfNeeded(v7);
      v16 = AMSHashIfNeeded(v8);
      v19 = 138544386;
      v20 = v11;
      v21 = 2114;
      v22 = v12;
      v23 = 2114;
      v24 = v14;
      v25 = 2114;
      v26 = v15;
      v27 = 2114;
      v28 = v16;
      _os_log_impl(&dword_192869000, v10, OS_LOG_TYPE_INFO, "%{public}@ [%{public}@]: %{public}@ | identifier = %{public}@ | dataVaultPath = %{public}@", &v19, 0x34u);
    }

    v17 = [AMSDatabaseHelper databasePathForDataVaultPath:v8 type:2];
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

+ (id)_databasePathForIdentifiers:(id)a3 fileManager:(id)a4 error:(id *)a5
{
  v8 = a4;
  v9 = MEMORY[0x1E695DF70];
  v10 = a3;
  v11 = [[v9 alloc] initWithCapacity:{objc_msgSend(v10, "count")}];
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __67__AMSCookieDatabase__databasePathForIdentifiers_fileManager_error___block_invoke;
  v23[3] = &unk_1E73B6028;
  v25 = a1;
  v12 = v11;
  v24 = v12;
  v13 = [v10 ams_mapWithTransformIgnoresNil:v23];

  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __67__AMSCookieDatabase__databasePathForIdentifiers_fileManager_error___block_invoke_2;
  v21[3] = &unk_1E73B2E28;
  v22 = v8;
  v14 = v8;
  v15 = [v13 ams_firstObjectPassingTest:v21];
  v16 = v15;
  if (v15)
  {
    v17 = v15;
LABEL_5:
    v18 = v17;
    goto LABEL_6;
  }

  if ([v13 count])
  {
    v17 = [v13 firstObject];
    goto LABEL_5;
  }

  if ([v12 count] < 2)
  {
    if ([v12 count] == 1)
    {
      if (a5)
      {
        v20 = [v12 objectAtIndexedSubscript:0];
        goto LABEL_17;
      }
    }

    else if (a5)
    {
      v20 = AMSError(0, @"Error creating database path", 0, 0);
      goto LABEL_17;
    }
  }

  else if (a5)
  {
    v20 = AMSErrorWithMultipleUnderlyingErrors(16, @"Error creating database path", 0, v12);
LABEL_17:
    v18 = 0;
    *a5 = v20;
    goto LABEL_6;
  }

  v18 = 0;
LABEL_6:

  return v18;
}

id __67__AMSCookieDatabase__databasePathForIdentifiers_fileManager_error___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 40);
  v9 = 0;
  v4 = [v3 _databasePathForIdentifier:a2 error:&v9];
  v5 = v9;
  v6 = v5;
  if (v4)
  {
    v7 = v4;
  }

  else if (v5)
  {
    [*(a1 + 32) addObject:v5];
  }

  return v4;
}

+ (id)_dataVaultPathForIdentifier:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [a1 _rootDataVaultPathWithError:a4];
  v8 = [v7 stringByAppendingPathComponent:v6];

  return v8;
}

+ (id)_rootDataVaultPathWithError:(id *)a3
{
  v4 = [AMSDatabaseHelper databaseFolderNameForType:2];
  v5 = v4;
  if (a3 && !v4)
  {
    *a3 = AMSError(7, @"Database Path Not Found", @"Could not find path for database", 0);
  }

  return v5;
}

- (BOOL)_removeCookieProperties:(id)a3 error:(id *)a4
{
  v36 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = +[AMSLogConfig sharedAccountsCookiesConfig];
  if (!v7)
  {
    v7 = +[AMSLogConfig sharedConfig];
  }

  v8 = [v7 OSLogObject];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = objc_opt_class();
    v10 = AMSLogKey();
    v11 = AMSHashIfNeeded(v6);
    *buf = 138543874;
    *&buf[4] = v9;
    *&buf[12] = 2114;
    *&buf[14] = v10;
    *&buf[22] = 2114;
    v35 = v11;
    _os_log_impl(&dword_192869000, v8, OS_LOG_TYPE_INFO, "%{public}@ [%{public}@]: Removing cookie properties. cookieProperties = %{public}@", buf, 0x20u);
  }

  v12 = [AMSKeepAlive keepAliveWithName:@"AMSCookies"];
  v13 = [objc_alloc(MEMORY[0x1E696AD60]) initWithString:@"DELETE FROM cookies WHERE "];
  v14 = AMSCookieDatabaseColumnAllCases();
  v15 = [v14 ams_filterUsingTest:&__block_literal_global_86];

  v16 = [v15 ams_mapWithTransform:&__block_literal_global_88];
  v17 = [v16 componentsJoinedByString:@" AND "];
  [v13 appendString:v17];

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x2020000000;
  LOBYTE(v35) = 1;
  v18 = [(AMSCookieDatabase *)self connection];
  v24 = MEMORY[0x1E69E9820];
  v25 = 3221225472;
  v26 = __51__AMSCookieDatabase__removeCookieProperties_error___block_invoke_3;
  v27 = &unk_1E73B6000;
  v19 = v6;
  v28 = v19;
  v29 = self;
  v20 = v13;
  v30 = v20;
  v21 = v15;
  v32 = buf;
  v33 = a4;
  v31 = v21;
  [v18 performTransaction:&v24];

  [v12 invalidate];
  v22 = *(*&buf[8] + 24);

  _Block_object_dispose(buf, 8);
  return v22 & 1;
}

id __51__AMSCookieDatabase__removeCookieProperties_error___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x1E696AEC0];
  v3 = AMSNameForAMSCookieDatabaseColumn([a2 unsignedIntegerValue]);
  v4 = [v2 stringWithFormat:@"%@ IS ?", v3];

  return v4;
}

uint64_t __51__AMSCookieDatabase__removeCookieProperties_error___block_invoke_3(uint64_t a1)
{
  v34 = *MEMORY[0x1E69E9840];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v23 objects:v33 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v24;
    while (2)
    {
      v6 = 0;
      do
      {
        if (*v24 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v23 + 1) + 8 * v6);
        v8 = *(a1 + 40);
        v9 = *(a1 + 48);
        v10 = *(a1 + 56);
        v22 = 0;
        v11 = [v8 _executeStatement:v9 columns:v10 forCookieProperties:v7 error:&v22];
        v12 = v22;
        v13 = v12;
        if ((v11 & 1) == 0)
        {
          v15 = +[AMSLogConfig sharedAccountsCookiesConfig];
          if (!v15)
          {
            v15 = +[AMSLogConfig sharedConfig];
          }

          v16 = [v15 OSLogObject];
          if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
          {
            v17 = objc_opt_class();
            v18 = AMSLogKey();
            v19 = AMSLogableError(v13);
            *buf = 138543874;
            v28 = v17;
            v29 = 2114;
            v30 = v18;
            v31 = 2114;
            v32 = v19;
            _os_log_impl(&dword_192869000, v16, OS_LOG_TYPE_ERROR, "%{public}@ [%{public}@]: Failed to remove cookies. error = %{public}@", buf, 0x20u);
          }

          if (*(a1 + 72))
          {
            v20 = v13;
            **(a1 + 72) = v13;
          }

          *(*(*(a1 + 64) + 8) + 24) = 0;

          v14 = 0;
          goto LABEL_17;
        }

        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v23 objects:v33 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

  v14 = 1;
LABEL_17:

  return v14;
}

- (BOOL)_executeStatement:(id)a3 columns:(id)a4 forCookieProperties:(id)a5 error:(id *)a6
{
  v10 = a4;
  v11 = a5;
  v12 = a3;
  v13 = [(AMSCookieDatabase *)self connection];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __73__AMSCookieDatabase__executeStatement_columns_forCookieProperties_error___block_invoke;
  v17[3] = &unk_1E73B6078;
  v18 = v10;
  v19 = self;
  v20 = v11;
  v14 = v11;
  v15 = v10;
  LOBYTE(a6) = [v13 executeStatement:v12 error:a6 bindings:v17];

  return a6;
}

void __73__AMSCookieDatabase__executeStatement_columns_forCookieProperties_error___block_invoke(void *a1, void *a2)
{
  v3 = a2;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __73__AMSCookieDatabase__executeStatement_columns_forCookieProperties_error___block_invoke_2;
  v7[3] = &unk_1E73B6050;
  v4 = a1[4];
  v5 = a1[6];
  v7[4] = a1[5];
  v8 = v5;
  v9 = v3;
  v6 = v3;
  [v4 enumerateObjectsUsingBlock:v7];
}

uint64_t __73__AMSCookieDatabase__executeStatement_columns_forCookieProperties_error___block_invoke_2(void *a1, void *a2, int a3)
{
  v5 = [a2 unsignedIntegerValue];
  v6 = a1[4];
  v7 = a1[5];
  v8 = a1[6];

  return [v6 _bindCookieProperties:v7 column:v5 position:(a3 + 1) using:v8];
}

+ (id)cleanUpCookieDatabasesWithValidIdentifiers:(id)a3 fileManager:(id)a4
{
  v176 = *MEMORY[0x1E69E9840];
  v124 = a3;
  v135 = a4;
  v6 = +[AMSLogConfig sharedAccountsCookiesConfig];
  if (!v6)
  {
    v6 = +[AMSLogConfig sharedConfig];
  }

  v7 = [v6 OSLogObject];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = AMSLogKey();
    v9 = MEMORY[0x1E696AEC0];
    v10 = objc_opt_class();
    if (v8)
    {
      v11 = AMSLogKey();
      v12 = NSStringFromSelector(a2);
      v13 = [v9 stringWithFormat:@"%@: [%@] %@ ", v10, v11, v12];
    }

    else
    {
      v11 = NSStringFromSelector(a2);
      v13 = [v9 stringWithFormat:@"%@: %@ ", v10, v11];
      v12 = v13;
    }

    v4 = AMSHashIfNeededNonnull(v124);
    *buf = 138543618;
    *&buf[4] = v13;
    *&buf[12] = 2114;
    *&buf[14] = v4;
    _os_log_impl(&dword_192869000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@| validIdentifiers = %{public}@", buf, 0x16u);
    if (v8)
    {
    }
  }

  v163 = 0;
  v125 = [a1 _rootDataVaultPathWithError:&v163];
  v14 = v163;
  if (!v125)
  {
    v132 = [AMSBinaryPromise promiseWithError:v14];
    goto LABEL_119;
  }

  v15 = [AMSDatabaseHelper dataVaultURLForDataVaultPath:?];
  v119 = v15;
  if (!v15)
  {
    v24 = +[AMSLogConfig sharedAccountsCookiesConfig];
    if (!v24)
    {
      v24 = +[AMSLogConfig sharedConfig];
    }

    v25 = [v24 OSLogObject];
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      v26 = AMSLogKey();
      v27 = MEMORY[0x1E696AEC0];
      v28 = objc_opt_class();
      if (v26)
      {
        v29 = AMSLogKey();
        v4 = NSStringFromSelector(a2);
        [v27 stringWithFormat:@"%@: [%@] %@ ", v28, v29, v4];
      }

      else
      {
        v29 = NSStringFromSelector(a2);
        [v27 stringWithFormat:@"%@: %@ ", v28, v29];
      }
      v30 = ;
      *buf = 138543362;
      *&buf[4] = v30;
      _os_log_impl(&dword_192869000, v25, OS_LOG_TYPE_ERROR, "%{public}@| Error creating URL. dataVaultURL is nil", buf, 0xCu);
      if (v26)
      {

        v30 = v4;
      }
    }

    v112 = AMSError(14, @"Error creating URL", 0, 0);

    v132 = [AMSBinaryPromise promiseWithError:v112];
    goto LABEL_118;
  }

  v158[0] = MEMORY[0x1E69E9820];
  v158[1] = 3221225472;
  v158[2] = __76__AMSCookieDatabase_cleanUpCookieDatabasesWithValidIdentifiers_fileManager___block_invoke;
  v158[3] = &unk_1E73B60A0;
  v107 = v15;
  v159 = v107;
  v161 = a1;
  v162 = a2;
  v112 = v14;
  v160 = v112;
  v137 = [v124 ams_mapWithTransformIgnoresNil:v158];
  v16 = +[AMSLogConfig sharedAccountsCookiesConfig];
  if (!v16)
  {
    v16 = +[AMSLogConfig sharedConfig];
  }

  v17 = [v16 OSLogObject];
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
  {
    v18 = AMSLogKey();
    v19 = MEMORY[0x1E696AEC0];
    v20 = objc_opt_class();
    if (v18)
    {
      v21 = AMSLogKey();
      v22 = NSStringFromSelector(a2);
      v23 = [v19 stringWithFormat:@"%@: [%@] %@ ", v20, v21, v22];
    }

    else
    {
      v21 = NSStringFromSelector(a2);
      v23 = [v19 stringWithFormat:@"%@: %@ ", v20, v21];
      v22 = v23;
    }

    v31 = AMSLogableURL(v107);
    *buf = 138543618;
    *&buf[4] = v23;
    *&buf[12] = 2114;
    *&buf[14] = v31;
    _os_log_impl(&dword_192869000, v17, OS_LOG_TYPE_DEBUG, "%{public}@| enumerating contents of %{public}@", buf, 0x16u);
    if (v18)
    {
    }
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v173 = __Block_byref_object_copy__18;
  v174 = __Block_byref_object_dispose__18;
  v175 = 0;
  v145 = *MEMORY[0x1E695DB00];
  v171 = *MEMORY[0x1E695DB00];
  v32 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v171 count:1];
  v157[0] = MEMORY[0x1E69E9820];
  v157[1] = 3221225472;
  v157[2] = __76__AMSCookieDatabase_cleanUpCookieDatabasesWithValidIdentifiers_fileManager___block_invoke_108;
  v157[3] = &unk_1E73B60C8;
  v157[6] = a2;
  v157[5] = a1;
  v157[4] = buf;
  v33 = [v135 enumeratorAtURL:v107 includingPropertiesForKeys:v32 options:17 errorHandler:v157];

  v155 = 0u;
  v156 = 0u;
  v153 = 0u;
  v154 = 0u;
  obj = v33;
  v34 = [obj countByEnumeratingWithState:&v153 objects:v170 count:16];
  if (!v34)
  {
    goto LABEL_99;
  }

  v144 = *v154;
  do
  {
    v35 = 0;
    v146 = v34;
    do
    {
      if (*v154 != v144)
      {
        objc_enumerationMutation(obj);
      }

      v36 = *(*(&v153 + 1) + 8 * v35);
      context = objc_autoreleasePoolPush();
      v37 = +[AMSLogConfig sharedAccountsCookiesConfig];
      if (!v37)
      {
        v37 = +[AMSLogConfig sharedConfig];
      }

      v38 = [v37 OSLogObject];
      if (os_log_type_enabled(v38, OS_LOG_TYPE_DEBUG))
      {
        v39 = AMSLogKey();
        v40 = MEMORY[0x1E696AEC0];
        v41 = objc_opt_class();
        if (v39)
        {
          v143 = AMSLogKey();
          v142 = NSStringFromSelector(a2);
          v42 = [v40 stringWithFormat:@"%@: [%@] %@ ", v41, v143, v142];
          v139 = v42;
        }

        else
        {
          v141 = NSStringFromSelector(a2);
          v42 = [v40 stringWithFormat:@"%@: %@ ", v41, v141];
          v140 = v42;
        }

        v43 = AMSLogableURL(v36);
        *v164 = 138543618;
        v165 = v42;
        v166 = 2114;
        v167 = v43;
        _os_log_impl(&dword_192869000, v38, OS_LOG_TYPE_DEBUG, "%{public}@ | Processing URL: %{public}@", v164, 0x16u);
        v44 = v140;
        v45 = v141;
        if (v39)
        {

          v44 = v142;
          v45 = v143;
        }
      }

      v151 = 0;
      v152 = 0;
      v46 = [v36 getResourceValue:&v152 forKey:v145 error:&v151];
      v47 = v152;
      v48 = v151;
      if ((v46 & 1) == 0)
      {
        v49 = v47;
        v50 = +[AMSLogConfig sharedAccountsCookiesConfig];
        if (!v50)
        {
          v50 = +[AMSLogConfig sharedConfig];
        }

        v51 = [v50 OSLogObject];
        if (os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
        {
          v56 = AMSLogKey();
          v57 = MEMORY[0x1E696AEC0];
          if (v56)
          {
            v58 = objc_opt_class();
            v136 = AMSLogKey();
            v59 = [v57 stringWithFormat:@"%@: [%@] ", v58, v136];
            v133 = v59;
          }

          else
          {
            v59 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@: ", objc_opt_class()];
            v134 = v59;
          }

          v66 = AMSLogableURL(v36);
          v67 = AMSLogableError(v48);
          *v164 = 138543874;
          v165 = v59;
          v166 = 2114;
          v167 = v66;
          v168 = 2114;
          v169 = v67;
          _os_log_impl(&dword_192869000, v51, OS_LOG_TYPE_ERROR, "%{public}@Error getting file resource identifier. URL = %{public}@ | error = %{public}@", v164, 0x20u);

          v68 = v134;
          if (v56)
          {

            v68 = v136;
          }
        }

        v69 = 3;
        goto LABEL_88;
      }

      v49 = v47;
      if ([v137 containsObject:v47])
      {
        v50 = +[AMSLogConfig sharedAccountsCookiesConfig];
        if (!v50)
        {
          v50 = +[AMSLogConfig sharedConfig];
        }

        v51 = [v50 OSLogObject];
        if (os_log_type_enabled(v51, OS_LOG_TYPE_DEBUG))
        {
          v52 = AMSLogKey();
          v53 = MEMORY[0x1E696AEC0];
          v54 = objc_opt_class();
          if (v52)
          {
            v129 = AMSLogKey();
            v128 = NSStringFromSelector(a2);
            v55 = [v53 stringWithFormat:@"%@: [%@] %@ ", v54, v129, v128];
            v120 = v55;
          }

          else
          {
            v126 = NSStringFromSelector(a2);
            v55 = [v53 stringWithFormat:@"%@: %@ ", v54, v126];
            v122 = v55;
          }

          v70 = AMSLogableURL(v36);
          v71 = AMSHashIfNeeded(v47);
          *v164 = 138543874;
          v165 = v55;
          v166 = 2114;
          v167 = v70;
          v168 = 2114;
          v169 = v71;
          _os_log_impl(&dword_192869000, v51, OS_LOG_TYPE_DEBUG, "%{public}@| URL has expected identifier, skipping. URL = %{public}@ | identifier = %{public}@", v164, 0x20u);

          v72 = v122;
          v73 = v126;
          if (v52)
          {

            v72 = v128;
            v73 = v129;
          }
        }

        v69 = 0;
LABEL_88:

        v78 = v48;
        goto LABEL_89;
      }

      v60 = +[AMSLogConfig sharedAccountsCookiesConfig];
      if (!v60)
      {
        v60 = +[AMSLogConfig sharedConfig];
      }

      v61 = [v60 OSLogObject];
      if (os_log_type_enabled(v61, OS_LOG_TYPE_DEFAULT))
      {
        v62 = AMSLogKey();
        v63 = MEMORY[0x1E696AEC0];
        v64 = objc_opt_class();
        if (v62)
        {
          v131 = AMSLogKey();
          v130 = NSStringFromSelector(a2);
          v65 = [v63 stringWithFormat:@"%@: [%@] %@ ", v64, v131, v130];
          v121 = v65;
        }

        else
        {
          v127 = NSStringFromSelector(a2);
          v65 = [v63 stringWithFormat:@"%@: %@ ", v64, v127];
          v123 = v65;
        }

        v74 = AMSLogableURL(v36);
        *v164 = 138543618;
        v165 = v65;
        v166 = 2114;
        v167 = v74;
        _os_log_impl(&dword_192869000, v61, OS_LOG_TYPE_DEFAULT, "%{public}@| Deleting file at URL: %{public}@", v164, 0x16u);
        v75 = v123;
        v76 = v127;
        if (v62)
        {

          v75 = v130;
          v76 = v131;
        }
      }

      v150 = v48;
      v77 = [v135 removeItemAtURL:v36 error:&v150];
      v78 = v150;

      if (v77)
      {
        v50 = +[AMSLogConfig sharedAccountsCookiesConfig];
        if (!v50)
        {
          v50 = +[AMSLogConfig sharedConfig];
        }

        v51 = [v50 OSLogObject];
        if (os_log_type_enabled(v51, OS_LOG_TYPE_DEBUG))
        {
          v79 = AMSLogKey();
          v80 = MEMORY[0x1E696AEC0];
          v81 = objc_opt_class();
          if (v79)
          {
            v118 = AMSLogKey();
            v117 = NSStringFromSelector(a2);
            v82 = [v80 stringWithFormat:@"%@: [%@] %@ ", v81, v118, v117];
            v109 = v82;
          }

          else
          {
            v114 = NSStringFromSelector(a2);
            v82 = [v80 stringWithFormat:@"%@: %@ ", v81, v114];
            v111 = v82;
          }

          v89 = AMSLogableURL(v36);
          *v164 = 138543618;
          v165 = v82;
          v166 = 2114;
          v167 = v89;
          _os_log_impl(&dword_192869000, v51, OS_LOG_TYPE_DEBUG, "%{public}@| Deleted file. URL = %{public}@", v164, 0x16u);
          v90 = v111;
          v91 = v114;
          if (v79)
          {

            v90 = v117;
            v91 = v118;
          }
        }

        v69 = 0;
        v48 = v78;
        goto LABEL_88;
      }

      v83 = +[AMSLogConfig sharedAccountsCookiesConfig];
      if (!v83)
      {
        v83 = +[AMSLogConfig sharedConfig];
      }

      v84 = [v83 OSLogObject];
      if (os_log_type_enabled(v84, OS_LOG_TYPE_ERROR))
      {
        v85 = AMSLogKey();
        v86 = MEMORY[0x1E696AEC0];
        v87 = objc_opt_class();
        if (v85)
        {
          v116 = AMSLogKey();
          v115 = NSStringFromSelector(a2);
          v88 = [v86 stringWithFormat:@"%@: [%@] %@ ", v87, v116, v115];
          v108 = v88;
        }

        else
        {
          v113 = NSStringFromSelector(a2);
          v88 = [v86 stringWithFormat:@"%@: %@ ", v87, v113];
          v110 = v88;
        }

        v92 = AMSLogableURL(v36);
        v93 = AMSLogableError(v78);
        *v164 = 138543874;
        v165 = v88;
        v166 = 2114;
        v167 = v92;
        v168 = 2114;
        v169 = v93;
        _os_log_impl(&dword_192869000, v84, OS_LOG_TYPE_ERROR, "%{public}@| Error deleting file. URL = %{public}@ | error = %{public}@", v164, 0x20u);

        v94 = v110;
        v95 = v113;
        if (v85)
        {

          v94 = v115;
          v95 = v116;
        }
      }

      v50 = AMSError(14, @"Filesystem Error", @"Unable to delete the file.", v78);
      v132 = [AMSBinaryPromise promiseWithError:v50];
      v69 = 1;
LABEL_89:

      objc_autoreleasePoolPop(context);
      if (v69 != 3 && v69)
      {

        goto LABEL_117;
      }

      ++v35;
    }

    while (v146 != v35);
    v34 = [obj countByEnumeratingWithState:&v153 objects:v170 count:16];
  }

  while (v34);
LABEL_99:

  if (*(*&buf[8] + 40))
  {
    v132 = [AMSBinaryPromise promiseWithError:?];
  }

  else
  {
    v96 = +[AMSLogConfig sharedAccountsCookiesConfig];
    if (!v96)
    {
      v96 = +[AMSLogConfig sharedConfig];
    }

    v97 = [v96 OSLogObject];
    if (os_log_type_enabled(v97, OS_LOG_TYPE_DEBUG))
    {
      v98 = AMSLogKey();
      v99 = MEMORY[0x1E696AEC0];
      if (v98)
      {
        v100 = objc_opt_class();
        v101 = AMSLogKey();
        v102 = NSStringFromSelector(a2);
        v103 = [v99 stringWithFormat:@"%@: [%@] %@ ", v100, v101, v102];
      }

      else
      {
        v104 = objc_opt_class();
        v101 = NSStringFromSelector(a2);
        v103 = [v99 stringWithFormat:@"%@: %@ ", v104, v101];
        v102 = v103;
      }

      v105 = AMSLogableURL(v107);
      *v164 = 138543618;
      v165 = v103;
      v166 = 2114;
      v167 = v105;
      _os_log_impl(&dword_192869000, v97, OS_LOG_TYPE_DEBUG, "%{public}@| Finished enumeration contents of %{public}@", v164, 0x16u);
      if (v98)
      {
      }
    }

    v132 = +[AMSBinaryPromise promiseWithSuccess];
  }

LABEL_117:

  _Block_object_dispose(buf, 8);
LABEL_118:

  v14 = v112;
LABEL_119:

  return v132;
}

NSObject *__76__AMSCookieDatabase_cleanUpCookieDatabasesWithValidIdentifiers_fileManager___block_invoke(uint64_t a1, void *a2)
{
  v45 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [*(a1 + 32) URLByAppendingPathComponent:v3 isDirectory:1];
  v5 = v4;
  if (v4)
  {
    v36 = 0;
    v6 = *MEMORY[0x1E695DB00];
    v35 = 0;
    v7 = [v4 getResourceValue:&v36 forKey:v6 error:&v35];
    v8 = v36;
    v9 = v35;
    if (v7)
    {
      v8 = v8;
      v10 = v8;
      goto LABEL_24;
    }

    v16 = +[AMSLogConfig sharedAccountsCookiesConfig];
    if (!v16)
    {
      v16 = +[AMSLogConfig sharedConfig];
    }

    v17 = [v16 OSLogObject];
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v18 = AMSLogKey();
      v19 = MEMORY[0x1E696AEC0];
      v20 = objc_opt_class();
      if (v18)
      {
        AMSLogKey();
        v31 = v19;
        v22 = v21 = v18;
        v32 = NSStringFromSelector(*(a1 + 56));
        v34 = v22;
        v30 = v22;
        v18 = v21;
        [v31 stringWithFormat:@"%@: [%@] %@ ", v20, v30, v32];
      }

      else
      {
        v34 = NSStringFromSelector(*(a1 + 56));
        [v19 stringWithFormat:@"%@: %@ ", v20, v34];
      }
      v23 = ;
      v27 = AMSLogableURL(v5);
      v28 = AMSLogableError(v9);
      *buf = 138543874;
      v38 = v23;
      v39 = 2114;
      v40 = v27;
      v41 = 2114;
      v42 = v28;
      _os_log_impl(&dword_192869000, v17, OS_LOG_TYPE_ERROR, "%{public}@| Error getting file resource identifier. URL = %{public}@ | error = %{public}@", buf, 0x20u);
      if (v18)
      {

        v23 = v32;
      }
    }
  }

  else
  {
    v9 = +[AMSLogConfig sharedAccountsCookiesConfig];
    if (!v9)
    {
      v9 = +[AMSLogConfig sharedConfig];
    }

    v8 = [v9 OSLogObject];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v11 = AMSLogKey();
      v12 = MEMORY[0x1E696AEC0];
      v13 = objc_opt_class();
      if (v11)
      {
        v14 = AMSLogKey();
        v33 = NSStringFromSelector(*(a1 + 56));
        [v12 stringWithFormat:@"%@: [%@] %@ ", v13, v14, v33];
      }

      else
      {
        v14 = NSStringFromSelector(*(a1 + 56));
        [v12 stringWithFormat:@"%@: %@ ", v13, v14];
      }
      v15 = ;
      v24 = AMSLogableURL(*(a1 + 32));
      v25 = AMSHashIfNeeded(v3);
      v26 = AMSLogableError(*(a1 + 40));
      *buf = 138544130;
      v38 = v15;
      v39 = 2114;
      v40 = v24;
      v41 = 2114;
      v42 = v25;
      v43 = 2114;
      v44 = v26;
      _os_log_impl(&dword_192869000, v8, OS_LOG_TYPE_ERROR, "%{public}@| Error creating URL. dataVaultURL = %{public}@ | identifier = %{public}@ | error = %{public}@", buf, 0x2Au);
      if (v11)
      {

        v15 = v33;
      }
    }
  }

  v10 = 0;
LABEL_24:

  return v10;
}

uint64_t __76__AMSCookieDatabase_cleanUpCookieDatabasesWithValidIdentifiers_fileManager___block_invoke_108(uint64_t a1, void *a2, void *a3)
{
  v27 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = +[AMSLogConfig sharedAccountsCookiesConfig];
  if (!v7)
  {
    v7 = +[AMSLogConfig sharedConfig];
  }

  v8 = [v7 OSLogObject];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    v9 = AMSLogKey();
    v10 = MEMORY[0x1E696AEC0];
    v11 = objc_opt_class();
    if (v9)
    {
      v12 = AMSLogKey();
      v20 = NSStringFromSelector(*(a1 + 48));
      [v10 stringWithFormat:@"%@: [%@] %@ ", v11, v12, v20];
    }

    else
    {
      v12 = NSStringFromSelector(*(a1 + 48));
      [v10 stringWithFormat:@"%@: %@ ", v11, v12];
    }
    v13 = ;
    v14 = AMSLogableURL(v5);
    v15 = AMSLogableError(v6);
    *buf = 138543874;
    v22 = v13;
    v23 = 2114;
    v24 = v14;
    v25 = 2114;
    v26 = v15;
    _os_log_impl(&dword_192869000, v8, OS_LOG_TYPE_ERROR, "%{public}@| Error enumerating file. URL = %{public}@ | error = %{public}@", buf, 0x20u);
    if (v9)
    {

      v13 = v20;
    }
  }

  v16 = AMSError(14, @"Error enumerating directory", 0, v6);
  v17 = *(*(a1 + 32) + 8);
  v18 = *(v17 + 40);
  *(v17 + 40) = v16;

  return 1;
}

- (void)close
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = [AMSKeepAlive keepAliveWithName:@"AMSCookies"];
  v4 = [(AMSCookieDatabase *)self connection];
  v12 = 0;
  v5 = [v4 closeWithError:&v12];
  v6 = v12;

  if (v5)
  {
    connection = self->_connection;
    self->_connection = 0;
  }

  else
  {
    connection = +[AMSLogConfig sharedAccountsCookiesConfig];
    if (!connection)
    {
      connection = +[AMSLogConfig sharedConfig];
    }

    v8 = [connection OSLogObject];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = objc_opt_class();
      v10 = v9;
      v11 = AMSLogableError(v6);
      *buf = 138543618;
      v14 = v9;
      v15 = 2114;
      v16 = v11;
      _os_log_impl(&dword_192869000, v8, OS_LOG_TYPE_ERROR, "%{public}@: Failed to close the AMS Cookie Storage database connection: %{public}@", buf, 0x16u);
    }
  }

  [v3 invalidate];
}

+ (id)databasePathForIdentifiers:(id)a3 error:(id *)a4
{
  v6 = MEMORY[0x1E696AC08];
  v7 = a3;
  v8 = [v6 defaultManager];
  v9 = [a1 _databasePathForIdentifiers:v7 fileManager:v8 error:a4];

  return v9;
}

+ (id)cookieDatabaseForIdentifier:(id)a3 error:(id *)a4
{
  v22 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = +[AMSLogConfig sharedAccountsCookiesConfig];
  if (!v7)
  {
    v7 = +[AMSLogConfig sharedConfig];
  }

  v8 = [v7 OSLogObject];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = objc_opt_class();
    v10 = AMSLogKey();
    v11 = AMSHashIfNeeded(v6);
    *buf = 138543874;
    v17 = v9;
    v18 = 2114;
    v19 = v10;
    v20 = 2114;
    v21 = v11;
    _os_log_impl(&dword_192869000, v8, OS_LOG_TYPE_INFO, "%{public}@ [%{public}@]: Getting cookie database. accountIdentifier = %{public}@", buf, 0x20u);
  }

  v15 = v6;
  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v15 count:1];
  v13 = [a1 cookieDatabaseForIdentifiers:v12 error:a4];

  return v13;
}

+ (id)cookieDatabaseForIdentifiers:(id)a3 error:(id *)a4
{
  v6 = MEMORY[0x1E696AC08];
  v7 = a3;
  v8 = [v6 defaultManager];
  v9 = [a1 cookieDatabaseForIdentifiers:v7 error:a4 fileManager:v8];

  return v9;
}

+ (id)cookieDatabaseForIdentifiers:(id)a3 error:(id *)a4 fileManager:(id)a5
{
  v74 = *MEMORY[0x1E69E9840];
  v62 = a3;
  v63 = a5;
  v7 = +[AMSLogConfig sharedAccountsCookiesConfig];
  if (!v7)
  {
    v7 = +[AMSLogConfig sharedConfig];
  }

  v8 = [v7 OSLogObject];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = objc_opt_class();
    v10 = AMSLogKey();
    v11 = AMSHashIfNeeded(v62);
    *buf = 138543874;
    v69 = v9;
    v70 = 2114;
    v71 = v10;
    v72 = 2114;
    v73 = v11;
    _os_log_impl(&dword_192869000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@ [%{public}@]: Getting cookie database. accountIdentifiers = %{public}@", buf, 0x20u);
  }

  v12 = [AMSKeepAlive keepAliveWithName:@"AMSCookies"];
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __68__AMSCookieDatabase_cookieDatabaseForIdentifiers_error_fileManager___block_invoke;
  aBlock[3] = &unk_1E73B3680;
  v59 = v12;
  v67 = v59;
  v13 = _Block_copy(aBlock);
  v14 = [a1 _databasePathForIdentifiers:v62 fileManager:v63 error:a4];
  if (v14)
  {
    v15 = +[AMSLogConfig sharedAccountsCookiesConfig];
    if (!v15)
    {
      v15 = +[AMSLogConfig sharedConfig];
    }

    v16 = [v15 OSLogObject];
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      v17 = AMSLogKey();
      v18 = MEMORY[0x1E696AEC0];
      if (v17)
      {
        v19 = objc_opt_class();
        v20 = AMSLogKey();
        v21 = [v18 stringWithFormat:@"%@: [%@] ", v19, v20];
      }

      else
      {
        v21 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@: ", objc_opt_class()];
        v20 = v21;
      }

      v23 = AMSHashIfNeeded(v14);
      *buf = 138543618;
      v69 = v21;
      v70 = 2114;
      v71 = v23;
      _os_log_impl(&dword_192869000, v16, OS_LOG_TYPE_INFO, "%{public}@Cookie database path is %{public}@", buf, 0x16u);
      if (v17)
      {
      }
    }

    v60 = [[AMSSQLiteConnectionOptions alloc] initWithDatabasePath:v14];
    [(AMSSQLiteConnectionOptions *)v60 setProtectionType:*MEMORY[0x1E696A388]];
    [a1 _cleanUpProtectionClassAtPath:v14 fileManager:v63];
    v24 = [[AMSSQLiteConnection alloc] initWithOptions:v60];
    v65 = 0;
    v25 = [(AMSSQLiteConnection *)v24 openWithError:&v65];
    v58 = v65;
    if (v25 || ![v58 ams_hasDomain:0x1F0738718 code:-7700])
    {
      v64 = 0;
      v32 = [AMSCookieDatabaseSchema createOrUpdateSchemaUsingConnection:v24 error:&v64];
      v33 = v64;
      v57 = v33;
      if (v32)
      {
        v34 = +[AMSLogConfig sharedAccountsCookiesConfig];
        if (!v34)
        {
          v34 = +[AMSLogConfig sharedConfig];
        }

        v35 = [v34 OSLogObject];
        if (os_log_type_enabled(v35, OS_LOG_TYPE_INFO))
        {
          v36 = objc_opt_class();
          v37 = AMSLogKey();
          *buf = 138543618;
          v69 = v36;
          v70 = 2114;
          v71 = v37;
          _os_log_impl(&dword_192869000, v35, OS_LOG_TYPE_INFO, "%{public}@ [%{public}@]: Finished creating or updating schema. Initializing database.", buf, 0x16u);
        }

        v22 = [[AMSCookieDatabase alloc] initWithConnection:v24 path:v14];
        v38 = +[AMSLogConfig sharedAccountsCookiesConfig];
        if (!v38)
        {
          v38 = +[AMSLogConfig sharedConfig];
        }

        v39 = [v38 OSLogObject];
        if (os_log_type_enabled(v39, OS_LOG_TYPE_INFO))
        {
          v40 = AMSLogKey();
          v41 = MEMORY[0x1E696AEC0];
          if (v40)
          {
            v42 = objc_opt_class();
            v43 = AMSLogKey();
            v44 = [v41 stringWithFormat:@"%@: [%@] ", v42, v43, v57];
          }

          else
          {
            v44 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@: ", objc_opt_class()];
            v43 = v44;
          }

          v54 = AMSHashIfNeeded(v22);
          *buf = 138543618;
          v69 = v44;
          v70 = 2114;
          v71 = v54;
          _os_log_impl(&dword_192869000, v39, OS_LOG_TYPE_INFO, "%{public}@Created cookie database. %{public}@", buf, 0x16u);
          if (v40)
          {
          }
        }
      }

      else
      {
        v38 = AMSError(16, @"Error Creating Schema", @"Failed to create the AMSCookie database schema.", v33);
        v45 = +[AMSLogConfig sharedAccountsCookiesConfig];
        if (!v45)
        {
          v45 = +[AMSLogConfig sharedConfig];
        }

        v46 = [v45 OSLogObject];
        if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
        {
          v47 = AMSLogKey();
          v48 = MEMORY[0x1E696AEC0];
          if (v47)
          {
            v49 = objc_opt_class();
            v50 = AMSLogKey();
            v51 = [v48 stringWithFormat:@"%@: [%@] ", v49, v50, v57];
          }

          else
          {
            v51 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@: ", objc_opt_class()];
            v50 = v51;
          }

          v52 = AMSLogableError(v57);
          *buf = 138543618;
          v69 = v51;
          v70 = 2114;
          v71 = v52;
          _os_log_impl(&dword_192869000, v46, OS_LOG_TYPE_ERROR, "%{public}@Failed to create the AMSCookie database schema. error = %{public}@", buf, 0x16u);
          if (v47)
          {
          }
        }

        if (a4)
        {
          v53 = v38;
          v22 = 0;
          *a4 = v38;
        }

        else
        {
          v22 = 0;
        }
      }
    }

    else
    {
      v57 = AMSError(16, @"Error Opening Database", @"Failed to open cookie database", v58);
      v26 = +[AMSLogConfig sharedAccountsCookiesConfig];
      if (!v26)
      {
        v26 = +[AMSLogConfig sharedConfig];
      }

      v27 = [v26 OSLogObject];
      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        v28 = AMSLogKey();
        v29 = MEMORY[0x1E696AEC0];
        if (v28)
        {
          v30 = objc_opt_class();
          a1 = AMSLogKey();
          [v29 stringWithFormat:@"%@: [%@] ", v30, a1];
        }

        else
        {
          [MEMORY[0x1E696AEC0] stringWithFormat:@"%@: ", objc_opt_class()];
        }
        v31 = ;
        *buf = 138543362;
        v69 = v31;
        _os_log_impl(&dword_192869000, v27, OS_LOG_TYPE_ERROR, "%{public}@Failed to open the AMS cookie database.", buf, 0xCu);
        if (v28)
        {

          v31 = a1;
        }
      }

      if (a4)
      {
        v56 = v57;
        v22 = 0;
        *a4 = v57;
      }

      else
      {
        v22 = 0;
      }
    }
  }

  else
  {
    v22 = 0;
  }

  v13[2](v13);

  return v22;
}

- (id)cookiePropertiesWithError:(id *)a3
{
  v5 = [AMSKeepAlive keepAliveWithName:@"AMSCookies"];
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy__18;
  v18 = __Block_byref_object_dispose__18;
  v19 = 0;
  v6 = [(AMSCookieDatabase *)self connection];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __47__AMSCookieDatabase_cookiePropertiesWithError___block_invoke;
  v10[3] = &unk_1E73B6118;
  v12 = &v14;
  v13 = a3;
  v10[4] = self;
  v7 = v5;
  v11 = v7;
  [v6 executeQuery:@"SELECT * FROM cookies" withResults:v10];

  v8 = v15[5];
  _Block_object_dispose(&v14, 8);

  return v8;
}

void __47__AMSCookieDatabase_cookiePropertiesWithError___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v46 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v5 | v6)
  {
    if (v6)
    {
      v12 = +[AMSLogConfig sharedAccountsCookiesConfig];
      if (!v12)
      {
        v12 = +[AMSLogConfig sharedConfig];
      }

      v13 = [v12 OSLogObject];
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        v14 = objc_opt_class();
        v15 = AMSLogKey();
        v16 = AMSLogableError(v7);
        *buf = 138543874;
        v41 = v14;
        v42 = 2114;
        v43 = v15;
        v44 = 2114;
        v45 = v16;
        _os_log_impl(&dword_192869000, v13, OS_LOG_TYPE_ERROR, "%{public}@ [%{public}@]: Cookie query returned error: %{public}@", buf, 0x20u);
      }

      if (*(a1 + 56))
      {
        v17 = v7;
        **(a1 + 56) = v7;
      }
    }

    else
    {
      v18 = [v5 hasRows];
      v19 = +[AMSLogConfig sharedAccountsCookiesConfig];
      v20 = v19;
      if (v18)
      {
        if (!v19)
        {
          v20 = +[AMSLogConfig sharedConfig];
        }

        v21 = [v20 OSLogObject];
        if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
        {
          v22 = objc_opt_class();
          v23 = AMSLogKey();
          *buf = 138543618;
          v41 = v22;
          v42 = 2114;
          v43 = v23;
          _os_log_impl(&dword_192869000, v21, OS_LOG_TYPE_DEFAULT, "%{public}@ [%{public}@]: Cookie query returned row(s), enumerating.", buf, 0x16u);
        }

        v24 = objc_alloc_init(MEMORY[0x1E695DF70]);
        v34 = MEMORY[0x1E69E9820];
        v35 = 3221225472;
        v36 = __47__AMSCookieDatabase_cookiePropertiesWithError___block_invoke_146;
        v37 = &unk_1E73B60F0;
        v38 = *(a1 + 32);
        v39 = v24;
        v25 = v24;
        [v5 enumerateRowsUsingBlock:&v34];
        v26 = [v25 copy];
        v27 = *(*(a1 + 48) + 8);
        v28 = *(v27 + 40);
        *(v27 + 40) = v26;
      }

      else
      {
        if (!v19)
        {
          v20 = +[AMSLogConfig sharedConfig];
        }

        v29 = [v20 OSLogObject];
        if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
        {
          v30 = objc_opt_class();
          v31 = AMSLogKey();
          *buf = 138543618;
          v41 = v30;
          v42 = 2114;
          v43 = v31;
          _os_log_impl(&dword_192869000, v29, OS_LOG_TYPE_DEFAULT, "%{public}@ [%{public}@]: Cookie query returned no rows, returning empty array.", buf, 0x16u);
        }

        v32 = *(*(a1 + 48) + 8);
        v33 = *(v32 + 40);
        *(v32 + 40) = MEMORY[0x1E695E0F0];
      }
    }
  }

  else
  {
    v8 = +[AMSLogConfig sharedAccountsCookiesConfig];
    if (!v8)
    {
      v8 = +[AMSLogConfig sharedConfig];
    }

    v9 = [v8 OSLogObject];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = objc_opt_class();
      v11 = AMSLogKey();
      *buf = 138543618;
      v41 = v10;
      v42 = 2114;
      v43 = v11;
      _os_log_impl(&dword_192869000, v9, OS_LOG_TYPE_ERROR, "%{public}@ [%{public}@]: Cookie query returned with neither results nor an error.", buf, 0x16u);
    }

    if (*(a1 + 56))
    {
      **(a1 + 56) = AMSError(16, @"Unknown Database Error", @"A query returned with neither results nor an error.", 0);
    }
  }

  [*(a1 + 40) invalidate];
}

void __47__AMSCookieDatabase_cookiePropertiesWithError___block_invoke_146(uint64_t a1, void *a2, void *a3)
{
  v26 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (!v5)
  {
    v9 = +[AMSLogConfig sharedAccountsCookiesConfig];
    v8 = v9;
    if (v6)
    {
      if (!v9)
      {
        v8 = +[AMSLogConfig sharedConfig];
      }

      v10 = [v8 OSLogObject];
      if (!os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_19;
      }

      v11 = objc_opt_class();
      v12 = AMSLogKey();
      v13 = AMSLogableError(v6);
      v20 = 138543874;
      v21 = v11;
      v22 = 2114;
      v23 = v12;
      v24 = 2114;
      v25 = v13;
      _os_log_impl(&dword_192869000, v10, OS_LOG_TYPE_ERROR, "%{public}@ [%{public}@]: Error enumerating row: %{public}@", &v20, 0x20u);
    }

    else
    {
      if (!v9)
      {
        v8 = +[AMSLogConfig sharedConfig];
      }

      v10 = [v8 OSLogObject];
      if (!os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_19;
      }

      v19 = objc_opt_class();
      v12 = AMSLogKey();
      v20 = 138543618;
      v21 = v19;
      v22 = 2114;
      v23 = v12;
      _os_log_impl(&dword_192869000, v10, OS_LOG_TYPE_ERROR, "%{public}@ [%{public}@]: Enumerated row and got neither a cursor nor an error.", &v20, 0x16u);
    }

LABEL_19:
    goto LABEL_20;
  }

  v7 = [*(a1 + 32) _cookieDictionaryForCursor:v5];
  if (v7)
  {
    v8 = v7;
    [*(a1 + 40) addObject:v7];
  }

  else
  {
    v14 = +[AMSLogConfig sharedAccountsCookiesConfig];
    if (!v14)
    {
      v14 = +[AMSLogConfig sharedConfig];
    }

    v15 = [v14 OSLogObject];
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v16 = objc_opt_class();
      v17 = AMSLogKey();
      v18 = AMSHashIfNeeded(v5);
      v20 = 138543874;
      v21 = v16;
      v22 = 2114;
      v23 = v17;
      v24 = 2114;
      v25 = v18;
      _os_log_impl(&dword_192869000, v15, OS_LOG_TYPE_ERROR, "%{public}@ [%{public}@]: Could not create cookie properties for cursor: %{public}@", &v20, 0x20u);
    }

    v8 = 0;
  }

LABEL_20:
}

- (void)dealloc
{
  [(AMSCookieDatabase *)self close];
  v3.receiver = self;
  v3.super_class = AMSCookieDatabase;
  [(AMSCookieDatabase *)&v3 dealloc];
}

- (AMSCookieDatabase)initWithConnection:(id)a3 path:(id)a4
{
  v7 = a3;
  v8 = a4;
  v14.receiver = self;
  v14.super_class = AMSCookieDatabase;
  v9 = [(AMSCookieDatabase *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_connection, a3);
    [v7 setDelegate:v10];
    v11 = [v8 copy];
    dbPath = v10->_dbPath;
    v10->_dbPath = v11;
  }

  return v10;
}

- (BOOL)updateCookiesWithCookiePropertiesToAdd:(id)a3 cookiePropertiesToRemove:(id)a4 error:(id *)a5
{
  v37 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v29 = 0;
  v30 = &v29;
  v31 = 0x2020000000;
  v32 = 1;
  v10 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:2];
  v11 = [(AMSCookieDatabase *)self connection];
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __91__AMSCookieDatabase_updateCookiesWithCookiePropertiesToAdd_cookiePropertiesToRemove_error___block_invoke;
  v23[3] = &unk_1E73B6140;
  v12 = v9;
  v24 = v12;
  v25 = self;
  v13 = v10;
  v26 = v13;
  v14 = v8;
  v27 = v14;
  v28 = &v29;
  [v11 performTransaction:v23];

  if ([v13 count] == 1)
  {
    if (a5)
    {
      *a5 = [v13 objectAtIndexedSubscript:0];
    }
  }

  else if ([v13 count] < 2)
  {
    v16 = +[AMSLogConfig sharedAccountsCookiesConfig];
    if (!v16)
    {
      v16 = +[AMSLogConfig sharedConfig];
    }

    v17 = [v16 OSLogObject];
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v18 = objc_opt_class();
      v19 = AMSLogKey();
      *buf = 138543618;
      v34 = v18;
      v35 = 2114;
      v36 = v19;
      _os_log_impl(&dword_192869000, v17, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Posting a CookiesChanged notification.", buf, 0x16u);
    }

    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterPostNotification(DarwinNotifyCenter, @"com.apple.AppleMediaServices.cookieschanged", 0, 0, 0);
  }

  else if (a5)
  {
    v15 = [v13 copy];
    *a5 = AMSErrorWithMultipleUnderlyingErrors(16, @"Multiple Database Errors", @"Encountered multiple errors modifying the cookie database.", v15);
  }

  v21 = *(v30 + 24);

  _Block_object_dispose(&v29, 8);
  return v21 & 1;
}

uint64_t __91__AMSCookieDatabase_updateCookiesWithCookiePropertiesToAdd_cookiePropertiesToRemove_error___block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) count])
  {
    v3 = *(a1 + 32);
    v2 = *(a1 + 40);
    v14 = 0;
    v4 = [v2 _removeCookieProperties:v3 error:&v14];
    v5 = v14;
    v6 = v5;
    if ((v4 & 1) == 0 && v5)
    {
      [*(a1 + 48) addObject:v5];
    }
  }

  else
  {
    v4 = 1;
  }

  if ([*(a1 + 56) count])
  {
    v7 = *(a1 + 40);
    v8 = *(a1 + 56);
    v13 = 0;
    v9 = [v7 _addCookieProperties:v8 error:&v13];
    v10 = v13;
    v11 = v10;
    if ((v9 & 1) == 0 && v10)
    {
      [*(a1 + 48) addObject:v10];
    }

    v4 &= v9;
  }

  *(*(*(a1 + 64) + 8) + 24) = v4;
  return *(*(*(a1 + 64) + 8) + 24);
}

- (BOOL)connection:(id)a3 needsResetForCorruptionError:(id)a4 error:(id *)a5
{
  v44 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = 0x1E73B0000uLL;
  v11 = +[AMSLogConfig sharedAccountsCookiesConfig];
  if (!v11)
  {
    v11 = +[AMSLogConfig sharedConfig];
  }

  v12 = [v11 OSLogObject];
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = objc_opt_class();
    v14 = AMSLogKey();
    *buf = 138543618;
    v41 = v13;
    v42 = 2114;
    v43 = v14;
    _os_log_impl(&dword_192869000, v12, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Resetting connection for corruption is called.", buf, 0x16u);
  }

  v15 = [AMSKeepAlive keepAliveWithName:@"AMSCookies"];
  v39 = 0;
  v16 = [v8 truncateWithError:&v39];
  v17 = v39;
  if ((v16 & 1) == 0)
  {
    v38 = 0;
    [v8 closeWithError:&v38];
    v18 = v38;
    v19 = [(AMSCookieDatabase *)self dbPath];

    if (v19)
    {
      v35 = a5;
      v20 = v9;
      v21 = MEMORY[0x1E695DFF8];
      v22 = [(AMSCookieDatabase *)self dbPath];
      v23 = [v21 fileURLWithPath:v22];
      v37 = 0;
      v24 = [AMSDatabaseHelper removeDatabaseAtURL:v23 error:&v37];
      v25 = v37;

      if (v24)
      {

        v9 = v20;
        a5 = v35;
        v10 = 0x1E73B0000;
        goto LABEL_9;
      }

      v9 = v20;
      v28 = AMSErrorBySettingUnderlyingError(v17, v20);
      v19 = AMSErrorBySettingUnderlyingError(v25, v28);

      a5 = v35;
      v10 = 0x1E73B0000uLL;
    }

    goto LABEL_13;
  }

LABEL_9:
  v36 = 0;
  v26 = [AMSCookieDatabaseSchema createOrUpdateSchemaUsingConnection:v8 error:&v36];
  v19 = v36;
  if (v26)
  {
    v27 = 1;
    goto LABEL_18;
  }

LABEL_13:
  v29 = [*(v10 + 3552) sharedAccountsCookiesConfig];
  if (!v29)
  {
    v29 = [*(v10 + 3552) sharedConfig];
  }

  v30 = [v29 OSLogObject];
  if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
  {
    v31 = objc_opt_class();
    v32 = AMSLogableError(v19);
    *buf = 138543618;
    v41 = v31;
    v42 = 2114;
    v43 = v32;
    _os_log_impl(&dword_192869000, v30, OS_LOG_TYPE_ERROR, "%{public}@: Failed to reset AMS cookie database after corruption. This is bad! Error = %{public}@", buf, 0x16u);
  }

  v27 = 0;
LABEL_18:
  [v15 invalidate];
  if (a5)
  {
    v33 = v19;
    *a5 = v19;
  }

  return v27;
}

@end