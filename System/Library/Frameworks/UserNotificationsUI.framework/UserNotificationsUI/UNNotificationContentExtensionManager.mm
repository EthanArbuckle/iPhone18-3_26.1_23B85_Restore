@interface UNNotificationContentExtensionManager
@end

@implementation UNNotificationContentExtensionManager

uint64_t __56___UNNotificationContentExtensionManager_sharedInstance__block_invoke()
{
  sharedInstance_instance = objc_alloc_init(_UNNotificationContentExtensionManager);

  return MEMORY[0x2821F96F8]();
}

void __66___UNNotificationContentExtensionManager__beginMatchingExtensions__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v5)
  {
    v8 = [*(a1 + 32) extensionsCache];
    [v8 registerExtensions:v5];
  }

  else if (v6)
  {
    v9 = UNLogExtensions;
    if (os_log_type_enabled(UNLogExtensions, OS_LOG_TYPE_ERROR))
    {
      __66___UNNotificationContentExtensionManager__beginMatchingExtensions__block_invoke_cold_1(v9, v7);
    }
  }
}

void __66___UNNotificationContentExtensionManager__beginMatchingExtensions__block_invoke_cold_1(void *a1, void *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = [a2 localizedDescription];
  v5 = 138543362;
  v6 = v4;
  _os_log_error_impl(&dword_23AB78000, v3, OS_LOG_TYPE_ERROR, "Error matching extensions: %{public}@", &v5, 0xCu);
}

@end