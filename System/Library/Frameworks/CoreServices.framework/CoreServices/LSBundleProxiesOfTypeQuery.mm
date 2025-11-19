@interface LSBundleProxiesOfTypeQuery
@end

@implementation LSBundleProxiesOfTypeQuery

void __65___LSBundleProxiesOfTypeQuery__enumerateWithXPCConnection_block___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  v17 = *MEMORY[0x1E69E9840];
  v8 = objc_autoreleasePoolPush();
  if ([*(a1 + 32) bundleUnitMeetsRequirements:a2 bundleData:a3 context:*(a1 + 48)])
  {
    if ([*(a1 + 32) type] == 5)
    {
      v9 = *(a3 + 12);
      [(_LSDatabase *)**(a1 + 48) store];
      v10 = _CSStringCopyCFString();
      if (v10)
      {
        v11 = [LSVPNPluginProxy VPNPluginProxyForIdentifier:v10 withContext:*(a1 + 48)];
      }

      else
      {
        v11 = 0;
      }

      v12 = v11;
      if (v11)
      {
        goto LABEL_11;
      }
    }

    else
    {
      v12 = [LSApplicationProxy applicationProxyWithBundleUnitID:a2 withContext:*(a1 + 48)];
      if (v12)
      {
LABEL_11:
        *a4 = (*(*(a1 + 40) + 16))() ^ 1;
LABEL_12:

        goto LABEL_13;
      }
    }

    v13 = _LSDefaultLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v15 = 134217984;
      v16 = a2;
      _os_log_impl(&dword_18162D000, v13, OS_LOG_TYPE_DEFAULT, "Failed to create bundleProxy for bundle %lu", &v15, 0xCu);
    }

    goto LABEL_12;
  }

LABEL_13:
  objc_autoreleasePoolPop(v8);
  v14 = *MEMORY[0x1E69E9840];
}

@end