@interface LSDDeviceIdentifierClient
@end

@implementation LSDDeviceIdentifierClient

void __120___LSDDeviceIdentifierClient_getClientProcessVendorNameBundleIdentifierAndRestrictedIDAccessWithType_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v50 = *MEMORY[0x1E69E9840];
  v37 = a2;
  v38 = a3;
  v5 = [*(a1 + 32) XPCConnection];
  v6 = [v5 _xpcConnection];
  v7 = _LSCopyBundleURLForXPCConnection(v6, 0);

  v39 = v7;
  if (!v7)
  {
    v12 = 0;
    v14 = 0;
LABEL_25:
    v22 = [*(a1 + 32) XPCConnection];
    v23 = [v22 _xpcConnection];
    v24 = _LSCopyExecutableURLForXPCConnection(v23);

    if (v24)
    {
      v25 = [(__CFURL *)v24 lastPathComponent];
      if (v25)
      {
        v26 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Path:%@", v25, v37];

        v12 = v26;
      }

      v27 = [(__CFURL *)v24 path];

      v14 = v27;
    }

    else
    {
      v25 = _LSDefaultLog();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
      {
        *v45 = 0;
        _os_log_impl(&dword_18162D000, v25, OS_LOG_TYPE_DEFAULT, "Not enough info to create vendorName and bundleIdentifier", v45, 2u);
      }
    }

    goto LABEL_32;
  }

  v48 = 0;
  *v45 = 0;
  v46 = 0;
  v47 = 0;
  v8 = +[_LSDServiceDomain defaultServiceDomain];
  v9 = LaunchServices::Database::Context::_get(v45, v8, 0);

  if (!v9)
  {
    v16 = _LSDefaultLog();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v17 = +[_LSDServiceDomain defaultServiceDomain];
      v18 = LaunchServices::Database::Context::_get(v45, v17, 0);

      if (v18)
      {
        v19 = 0;
      }

      else
      {
        v19 = v48;
      }

      buf.val[0] = 138543362;
      *&buf.val[1] = v19;
      _os_log_impl(&dword_18162D000, v16, OS_LOG_TYPE_DEFAULT, "Failed to reach database with error %{public}@", &buf, 0xCu);
    }

    LOBYTE(v7) = 0;
    v14 = 0;
    v12 = 0;
    goto LABEL_19;
  }

  v10 = [*(a1 + 32) findAppBundleForExecutableURL:v7 withContext:v9];
  if (v10)
  {
    v11 = _LSBundleGet(*v9, v10);
    if (v11)
    {
      v12 = [_LSDDeviceIdentifierService vendorNameForDeviceIdentifiersWithContext:v9 bundleUnit:v10 bundleData:v11];
      v13 = *(v11 + 12);
      [(_LSDatabase *)*v9 store];
      v14 = _CSStringCopyCFString();
      v15 = [*(a1 + 32) XPCConnection];
      v16 = v15;
      if (v15)
      {
        [v15 auditToken];
      }

      else
      {
        memset(&buf, 0, sizeof(buf));
      }

      if ((*(v11 + 179) & 0x18) != 0)
      {
        LOBYTE(v7) = softLinkba_is_process_extension(&buf) ^ 1;
      }

      else
      {
        LOBYTE(v7) = 0;
      }

LABEL_19:

      goto LABEL_20;
    }
  }

  LOBYTE(v7) = 0;
  v14 = 0;
  v12 = 0;
LABEL_20:
  if (*v45 && v47 == 1)
  {
    _LSContextDestroy(*v45);
  }

  v20 = v46;
  *v45 = 0;
  v46 = 0;

  v47 = 0;
  v21 = v48;
  v48 = 0;

  if (!v12 || !v14)
  {
    goto LABEL_25;
  }

LABEL_32:
  v28 = +[_LSDeviceIdentifierManager sharedInstance];
  v29 = [getUMUserManagerClass() sharedManager];
  v30 = [v29 currentPersona];
  v31 = [v28 cacheForPersona:v30];
  v32 = [v31 queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __120___LSDDeviceIdentifierClient_getClientProcessVendorNameBundleIdentifierAndRestrictedIDAccessWithType_completionHandler___block_invoke_56;
  block[3] = &unk_1E6A1BBE0;
  v33 = *(a1 + 40);
  v42 = v14;
  v43 = v33;
  v41 = v12;
  v44 = v7;
  v34 = v14;
  v35 = v12;
  dispatch_async(v32, block);

  v36 = *MEMORY[0x1E69E9840];
}

void __68___LSDDeviceIdentifierClient_getIdentifierOfType_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3, int a4)
{
  v17 = a2;
  v7 = a3;
  if (a4)
  {
    goto LABEL_11;
  }

  v8 = *(a1 + 48);
  if (v8 == 1)
  {
    if ([*(a1 + 32) canAccessAdvertisingIdentifier])
    {
      v8 = *(a1 + 48);
      goto LABEL_5;
    }

LABEL_11:
    v16 = *(a1 + 40);
    v12 = [MEMORY[0x1E696AFB0] _LS_nullUUID];
    (*(v16 + 16))(v16, v12);
    goto LABEL_12;
  }

LABEL_5:
  if (v8 == 2 && ([*(a1 + 32) XPCConnection], v9 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v9, "_xpcConnection"), v10 = objc_claimAutoreleasedReturnValue(), v11 = _LSCheckEntitlementForXPCConnection(v10, @"com.apple.lsapplicationproxy.deviceidentifierforvendor"), v10, v9, !v11) || !v17 || !v7)
  {
    (*(*(a1 + 40) + 16))();
    goto LABEL_13;
  }

  v12 = +[_LSDeviceIdentifierManager sharedInstance];
  v13 = [getUMUserManagerClass() sharedManager];
  v14 = [v13 currentPersona];
  v15 = [v12 cacheForPersona:v14];
  [v15 getIdentifierOfType:*(a1 + 48) vendorName:v17 bundleIdentifier:v7 completionHandler:*(a1 + 40)];

LABEL_12:
LABEL_13:
}

void __90___LSDDeviceIdentifierClient_urlContainsDeviceIdentifierForAdvertising_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  v4 = [a2 UUIDString];
  (*(v2 + 16))(v2, [v3 containsString:?]);
}

@end