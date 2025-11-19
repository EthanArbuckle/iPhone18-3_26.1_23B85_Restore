@interface UNNotificationContentExtensionHostContainerViewController
@end

@implementation UNNotificationContentExtensionHostContainerViewController

uint64_t __85___UNNotificationContentExtensionHostContainerViewController_isMediaSafetyNetEnabled__block_invoke()
{
  result = MediaSafetyNetLibraryCore();
  isMediaSafetyNetEnabled_enabled = result != 0;
  return result;
}

void __90___UNNotificationContentExtensionHostContainerViewController__loadExtensionViewController__block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v32[3] = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  v11 = v8;
  v12 = UNLogExtensionsHost;
  if (v11)
  {
    if (os_log_type_enabled(UNLogExtensionsHost, OS_LOG_TYPE_DEFAULT))
    {
      v13 = *(a1 + 32);
      v14 = v12;
      v15 = [v13 identifier];
      v16 = *(a1 + 40);
      [*(a1 + 48) timeIntervalSinceNow];
      *buf = 138544130;
      *&buf[4] = v7;
      *&buf[12] = 2114;
      *&buf[14] = v15;
      *&buf[22] = 2114;
      v31 = v16;
      LOWORD(v32[0]) = 2048;
      *(v32 + 2) = fabs(v17);
      _os_log_impl(&dword_23AB78000, v14, OS_LOG_TYPE_DEFAULT, "Loaded host view controller with extension request %{public}@ from extension %{public}@ for notification request %{public}@ (%.2fs)", buf, 0x2Au);
    }

    if (+[_UNNotificationContentExtensionHostContainerViewController isMediaSafetyNetEnabled])
    {
      v26 = 0;
      v27 = &v26;
      v28 = 0x2020000000;
      v18 = getMSNMonitorBeginExceptionSymbolLoc_ptr;
      v29 = getMSNMonitorBeginExceptionSymbolLoc_ptr;
      if (!getMSNMonitorBeginExceptionSymbolLoc_ptr)
      {
        *buf = MEMORY[0x277D85DD0];
        *&buf[8] = 3221225472;
        *&buf[16] = __getMSNMonitorBeginExceptionSymbolLoc_block_invoke;
        v31 = &unk_278B71758;
        v32[0] = &v26;
        v19 = MediaSafetyNetLibrary();
        v20 = dlsym(v19, "MSNMonitorBeginException");
        *(*(v32[0] + 8) + 24) = v20;
        getMSNMonitorBeginExceptionSymbolLoc_ptr = *(*(v32[0] + 8) + 24);
        v18 = v27[3];
      }

      _Block_object_dispose(&v26, 8);
      if (!v18)
      {
        [_UNNotificationContentExtensionHostContainerViewController _teardownExtension];
        __break(1u);
      }

      v18("notificationappex");
    }

    v21 = (a1 + 32);
    [v11 setExtension:{*(a1 + 32), v26}];
    [v11 setExtensionRequestIdentifier:v7];
    [v11 setNotificationRequestIdentifier:*(a1 + 56)];
    objc_opt_class();
    v22 = UNSafeCast();
    v23 = [*v21 _extensionContextForUUID:v22];
    objc_opt_class();
    v24 = UNSafeCast();
    [v24 setDelegate:WeakRetained];
    [WeakRetained setExtensionHostContext:v24];
    [WeakRetained setExtensionViewController:v11];
    [WeakRetained _setupExtensionViewController:v11];
    v25 = [WeakRetained delegate];
    if (objc_opt_respondsToSelector())
    {
      [v25 extensionViewControllerDidLoadExtension:WeakRetained];
    }

    if ([WeakRetained isDefaultTitleOverridden] && (objc_opt_respondsToSelector() & 1) != 0)
    {
      [v25 extensionViewControllerDidUpdateTitle:WeakRetained];
    }
  }

  else if (os_log_type_enabled(UNLogExtensionsHost, OS_LOG_TYPE_FAULT))
  {
    __90___UNNotificationContentExtensionHostContainerViewController__loadExtensionViewController__block_invoke_cold_2(a1, v12, v9);
  }
}

void __90___UNNotificationContentExtensionHostContainerViewController__loadExtensionViewController__block_invoke_cold_2(uint64_t a1, void *a2, void *a3)
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 32);
  v5 = a2;
  v6 = [v4 identifier];
  v7 = [a3 localizedDescription];
  v8 = 138543618;
  v9 = v6;
  v10 = 2114;
  v11 = v7;
  _os_log_fault_impl(&dword_23AB78000, v5, OS_LOG_TYPE_FAULT, "Failed to load host view controller for extension %{public}@: %{public}@", &v8, 0x16u);
}

@end