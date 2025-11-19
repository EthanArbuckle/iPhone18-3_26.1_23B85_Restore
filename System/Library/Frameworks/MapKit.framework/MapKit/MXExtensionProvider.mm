@interface MXExtensionProvider
@end

@implementation MXExtensionProvider

void __38___MXExtensionProvider_sharedProvider__block_invoke()
{
  v0 = objc_alloc_init(_MXExtensionProvider);
  v1 = sharedProvider_sharedInstance;
  sharedProvider_sharedInstance = v0;
}

void __56___MXExtensionProvider__beginMatchingExtensionsIfNeeded__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v13 = [WeakRetained _extensionsByFilteringBlacklistedExtensionsFromArray:v6];

  v8 = [WeakRetained merger];
  v9 = [v8 receiveExtensions:v13 withIndex:0];

  v10 = [WeakRetained serviceCenter];
  [v10 receivedExtensions:v9 error:v5];

  v11 = [WeakRetained dispatchCenter];
  v12 = [WeakRetained _currentExtensions];
  [v11 dispatchExtensions:v12 error:v5];
}

void __56___MXExtensionProvider__beginMatchingExtensionsIfNeeded__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v13 = [WeakRetained _extensionsByFilteringBlacklistedExtensionsFromArray:v6];

  v8 = [WeakRetained merger];
  v9 = [v8 receiveExtensions:v13 withIndex:1];

  v10 = [WeakRetained serviceCenter];
  [v10 receivedExtensions:v9 error:v5];

  v11 = [WeakRetained dispatchCenter];
  v12 = [WeakRetained _currentExtensions];
  [v11 dispatchExtensions:v12 error:v5];
}

void __56___MXExtensionProvider__beginMatchingExtensionsIfNeeded__block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v13 = [WeakRetained _extensionsByFilteringBlacklistedExtensionsFromArray:v6];

  v8 = [WeakRetained merger];
  v9 = [v8 receiveExtensions:v13 withIndex:2];

  v10 = [WeakRetained serviceCenter];
  [v10 receivedExtensions:v9 error:v5];

  v11 = [WeakRetained dispatchCenter];
  v12 = [WeakRetained _currentExtensions];
  [v11 dispatchExtensions:v12 error:v5];
}

void __50___MXExtensionProvider_loadImageForKey_withBlock___block_invoke(uint64_t a1)
{
  v3 = [*(a1 + 32) assetStorage];
  v2 = (*(*(a1 + 48) + 16))();
  [v3 setAsset:v2 forKey:*(a1 + 40)];
}

void __47___MXExtensionProvider_imageForKey_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    objc_opt_class();
    objc_opt_isKindOfClass();
  }

  (*(*(a1 + 32) + 16))();
}

void __43___MXExtensionProvider__intentClassFilter___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (NSClassFromString(v3))
  {
    [*(a1 + 32) addObject:v3];
  }
}

@end