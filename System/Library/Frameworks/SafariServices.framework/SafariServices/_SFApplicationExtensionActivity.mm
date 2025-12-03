@interface _SFApplicationExtensionActivity
- (BOOL)validateExtensionHasSameContainerAsHostApp:(id)app;
- (void)activityDidFinish:(BOOL)finish items:(id)items error:(id)error;
@end

@implementation _SFApplicationExtensionActivity

- (void)activityDidFinish:(BOOL)finish items:(id)items error:(id)error
{
  finishCopy = finish;
  v25 = *MEMORY[0x1E69E9840];
  itemsCopy = items;
  errorCopy = error;
  v20.receiver = self;
  v20.super_class = _SFApplicationExtensionActivity;
  [(UIActivity *)&v20 activityDidFinish:finishCopy items:itemsCopy error:errorCopy];
  v10 = WBS_LOG_CHANNEL_PREFIXExtensions();
  v11 = v10;
  if (errorCopy)
  {
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [_SFApplicationExtensionActivity activityDidFinish:v11 items:errorCopy error:?];
    }
  }

  else if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v12 = v11;
    v13 = [itemsCopy count];
    *buf = 67109376;
    v22 = finishCopy;
    v23 = 2048;
    v24 = v13;
    _os_log_impl(&dword_1D4644000, v12, OS_LOG_TYPE_DEFAULT, "Toolbar button extension finished with status: %i; number of items returned: %lu", buf, 0x12u);
  }

  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __65___SFApplicationExtensionActivity_activityDidFinish_items_error___block_invoke;
  v16[3] = &unk_1E8492B90;
  v19 = finishCopy;
  v16[4] = self;
  v17 = itemsCopy;
  v18 = errorCopy;
  v14 = errorCopy;
  v15 = itemsCopy;
  [(UIApplicationExtensionActivity *)self _dismissActivityFromViewController:0 animated:1 completion:v16];
}

- (BOOL)validateExtensionHasSameContainerAsHostApp:(id)app
{
  appCopy = app;
  applicationExtension = [(UIApplicationExtensionActivity *)self applicationExtension];
  identifier = [applicationExtension identifier];
  v16 = 0;
  v7 = [objc_alloc(MEMORY[0x1E69635D0]) initWithBundleIdentifier:identifier error:&v16];
  v8 = v16;
  containingBundleRecord = [v7 containingBundleRecord];
  v15 = v8;
  v10 = [MEMORY[0x1E6963620] bundleRecordWithBundleIdentifier:appCopy allowPlaceholder:0 error:&v15];

  v11 = v15;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    containingBundleRecord2 = [v10 containingBundleRecord];

    v10 = containingBundleRecord2;
  }

  v13 = [containingBundleRecord isEqual:v10];

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