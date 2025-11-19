@interface _SFApplicationExtensionActivity
- (BOOL)validateExtensionHasSameContainerAsHostApp:(id)a3;
- (void)activityDidFinish:(BOOL)a3 items:(id)a4 error:(id)a5;
@end

@implementation _SFApplicationExtensionActivity

- (void)activityDidFinish:(BOOL)a3 items:(id)a4 error:(id)a5
{
  v6 = a3;
  v25 = *MEMORY[0x1E69E9840];
  v8 = a4;
  v9 = a5;
  v20.receiver = self;
  v20.super_class = _SFApplicationExtensionActivity;
  [(UIActivity *)&v20 activityDidFinish:v6 items:v8 error:v9];
  v10 = WBS_LOG_CHANNEL_PREFIXExtensions();
  v11 = v10;
  if (v9)
  {
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [_SFApplicationExtensionActivity activityDidFinish:v11 items:v9 error:?];
    }
  }

  else if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v12 = v11;
    v13 = [v8 count];
    *buf = 67109376;
    v22 = v6;
    v23 = 2048;
    v24 = v13;
    _os_log_impl(&dword_1D4644000, v12, OS_LOG_TYPE_DEFAULT, "Toolbar button extension finished with status: %i; number of items returned: %lu", buf, 0x12u);
  }

  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __65___SFApplicationExtensionActivity_activityDidFinish_items_error___block_invoke;
  v16[3] = &unk_1E8492B90;
  v19 = v6;
  v16[4] = self;
  v17 = v8;
  v18 = v9;
  v14 = v9;
  v15 = v8;
  [(UIApplicationExtensionActivity *)self _dismissActivityFromViewController:0 animated:1 completion:v16];
}

- (BOOL)validateExtensionHasSameContainerAsHostApp:(id)a3
{
  v4 = a3;
  v5 = [(UIApplicationExtensionActivity *)self applicationExtension];
  v6 = [v5 identifier];
  v16 = 0;
  v7 = [objc_alloc(MEMORY[0x1E69635D0]) initWithBundleIdentifier:v6 error:&v16];
  v8 = v16;
  v9 = [v7 containingBundleRecord];
  v15 = v8;
  v10 = [MEMORY[0x1E6963620] bundleRecordWithBundleIdentifier:v4 allowPlaceholder:0 error:&v15];

  v11 = v15;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v12 = [v10 containingBundleRecord];

    v10 = v12;
  }

  v13 = [v9 isEqual:v10];

  return v13;
}

- (void)activityDidFinish:(void *)a1 items:(void *)a2 error:.cold.1(void *a1, void *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = [a2 safari_privacyPreservingDescription];
  v5 = 138543362;
  v6 = v4;
  _os_log_error_impl(&dword_1D4644000, v3, OS_LOG_TYPE_ERROR, "Toolbar button extension cancelled with error: %{public}@", &v5, 0xCu);
}

@end