@interface UNNotificationContentExtensionVendorContext
@end

@implementation UNNotificationContentExtensionVendorContext

void __74___UNNotificationContentExtensionVendorContext_openURL_completionHandler___block_invoke(uint64_t a1)
{
  v13[3] = *MEMORY[0x277D85DE8];
  v2 = *MEMORY[0x277D0AC70];
  v12[0] = *MEMORY[0x277D0AC58];
  v12[1] = v2;
  v13[0] = MEMORY[0x277CBEC38];
  v13[1] = MEMORY[0x277CBEC38];
  v12[2] = *MEMORY[0x277D0AC28];
  v13[2] = @"UNAppLaunchOriginContentExtension";
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:v12 count:3];
  v4 = [MEMORY[0x277CC1E80] defaultWorkspace];
  v5 = *(a1 + 32);
  v11 = 0;
  v6 = [v4 openSensitiveURL:v5 withOptions:v3 error:&v11];
  v7 = v11;

  if ((v6 & 1) == 0 && os_log_type_enabled(UNLogExtensionsService, OS_LOG_TYPE_ERROR))
  {
    __74___UNNotificationContentExtensionVendorContext_openURL_completionHandler___block_invoke_cold_1();
  }

  if (*(a1 + 40))
  {
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __74___UNNotificationContentExtensionVendorContext_openURL_completionHandler___block_invoke_12;
    v8[3] = &unk_278B71880;
    v9 = *(a1 + 40);
    v10 = v6;
    dispatch_async(MEMORY[0x277D85CD0], v8);
  }
}

void __71___UNNotificationContentExtensionVendorContext_setNotificationActions___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:a2 requiringSecureCoding:1 error:0];
  [*(a1 + 32) addObject:v3];
}

void __78___UNNotificationContentExtensionVendorContext__hostWantsToPreserveInputViews__block_invoke(uint64_t a1)
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __78___UNNotificationContentExtensionVendorContext__hostWantsToPreserveInputViews__block_invoke_2;
  block[3] = &unk_278B716D0;
  block[4] = *(a1 + 32);
  dispatch_sync(MEMORY[0x277D85CD0], block);
}

void __78___UNNotificationContentExtensionVendorContext__hostWantsToPreserveInputViews__block_invoke_2(uint64_t a1)
{
  v1 = [*(a1 + 32) notificationExtensionContainer];
  if (objc_opt_respondsToSelector())
  {
    [v1 preserveInputViews];
  }
}

void __77___UNNotificationContentExtensionVendorContext__hostWantsToRestoreInputViews__block_invoke(uint64_t a1)
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __77___UNNotificationContentExtensionVendorContext__hostWantsToRestoreInputViews__block_invoke_2;
  block[3] = &unk_278B716D0;
  block[4] = *(a1 + 32);
  dispatch_sync(MEMORY[0x277D85CD0], block);
}

void __77___UNNotificationContentExtensionVendorContext__hostWantsToRestoreInputViews__block_invoke_2(uint64_t a1)
{
  v1 = [*(a1 + 32) notificationExtensionContainer];
  if (objc_opt_respondsToSelector())
  {
    [v1 restoreInputViews];
  }
}

void __76___UNNotificationContentExtensionVendorContext__hostDidReceiveNotification___block_invoke(uint64_t a1)
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __76___UNNotificationContentExtensionVendorContext__hostDidReceiveNotification___block_invoke_2;
  v2[3] = &unk_278B717F8;
  v1 = *(a1 + 40);
  v2[4] = *(a1 + 32);
  v3 = v1;
  dispatch_sync(MEMORY[0x277D85CD0], v2);
}

void __76___UNNotificationContentExtensionVendorContext__hostDidReceiveNotification___block_invoke_2(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) _notificationExtension];
  if (([*(a1 + 32) didCheckActionResponseDelegate] & 1) == 0)
  {
    [*(a1 + 32) _extensionWantsToReceiveActionResponses:objc_opt_respondsToSelector() & 1];
    [*(a1 + 32) setDidCheckActionResponseDelegate:1];
  }

  v3 = objc_opt_respondsToSelector();
  v4 = UNLogExtensionsService;
  if (v3)
  {
    if (os_log_type_enabled(UNLogExtensionsService, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(a1 + 32);
      v6 = v4;
      v7 = [v5 _UUID];
      v8 = [*(a1 + 40) request];
      v9 = [v8 identifier];
      v10 = [v9 un_logDigest];
      v12 = 138543618;
      v13 = v7;
      v14 = 2114;
      v15 = v10;
      _os_log_impl(&dword_23AB78000, v6, OS_LOG_TYPE_DEFAULT, "[%{public}@] Received notification %{public}@", &v12, 0x16u);
    }

    [v2 didReceiveNotification:*(a1 + 40)];
    v11 = [*(a1 + 32) notificationExtensionContainer];
    if (objc_opt_respondsToSelector())
    {
      [*(a1 + 32) _extensionWantsToBecomeFirstResponder:{objc_msgSend(v11, "canBecomeFirstResponder")}];
    }
  }

  else if (os_log_type_enabled(UNLogExtensionsService, OS_LOG_TYPE_ERROR))
  {
    __76___UNNotificationContentExtensionVendorContext__hostDidReceiveNotification___block_invoke_2_cold_1(v4);
  }
}

void __84___UNNotificationContentExtensionVendorContext__hostDidReceiveNotificationResponse___block_invoke(uint64_t a1)
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __84___UNNotificationContentExtensionVendorContext__hostDidReceiveNotificationResponse___block_invoke_2;
  v2[3] = &unk_278B717F8;
  v1 = *(a1 + 40);
  v2[4] = *(a1 + 32);
  v3 = v1;
  dispatch_sync(MEMORY[0x277D85CD0], v2);
}

void __84___UNNotificationContentExtensionVendorContext__hostDidReceiveNotificationResponse___block_invoke_2(uint64_t a1)
{
  v26 = *MEMORY[0x277D85DE8];
  v2 = (a1 + 32);
  v3 = [*(a1 + 32) _notificationExtension];
  objc_initWeak(&location, *v2);
  v4 = objc_opt_respondsToSelector();
  v5 = UNLogExtensionsService;
  v6 = v5;
  if (v4)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v7 = [*(a1 + 32) _UUID];
      v8 = [*(a1 + 40) notification];
      v9 = [v8 request];
      v10 = [v9 identifier];
      v11 = [v10 un_logDigest];
      v12 = [*(a1 + 40) actionIdentifier];
      *buf = 138543874;
      v21 = v7;
      v22 = 2114;
      v23 = v11;
      v24 = 2114;
      v25 = v12;
      _os_log_impl(&dword_23AB78000, v6, OS_LOG_TYPE_DEFAULT, "[%{public}@] Received notification response %{public}@ for @%{public}@", buf, 0x20u);
    }

    v13 = *(a1 + 40);
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __84___UNNotificationContentExtensionVendorContext__hostDidReceiveNotificationResponse___block_invoke_27;
    v16[3] = &unk_278B718F8;
    objc_copyWeak(&v18, &location);
    v17 = *(a1 + 40);
    [v3 didReceiveNotificationResponse:v13 completionHandler:v16];

    objc_destroyWeak(&v18);
  }

  else
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v14 = objc_opt_class();
      v15 = NSStringFromClass(v14);
      __84___UNNotificationContentExtensionVendorContext__hostDidReceiveNotificationResponse___block_invoke_2_cold_1(v15, buf, v6);
    }
  }

  objc_destroyWeak(&location);
}

void __84___UNNotificationContentExtensionVendorContext__hostDidReceiveNotificationResponse___block_invoke_27(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _extensionDidCompleteNotificationResponse:*(a1 + 32) withOption:a2];
}

void __102___UNNotificationContentExtensionVendorContext__hostDidReceiveNotificationResponse_completionHandler___block_invoke(uint64_t a1)
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __102___UNNotificationContentExtensionVendorContext__hostDidReceiveNotificationResponse_completionHandler___block_invoke_2;
  block[3] = &unk_278B71948;
  v2 = *(a1 + 40);
  block[4] = *(a1 + 32);
  v4 = v2;
  v5 = *(a1 + 48);
  dispatch_sync(MEMORY[0x277D85CD0], block);
}

void __102___UNNotificationContentExtensionVendorContext__hostDidReceiveNotificationResponse_completionHandler___block_invoke_2(id *a1)
{
  v23 = *MEMORY[0x277D85DE8];
  v2 = [a1[4] _notificationExtension];
  v3 = objc_opt_respondsToSelector();
  v4 = UNLogExtensionsService;
  if (v3)
  {
    if (os_log_type_enabled(UNLogExtensionsService, OS_LOG_TYPE_DEFAULT))
    {
      v5 = a1[4];
      v6 = v4;
      v7 = [v5 _UUID];
      v8 = [a1[5] notification];
      v9 = [v8 request];
      v10 = [v9 identifier];
      v11 = [v10 un_logDigest];
      v12 = [a1[5] actionIdentifier];
      *buf = 138543874;
      v18 = v7;
      v19 = 2114;
      v20 = v11;
      v21 = 2114;
      v22 = v12;
      _os_log_impl(&dword_23AB78000, v6, OS_LOG_TYPE_DEFAULT, "[%{public}@] Received notification response %{public}@ for @%{public}@", buf, 0x20u);
    }

    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __102___UNNotificationContentExtensionVendorContext__hostDidReceiveNotificationResponse_completionHandler___block_invoke_29;
    v14[3] = &unk_278B71920;
    v13 = a1[5];
    v14[4] = a1[4];
    v15 = v13;
    v16 = a1[6];
    [v2 didReceiveNotificationResponse:v15 completionHandler:v14];
  }

  else if (os_log_type_enabled(UNLogExtensionsService, OS_LOG_TYPE_ERROR))
  {
    __102___UNNotificationContentExtensionVendorContext__hostDidReceiveNotificationResponse_completionHandler___block_invoke_2_cold_1(v4);
  }
}

uint64_t __102___UNNotificationContentExtensionVendorContext__hostDidReceiveNotificationResponse_completionHandler___block_invoke_29(uint64_t a1, uint64_t a2)
{
  v22 = *MEMORY[0x277D85DE8];
  v4 = UNLogExtensionsService;
  if (os_log_type_enabled(UNLogExtensionsService, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v6 = v4;
    v7 = [v5 _UUID];
    v8 = [*(a1 + 40) notification];
    v9 = [v8 request];
    v10 = [v9 identifier];
    v11 = [v10 un_logDigest];
    v12 = [*(a1 + 40) actionIdentifier];
    v14 = 138544130;
    v15 = v7;
    v16 = 2114;
    v17 = v11;
    v18 = 2114;
    v19 = v12;
    v20 = 2048;
    v21 = a2;
    _os_log_impl(&dword_23AB78000, v6, OS_LOG_TYPE_DEFAULT, "[%{public}@] Extension called completion notification response %{public}@ for @%{public}@: %ld", &v14, 0x2Au);
  }

  return (*(*(a1 + 48) + 16))();
}

void __70___UNNotificationContentExtensionVendorContext__hostWantsMediaToPause__block_invoke(uint64_t a1)
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __70___UNNotificationContentExtensionVendorContext__hostWantsMediaToPause__block_invoke_2;
  block[3] = &unk_278B716D0;
  block[4] = *(a1 + 32);
  dispatch_sync(MEMORY[0x277D85CD0], block);
}

void __70___UNNotificationContentExtensionVendorContext__hostWantsMediaToPause__block_invoke_2(uint64_t a1)
{
  v1 = [*(a1 + 32) _notificationExtension];
  if (objc_opt_respondsToSelector())
  {
    [v1 mediaPause];
  }

  else
  {
    v2 = UNLogExtensionsService;
    if (os_log_type_enabled(UNLogExtensionsService, OS_LOG_TYPE_ERROR))
    {
      __70___UNNotificationContentExtensionVendorContext__hostWantsMediaToPause__block_invoke_2_cold_1(v2);
    }
  }
}

void __69___UNNotificationContentExtensionVendorContext__hostWantsMediaToPlay__block_invoke(uint64_t a1)
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __69___UNNotificationContentExtensionVendorContext__hostWantsMediaToPlay__block_invoke_2;
  block[3] = &unk_278B716D0;
  block[4] = *(a1 + 32);
  dispatch_sync(MEMORY[0x277D85CD0], block);
}

void __69___UNNotificationContentExtensionVendorContext__hostWantsMediaToPlay__block_invoke_2(uint64_t a1)
{
  v1 = [*(a1 + 32) _notificationExtension];
  if (objc_opt_respondsToSelector())
  {
    [v1 mediaPlay];
  }

  else
  {
    v2 = UNLogExtensionsService;
    if (os_log_type_enabled(UNLogExtensionsService, OS_LOG_TYPE_ERROR))
    {
      __69___UNNotificationContentExtensionVendorContext__hostWantsMediaToPlay__block_invoke_2_cold_1(v2);
    }
  }
}

void __86___UNNotificationContentExtensionVendorContext__hostWantsToUpdateMediaPlayPauseButton__block_invoke(uint64_t a1)
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __86___UNNotificationContentExtensionVendorContext__hostWantsToUpdateMediaPlayPauseButton__block_invoke_2;
  block[3] = &unk_278B716D0;
  block[4] = *(a1 + 32);
  dispatch_sync(MEMORY[0x277D85CD0], block);
}

void __74___UNNotificationContentExtensionVendorContext_openURL_completionHandler___block_invoke_cold_1()
{
  v2 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(&dword_23AB78000, v0, OS_LOG_TYPE_ERROR, "openURL: failed: %@", v1, 0xCu);
}

void __76___UNNotificationContentExtensionVendorContext__hostDidReceiveNotification___block_invoke_2_cold_1(void *a1)
{
  v2 = a1;
  v3 = OUTLINED_FUNCTION_2();
  v4 = NSStringFromClass(v3);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_23AB78000, v5, v6, "Extension class %{public}@ does not implement selector didReceiveNotification:", v7, v8, v9, v10, v11);
}

void __84___UNNotificationContentExtensionVendorContext__hostDidReceiveNotificationResponse___block_invoke_2_cold_1(void *a1, uint8_t *buf, os_log_t log)
{
  *buf = 138543362;
  *(buf + 4) = a1;
  _os_log_error_impl(&dword_23AB78000, log, OS_LOG_TYPE_ERROR, "Extension class %{public}@ does not implement selector didReceiveNotificationResponse:completionHandler:", buf, 0xCu);
}

void __102___UNNotificationContentExtensionVendorContext__hostDidReceiveNotificationResponse_completionHandler___block_invoke_2_cold_1(void *a1)
{
  v2 = a1;
  v3 = OUTLINED_FUNCTION_2();
  v4 = NSStringFromClass(v3);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_23AB78000, v5, v6, "Extension class %{public}@ does not implement selector didReceiveNotificationResponse:completionHandler:", v7, v8, v9, v10, v11);
}

void __70___UNNotificationContentExtensionVendorContext__hostWantsMediaToPause__block_invoke_2_cold_1(void *a1)
{
  v2 = a1;
  v3 = OUTLINED_FUNCTION_2();
  v4 = NSStringFromClass(v3);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_23AB78000, v5, v6, "Extension class %{public}@ does not implement selector mediaPause", v7, v8, v9, v10, v11);
}

void __69___UNNotificationContentExtensionVendorContext__hostWantsMediaToPlay__block_invoke_2_cold_1(void *a1)
{
  v2 = a1;
  v3 = OUTLINED_FUNCTION_2();
  v4 = NSStringFromClass(v3);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_23AB78000, v5, v6, "Extension class %{public}@ does not implement selector mediaPlay", v7, v8, v9, v10, v11);
}

@end