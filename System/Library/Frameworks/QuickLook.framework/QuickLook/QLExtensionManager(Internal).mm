@interface QLExtensionManager(Internal)
- (void)remoteViewControllerForContentType:()Internal applicationBundleIdentifier:extensionType:generatonType:withCompletionHandler:;
@end

@implementation QLExtensionManager(Internal)

- (void)remoteViewControllerForContentType:()Internal applicationBundleIdentifier:extensionType:generatonType:withCompletionHandler:
{
  v12 = a3;
  v13 = a4;
  v14 = a7;
  if (a5)
  {
    v15 = MEMORY[0x277D43EF8];
    v16 = *MEMORY[0x277D43EF8];
    if (!*MEMORY[0x277D43EF8])
    {
      QLSInitLogging();
      v16 = *v15;
    }

    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_23A714000, v16, OS_LOG_TYPE_ERROR, "Remove view controllers can be provided for UI extensions only. #Remote", buf, 2u);
    }

    (*(v14 + 2))(v14, 0, 0, 0, 0);
  }

  else
  {
    LOBYTE(v19) = 1;
    v17 = [self extensionForContentType:v12 allowExtensionsForParentTypes:0 applicationBundleIdentifier:v13 extensionPath:0 extensionType:0 generationType:a6 shouldUseRestrictedExtension:v19];
    v18 = v17;
    if (v17)
    {
      v20[0] = MEMORY[0x277D85DD0];
      v20[1] = 3221225472;
      v20[2] = __145__QLExtensionManager_Internal__remoteViewControllerForContentType_applicationBundleIdentifier_extensionType_generatonType_withCompletionHandler___block_invoke;
      v20[3] = &unk_278B57968;
      v21 = v17;
      v22 = v14;
      [v21 instantiateViewControllerWithInputItems:0 connectionHandler:v20];
    }

    else
    {
      (*(v14 + 2))(v14, 0, 0, 0, 0);
    }
  }
}

@end