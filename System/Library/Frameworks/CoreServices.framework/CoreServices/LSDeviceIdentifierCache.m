@interface LSDeviceIdentifierCache
@end

@implementation LSDeviceIdentifierCache

void __94___LSDeviceIdentifierCache_getIdentifierOfType_vendorName_bundleIdentifier_completionHandler___block_invoke(uint64_t a1)
{
  v30[2] = *MEMORY[0x1E69E9840];
  if (!*(a1 + 32) || !*(a1 + 40))
  {
    v9 = 0;
    goto LABEL_41;
  }

  v2 = (a1 + 64);
  v3 = [*(a1 + 48) identifiersOfTypeNotDispatched:*(a1 + 64)];
  v4 = *v2;
  if (*v2 != 1)
  {
    goto LABEL_7;
  }

  v5 = +[LSApplicationRestrictionsManager sharedInstance];
  if (([(LSApplicationRestrictionsManager *)v5 isAdTrackingEnabled]& 1) == 0)
  {

    goto LABEL_13;
  }

  v6 = [*(a1 + 48) deviceUnlockedSinceBoot];

  if ((v6 & 1) == 0)
  {
LABEL_13:
    v10 = [MEMORY[0x1E696AFB0] _LS_nullUUID];
    goto LABEL_16;
  }

  v4 = *(a1 + 64);
LABEL_7:
  if (v4 != 2)
  {
    if (v4 == 1)
    {
      v7 = *(*(a1 + 48) + 16);
      if (v7)
      {
LABEL_38:
        v9 = [*(a1 + 48) applyPerUserEntropyNotDispatched:v7 type:*(a1 + 64)];

        goto LABEL_40;
      }

      v8 = [MEMORY[0x1E696AFB0] UUID];
      objc_storeStrong((*(a1 + 48) + 16), v8);
      [*(a1 + 48) save];
      goto LABEL_37;
    }

    if (!v3)
    {
      goto LABEL_39;
    }

    if (+[LSHRNSupport deviceConfiguredForHRN])
    {
      v30[0] = 0;
      v30[1] = 0;
      v11 = [*(a1 + 48) deviceIdentifierVendorSeed];
      [v11 getUUIDBytes:v30];

      v12 = *(a1 + 32);
      v13 = [MEMORY[0x1E695DEF0] dataWithBytes:v30 length:16];
      v9 = [LSHRNSupport vendorIDFromVendorName:v12 seedData:v13 error:0];

      goto LABEL_40;
    }

    v14 = [v3 objectForKeyedSubscript:*(a1 + 32)];
    v15 = [v14 objectForKeyedSubscript:@"LSVendorIdentifier"];

    if (v15)
    {
      v16 = [v3 objectForKeyedSubscript:*(a1 + 32)];
      v17 = [v16 objectForKeyedSubscript:@"LSApplications"];

      if (v17 && [v17 containsObject:*(a1 + 40)])
      {
        v8 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:v15];

        if (v8)
        {
LABEL_36:

LABEL_37:
          v7 = v8;
          if (v8)
          {
            goto LABEL_38;
          }

LABEL_39:
          v9 = 0;
          goto LABEL_40;
        }
      }

      else
      {
      }
    }

    v18 = [v3 objectForKeyedSubscript:*(a1 + 32)];

    if (!v18)
    {
      v19 = [MEMORY[0x1E695DF90] dictionary];
      [v3 setObject:v19 forKeyedSubscript:*(a1 + 32)];
    }

    v20 = [v3 objectForKeyedSubscript:*(a1 + 32)];
    v21 = [v20 objectForKeyedSubscript:@"LSVendorIdentifier"];

    if (v21)
    {
      v8 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:v21];
    }

    else
    {
      v8 = [MEMORY[0x1E696AFB0] UUID];
      v22 = [v8 UUIDString];
      v23 = [v3 objectForKeyedSubscript:*(a1 + 32)];
      [v23 setObject:v22 forKeyedSubscript:@"LSVendorIdentifier"];
    }

    v24 = [v3 objectForKeyedSubscript:*(a1 + 32)];
    v25 = [v24 objectForKeyedSubscript:@"LSApplications"];

    if (!v25)
    {
      v26 = [MEMORY[0x1E695DF70] array];
      v27 = [v3 objectForKeyedSubscript:*(a1 + 32)];
      [v27 setObject:v26 forKeyedSubscript:@"LSApplications"];

      v25 = v26;
    }

    if (([v25 containsObject:*(a1 + 40)] & 1) == 0)
    {
      [v25 addObject:*(a1 + 40)];
    }

    [*(a1 + 48) save];

    goto LABEL_36;
  }

  if (!+[LSHRNSupport deviceConfiguredForHRN])
  {
    goto LABEL_39;
  }

  v10 = [*(a1 + 48) deviceIdentifierVendorSeed];
LABEL_16:
  v9 = v10;
LABEL_40:

LABEL_41:
  v28 = *(a1 + 56);
  if (v28)
  {
    (*(v28 + 16))(v28, v9);
  }

  v29 = *MEMORY[0x1E69E9840];
}

void __93___LSDeviceIdentifierCache_clearIdentifiersForUninstallationWithVendorName_bundleIdentifier___block_invoke(uint64_t a1)
{
  if (*(a1 + 32) && *(a1 + 40))
  {
    for (i = 0; i != 3; ++i)
    {
      v3 = [*(a1 + 48) identifiersOfTypeNotDispatched:_LSAllDeviceIdentifierTypes[i]];
      v4 = v3;
      if (v3)
      {
        v5 = [v3 objectForKeyedSubscript:*(a1 + 32)];
        v6 = v5;
        if (v5)
        {
          v7 = [v5 objectForKeyedSubscript:@"LSApplications"];
          [v7 removeObject:*(a1 + 40)];
          if (![v7 count])
          {
            [v4 removeObjectForKey:*(a1 + 32)];
          }

          [*(a1 + 48) save];
        }
      }
    }
  }
}

void __54___LSDeviceIdentifierCache_clearAllIdentifiersOfType___block_invoke(uint64_t a1)
{
  if ([__LSDefaultsGetSharedInstance() isInEducationMode])
  {
    v13 = [*(*(a1 + 32) + 48) mutableCopy];
    if (v13)
    {
      v2 = [MEMORY[0x1E696AD98] numberWithInteger:*(a1 + 40)];
      v3 = [v13 objectForKeyedSubscript:v2];

      if (v3)
      {
        v4 = [*(a1 + 32) generateSomePerUserEntropyNotDispatched];
        v5 = [MEMORY[0x1E696AD98] numberWithInteger:*(a1 + 40)];
        [v13 setObject:v4 forKeyedSubscript:v5];

        v6 = [v13 copy];
        v7 = *(a1 + 32);
        v8 = *(v7 + 48);
        *(v7 + 48) = v6;

        [*(a1 + 32) save];
      }
    }

LABEL_15:

    return;
  }

  v9 = *(a1 + 32);
  v10 = *(a1 + 40);
  if (v10 == 2)
  {
    v11 = v9[3];
    v9[3] = 0;
  }

  else
  {
    if (v10 != 1)
    {
      v13 = [v9 identifiersOfTypeNotDispatched:?];
      if (v13 && [v13 count])
      {
        [v13 removeAllObjects];
        [*(a1 + 32) save];
      }

      goto LABEL_15;
    }

    v11 = v9[2];
    v9[2] = 0;
  }

  v12 = *(a1 + 32);

  [v12 save];
}

void __32___LSDeviceIdentifierCache_save__block_invoke(uint64_t a1)
{
  v25 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) allIdentifiersNotDispatched];
  if (v2)
  {
    v3 = *(*(a1 + 32) + 56);
    if (!v3)
    {
      v6 = _LSDefaultLog();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_18162D000, v6, OS_LOG_TYPE_DEFAULT, "Failed to get identifiers file URL.", buf, 2u);
      }

      goto LABEL_22;
    }

    v4 = _LSDefaultLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = [v3 path];
      *buf = 138412290;
      v24 = v5;
      _os_log_impl(&dword_18162D000, v4, OS_LOG_TYPE_DEFAULT, "Writing identifiers file to %@", buf, 0xCu);
    }

    v6 = [v2 mutableCopy];
    v7 = *(a1 + 32);
    v8 = *(v7 + 16);
    if (v8)
    {
      v9 = [v8 UUIDString];
      [v6 setObject:v9 forKeyedSubscript:@"LSAdvertiserIdentifier"];

      v7 = *(a1 + 32);
    }

    v10 = *(v7 + 24);
    if (v10)
    {
      v11 = [v10 UUIDString];
      [v6 setObject:v11 forKeyedSubscript:@"LSVendorSeed"];
    }

    v22 = 0;
    v12 = [MEMORY[0x1E696AE40] dataWithPropertyList:v6 format:200 options:0 error:&v22];
    v13 = v22;
    v14 = v13;
    if (v12)
    {
      v21 = v13;
      v15 = [v12 writeToURL:v3 options:1073741825 error:&v21];
      v16 = v21;

      if (v15)
      {
LABEL_21:

LABEL_22:
        goto LABEL_23;
      }

      v17 = _LSDefaultLog();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v24 = v16;
        _os_log_impl(&dword_18162D000, v17, OS_LOG_TYPE_DEFAULT, "Failed to write plist data for identifiers: %@", buf, 0xCu);
      }
    }

    else
    {
      v17 = _LSDefaultLog();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v24 = v14;
        _os_log_impl(&dword_18162D000, v17, OS_LOG_TYPE_DEFAULT, "Failed to create plist data for identifiers: %@", buf, 0xCu);
      }

      v16 = v14;
    }

    goto LABEL_21;
  }

  v3 = _LSDefaultLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_18162D000, v3, OS_LOG_TYPE_DEFAULT, "Failed to get identifiers.", buf, 2u);
  }

LABEL_23:

  if (*(*(a1 + 32) + 48) && [__LSDefaultsGetSharedInstance() isInEducationMode])
  {
    v18 = _LSPerUserEntropyURL();
    if (v18)
    {
      v19 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:*(*(a1 + 32) + 48)];
      [v19 writeToURL:v18 options:1073741825 error:0];
    }
  }

  v20 = *MEMORY[0x1E69E9840];
}

@end