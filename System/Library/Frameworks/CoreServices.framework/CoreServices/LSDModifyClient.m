@interface LSDModifyClient
@end

@implementation LSDModifyClient

uint64_t __58___LSDModifyClient_setDatabaseIsSeeded_completionHandler___block_invoke(uint64_t a1)
{
  _LSServer_SetDatabaseIsSeeded(*(a1 + 40));
  v2 = *(*(a1 + 32) + 16);

  return v2();
}

void __104___LSDModifyClient_registerItemInfo_alias_diskImageAlias_bundleURL_installationPlist_completionHandler___block_invoke(void *a1)
{
  v18 = *MEMORY[0x1E69E9840];
  if ((*(*(*(a1[4] + 8) + 40) + 16) & 2) == 0 && _LSServer_URLIsOnTrustedCryptex(*(*(a1[5] + 8) + 40)))
  {
    v2 = _LSInstallLog();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v3 = *(*(a1[5] + 8) + 40);
      v16 = 138412290;
      v17 = v3;
      _os_log_impl(&dword_18162D000, v2, OS_LOG_TYPE_DEFAULT, "%@ is on a trusted cryptex, setting kLSRegisterTrusted", &v16, 0xCu);
    }

    v4 = *(*(a1[4] + 8) + 40);
    *(v4 + 16) |= 2u;
  }

  v5 = *(*(a1[4] + 8) + 40);
  v6 = *(*(a1[5] + 8) + 40);
  v7 = *(*(a1[7] + 8) + 40);
  v8 = *(a1[8] + 8);
  v11 = *(v8 + 48);
  v10 = (v8 + 48);
  v9 = v11;
  *v10 = 0;
  if (v11)
  {
    CFRelease(v9);
  }

  v12 = _LSCreateRegistrationData(0, v5, v6, v7, v10);
  v13 = *(a1[6] + 8);
  v14 = *(v13 + 40);
  *(v13 + 40) = v12;

  v15 = *MEMORY[0x1E69E9840];
}

void __104___LSDModifyClient_registerItemInfo_alias_diskImageAlias_bundleURL_installationPlist_completionHandler___block_invoke_168(void *a1, void *a2, void *a3)
{
  v18 = a2;
  v5 = a3;
  v6 = *(*(a1[5] + 8) + 40);
  v7 = *(*(a1[6] + 8) + 40);
  v8 = *(*(a1[7] + 8) + 40);
  v9 = *(*(a1[8] + 8) + 40);
  v10 = *(a1[9] + 8);
  v11 = *(a1[10] + 8);
  v12 = *(a1[11] + 8);
  v13 = *(a1[12] + 8);
  v16 = *(v13 + 48);
  v15 = (v13 + 48);
  v14 = v16;
  *v15 = 0;
  if (v16)
  {
    CFRelease(v14);
  }

  *(*(a1[4] + 8) + 24) = _LSServer_RegisterItemInfo(v6, v7, v8, v9, (v10 + 24), v11 + 24, (v12 + 24), v15);
  if (*(*(a1[12] + 8) + 48))
  {
    v17 = +[_LSCanOpenURLManager sharedManager];
    [v17 resetSchemeQueryLimitForApplicationWithIdentifier:*(*(a1[12] + 8) + 48)];
  }

  if (!*(*(a1[4] + 8) + 24))
  {
    _LSArmSaveTimer(5);
  }
}

void __67___LSDModifyClient_unregisterBundleUnit_options_completionHandler___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  (*(*(a1 + 32) + 16))();
  _LSDatabaseSentinelDecrement();
}

void __67___LSDModifyClient_unregisterBundleUnit_options_completionHandler___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v20 = 0;
  v17 = 0;
  v18 = 0;
  v19 = 0;
  v7 = +[_LSDServiceDomain defaultServiceDomain];
  v8 = LaunchServices::Database::Context::_get(&v17, v7, 0);

  if (!v8)
  {
    v12 = *(a1 + 32);
    v13 = +[_LSDServiceDomain defaultServiceDomain];
    v14 = LaunchServices::Database::Context::_get(&v17, v13, 0);

    if (v14)
    {
      v11 = 0;
    }

    else
    {
      v11 = v20;
    }

    (*(v12 + 16))(v12, 0, v11);
    goto LABEL_9;
  }

  v9 = _LSUnregisterBundle(v8, *(a1 + 40), *(a1 + 44));
  v10 = *(a1 + 32);
  if (v9)
  {
    v11 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], v9, 0, "[_LSDModifyClient unregisterBundleUnit:options:completionHandler:]_block_invoke_2", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Server/LSDModifyService.mm", 618);
    (*(v10 + 16))(v10, 0, v11);
LABEL_9:

    goto LABEL_10;
  }

  (*(v10 + 16))(v10, 1, 0);
LABEL_10:
  if (v17 && v19 == 1)
  {
    _LSContextDestroy(v17);
  }

  v15 = v18;
  v17 = 0;
  v18 = 0;

  v19 = 0;
  v16 = v20;
  v20 = 0;
}

void __59___LSDModifyClient_registerContainerURL_completionHandler___block_invoke(uint64_t a1)
{
  v5 = 0;
  v2 = FSNodeCreateWithURL(*(a1 + 32), 1, &v5);
  if (v2)
  {
    v3 = *(a1 + 40);
    v4 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], v2, 0, "[_LSDModifyClient registerContainerURL:completionHandler:]_block_invoke", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Server/LSDModifyService.mm", 651);
    (*(v3 + 16))(v3, 0, v4);
  }

  else
  {
    _LSContainerAddWithNode(0, v5, 0, *(a1 + 40));
  }
}

void __58___LSDModifyClient_updateContainerUnit_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v21 = 0;
  v18 = 0;
  v19 = 0;
  v20 = 0;
  v7 = +[_LSDServiceDomain defaultServiceDomain];
  v8 = LaunchServices::Database::Context::_get(&v18, v7, 0);

  if (v8)
  {
    v9 = _LSUpdateContainerState(*v8, *(a1 + 40), v17);
    v10 = *(a1 + 32);
    if (v9)
    {
      v11 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], v9, 0, "[_LSDModifyClient updateContainerUnit:completionHandler:]_block_invoke", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Server/LSDModifyService.mm", 686);
      (*(v10 + 16))(v10, 0, v11);
    }

    else
    {
      v11 = [MEMORY[0x1E695DEF0] dataWithBytes:v17 length:20];
      (*(v10 + 16))(v10, v11, 0);
    }
  }

  else
  {
    v12 = *(a1 + 32);
    v13 = +[_LSDServiceDomain defaultServiceDomain];
    v14 = LaunchServices::Database::Context::_get(&v18, v13, 0);

    if (v14)
    {
      v11 = 0;
    }

    else
    {
      v11 = v21;
    }

    (*(v12 + 16))(v12, 0, v11);
  }

  if (v18 && v20 == 1)
  {
    _LSContextDestroy(v18);
  }

  v15 = v19;
  v18 = 0;
  v19 = 0;

  v20 = 0;
  v16 = v21;
  v21 = 0;
}

void __92___LSDModifyClient_registerExtensionPoint_platform_declaringURL_withInfo_completionHandler___block_invoke(uint64_t a1)
{
  v2 = _LSRegisterExtensionPoint(0, 0, *(a1 + 32), *(a1 + 64), *(a1 + 40), *(a1 + 48));
  v3 = *(a1 + 56);
  if (v2)
  {
    v5 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], v2, 0, "[_LSDModifyClient registerExtensionPoint:platform:declaringURL:withInfo:completionHandler:]_block_invoke", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Server/LSDModifyService.mm", 723);
    (*(v3 + 16))(v3, 0);
  }

  else
  {
    v4 = *(v3 + 16);

    v4(v3, 1, 0);
  }
}

void __101___LSDModifyClient_unregisterExtensionPoint_platform_withVersion_parentBundleUnit_completionHandler___block_invoke(uint64_t a1)
{
  v2 = _LSUnregisterExtensionPoint(0, *(a1 + 32), *(a1 + 56), *(a1 + 60), *(a1 + 40));
  v3 = *(a1 + 48);
  if (v2)
  {
    v5 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], v2, 0, "[_LSDModifyClient unregisterExtensionPoint:platform:withVersion:parentBundleUnit:completionHandler:]_block_invoke", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Server/LSDModifyService.mm", 742);
    (*(v3 + 16))(v3, 0);
  }

  else
  {
    v4 = *(v3 + 16);

    v4(v3, 1, 0);
  }
}

void __78___LSDModifyClient_setHandler_version_roles_forContentType_completionHandler___block_invoke(uint64_t a1)
{
  v18 = *MEMORY[0x1E69E9840];
  v10 = -10822;
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) XPCConnection];
  v4 = [v3 _xpcConnection];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __78___LSDModifyClient_setHandler_version_roles_forContentType_completionHandler___block_invoke_2;
  v11[3] = &unk_1E6A1C268;
  v12 = *(a1 + 32);
  v5 = *(a1 + 48);
  v16 = *(a1 + 68);
  v17 = *(a1 + 84);
  v6 = *(a1 + 40);
  v13 = v5;
  v14 = v6;
  v15 = *(a1 + 64);
  _LSIfCanModifyDefaultHandler(0, v2, &v10, v4, v11);

  v7 = *(a1 + 56);
  if (v10)
  {
    v8 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], v10, 0, "[_LSDModifyClient setHandler:version:roles:forContentType:completionHandler:]_block_invoke", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Server/LSDModifyService.mm", 813);
    (*(v7 + 16))(v7, 0, v8);
  }

  else
  {
    (*(v7 + 16))(v7, 1, 0);
  }

  v9 = *MEMORY[0x1E69E9840];
}

uint64_t __78___LSDModifyClient_setHandler_version_roles_forContentType_completionHandler___block_invoke_2(uint64_t a1)
{
  v33 = *MEMORY[0x1E69E9840];
  DefaultAppCategoryForTypeIdentifier = getDefaultAppCategoryForTypeIdentifier(*(a1 + 32));
  if ((v3 & 1) != 0 && (v4 = DefaultAppCategoryForTypeIdentifier, _os_feature_enabled_impl()))
  {
    v5 = *(a1 + 40);
    v6 = *(a1 + 76);
    *buf = *(a1 + 60);
    *&buf[16] = v6;
    v7 = _LSServer_LSSetDefaultAppByTypeIdentifier(v4, v5, buf);
    v8 = _LSDefaultLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = [*(a1 + 48) XPCConnection];
      v10 = [v9 processIdentifier];
      v11 = *(a1 + 32);
      *buf = 134218754;
      *&buf[4] = v10;
      *&buf[12] = 2114;
      *&buf[14] = v11;
      *&buf[22] = 2048;
      *&buf[24] = v4;
      v27 = 2048;
      v28 = v7;
      _os_log_impl(&dword_18162D000, v8, OS_LOG_TYPE_DEFAULT, "pid %ld setting handler for content type %{public}@ set default app category %lu -> %ld", buf, 0x2Au);
    }
  }

  else
  {
    v12 = *(a1 + 56);
    v13 = *(a1 + 32);
    v14 = *(a1 + 40);
    v15 = *(a1 + 76);
    *buf = *(a1 + 60);
    *&buf[16] = v15;
    v7 = _LSServer_SetContentTypeHandler(v13, v12, v14, buf);
    v8 = _LSDefaultLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v16 = [*(a1 + 48) XPCConnection];
      v17 = [v16 processIdentifier];
      v18 = *(a1 + 56);
      v20 = *(a1 + 32);
      v19 = *(a1 + 40);
      v21 = *(a1 + 76);
      v25[0] = *(a1 + 60);
      v25[1] = v21;
      v22 = _LSVersionNumberGetStringRepresentation(v25);
      *buf = 134219266;
      *&buf[4] = v17;
      *&buf[12] = 2114;
      *&buf[14] = v20;
      *&buf[22] = 2048;
      *&buf[24] = v18;
      v27 = 2112;
      v28 = v19;
      v29 = 2112;
      v30 = v22;
      v31 = 2048;
      v32 = v7;
      _os_log_impl(&dword_18162D000, v8, OS_LOG_TYPE_DEFAULT, "pid %ld setting handler for content type %{public}@ roles %lx to %@ v %@ -> %ld", buf, 0x3Eu);
    }
  }

  v23 = *MEMORY[0x1E69E9840];
  return v7;
}

void __72___LSDModifyClient_removeHandlerForContentType_roles_completionHandler___block_invoke(uint64_t a1)
{
  v13 = -10822;
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) XPCConnection];
  v4 = [v3 _xpcConnection];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __72___LSDModifyClient_removeHandlerForContentType_roles_completionHandler___block_invoke_2;
  v9[3] = &unk_1E6A1C2B8;
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v10 = v5;
  v11 = v6;
  v12 = *(a1 + 56);
  _LSIfCanModifyDefaultHandler(0, v2, &v13, v4, v9);

  v7 = *(a1 + 48);
  if (v13)
  {
    v8 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], v13, 0, "[_LSDModifyClient removeHandlerForContentType:roles:completionHandler:]_block_invoke", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Server/LSDModifyService.mm", 849);
    (*(v7 + 16))(v7, 0, v8);
  }

  else
  {
    (*(v7 + 16))(*(a1 + 48), 1, 0);
  }
}

uint64_t __72___LSDModifyClient_removeHandlerForContentType_roles_completionHandler___block_invoke_2(uint64_t a1)
{
  v22 = *MEMORY[0x1E69E9840];
  DefaultAppCategoryForTypeIdentifier = getDefaultAppCategoryForTypeIdentifier(*(a1 + 32));
  if ((v3 & 1) != 0 && (v4 = DefaultAppCategoryForTypeIdentifier, _os_feature_enabled_impl()))
  {
    v5 = _LSServer_LSRemoveDefaultApp(v4);
    v6 = _LSDefaultLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = [*(a1 + 40) XPCConnection];
      v14 = 134218496;
      v15 = [v7 processIdentifier];
      v16 = 2048;
      v17 = v4;
      v18 = 2048;
      v19 = v5;
      _os_log_impl(&dword_18162D000, v6, OS_LOG_TYPE_DEFAULT, "pid %ld removing default app for category %lu -> %ld", &v14, 0x20u);
    }
  }

  else
  {
    v5 = _LSServer_RemoveContentTypeHandler(*(a1 + 32), *(a1 + 48));
    v6 = _LSDefaultLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v8 = [*(a1 + 40) XPCConnection];
      v9 = [v8 processIdentifier];
      v10 = *(a1 + 32);
      v11 = *(a1 + 48);
      v14 = 134218754;
      v15 = v9;
      v16 = 2114;
      v17 = v10;
      v18 = 2048;
      v19 = v11;
      v20 = 2048;
      v21 = v5;
      _os_log_impl(&dword_18162D000, v6, OS_LOG_TYPE_DEFAULT, "pid %ld removing content type handler for %{public}@ roles %lx -> %ld", &v14, 0x2Au);
    }
  }

  v12 = *MEMORY[0x1E69E9840];
  return v5;
}

void __70___LSDModifyClient_setHandler_version_forURLScheme_completionHandler___block_invoke(uint64_t a1)
{
  v18 = *MEMORY[0x1E69E9840];
  v11 = -10822;
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) XPCConnection];
  v4 = [v3 _xpcConnection];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __70___LSDModifyClient_setHandler_version_forURLScheme_completionHandler___block_invoke_2;
  v12[3] = &unk_1E6A1C308;
  v13 = *(a1 + 32);
  v5 = *(a1 + 48);
  v6 = *(a1 + 80);
  v16 = *(a1 + 64);
  v17 = v6;
  v7 = *(a1 + 40);
  v14 = v5;
  v15 = v7;
  _LSIfCanModifyDefaultHandler(v2, 0, &v11, v4, v12);

  v8 = *(a1 + 56);
  if (v11)
  {
    v9 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], v11, 0, "[_LSDModifyClient setHandler:version:forURLScheme:completionHandler:]_block_invoke", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Server/LSDModifyService.mm", 886);
    (*(v8 + 16))(v8, 0, v9);
  }

  else
  {
    (*(v8 + 16))(v8, 1, 0);
  }

  v10 = *MEMORY[0x1E69E9840];
}

uint64_t __70___LSDModifyClient_setHandler_version_forURLScheme_completionHandler___block_invoke_2(uint64_t a1)
{
  v28 = *MEMORY[0x1E69E9840];
  InfoForSubordinateClaim = LSDefaultAppCategoryGetInfoForSubordinateClaim(0, *(a1 + 32));
  if (InfoForSubordinateClaim && (v3 = *InfoForSubordinateClaim, _os_feature_enabled_impl()))
  {
    v4 = *(a1 + 40);
    v5 = *(a1 + 72);
    *buf = *(a1 + 56);
    *&buf[16] = v5;
    v6 = _LSServer_LSSetDefaultAppByTypeIdentifier(v3, v4, buf);
    v7 = _LSDefaultLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = [*(a1 + 48) XPCConnection];
      v9 = [v8 processIdentifier];
      v10 = *(a1 + 32);
      *buf = 134218754;
      *&buf[4] = v9;
      *&buf[12] = 2114;
      *&buf[14] = v10;
      *&buf[22] = 2048;
      *&buf[24] = v3;
      v24 = 2048;
      v25 = v6;
      _os_log_impl(&dword_18162D000, v7, OS_LOG_TYPE_DEFAULT, "pid %ld setting handler for scheme %{public}@ set default app category %lu -> %ld ", buf, 0x2Au);
    }
  }

  else
  {
    v11 = *(a1 + 32);
    v12 = *(a1 + 40);
    v13 = *(a1 + 72);
    *buf = *(a1 + 56);
    *&buf[16] = v13;
    v6 = _LSServer_SetSchemeHandler(v11, v12, buf);
    v7 = _LSDefaultLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v14 = [*(a1 + 48) XPCConnection];
      v15 = [v14 processIdentifier];
      v17 = *(a1 + 32);
      v16 = *(a1 + 40);
      v18 = *(a1 + 72);
      v22[0] = *(a1 + 56);
      v22[1] = v18;
      v19 = _LSVersionNumberGetStringRepresentation(v22);
      *buf = 134219010;
      *&buf[4] = v15;
      *&buf[12] = 2114;
      *&buf[14] = v17;
      *&buf[22] = 2112;
      *&buf[24] = v16;
      v24 = 2112;
      v25 = v19;
      v26 = 2048;
      v27 = v6;
      _os_log_impl(&dword_18162D000, v7, OS_LOG_TYPE_DEFAULT, "pid %ld setting handler for scheme %{public}@ to %@ v %@: %ld", buf, 0x34u);
    }
  }

  v20 = *MEMORY[0x1E69E9840];
  return v6;
}

void __64___LSDModifyClient_removeHandlerForURLScheme_completionHandler___block_invoke(uint64_t a1)
{
  v12 = -10822;
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) XPCConnection];
  v4 = [v3 _xpcConnection];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __64___LSDModifyClient_removeHandlerForURLScheme_completionHandler___block_invoke_2;
  v9[3] = &unk_1E6A1C358;
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v10 = v5;
  v11 = v6;
  _LSIfCanModifyDefaultHandler(v2, 0, &v12, v4, v9);

  v7 = *(a1 + 48);
  if (v12)
  {
    v8 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], v12, 0, "[_LSDModifyClient removeHandlerForURLScheme:completionHandler:]_block_invoke", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Server/LSDModifyService.mm", 913);
    (*(v7 + 16))(v7, 0, v8);
  }

  else
  {
    (*(v7 + 16))(*(a1 + 48), 1, 0);
  }
}

uint64_t __64___LSDModifyClient_removeHandlerForURLScheme_completionHandler___block_invoke_2(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v2 = _LSServer_RemoveSchemeHandler(*(a1 + 32));
  v3 = _LSDefaultLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = [*(a1 + 40) XPCConnection];
    v5 = [v4 processIdentifier];
    v6 = *(a1 + 32);
    v9 = 134218498;
    v10 = v5;
    v11 = 2114;
    v12 = v6;
    v13 = 2048;
    v14 = v2;
    _os_log_impl(&dword_18162D000, v3, OS_LOG_TYPE_DEFAULT, "pid %ld removing handler for scheme %{public}@: %ld", &v9, 0x20u);
  }

  v7 = *MEMORY[0x1E69E9840];
  return v2;
}

void __59___LSDModifyClient_removeAllHandlersWithCompletionHandler___block_invoke(uint64_t a1)
{
  v17 = 0;
  v18 = &v17;
  v19 = 0x2020000000;
  v20 = 0;
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy__24;
  v15 = __Block_byref_object_dispose__24;
  v16 = 0;
  v10 = -10822;
  v2 = [*(a1 + 32) XPCConnection];
  v3 = [v2 _xpcConnection];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __59___LSDModifyClient_removeAllHandlersWithCompletionHandler___block_invoke_2;
  v9[3] = &unk_1E6A1C380;
  v9[5] = &v17;
  v9[6] = &v11;
  v9[4] = *(a1 + 32);
  _LSIfCanModifyDefaultHandler(@"*", @"*", &v10, v3, v9);

  v4 = v12;
  if ((v18[3] & 1) == 0 && !v12[5])
  {
    v5 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], v10, 0, "[_LSDModifyClient removeAllHandlersWithCompletionHandler:]_block_invoke", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Server/LSDModifyService.mm", 940);
    v6 = v12[5];
    v12[5] = v5;

    v4 = v12;
    v7 = *(v18 + 24);
  }

  v8 = v4[5];
  (*(*(a1 + 40) + 16))();
  _Block_object_dispose(&v11, 8);

  _Block_object_dispose(&v17, 8);
}

uint64_t __59___LSDModifyClient_removeAllHandlersWithCompletionHandler___block_invoke_2(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v2 = *(*(a1 + 48) + 8);
  obj = *(v2 + 40);
  v3 = _LSServer_RemoveAllHandlers(&obj);
  objc_storeStrong((v2 + 40), obj);
  *(*(*(a1 + 40) + 8) + 24) = v3;
  if (*(*(*(a1 + 40) + 8) + 24))
  {
    v4 = 0;
  }

  else
  {
    v4 = _LSGetOSStatusFromNSError(*(*(*(a1 + 48) + 8) + 40));
  }

  v5 = _LSDefaultLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [*(a1 + 32) XPCConnection];
    v7 = [v6 processIdentifier];
    *buf = 134218240;
    v12 = v7;
    v13 = 2048;
    v14 = v4;
    _os_log_impl(&dword_18162D000, v5, OS_LOG_TYPE_DEFAULT, "pid %ld removing ALL handlers: %ld", buf, 0x16u);
  }

  v8 = *MEMORY[0x1E69E9840];
  return v4;
}

void __91___LSDModifyClient_relaxApplicationTypeRequirements_forBundleIdentifier_completionHandler___block_invoke(uint64_t a1)
{
  v18 = 0;
  v19 = &v18;
  v20 = 0x2020000000;
  v21 = 0;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__24;
  v16 = __Block_byref_object_dispose__24;
  v17 = 0;
  v2 = [LSApplicationRecord alloc];
  v3 = *(a1 + 32);
  v4 = (v13 + 5);
  obj = v13[5];
  v5 = [(LSApplicationRecord *)v2 initWithBundleIdentifier:v3 allowPlaceholder:0 error:&obj];
  objc_storeStrong(v4, obj);
  if (v5)
  {
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __91___LSDModifyClient_relaxApplicationTypeRequirements_forBundleIdentifier_completionHandler___block_invoke_2;
    v9[3] = &unk_1E6A1C3A8;
    v10 = *(a1 + 48);
    v9[4] = &v18;
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __91___LSDModifyClient_relaxApplicationTypeRequirements_forBundleIdentifier_completionHandler___block_invoke_3;
    v8[3] = &unk_1E6A1C3D0;
    v8[4] = &v12;
    [(LSRecord *)v5 _ifAttached:v9 else:v8];
  }

  v6 = *(v19 + 24);
  v7 = v13[5];
  (*(*(a1 + 40) + 16))();
  _Block_object_dispose(&v12, 8);

  _Block_object_dispose(&v18, 8);
}

void __91___LSDModifyClient_relaxApplicationTypeRequirements_forBundleIdentifier_completionHandler___block_invoke_2(uint64_t a1, void **a2, uint64_t a3, uint64_t a4)
{
  _LSBundleSetLegacySpecialApplicationTypes(*a2, a4, *(a1 + 40), 1);
  *(*(*(a1 + 32) + 8) + 24) = 1;
  _LSDatabaseCommit(*a2);

  _LSArmSaveTimer(1);
}

void __91___LSDModifyClient_relaxApplicationTypeRequirements_forBundleIdentifier_completionHandler___block_invoke_3(uint64_t a1)
{
  v8[1] = *MEMORY[0x1E69E9840];
  v7 = *MEMORY[0x1E696A278];
  v8[0] = @"Unable to access the specified record in the LS database for an unknown reason. Please file a bug report.";
  v2 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:&v7 count:1];
  v3 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], -10810, v2, "[_LSDModifyClient relaxApplicationTypeRequirements:forBundleIdentifier:completionHandler:]_block_invoke_3", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Server/LSDModifyService.mm", 992);
  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  v6 = *MEMORY[0x1E69E9840];
}

void __58___LSDModifyClient_resetServerStoreWithCompletionHandler___block_invoke(uint64_t a1)
{
  v6 = [*(a1 + 32) XPCConnection];
  v2 = [v6 _xpcConnection];
  v3 = _LSCheckEntitlementForXPCConnection(v2, @"com.apple.private.coreservices.canresetserverstore");

  if (v3)
  {
    _LSResetServer();
    v4 = *(*(a1 + 40) + 16);

    v4();
  }

  else
  {
    v5 = *(a1 + 40);
    v7 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], -54, 0, "[_LSDModifyClient resetServerStoreWithCompletionHandler:]_block_invoke", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Server/LSDModifyService.mm", 1019);
    (*(v5 + 16))(v5, 0);
  }
}

void __148___LSDModifyClient_updateRecordForApp_withSINF_iTunesMetadata_placeholderMetadata_sendNotification_operationUUID_returnSaveToken_completionHandler___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v29[1] = *MEMORY[0x1E69E9840];
  v23 = 0;
  v24 = &v23;
  v25 = 0x3032000000;
  v26 = __Block_byref_object_copy__24;
  v27 = __Block_byref_object_dispose__24;
  v28 = 0;
  updated = _LSServer_UpdateDatabaseWithInfo(*(a1 + 32), *(a1 + 40), *(a1 + 48), *(a1 + 56), 0, a6, a7, a8);
  if (updated)
  {
    v10 = *(a1 + 72);
    v11 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], updated, 0, "[_LSDModifyClient updateRecordForApp:withSINF:iTunesMetadata:placeholderMetadata:sendNotification:operationUUID:returnSaveToken:completionHandler:]_block_invoke_2", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Server/LSDModifyService.mm", 1096);
    (*(v10 + 16))(v10, 0, 0, v11);
  }

  else
  {
    if (*(a1 + 84) == 1)
    {
      v12 = [[_LSDModificationPendingSaveToken alloc] initWithUUID:*(a1 + 64)];
      v13 = v24[5];
      v24[5] = v12;

      v20[0] = MEMORY[0x1E69E9820];
      v20[1] = 3221225472;
      v20[2] = __148___LSDModifyClient_updateRecordForApp_withSINF_iTunesMetadata_placeholderMetadata_sendNotification_operationUUID_returnSaveToken_completionHandler___block_invoke_2;
      v20[3] = &unk_1E6A1C420;
      v21 = *(a1 + 32);
      v22 = &v23;
      v14 = MEMORY[0x1865D71B0](v20);
    }

    else
    {
      v14 = 0;
    }

    _LSArmSaveTimerWithObserver(5, v14);
    if (*(a1 + 80))
    {
      v15 = [LSApplicationProxy applicationProxyForIdentifier:*(a1 + 32) placeholder:1];
      if (v15)
      {
        v16 = +[_LSInstallProgressService sharedInstance];
        v17 = *(a1 + 80);
        v29[0] = v15;
        v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:v29 count:1];
        [v16 sendNotification:v17 forAppProxies:v18 Plugins:0 completion:0];
      }
    }

    (*(*(a1 + 72) + 16))(*(a1 + 72), 1, v24[5], 0);
  }

  _Block_object_dispose(&v23, 8);

  v19 = *MEMORY[0x1E69E9840];
}

void __148___LSDModifyClient_updateRecordForApp_withSINF_iTunesMetadata_placeholderMetadata_sendNotification_operationUUID_returnSaveToken_completionHandler___block_invoke_2(uint64_t a1, int a2, uint64_t a3, void *a4)
{
  v19 = *MEMORY[0x1E69E9840];
  v6 = a4;
  v7 = _LSInstallLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = *(a1 + 32);
    v13 = 138412802;
    v14 = v8;
    v15 = 1024;
    v16 = a2;
    v17 = 2112;
    v18 = v6;
    _os_log_impl(&dword_18162D000, v7, OS_LOG_TYPE_DEFAULT, "Save after update app record for bundle %@ attempted: %d save error: %@", &v13, 0x1Cu);
  }

  v9 = v6;
  v10 = v9;
  if ((a2 & 1) == 0)
  {
    v11 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A798], 89, 0, "[_LSDModifyClient updateRecordForApp:withSINF:iTunesMetadata:placeholderMetadata:sendNotification:operationUUID:returnSaveToken:completionHandler:]_block_invoke", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Server/LSDModifyService.mm", 1065);

    v10 = v11;
  }

  [*(*(*(a1 + 40) + 8) + 40) saveDidHappen:v10 == 0 error:v10];

  v12 = *MEMORY[0x1E69E9840];
}

uint64_t __53___LSDModifyClient_synchronizeWithMobileInstallation__block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = _LSDefaultLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    v5 = [*(a1 + 32) XPCConnection];
    v6[0] = 67109120;
    v6[1] = [v5 processIdentifier];
    _os_log_error_impl(&dword_18162D000, v2, OS_LOG_TYPE_ERROR, "Request to synchronize with MobileInstallation made by pid %d", v6, 8u);
  }

  _LSServer_SyncWithMobileInstallation(0);
  result = MEMORY[0x1865D7C50]();
  v4 = *MEMORY[0x1E69E9840];
  return result;
}

void __75___LSDModifyClient_unregisterApplicationsAtMountPoint_operationUUID_reply___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v81[3] = *MEMORY[0x1E69E9840];
  v42 = a2;
  v43 = a3;
  v69 = 0;
  v70 = &v69;
  v71 = 0x3032000000;
  v72 = __Block_byref_object_copy__24;
  v73 = __Block_byref_object_dispose__24;
  v74 = objc_alloc_init(MEMORY[0x1E695DF70]);
  if (*(a1 + 32))
  {
    v5 = 0;
  }

  else
  {
    v5 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], -50, 0, "[_LSDModifyClient unregisterApplicationsAtMountPoint:operationUUID:reply:]_block_invoke", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Server/LSDModifyService.mm", 1218);
  }

  v68 = 0;
  v65 = 0;
  v66 = 0;
  v67 = 0;
  v6 = +[_LSDServiceDomain defaultServiceDomain];
  v46 = a1;
  v45 = LaunchServices::Database::Context::_get(&v65, v6, 0);

  v7 = a1;
  if (!*(a1 + 32) || !v45)
  {
    goto LABEL_28;
  }

  v64 = 0;
  v8 = [FSNode alloc];
  v9 = *(a1 + 32);
  v63 = v5;
  v44 = [(FSNode *)v8 initWithURL:v9 flags:8 error:&v63];
  v40 = v63;

  if (!v44)
  {
    v17 = +[_LSDServiceDomain defaultServiceDomain];
    v18 = LaunchServices::Database::Context::_get(&v65, v17, 0);

    if (v18)
    {
      v5 = 0;
    }

    else
    {
      v5 = v68;
    }

    v16 = v40;
    goto LABEL_23;
  }

  v62 = v40;
  _LSContainerFindOrRegisterWithNode(v45, v44, 0, &v64, 0, 0, &v62);
  v10 = v62;

  v41 = v10;
  if (v10)
  {
    v11 = _LSDefaultLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [*(a1 + 32) absoluteString];
      objc_claimAutoreleasedReturnValue();
      __75___LSDModifyClient_unregisterApplicationsAtMountPoint_operationUUID_reply___block_invoke_cold_1();
    }
  }

  v12 = +[FSNode rootVolumeNode];
  if ([(FSNode *)v44 isEqual:v12])
  {
    goto LABEL_16;
  }

  v13 = +[FSNode systemDataVolumeNode];
  if ([(FSNode *)v44 isEqual:v13])
  {
LABEL_15:

LABEL_16:
    goto LABEL_17;
  }

  v14 = +[FSNode prebootVolumeNode];
  if ([(FSNode *)v44 isEqual:v14])
  {

    goto LABEL_15;
  }

  v26 = +[FSNode userDataVolumeNode];
  v27 = [(FSNode *)v44 isEqual:v26];

  if (v27)
  {
LABEL_17:
    v80 = *MEMORY[0x1E696A278];
    v81[0] = @"Mount point was root/nil";
    v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v81 forKeys:&v80 count:1];
    v5 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], -46, v15, "[_LSDModifyClient unregisterApplicationsAtMountPoint:operationUUID:reply:]_block_invoke", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Server/LSDModifyService.mm", 1237);

    v16 = _LSDefaultLog();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      [*(a1 + 32) absoluteString];
      objc_claimAutoreleasedReturnValue();
      __75___LSDModifyClient_unregisterApplicationsAtMountPoint_operationUUID_reply___block_invoke_cold_3();
    }

    goto LABEL_23;
  }

  if (v64)
  {
    [(_LSDatabase *)*v45 store];
    v28 = *([(_LSDatabase *)*v45 schema]+ 4);
    v55 = MEMORY[0x1E69E9820];
    v56 = 3221225472;
    v57 = __75___LSDModifyClient_unregisterApplicationsAtMountPoint_operationUUID_reply___block_invoke_249;
    v58 = &unk_1E6A1C470;
    v61 = v64;
    v59 = &v69;
    v60 = v45;
    _CSStoreEnumerateUnits();
    v53 = 0u;
    v54 = 0u;
    v51 = 0u;
    v52 = 0u;
    obj = v70[5];
    v29 = [obj countByEnumeratingWithState:&v51 objects:v79 count:16];
    if (v29)
    {
      v30 = *v52;
      do
      {
        for (i = 0; i != v29; ++i)
        {
          if (*v52 != v30)
          {
            objc_enumerationMutation(obj);
          }

          v32 = *(*(&v51 + 1) + 8 * i);
          v33 = +[_LSInstallProgressService sharedInstance];
          v34 = [v32 appState];
          v35 = [v34 isPlaceholder];
          v78 = v32;
          v36 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v78 count:1];
          if (v35)
          {
            v37 = 9;
          }

          else
          {
            v37 = 8;
          }

          [v33 sendNotification:v37 forAppProxies:v36 Plugins:0 completion:0];
        }

        v29 = [obj countByEnumeratingWithState:&v51 objects:v79 count:16];
      }

      while (v29);
    }

    _LSContainerRemove(v45, v64);
    if (!v41)
    {
      v5 = 0;
      p_super = &v44->super;
LABEL_26:

      goto LABEL_27;
    }

    v38 = _LSDefaultLog();
    if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
    {
      v39 = [*(v46 + 32) absoluteString];
      __75___LSDModifyClient_unregisterApplicationsAtMountPoint_operationUUID_reply___block_invoke_cold_2(v39, v41, buf, v38);
    }

    v5 = v41;
LABEL_24:
    p_super = _LSDefaultLog();
    if (os_log_type_enabled(p_super, OS_LOG_TYPE_ERROR))
    {
      [*(v46 + 32) absoluteString];
      objc_claimAutoreleasedReturnValue();
      __75___LSDModifyClient_unregisterApplicationsAtMountPoint_operationUUID_reply___block_invoke_cold_4();
    }

    goto LABEL_26;
  }

  v75 = *MEMORY[0x1E696A278];
  v76 = @"Container could not be resolved";
  v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v76 forKeys:&v75 count:1];
  v5 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], -4, v16, "[_LSDModifyClient unregisterApplicationsAtMountPoint:operationUUID:reply:]_block_invoke", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Server/LSDModifyService.mm", 1260);

LABEL_23:
  if (v5)
  {
    goto LABEL_24;
  }

LABEL_27:
  v7 = v46;
LABEL_28:
  if (v5)
  {
    v20 = 0;
  }

  else
  {
    v21 = [[_LSDModificationPendingSaveToken alloc] initWithUUID:*(v7 + 40)];
    v48[0] = MEMORY[0x1E69E9820];
    v48[1] = 3221225472;
    v48[2] = __75___LSDModifyClient_unregisterApplicationsAtMountPoint_operationUUID_reply___block_invoke_254;
    v48[3] = &unk_1E6A1C498;
    v49 = *(v7 + 32);
    v20 = v21;
    v50 = v20;
    v22 = MEMORY[0x1865D71B0](v48);
    _LSArmSaveTimerWithObserver(1, v22);

    v7 = v46;
  }

  _LSDatabaseSentinelDecrement();
  if (!v20)
  {
    _LSDatabaseSentinelFlush();
  }

  (*(*(v7 + 56) + 16))();

  if (v65 && v67 == 1)
  {
    _LSContextDestroy(v65);
  }

  v23 = v66;
  v65 = 0;
  v66 = 0;

  v67 = 0;
  v24 = v68;
  v68 = 0;

  _Block_object_dispose(&v69, 8);
  v25 = *MEMORY[0x1E69E9840];
}

void __75___LSDModifyClient_unregisterApplicationsAtMountPoint_operationUUID_reply___block_invoke_249(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a3 + 4) == *(a1 + 48))
  {
    v4 = [LSApplicationProxy applicationProxyWithBundleUnitID:a2 withContext:*(a1 + 40)];
    [*(*(*(a1 + 32) + 8) + 40) addObject:?];
  }
}

void __75___LSDModifyClient_unregisterApplicationsAtMountPoint_operationUUID_reply___block_invoke_254(uint64_t a1, int a2, uint64_t a3, void *a4)
{
  v19 = *MEMORY[0x1E69E9840];
  v6 = a4;
  v7 = _LSInstallLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [*(a1 + 32) absoluteString];
    v13 = 138412802;
    v14 = v8;
    v15 = 1024;
    v16 = a2;
    v17 = 2112;
    v18 = v6;
    _os_log_impl(&dword_18162D000, v7, OS_LOG_TYPE_DEFAULT, "Save after unregistering mount point: %@ attempted: %d error: %@", &v13, 0x1Cu);
  }

  v9 = v6;
  v10 = v9;
  if ((a2 & 1) == 0)
  {
    v11 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A798], 89, 0, "[_LSDModifyClient unregisterApplicationsAtMountPoint:operationUUID:reply:]_block_invoke", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Server/LSDModifyService.mm", 1282);

    v10 = v11;
  }

  [*(a1 + 40) saveDidHappen:v10 == 0 error:v10];

  v12 = *MEMORY[0x1E69E9840];
}

void __70___LSDModifyClient_doTokenizedRegistrationTaskWithName_xpcReply_work___block_invoke(uint64_t a1)
{
  v2 = _LSDatabaseGetInstallingGroup();
  dispatch_group_enter(v2);

  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __70___LSDModifyClient_doTokenizedRegistrationTaskWithName_xpcReply_work___block_invoke_2;
  v6[3] = &unk_1E6A1C4E8;
  v8 = *(a1 + 40);
  v7 = *(a1 + 32);
  v3 = MEMORY[0x1865D71B0](v6);
  (*(*(a1 + 48) + 16))(*(a1 + 48), v3, v4, v5);
}

void __70___LSDModifyClient_doTokenizedRegistrationTaskWithName_xpcReply_work___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  v5 = a3;
  v6 = _LSDatabaseGetInstallingGroup();
  dispatch_group_leave(v6);

  (*(*(a1 + 40) + 16))();
}

void __67___LSDModifyClient_unregisterApplicationAtURL_operationUUID_reply___block_invoke(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [LSByURLBundleUnregistrant alloc];
  v5 = objc_alloc_init(LSRegistrantServerStrategy);
  v6 = [(LSByURLBundleUnregistrant *)v4 initWithStrategy:v5 operationUUID:*(a1 + 32) URL:*(a1 + 40)];

  v7 = _LSInstallLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [*(a1 + 48) XPCConnection];
    v9 = [v8 processIdentifier];
    v10 = *(a1 + 40);
    v12[0] = 67109378;
    v12[1] = v9;
    v13 = 2112;
    v14 = v10;
    _os_log_impl(&dword_18162D000, v7, OS_LOG_TYPE_DEFAULT, "pid %d asks to directly unregister url: %@", v12, 0x12u);
  }

  [(LSByURLBundleUnregistrant *)v6 runWithCompletion:v3];
  v11 = *MEMORY[0x1E69E9840];
}

void __62___LSDModifyClient_unregisterPluginAtURL_operationUUID_reply___block_invoke(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [LSByURLPluginUnregistrant alloc];
  v5 = objc_alloc_init(LSRegistrantServerStrategy);
  v6 = [(LSByURLPluginUnregistrant *)v4 initWithStrategy:v5 operationUUID:*(a1 + 32) URL:*(a1 + 40)];

  v7 = _LSInstallLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [*(a1 + 48) XPCConnection];
    v9 = [v8 processIdentifier];
    v10 = *(a1 + 40);
    v12[0] = 67109378;
    v12[1] = v9;
    v13 = 2112;
    v14 = v10;
    _os_log_impl(&dword_18162D000, v7, OS_LOG_TYPE_DEFAULT, "pid %d asks to directly unregister url: %@", v12, 0x12u);
  }

  [(LSByURLPluginUnregistrant *)v6 runWithCompletion:v3];
  v11 = *MEMORY[0x1E69E9840];
}

void __88___LSDModifyClient_registerBuiltinApplication_personaUniqueStrings_operationUUID_reply___block_invoke(uint64_t a1, void *a2)
{
  v22 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = _LSGetCollapsedMIDictionaryForAppAndContentsDictionaries(*(a1 + 32));
  if ([v4 count] == 1)
  {
    v5 = [v4 allValues];
    v6 = [v5 firstObject];

    v7 = [v6 objectForKeyedSubscript:*MEMORY[0x1E695E4F0]];
    v8 = _LSInstallLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = [*(a1 + 40) XPCConnection];
      *buf = 67109378;
      v19 = [v9 processIdentifier];
      v20 = 2112;
      v21 = v7;
      _os_log_impl(&dword_18162D000, v8, OS_LOG_TYPE_DEFAULT, "pid %d asks to directly register %@", buf, 0x12u);
    }

    v10 = [LSBuiltinApplicationRegistrant alloc];
    v11 = objc_alloc_init(LSRegistrantServerStrategy);
    v12 = [(LSBuiltinApplicationRegistrant *)v10 initWithStrategy:v11 operationUUID:*(a1 + 48) itemInfoDict:v6 personas:*(a1 + 56)];

    [(LSBuiltinApplicationRegistrant *)v12 runWithCompletion:v3];
  }

  else
  {
    v13 = _LSInstallLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      __88___LSDModifyClient_registerBuiltinApplication_personaUniqueStrings_operationUUID_reply___block_invoke_cold_1();
    }

    v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%zu items were provided to be registered exactly 1 must be specified", objc_msgSend(v4, "count")];;
    v14 = *(a1 + 64);
    v16 = *MEMORY[0x1E696A278];
    v17 = v6;
    v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v17 forKeys:&v16 count:1];
    v12 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], -50, v7, "[_LSDModifyClient registerBuiltinApplication:personaUniqueStrings:operationUUID:reply:]_block_invoke", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Server/LSDModifyService.mm", 1389);
    (*(v14 + 16))(v14, 0, v12);
  }

  v15 = *MEMORY[0x1E69E9840];
}

void __61___LSDModifyClient_registerBuiltinAppex_operationUUID_reply___block_invoke(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = _LSInstallLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [*(a1 + 32) XPCConnection];
    v6 = [v5 processIdentifier];
    v7 = [*(a1 + 40) objectForKey:@"Path"];
    v12[0] = 67109378;
    v12[1] = v6;
    v13 = 2112;
    v14 = v7;
    _os_log_impl(&dword_18162D000, v4, OS_LOG_TYPE_DEFAULT, "pid %d asks to directly register plugin %@", v12, 0x12u);
  }

  v8 = [LSBuiltinPluginRegistrant alloc];
  v9 = objc_alloc_init(LSRegistrantServerStrategy);
  v10 = [(LSBuiltinPluginRegistrant *)v8 initWithStrategy:v9 operationUUID:*(a1 + 48) itemInfoDict:*(a1 + 40)];

  [(LSBuiltinPluginRegistrant *)v10 runWithCompletion:v3];
  v11 = *MEMORY[0x1E69E9840];
}

void __66___LSDModifyClient_refreshExtensionPointsWithOperationUUID_reply___block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = _LSInstallLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [*(a1 + 32) XPCConnection];
    v10[0] = 67109120;
    v10[1] = [v5 processIdentifier];
    _os_log_impl(&dword_18162D000, v4, OS_LOG_TYPE_DEFAULT, "pid %d asks to refresh unbundled extension points", v10, 8u);
  }

  v6 = [LSSystemExtensionPointRefreshRegistrant alloc];
  v7 = objc_alloc_init(LSRegistrantServerStrategy);
  v8 = [(LSSystemExtensionPointRefreshRegistrant *)v6 initWithStrategy:v7 operationUUID:*(a1 + 40)];

  [(LSSystemExtensionPointRefreshRegistrant *)v8 runWithCompletion:v3];
  v9 = *MEMORY[0x1E69E9840];
}

void __57___LSDModifyClient_refreshContentInFrameworkAtURL_reply___block_invoke(uint64_t a1)
{
  v22 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) XPCConnection];
  v3 = [v2 _xpcConnection];
  v4 = _LSCheckEntitlementForXPCConnection(v3, @"com.apple.lsapplicationworkspace.rebuildappdatabases");

  if (v4)
  {
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __57___LSDModifyClient_refreshContentInFrameworkAtURL_reply___block_invoke_2;
    v14[3] = &unk_1E6A19090;
    v5 = *(a1 + 40);
    v15 = *(a1 + 48);
    _LSServer_RefreshContentInFrameworkAtURL(v5, v14);
    v6 = v15;
  }

  else
  {
    v7 = _LSDefaultLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v12 = *(a1 + 40);
      v13 = [*(a1 + 32) XPCConnection];
      *buf = 138412546;
      v19 = v12;
      v20 = 1024;
      v21 = [v13 processIdentifier];
      _os_log_error_impl(&dword_18162D000, v7, OS_LOG_TYPE_ERROR, "Unentitled request to refresh plugins in framework %@ by pid %d", buf, 0x12u);
    }

    v8 = *(a1 + 48);
    if (@"com.apple.lsapplicationworkspace.rebuildappdatabases")
    {
      v9 = @"com.apple.lsapplicationworkspace.rebuildappdatabases";
    }

    else
    {
      v9 = @"unknown entitlement";
    }

    v16 = *MEMORY[0x1E696A278];
    v17 = v9;
    v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v17 forKeys:&v16 count:1];
    v10 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], -54, v6, "[_LSDModifyClient refreshContentInFrameworkAtURL:reply:]_block_invoke", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Server/LSDModifyService.mm", 1448);
    (*(v8 + 16))(v8, v10);
  }

  v11 = *MEMORY[0x1E69E9840];
}

void __64___LSDModifyClient_garbageCollectDatabaseWithCompletionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v18 = 0;
  v15 = 0;
  v16 = 0;
  v17 = 0;
  v7 = +[_LSDServiceDomain defaultServiceDomain];
  v8 = LaunchServices::Database::Context::_get(&v15, v7, 0);

  if (v8)
  {
    [(_LSDatabase *)*v8 store];
    if (_CSStoreGarbageCollect())
    {
      _LSArmSaveTimer(1);
    }

    (*(*(a1 + 32) + 16))();
  }

  else
  {
    v9 = *(a1 + 32);
    v10 = +[_LSDServiceDomain defaultServiceDomain];
    v11 = LaunchServices::Database::Context::_get(&v15, v10, 0);

    if (v11)
    {
      v12 = 0;
    }

    else
    {
      v12 = v18;
    }

    (*(v9 + 16))(v9, 0, v12);
  }

  if (v15 && v17 == 1)
  {
    _LSContextDestroy(v15);
  }

  v13 = v16;
  v15 = 0;
  v16 = 0;

  v17 = 0;
  v14 = v18;
  v18 = 0;
}

void __84___LSDModifyClient_setPreferenceValue_forKey_forApplicationAtURL_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v23 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v20 = 0;
  v17 = 0;
  v18 = 0;
  v19 = 0;
  v7 = +[_LSDServiceDomain defaultServiceDomain];
  v8 = LaunchServices::Database::Context::_get(&v17, v7, 0);

  if (v8)
  {
    v9 = [*(a1 + 32) bundleIdentifierWithContext:v8 error:0];
  }

  else
  {
    v10 = _LSDefaultLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v14 = +[_LSDServiceDomain defaultServiceDomain];
      v15 = LaunchServices::Database::Context::_get(&v17, v14, 0);

      if (v15)
      {
        v16 = 0;
      }

      else
      {
        v16 = v20;
      }

      *buf = 138543362;
      v22 = v16;
      _os_log_error_impl(&dword_18162D000, v10, OS_LOG_TYPE_ERROR, "Unexpected error talking to LS database while setting preference value: %{public}@", buf, 0xCu);
    }
  }

  if (v17 && v19 == 1)
  {
    _LSContextDestroy(v17);
  }

  v11 = v18;
  v17 = 0;
  v18 = 0;

  v19 = 0;
  v12 = v20;
  v20 = 0;

  v13 = *MEMORY[0x1E69E9840];
}

void __84___LSDModifyClient_setPreferenceValue_forKey_forApplicationAtURL_completionHandler___block_invoke_289(LaunchServices::PrefsStorage *a1)
{
  Shared = LaunchServices::PrefsStorage::GetShared(a1);
  v3 = *(a1 + 4);
  v4 = *(a1 + 5);
  v5 = *(a1 + 6);
  v6 = *(*(a1 + 8) + 8);
  obj = *(v6 + 40);
  v7 = LaunchServices::PrefsStorage::setValueForNode(Shared, v3, v4, v5, &obj);
  objc_storeStrong((v6 + 40), obj);
  *(*(*(a1 + 7) + 8) + 24) = v7;
}

void __85___LSDModifyClient_setPreferenceValueForCallingApplication_forKey_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v32 = 0;
  v29 = 0;
  v30 = 0;
  v31 = 0;
  v7 = +[_LSDServiceDomain defaultServiceDomain];
  v8 = LaunchServices::Database::Context::_get(&v29, v7, 0);

  if (!v8)
  {
    v16 = +[_LSDServiceDomain defaultServiceDomain];
    v17 = LaunchServices::Database::Context::_get(&v29, v16, 0);

    if (v17)
    {
      v18 = 0;
    }

    else
    {
      v18 = v32;
    }

    v23 = _LSDefaultLog();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      __85___LSDModifyClient_setPreferenceValueForCallingApplication_forKey_completionHandler___block_invoke_cold_2();
    }

    v24 = *(*(a1 + 64) + 8);
    v22 = *(v24 + 40);
    *(v24 + 40) = v18;
    goto LABEL_13;
  }

  v28 = 0;
  v9 = _LSBundleFindWithNode(v8, *(a1 + 32), &v28, 0);
  if (!v28)
  {
    v19 = _LSDefaultLog();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      __85___LSDModifyClient_setPreferenceValueForCallingApplication_forKey_completionHandler___block_invoke_cold_1((a1 + 32));
    }

    v20 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], -600, 0, "[_LSDModifyClient setPreferenceValueForCallingApplication:forKey:completionHandler:]_block_invoke", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Server/LSDModifyService.mm", 1585);
    v21 = *(*(a1 + 64) + 8);
    v22 = *(v21 + 40);
    *(v21 + 40) = v20;
LABEL_13:

    goto LABEL_14;
  }

  Shared = LaunchServices::PrefsStorage::GetShared(v9);
  v12 = *(a1 + 32);
  v11 = *(a1 + 40);
  v13 = *(a1 + 48);
  v14 = *(*(a1 + 64) + 8);
  obj = *(v14 + 40);
  v15 = LaunchServices::PrefsStorage::setValueForNode(Shared, v11, v12, v13, &obj);
  objc_storeStrong((v14 + 40), obj);
  *(*(*(a1 + 56) + 8) + 24) = v15;
LABEL_14:
  if (v29 && v31 == 1)
  {
    _LSContextDestroy(v29);
  }

  v25 = v30;
  v29 = 0;
  v30 = 0;

  v31 = 0;
  v26 = v32;
  v32 = 0;
}

void __97___LSDModifyClient_performPostInstallationRegistration_personaUniqueStrings_operationUUID_reply___block_invoke(uint64_t a1)
{
  v31 = *MEMORY[0x1E69E9840];
  v2 = _LSGetCollapsedMIDictionaryForAppAndContentsDictionaries(*(a1 + 32));
  if ([v2 count] == 1)
  {
    v3 = _LSDatabaseGetInstallingGroup();
    dispatch_group_enter(v3);

    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __97___LSDModifyClient_performPostInstallationRegistration_personaUniqueStrings_operationUUID_reply___block_invoke_2;
    v21[3] = &unk_1E6A1C600;
    v22 = *(a1 + 64);
    v4 = MEMORY[0x1865D71B0](v21);
    v5 = [v2 allValues];
    v6 = [v5 firstObject];

    v7 = [v6 objectForKeyedSubscript:*MEMORY[0x1E695E4F0]];
    v8 = _LSInstallLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = *(a1 + 40);
      v10 = [*(a1 + 48) XPCConnection];
      v11 = [v10 processIdentifier];
      *buf = 138412802;
      v26 = v7;
      v27 = 2112;
      v28 = v9;
      v29 = 1024;
      v30 = v11;
      _os_log_impl(&dword_18162D000, v8, OS_LOG_TYPE_DEFAULT, "Post installation registration: request to register %@, operation %@, from pid %d", buf, 0x1Cu);
    }

    v12 = [LSMIResultRegistrant alloc];
    v13 = objc_alloc_init(LSRegistrantServerStrategy);
    v14 = [(LSMIResultRegistrant *)v12 initWithContext:v13 operationUUID:*(a1 + 40) itemInfoDict:v6 personas:*(a1 + 56)];

    [(LSMIResultRegistrant *)v14 runWithCompletion:v4];
    v15 = v22;
  }

  else
  {
    v16 = _LSInstallLog();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      __88___LSDModifyClient_registerBuiltinApplication_personaUniqueStrings_operationUUID_reply___block_invoke_cold_1();
    }

    v15 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%zu items were provided to be registered exactly 1 must be specified", objc_msgSend(v2, "count")];;
    v17 = *(a1 + 64);
    v23 = *MEMORY[0x1E696A278];
    v24 = v15;
    v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v24 forKeys:&v23 count:1];
    v19 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], -50, v18, "[_LSDModifyClient performPostInstallationRegistration:personaUniqueStrings:operationUUID:reply:]_block_invoke", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Server/LSDModifyService.mm", 1649);
    (*(v17 + 16))(v17, 0, 0, v19);
  }

  v20 = *MEMORY[0x1E69E9840];
}

void __97___LSDModifyClient_performPostInstallationRegistration_personaUniqueStrings_operationUUID_reply___block_invoke_2(uint64_t a1, void *a2, void *a3, void *a4)
{
  v10 = a2;
  v7 = a3;
  v8 = a4;
  v9 = _LSDatabaseGetInstallingGroup();
  dispatch_group_leave(v9);

  (*(*(a1 + 32) + 16))();
}

void __118___LSDModifyClient_performPostUninstallationUnregistrationOfBundleID_operationUUID_unregisterType_precondition_reply___block_invoke(uint64_t a1)
{
  v24 = *MEMORY[0x1E69E9840];
  v2 = _LSDatabaseGetInstallingGroup();
  dispatch_group_enter(v2);

  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __118___LSDModifyClient_performPostUninstallationUnregistrationOfBundleID_operationUUID_unregisterType_precondition_reply___block_invoke_2;
  v14[3] = &unk_1E6A1C650;
  v15 = *(a1 + 64);
  v3 = MEMORY[0x1865D71B0](v14);
  v4 = [LSMIResultUnregistrant alloc];
  v5 = objc_alloc_init(LSRegistrantServerStrategy);
  v6 = [(LSMIResultUnregistrant *)v4 initWithContext:v5 operationUUID:*(a1 + 32) bundleIdentifier:*(a1 + 40) precondition:*(a1 + 48) type:*(a1 + 72)];

  v7 = _LSInstallLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = *(a1 + 32);
    v9 = *(a1 + 40);
    v10 = *(a1 + 72);
    v11 = [*(a1 + 56) XPCConnection];
    v12 = [v11 processIdentifier];
    *buf = 138413058;
    v17 = v9;
    v18 = 2112;
    v19 = v8;
    v20 = 2048;
    v21 = v10;
    v22 = 1024;
    v23 = v12;
    _os_log_impl(&dword_18162D000, v7, OS_LOG_TYPE_DEFAULT, "Post uninstallation unregistration: request to unregister %@, operation %@, type %lx from pid %d", buf, 0x26u);
  }

  [(LSMIResultUnregistrant *)v6 runWithCompletion:v3];
  v13 = *MEMORY[0x1E69E9840];
}

void __118___LSDModifyClient_performPostUninstallationUnregistrationOfBundleID_operationUUID_unregisterType_precondition_reply___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  v5 = a3;
  v6 = _LSDatabaseGetInstallingGroup();
  dispatch_group_leave(v6);

  (*(*(a1 + 32) + 16))();
}

void __98___LSDModifyClient_performUpdateOfPersonasOfBundleIDs_toPersonaUniqueStrings_operationUUID_reply___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v126 = *MEMORY[0x1E69E9840];
  v79 = a2;
  v80 = a3;
  v4 = _LSInstallLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = *(a1 + 32);
    v5 = *(a1 + 40);
    v7 = *(a1 + 48);
    v8 = [*(a1 + 56) XPCConnection];
    *buf = 138413058;
    *&buf[4] = v6;
    *&buf[12] = 2112;
    *&buf[14] = v5;
    *&buf[22] = 2112;
    v121 = v7;
    LOWORD(v122) = 2048;
    *(&v122 + 2) = [v8 processIdentifier];
    _os_log_impl(&dword_18162D000, v4, OS_LOG_TYPE_DEFAULT, "operation %@ attempting to set personas %@ for bundleIDs %@ from pid %ld", buf, 0x2Au);
  }

  v107 = 0;
  v104 = 0;
  v105 = 0;
  v106 = 0;
  v9 = +[_LSDServiceDomain defaultServiceDomain];
  v90 = LaunchServices::Database::Context::_get(&v104, v9, 0);

  if (!v90)
  {
    v23 = +[_LSDServiceDomain defaultServiceDomain];
    v24 = LaunchServices::Database::Context::_get(&v104, v23, 0);

    if (v24)
    {
      v25 = 0;
    }

    else
    {
      v25 = v107;
    }

    v46 = *(*(a1 + 64) + 8);
    v47 = *(v46 + 40);
    *(v46 + 40) = v25;

    v48 = _LSInstallLog();
    if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
    {
      __98___LSDModifyClient_performUpdateOfPersonasOfBundleIDs_toPersonaUniqueStrings_operationUUID_reply___block_invoke_cold_2(a1, a1 + 64);
    }

    goto LABEL_75;
  }

  v10 = [*(a1 + 48) objectEnumerator];
  v82 = a1 + 64;
  v11 = *(*(a1 + 64) + 8);
  v12 = *(v11 + 40);
  v13 = v10;
  v101 = 0;
  v102 = 0;
  v100 = 0;
  v103 = 1;
  v111 = 0u;
  v112 = 0u;
  v113 = 0u;
  v114 = 0u;
  obj = v13;
  v14 = [obj countByEnumeratingWithState:&v111 objects:buf count:16];
  location = (v11 + 40);
  v86 = v12;
  if (!v14)
  {
LABEL_16:
    v22 = obj;
    goto LABEL_23;
  }

  v15 = *v112;
LABEL_6:
  v16 = 0;
  while (1)
  {
    if (*v112 != v15)
    {
      objc_enumerationMutation(obj);
    }

    v17 = *(*(&v111 + 1) + 8 * v16);
    LODWORD(v97) = 0;
    *__p = kLSVersionNumberNull;
    v118 = unk_1817E90C0;
    v110 = 0;
    v18 = _LSBundleFindWithInfoAndNo_IOFilter(v90, 0, v17, 0, __p, 2, 128, 0, 0, &v97, 0, &v110);
    v19 = v110;
    if (v18)
    {
      __p[0] = v17;
      LODWORD(__p[1]) = v97;
      std::vector<std::tuple<NSString * {__strong},unsigned int>>::push_back[abi:nn200100](&v100, __p);
    }

    v109 = 0;
    *__p = kLSVersionNumberNull;
    v118 = unk_1817E90C0;
    v108 = v19;
    v20 = _LSBundleFindWithInfoAndNo_IOFilter(v90, 0, v17, 0, __p, 2, 1152, 0, 0, &v109, 0, &v108);
    v21 = v108;

    if (!v20)
    {
      break;
    }

    __p[0] = v17;
    LODWORD(__p[1]) = v109;
    std::vector<std::tuple<NSString * {__strong},unsigned int>>::push_back[abi:nn200100](&v100, __p);

LABEL_14:
    if (v14 == ++v16)
    {
      v14 = [obj countByEnumeratingWithState:&v111 objects:buf count:16];
      if (v14)
      {
        goto LABEL_6;
      }

      goto LABEL_16;
    }
  }

  if (v18)
  {
    goto LABEL_14;
  }

  v26 = [MEMORY[0x1E696AEC0] stringWithFormat:@"No known bundle for %@", v17];
  v115 = *MEMORY[0x1E696A278];
  v116 = v26;
  v27 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v116 forKeys:&v115 count:1];
  v22 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], -10814, v27, "getAffectedBundleInfoForIdentifiers", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Server/LSDModifyService.mm", 1740);

  if (!v22)
  {
    goto LABEL_24;
  }

  if (v103 == 1)
  {
    __p[0] = &v100;
    std::vector<std::tuple<NSString * {__strong},unsigned int>>::__destroy_vector::operator()[abi:nn200100](__p);
    v103 = 0;
  }

  v28 = v22;
  v86 = v22;
LABEL_23:

LABEL_24:
  objc_storeStrong(location, v86);

  if (v103 == 1)
  {
    v81 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithCapacity:{objc_msgSend(*(a1 + 48), "count")}];
    v97 = 0;
    __dst = 0;
    v99 = 0;
    v29 = v100;
    if (v100 == v101)
    {
      v83 = 1;
    }

    else
    {
      v30 = v101;
      v83 = 1;
      do
      {
        v31 = *v29;
        v32 = *(v29 + 8);
        v33 = objc_autoreleasePoolPush();
        v34 = _LSBundleGet(*v90, v32);
        if (v34)
        {
          *buf = 0;
          *&buf[8] = buf;
          *&buf[16] = 0x4812000000;
          v121 = __Block_byref_object_copy__388;
          *&v122 = __Block_byref_object_dispose__389;
          *(&v122 + 1) = &unk_1818533FF;
          v124 = 0;
          v125 = 0;
          v123 = 0;
          [(_LSDatabase *)*v90 store];
          v35 = *(v34 + 480);
          *&v111 = MEMORY[0x1E69E9820];
          *(&v111 + 1) = 3221225472;
          *&v112 = ___ZL23pluginsUnitIDsForBundleP9LSContextPK12LSBundleData_block_invoke;
          *(&v112 + 1) = &unk_1E6A1C740;
          *&v113 = buf;
          _CSArrayEnumerateAllValues();
          std::vector<LSBundleClass>::vector[abi:nn200100](__p, (*&buf[8] + 48));
          _Block_object_dispose(buf, 8);
          if (v123)
          {
            v124 = v123;
            operator delete(v123);
          }

          std::vector<unsigned int>::__insert_with_size[abi:nn200100]<std::__wrap_iter<unsigned int *>,std::__wrap_iter<unsigned int *>>(&v97, __dst, __p[0], __p[1], (__p[1] - __p[0]) >> 2);
          v36 = [LSApplicationExtensionRecord appexRecordsForUnitIDsWithContext:v90 unitIDs:__p];
          v37 = +[_LSInstallProgressService sharedInstance];
          [v37 detachAndSendNotification:@"com.apple.LaunchServices.pluginswillberemoved" forApplicationExtensionRecords:v36];

          v38 = [[LSBundleRecordUpdater alloc] initWithDatabase:*v90 bundleUnit:v32 bundleData:v34];
          v39 = *(a1 + 40);
          v40 = *(*(a1 + 64) + 8);
          v96 = *(v40 + 40);
          LODWORD(v37) = [(LSBundleRecordUpdater *)v38 parsePersonas:v39 error:&v96];
          objc_storeStrong((v40 + 40), v96);
          if (v37 && (v41 = *(*v82 + 8), v95 = *(v41 + 40), v42 = [(LSBundleRecordUpdater *)v38 updateBundleRecord:&v95], objc_storeStrong((v41 + 40), v95), v42))
          {
            [v81 addObject:v31];
            v43 = +[_LSInstallProgressService sharedInstance];
            [v43 detachAndSendNotification:@"com.apple.LaunchServices.pluginsunregistered" forApplicationExtensionRecords:v36];
          }

          else
          {
            v43 = _LSInstallLog();
            if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
            {
              v45 = *(*(*v82 + 8) + 40);
              *buf = 138412802;
              *&buf[4] = v31;
              *&buf[12] = 2048;
              *&buf[14] = v32;
              *&buf[22] = 2112;
              v121 = v45;
              _os_log_error_impl(&dword_18162D000, v43, OS_LOG_TYPE_ERROR, "could not update personas for %@ (bundle unit %llx): %@", buf, 0x20u);
            }

            v83 = 0;
          }

          if (__p[0])
          {
            __p[1] = __p[0];
            operator delete(__p[0]);
          }
        }

        else
        {
          v44 = _LSRegistrationLog();
          if (os_log_type_enabled(v44, OS_LOG_TYPE_FAULT))
          {
            *buf = 134217984;
            *&buf[4] = v32;
            _os_log_fault_impl(&dword_18162D000, v44, OS_LOG_TYPE_FAULT, "Bundle unit %llx went missing after we just enumerated it!", buf, 0xCu);
          }
        }

        objc_autoreleasePoolPop(v33);

        v29 += 16;
      }

      while (v29 != v30);
    }

    v49 = [v81 allObjects];
    obja = [v49 mutableCopy];

    v50 = obja;
    while ([v50 count])
    {
      v87 = objc_autoreleasePoolPush();
      v51 = [obja count];
      if (v51 >= 0xA)
      {
        v52 = 10;
      }

      else
      {
        v52 = v51;
      }

      v53 = [obja subarrayWithRange:{0, v52}];
      __p[0] = MEMORY[0x1E69E9820];
      __p[1] = 3221225472;
      *&v118 = ___ZL45sendPersonaChangedNotificationsForIdentifiersP9LSContextP5NSSetIP8NSStringE_block_invoke;
      *(&v118 + 1) = &__block_descriptor_40_e38___LSApplicationProxy_16__0__NSString_8l;
      v119 = v90;
      v54 = v53;
      v55 = __p;
      v56 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v54, "count")}];
      v113 = 0u;
      v114 = 0u;
      v111 = 0u;
      v112 = 0u;
      v57 = v54;
      v58 = [v57 countByEnumeratingWithState:&v111 objects:buf count:16];
      if (v58)
      {
        v59 = *v112;
        do
        {
          for (i = 0; i != v58; ++i)
          {
            if (*v112 != v59)
            {
              objc_enumerationMutation(v57);
            }

            v61 = (v118)(v55, *(*(&v111 + 1) + 8 * i));
            [v56 addObject:v61];
          }

          v58 = [v57 countByEnumeratingWithState:&v111 objects:buf count:16];
        }

        while (v58);
      }

      v62 = +[_LSInstallProgressService sharedInstance];
      [v62 sendNotification:14 forAppProxies:v56 Plugins:1 completion:0];

      [obja removeObjectsInRange:{0, v52}];
      v50 = obja;
      objc_autoreleasePoolPop(v87);
    }

    v63 = objc_autoreleasePoolPush();
    v64 = [LSApplicationExtensionRecord appexRecordsForUnitIDsWithContext:v90 unitIDs:&v97];
    v65 = +[_LSInstallProgressService sharedInstance];
    [v65 detachAndSendNotification:@"com.apple.LaunchServices.pluginsregistered" forApplicationExtensionRecords:v64];

    objc_autoreleasePoolPop(v63);
    if (v83)
    {
      v66 = _LSInstallLog();
      if (os_log_type_enabled(v66, OS_LOG_TYPE_DEFAULT))
      {
        v67 = *(a1 + 32);
        *buf = 138412290;
        *&buf[4] = v67;
        _os_log_impl(&dword_18162D000, v66, OS_LOG_TYPE_DEFAULT, "operation %@: persona-update succeeded", buf, 0xCu);
      }

      v68 = [[_LSDModificationPendingSaveToken alloc] initWithUUID:*(a1 + 32)];
      v69 = *(*(a1 + 72) + 8);
      v70 = *(v69 + 40);
      *(v69 + 40) = v68;

      v91[0] = MEMORY[0x1E69E9820];
      v91[1] = 3221225472;
      v91[2] = __98___LSDModifyClient_performUpdateOfPersonasOfBundleIDs_toPersonaUniqueStrings_operationUUID_reply___block_invoke_308;
      v91[3] = &unk_1E6A1C6A0;
      v92 = *(a1 + 32);
      v71 = *(a1 + 48);
      v72 = *(a1 + 72);
      v93 = v71;
      v94 = v72;
      _LSArmSaveTimerWithObserver(1, v91);
    }

    else if ([v81 count])
    {
      v73 = _LSInstallLog();
      if (os_log_type_enabled(v73, OS_LOG_TYPE_DEFAULT))
      {
        v74 = *(a1 + 32);
        v75 = [v81 count];
        *buf = 138412546;
        *&buf[4] = v74;
        *&buf[12] = 2048;
        *&buf[14] = v75;
        _os_log_impl(&dword_18162D000, v73, OS_LOG_TYPE_DEFAULT, "operation %@: Not all persona updates were successful, but %zu were, so arming save timer", buf, 0x16u);
      }

      _LSArmSaveTimer(1);
    }

    if (v97)
    {
      __dst = v97;
      operator delete(v97);
    }
  }

  else
  {
    v81 = _LSInstallLog();
    if (os_log_type_enabled(v81, OS_LOG_TYPE_ERROR))
    {
      __98___LSDModifyClient_performUpdateOfPersonasOfBundleIDs_toPersonaUniqueStrings_operationUUID_reply___block_invoke_cold_1(a1, v82);
    }
  }

  if (v103 == 1)
  {
    *buf = &v100;
    std::vector<std::tuple<NSString * {__strong},unsigned int>>::__destroy_vector::operator()[abi:nn200100](buf);
  }

LABEL_75:
  if (v104 && v106 == 1)
  {
    _LSContextDestroy(v104);
  }

  v76 = v105;
  v104 = 0;
  v105 = 0;

  v106 = 0;
  v77 = v107;
  v107 = 0;

  v78 = *MEMORY[0x1E69E9840];
}

void __98___LSDModifyClient_performUpdateOfPersonasOfBundleIDs_toPersonaUniqueStrings_operationUUID_reply___block_invoke_308(void *a1, int a2, uint64_t a3, void *a4)
{
  v22 = *MEMORY[0x1E69E9840];
  v6 = a4;
  v7 = _LSInstallLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = a1[4];
    v9 = a1[5];
    v14 = 138413058;
    v15 = v8;
    v16 = 2112;
    v17 = v9;
    v18 = 1024;
    v19 = a2;
    v20 = 2112;
    v21 = v6;
    _os_log_impl(&dword_18162D000, v7, OS_LOG_TYPE_DEFAULT, "operation %@: Save after update personas for bundles %@ attempted: %d save error: %@", &v14, 0x26u);
  }

  v10 = v6;
  v11 = v10;
  if ((a2 & 1) == 0)
  {
    v12 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A798], 89, 0, "[_LSDModifyClient performUpdateOfPersonasOfBundleIDs:toPersonaUniqueStrings:operationUUID:reply:]_block_invoke", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Server/LSDModifyService.mm", 1856);

    v11 = v12;
  }

  [*(*(a1[6] + 8) + 40) saveDidHappen:v11 == 0 error:v11];

  v13 = *MEMORY[0x1E69E9840];
}

uint64_t __54___LSDModifyClient_forceSaveForTestingWithCompletion___block_invoke(uint64_t a1)
{
  _LSSaveImmediately(3);
  v2 = *(*(a1 + 32) + 16);

  return v2();
}

void __59___LSDModifyClient_requestLSDExitSafely_completionHandler___block_invoke(uint64_t a1, int a2, uint64_t a3, void *a4)
{
  v12 = *MEMORY[0x1E69E9840];
  v6 = a4;
  v7 = _LSDatabaseGetLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v9[0] = 67109378;
    v9[1] = a2;
    v10 = 2114;
    v11 = v6;
    _os_log_impl(&dword_18162D000, v7, OS_LOG_TYPE_INFO, "Arming LS save timer completed, attempted=%{BOOL}d error=%{public}@", v9, 0x12u);
  }

  (*(*(a1 + 40) + 16))(*(a1 + 40), v6 == 0, v6);
  dispatch_semaphore_signal(*(a1 + 32));
  dispatch_async(MEMORY[0x1E69E96A0], &__block_literal_global_311);

  v8 = *MEMORY[0x1E69E9840];
}

void __59___LSDModifyClient_requestLSDExitSafely_completionHandler___block_invoke_309()
{
  v9 = *MEMORY[0x1E69E9840];
  v0 = _LSDefaultLog();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_INFO))
  {
    v6[0] = 67240448;
    v6[1] = getpid();
    v7 = 1026;
    v8 = geteuid();
    _os_log_impl(&dword_18162D000, v0, OS_LOG_TYPE_INFO, "Stopping lsd %{public}d uid %{public}d on request; letting databases complete in-flight operations.", v6, 0xEu);
  }

  MEMORY[0x1865D7C40]();
  v1 = _LSDatabaseGetSeedingGroup();
  dispatch_group_wait(v1, 0xFFFFFFFFFFFFFFFFLL);

  v2 = _LSDatabaseGetInstallingGroup();
  dispatch_group_wait(v2, 0xFFFFFFFFFFFFFFFFLL);

  v3 = _LSDatabaseGetMobileInstallSyncupGroup();
  dispatch_group_wait(v3, 0xFFFFFFFFFFFFFFFFLL);

  v4 = _LSServer_DatabaseExecutionContext();
  [(LSDBExecutionContext *)v4 syncWrite:?];

  v5 = *MEMORY[0x1E69E9840];
}

void __59___LSDModifyClient_requestLSDExitSafely_completionHandler___block_invoke_312(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  _LSSaveImmediately(1);
  MEMORY[0x1865D7C50]();
  v6 = _LSDefaultLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&dword_18162D000, v6, OS_LOG_TYPE_DEFAULT, "LaunchServices: Exiting after request to stop lsd and flushing databases.", v7, 2u);
  }

  exit(0);
}

void __75___LSDModifyClient_unregisterApplicationsAtMountPoint_operationUUID_reply___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_5_2();
  OUTLINED_FUNCTION_7_2(v1, v2, 5.7779e-34);
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0xCu);
}

void __75___LSDModifyClient_unregisterApplicationsAtMountPoint_operationUUID_reply___block_invoke_cold_2(void *a1, uint64_t a2, uint8_t *buf, os_log_t log)
{
  *buf = 138412546;
  *(buf + 4) = a1;
  *(buf + 6) = 2112;
  *(buf + 14) = a2;
  _os_log_error_impl(&dword_18162D000, log, OS_LOG_TYPE_ERROR, "Failed to deregister applications at mount point: %@ error: %@", buf, 0x16u);
}

void __75___LSDModifyClient_unregisterApplicationsAtMountPoint_operationUUID_reply___block_invoke_cold_3()
{
  OUTLINED_FUNCTION_5_2();
  OUTLINED_FUNCTION_7_2(v1, v2, 5.7779e-34);
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0xCu);
}

void __75___LSDModifyClient_unregisterApplicationsAtMountPoint_operationUUID_reply___block_invoke_cold_4()
{
  OUTLINED_FUNCTION_5_2();
  OUTLINED_FUNCTION_7_2(v1, v2, 5.7779e-34);
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0xCu);
}

void __85___LSDModifyClient_setPreferenceValueForCallingApplication_forKey_completionHandler___block_invoke_cold_1(uint64_t *a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v7 = *a1;
  OUTLINED_FUNCTION_7();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x1E69E9840];
}

void __85___LSDModifyClient_setPreferenceValueForCallingApplication_forKey_completionHandler___block_invoke_cold_2()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2_7();
  OUTLINED_FUNCTION_7();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x1E69E9840];
}

void __98___LSDModifyClient_performUpdateOfPersonasOfBundleIDs_toPersonaUniqueStrings_operationUUID_reply___block_invoke_cold_1(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_4_2(a1, a2, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_2_7();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
  v7 = *MEMORY[0x1E69E9840];
}

void __98___LSDModifyClient_performUpdateOfPersonasOfBundleIDs_toPersonaUniqueStrings_operationUUID_reply___block_invoke_cold_2(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_4_2(a1, a2, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_2_7();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
  v7 = *MEMORY[0x1E69E9840];
}

@end