@interface QLExtensionManager
@end

@implementation QLExtensionManager

void __145__QLExtensionManager_Internal__remoteViewControllerForContentType_applicationBundleIdentifier_extensionType_generatonType_withCompletionHandler___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v17 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (v9)
  {
    v10 = MEMORY[0x277D43EF8];
    v11 = *MEMORY[0x277D43EF8];
    if (!*MEMORY[0x277D43EF8])
    {
      QLSInitLogging();
      v11 = *v10;
    }

    if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
    {
      v15 = 138412290;
      v16 = v9;
      _os_log_impl(&dword_23A714000, v11, OS_LOG_TYPE_FAULT, "Error while instantiating view controller: %@ #Remote", &v15, 0xCu);
    }
  }

  v12 = [*(a1 + 32) _extensionContextForUUID:v7];
  v13 = *(a1 + 32);
  (*(*(a1 + 40) + 16))();

  v14 = *MEMORY[0x277D85DE8];
}

@end