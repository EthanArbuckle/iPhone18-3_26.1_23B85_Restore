@interface AMSAppleCardSilentEnrollment
+ (AMSBagKeySet)bagKeySet;
+ (NSString)bagSubProfile;
+ (NSString)bagSubProfileVersion;
+ (id)createBagForSubProfile;
+ (id)gsTokenForAccount:(id)a3 error:(id *)a4;
+ (id)headersForAccount:(id)a3;
@end

@implementation AMSAppleCardSilentEnrollment

+ (id)gsTokenForAccount:(id)a3 error:(id *)a4
{
  v28 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = [v5 accountStore];
  v21 = 0;
  v22 = &v21;
  v23 = 0x2020000000;
  v7 = qword_1ED6E2710;
  v24 = qword_1ED6E2710;
  if (!qword_1ED6E2710)
  {
    *buf = MEMORY[0x1E69E9820];
    *&buf[8] = 3221225472;
    *&buf[16] = __getAppleIDAuthenticationAppleIDSettingsTokenIdentifierSymbolLoc_block_invoke;
    v26 = &unk_1E73B3880;
    v27 = &v21;
    __getAppleIDAuthenticationAppleIDSettingsTokenIdentifierSymbolLoc_block_invoke(buf);
    v7 = v22[3];
  }

  _Block_object_dispose(&v21, 8);
  if (!v7)
  {
    dlerror();
    abort_report_np();
    __break(1u);
  }

  v8 = *v7;
  v20 = 0;
  v9 = v8;
  v10 = [v6 ams_fetchGrandSlamTokenForAccount:v5 withIdentifier:v9 error:&v20];
  v11 = v20;

  if (v10)
  {
    if (!a4)
    {
      goto LABEL_13;
    }

LABEL_12:
    v18 = v11;
    *a4 = v11;
    goto LABEL_13;
  }

  v12 = +[AMSLogConfig sharedConfig];
  if (!v12)
  {
    v12 = +[AMSLogConfig sharedConfig];
  }

  v13 = [v12 OSLogObject];
  if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
  {
    v14 = objc_opt_class();
    v15 = v14;
    v16 = AMSSetLogKeyIfNeeded();
    *buf = 138543618;
    *&buf[4] = v14;
    *&buf[12] = 2114;
    *&buf[14] = v16;
    _os_log_impl(&dword_192869000, v13, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] GS-Token lookup failed for no GS token", buf, 0x16u);
  }

  v17 = AMSError(7, @"Silent Enrollment Error", @"No GS Token", 0);

  v11 = v17;
  if (a4)
  {
    goto LABEL_12;
  }

LABEL_13:

  return v10;
}

+ (id)headersForAccount:(id)a3
{
  v27 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = AMSSetLogKeyIfNeeded();
  v6 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v20 = 0;
  v7 = [a1 gsTokenForAccount:v4 error:&v20];

  v8 = v20;
  if (v8)
  {
    v9 = 1;
  }

  else
  {
    v9 = v7 == 0;
  }

  if (v9)
  {
    v10 = +[AMSLogConfig sharedConfig];
    if (!v10)
    {
      v10 = +[AMSLogConfig sharedConfig];
    }

    v11 = [v10 OSLogObject];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = objc_opt_class();
      *buf = 138543874;
      v22 = v12;
      v23 = 2114;
      v24 = v5;
      v25 = 2114;
      v26 = v8;
      v13 = v12;
      _os_log_impl(&dword_192869000, v11, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Failed to attach GS token with error: %{public}@", buf, 0x20u);
    }
  }

  [v6 ams_setNullableObject:v7 forKey:@"X-Apple-GS-Token"];
  v14 = [MEMORY[0x1E698B890] currentInfo];
  v15 = [v14 clientInfoHeader];

  [v6 ams_setNullableObject:v15 forKey:@"X-MMe-Client-Info"];
  v16 = +[AMSDevice uniqueDeviceId];
  [v6 ams_setNullableObject:v16 forKey:@"X-Mme-Device-Id"];
  v17 = +[AMSDevice deviceGUID];
  [v6 ams_setNullableObject:v17 forKey:@"Guid"];
  v18 = [v6 copy];

  return v18;
}

+ (NSString)bagSubProfile
{
  if (_MergedGlobals_84 != -1)
  {
    dispatch_once(&_MergedGlobals_84, &__block_literal_global_8);
  }

  v3 = qword_1ED6E26F8;

  return v3;
}

void __45__AMSAppleCardSilentEnrollment_bagSubProfile__block_invoke()
{
  v0 = qword_1ED6E26F8;
  qword_1ED6E26F8 = @"AMSAppleCardSilentEnrollment";
}

+ (NSString)bagSubProfileVersion
{
  if (qword_1ED6E2700 != -1)
  {
    dispatch_once(&qword_1ED6E2700, &__block_literal_global_42);
  }

  v3 = qword_1ED6E2708;

  return v3;
}

void __52__AMSAppleCardSilentEnrollment_bagSubProfileVersion__block_invoke()
{
  v0 = qword_1ED6E2708;
  qword_1ED6E2708 = @"1";
}

+ (id)createBagForSubProfile
{
  v2 = [objc_opt_class() bagSubProfile];
  v3 = [objc_opt_class() bagSubProfileVersion];
  v4 = [AMSBag bagForProfile:v2 profileVersion:v3];

  return v4;
}

+ (AMSBagKeySet)bagKeySet
{
  v2 = objc_alloc_init(AMSBagKeySet);

  return v2;
}

@end