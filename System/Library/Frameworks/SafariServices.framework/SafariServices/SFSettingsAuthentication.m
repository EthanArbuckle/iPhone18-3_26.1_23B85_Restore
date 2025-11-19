@interface SFSettingsAuthentication
@end

@implementation SFSettingsAuthentication

uint64_t __96___SFSettingsAuthentication_authenticateForSettings_allowAuthenticationReuse_completionHandler___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setHasBeenAuthenticated:{objc_msgSend(*(a1 + 40), "code") == -5}];
  v2 = *(a1 + 48);
  v3 = [*(a1 + 32) hasBeenAuthenticated];
  v4 = *(a1 + 40);
  v5 = *(v2 + 16);

  return v5(v2, v3, 0, v4);
}

void __96___SFSettingsAuthentication_authenticateForSettings_allowAuthenticationReuse_completionHandler___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __96___SFSettingsAuthentication_authenticateForSettings_allowAuthenticationReuse_completionHandler___block_invoke_3;
  block[3] = &unk_1E84949D0;
  v7 = v4;
  v8 = *(a1 + 32);
  v9 = *(a1 + 40);
  v5 = v4;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

uint64_t __96___SFSettingsAuthentication_authenticateForSettings_allowAuthenticationReuse_completionHandler___block_invoke_3(uint64_t a1)
{
  [*(a1 + 40) setHasBeenAuthenticated:*(a1 + 32) == 0];
  v2 = *(*(a1 + 48) + 16);

  return v2();
}

void __123___SFSettingsAuthentication_pushSettingsAfterAuthentication_onBehalfOfViewController_resourceDictionary_completionHandler___block_invoke(uint64_t a1, int a2, uint64_t a3, void *a4)
{
  v15 = a4;
  if (a2)
  {
    v7 = [*(a1 + 32) navigationController];
    v8 = [v7 viewControllers];
    v9 = [v8 mutableCopy];

    [v9 addObject:*(a1 + 40)];
    if (!*(a1 + 48))
    {
      goto LABEL_10;
    }

    if (objc_opt_respondsToSelector())
    {
      v10 = [*(a1 + 40) additionalViewControllersToPushHandlingURLResourceDictionary:*(a1 + 48) didAuthenticate:a3];
      if (v10)
      {
        [v9 addObjectsFromArray:v10];
      }
    }

    v11 = *(a1 + 48);
    if (v11)
    {
      if (a3)
      {
        IsPad = [v11 safari_BOOLForKey:@"animate"];
      }

      else
      {
        IsPad = _SFDeviceIsPad();
      }

      v13 = IsPad;
    }

    else
    {
LABEL_10:
      v13 = 1;
    }

    v14 = [*(a1 + 32) navigationController];
    [v14 setViewControllers:v9 animated:v13];
  }

  (*(*(a1 + 56) + 16))();
}

@end