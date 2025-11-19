@interface _LSDOpenClient
- (void)failedToOpenApplication:(id)a3 withURL:(id)a4 completionHandler:(id)a5;
- (void)getURLOverrideForURL:(id)a3 completionHandler:(id)a4;
- (void)getiCloudHostNamesWithCompletionHandler:(id)a3;
- (void)invokeServiceInvocation:(id)a3 isReply:(BOOL)a4;
- (void)openAppLink:(id)a3 state:(id)a4 completionHandler:(id)a5;
- (void)openApplicationWithIdentifier:(id)a3 options:(id)a4 useClientProcessHandle:(BOOL)a5 completionHandler:(id)a6;
- (void)openURL:(id)a3 fileHandle:(id)a4 options:(id)a5 completionHandler:(id)a6;
- (void)openUserActivityWithUniqueIdentifier:(id)a3 activityData:(id)a4 activityType:(id)a5 bundleIdentifier:(id)a6 options:(id)a7 completionHandler:(id)a8;
- (void)performOpenOperationWithURL:(id)a3 fileHandle:(id)a4 bundleIdentifier:(id)a5 documentIdentifier:(id)a6 isContentManaged:(BOOL)a7 sourceAuditToken:(id *)a8 userInfo:(id)a9 options:(id)a10 delegate:(id)a11 completionHandler:(id)a12;
- (void)updateRestrictionKnowledgeWithCompletionHandler:(id)a3;
@end

@implementation _LSDOpenClient

- (void)invokeServiceInvocation:(id)a3 isReply:(BOOL)a4
{
  v6 = a3;
  v7 = v6;
  if (a4 || !-[_LSDOpenClient serviceSelectorRequiresDatabaseContext:](self, "serviceSelectorRequiresDatabaseContext:", [v6 selector]))
  {
    [v7 invoke];
  }

  else
  {
    v8 = _LSServer_DatabaseExecutionContext();
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __50___LSDOpenClient_invokeServiceInvocation_isReply___block_invoke;
    v9[3] = &unk_1E6A18EB0;
    v10 = v7;
    [(LSDBExecutionContext *)v8 syncRead:v9];
  }
}

- (void)performOpenOperationWithURL:(id)a3 fileHandle:(id)a4 bundleIdentifier:(id)a5 documentIdentifier:(id)a6 isContentManaged:(BOOL)a7 sourceAuditToken:(id *)a8 userInfo:(id)a9 options:(id)a10 delegate:(id)a11 completionHandler:(id)a12
{
  v53 = *MEMORY[0x1E69E9840];
  v17 = a3;
  v37 = a4;
  v39 = a5;
  v18 = a6;
  v19 = a9;
  v20 = a10;
  v38 = a11;
  v21 = a12;
  _LSAssertRunningInServer("[_LSDOpenClient performOpenOperationWithURL:fileHandle:bundleIdentifier:documentIdentifier:isContentManaged:sourceAuditToken:userInfo:options:delegate:completionHandler:]");
  v22 = _LSOpenLog();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    v23 = [(_LSDClient *)self XPCConnection];
    v24 = [v23 processIdentifier];
    if (a8)
    {
      v25 = *&a8->var0[4];
      *atoken.val = *a8->var0;
      *&atoken.val[4] = v25;
      v26 = audit_token_to_pid(&atoken);
    }

    else
    {
      v26 = 0;
    }

    *buf = 134219010;
    v44 = v24;
    v45 = 2112;
    v46 = v17;
    v47 = 2112;
    v48 = v39;
    v49 = 2112;
    v50 = v18;
    v51 = 2048;
    v52 = v26;
    _os_log_impl(&dword_18162D000, v22, OS_LOG_TYPE_DEFAULT, "pid %ld issuing open of %@ by %@, doc %@ on behalf of %ld", buf, 0x34u);
  }

  if (!v17)
  {
    goto LABEL_14;
  }

  v27 = [v17 scheme];
  v28 = v27 != 0;

  v29 = v28 ^ 1;
  if (!v19)
  {
    v29 = 1;
  }

  if ((v29 & 1) == 0)
  {
    v30 = [MEMORY[0x1E695DFD8] setWithObject:objc_opt_class()];
    v28 = _LSIsDictionaryWithKeysAndValuesOfClasses(v19, v30, 0);
  }

  if (!v20 || !v28)
  {
    if (!v28)
    {
      goto LABEL_14;
    }

LABEL_16:
    v33 = [(_LSDClient *)self XPCConnection];
    _LSServer_PerformOpenOperation(v17, v37, v39, a7, a8, v18, v19, v20, v38, v33, v21);
    goto LABEL_17;
  }

  v31 = [MEMORY[0x1E695DFD8] setWithObject:objc_opt_class()];
  v32 = _LSIsDictionaryWithKeysAndValuesOfClasses(v20, v31, 0);

  if (v32)
  {
    goto LABEL_16;
  }

LABEL_14:
  v41 = *MEMORY[0x1E696A278];
  v42 = @"invalid input parameters";
  v33 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v42 forKeys:&v41 count:1];
  v34 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], -50, v33, "[_LSDOpenClient performOpenOperationWithURL:fileHandle:bundleIdentifier:documentIdentifier:isContentManaged:sourceAuditToken:userInfo:options:delegate:completionHandler:]", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Server/LSDOpenService.mm", 213);
  (*(v21 + 2))(v21, 0, v34);

LABEL_17:
  v35 = *MEMORY[0x1E69E9840];
}

- (void)openApplicationWithIdentifier:(id)a3 options:(id)a4 useClientProcessHandle:(BOOL)a5 completionHandler:(id)a6
{
  v7 = a5;
  v27 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  v12 = a6;
  _LSAssertRunningInServer("[_LSDOpenClient openApplicationWithIdentifier:options:useClientProcessHandle:completionHandler:]");
  v13 = _LSOpenLog();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v14 = [(_LSDClient *)self XPCConnection];
    *buf = 134218242;
    v24 = [v14 processIdentifier];
    v25 = 2112;
    v26 = v10;
    _os_log_impl(&dword_18162D000, v13, OS_LOG_TYPE_DEFAULT, "pid %ld requests to open application with identifier %@", buf, 0x16u);
  }

  v15 = _os_feature_enabled_impl();
  v16 = v15 | v7;
  if (v15 && !v7)
  {
    v17 = _LSOpenLog();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_18162D000, v17, OS_LOG_TYPE_INFO, "using client process handle even though the client asked not to", buf, 2u);
    }

    v16 = 1;
  }

  if (v10)
  {
    v18 = [(_LSDClient *)self XPCConnection];
    _LSServer_OpenApplication(v10, v11, v18, v16, v12);
  }

  else
  {
    v21 = *MEMORY[0x1E696A278];
    v22 = @"identifier";
    v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v22 forKeys:&v21 count:1];
    v19 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], -50, v18, "[_LSDOpenClient openApplicationWithIdentifier:options:useClientProcessHandle:completionHandler:]", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Server/LSDOpenService.mm", 237);
    (*(v12 + 2))(v12, 0, v19);
  }

  v20 = *MEMORY[0x1E69E9840];
}

- (void)openURL:(id)a3 fileHandle:(id)a4 options:(id)a5 completionHandler:(id)a6
{
  v41 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  _LSAssertRunningInServer("[_LSDOpenClient openURL:fileHandle:options:completionHandler:]");
  v14 = _LSOpenLog();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v15 = [(_LSDClient *)self XPCConnection];
    v16 = [v15 processIdentifier];
    v17 = [v10 scheme];
    *buf = 134349315;
    v38 = v16;
    v39 = 2113;
    v40 = v17;
    _os_log_impl(&dword_18162D000, v14, OS_LOG_TYPE_DEFAULT, "pid %{public}ld requests to open URL with scheme %{private}@", buf, 0x16u);
  }

  if (!v10)
  {
    goto LABEL_9;
  }

  v18 = [v10 scheme];

  if (v12)
  {
    v19 = v18 == 0;
  }

  else
  {
    v19 = 1;
  }

  if (v19)
  {
    if (!v18)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v20 = [MEMORY[0x1E695DFD8] setWithObject:objc_opt_class()];
    v21 = _LSIsDictionaryWithKeysAndValuesOfClasses(v12, v20, 0);

    if ((v21 & 1) == 0)
    {
LABEL_9:
      v22 = _LSOpenLog();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v38 = v10;
        _os_log_impl(&dword_18162D000, v22, OS_LOG_TYPE_DEFAULT, "ERROR: paramError, cannot open URL %@", buf, 0xCu);
      }

      v35 = *MEMORY[0x1E696A278];
      v36 = @"invalid input parameters";
      v23 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v36 forKeys:&v35 count:1];
      v24 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], -50, v23, "[_LSDOpenClient openURL:fileHandle:options:completionHandler:]", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Server/LSDOpenService.mm", 288);
      v13[2](v13, 0, v24);
LABEL_12:

      goto LABEL_13;
    }
  }

  if (![v10 isFileURL])
  {
    v27 = objc_opt_class();
    v28 = [v12 objectForKey:@"LSOpenSensitiveURLOption"];
    v29 = v28;
    if (v27 && v28 && (objc_opt_isKindOfClass() & 1) == 0)
    {

      v29 = 0;
    }

    v30 = [v29 BOOLValue];

    v31 = +[LSApplicationWorkspace defaultWorkspace];
    LOBYTE(v30) = [v31 isApplicationAvailableToOpenURL:v10 includePrivateURLSchemes:v30 error:0];

    v32 = [v10 scheme];
    v23 = v32;
    if ((v30 & 1) == 0 && [v32 caseInsensitiveCompare:@"search"] && objc_msgSend(v23, "caseInsensitiveCompare:", @"com-apple-audiounit"))
    {
      v33 = _LSOpenLog();
      if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
      {
        v34 = [v10 scheme];
        *buf = 138412290;
        v38 = v34;
        _os_log_impl(&dword_18162D000, v33, OS_LOG_TYPE_DEFAULT, "ERROR: There is no registered handler for URL scheme %@", buf, 0xCu);
      }

      v24 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], -10814, 0, "[_LSDOpenClient openURL:fileHandle:options:completionHandler:]", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Server/LSDOpenService.mm", 282);
      v13[2](v13, 0, v24);
    }

    else
    {
      v24 = [(_LSDClient *)self XPCConnection];
      _LSServer_PerformOpenOperation(v10, v11, 0, 0, 0, 0, 0, v12, 0, v24, v13);
    }

    goto LABEL_12;
  }

  v26 = _LSOpenLog();
  if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_18162D000, v26, OS_LOG_TYPE_DEFAULT, "opening file: URL via simple openURL: path.", buf, 2u);
  }

  v23 = [(_LSDClient *)self XPCConnection];
  _LSServer_PerformOpenOperation(v10, v11, 0, 0, 0, 0, 0, v12, 0, v23, v13);
LABEL_13:

  v25 = *MEMORY[0x1E69E9840];
}

- (void)openUserActivityWithUniqueIdentifier:(id)a3 activityData:(id)a4 activityType:(id)a5 bundleIdentifier:(id)a6 options:(id)a7 completionHandler:(id)a8
{
  v44 = *MEMORY[0x1E69E9840];
  v14 = a3;
  v33 = a4;
  v15 = a5;
  v16 = a6;
  v17 = a7;
  v18 = a8;
  _LSAssertRunningInServer("[_LSDOpenClient openUserActivityWithUniqueIdentifier:activityData:activityType:bundleIdentifier:options:completionHandler:]");
  v19 = _LSOpenLog();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    v20 = [(_LSDClient *)self XPCConnection];
    *buf = 134218498;
    v39 = [v20 processIdentifier];
    v40 = 2112;
    v41 = v14;
    v42 = 2112;
    v43 = v15;
    _os_log_impl(&dword_18162D000, v19, OS_LOG_TYPE_DEFAULT, "pid %ld opening user activity %@ of type %@", buf, 0x20u);
  }

  if (v14 | v33)
  {
    v21 = v15 == 0;
  }

  else
  {
    v21 = 1;
  }

  v22 = v21 || v16 == 0;
  v23 = !v22;
  if (v22 || !v17)
  {
    if (!v23)
    {
      goto LABEL_15;
    }
  }

  else
  {
    v24 = [MEMORY[0x1E695DFD8] setWithObject:objc_opt_class()];
    v25 = _LSIsDictionaryWithKeysAndValuesOfClasses(v17, v24, 0);

    if ((v25 & 1) == 0)
    {
LABEL_15:
      v34 = *MEMORY[0x1E696A278];
      v35 = @"invalid input parameters";
      v26 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v35 forKeys:&v34 count:1];
      v27 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], -50, v26, "[_LSDOpenClient openUserActivityWithUniqueIdentifier:activityData:activityType:bundleIdentifier:options:completionHandler:]", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Server/LSDOpenService.mm", 333);
      v18[2](v18, 0, v27);
LABEL_23:

      goto LABEL_24;
    }
  }

  v28 = [(_LSDClient *)self XPCConnection];
  v29 = [v28 _xpcConnection];
  v30 = _LSCheckEntitlementForXPCConnection(v29, @"com.apple.private.coreservices.canopenactivity") == 0;

  if (v30)
  {
    if (@"com.apple.private.coreservices.canopenactivity")
    {
      v31 = @"com.apple.private.coreservices.canopenactivity";
    }

    else
    {
      v31 = @"unknown entitlement";
    }

    v36 = *MEMORY[0x1E696A278];
    v37 = v31;
    v26 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v37 forKeys:&v36 count:1];
    v27 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], -54, v26, "[_LSDOpenClient openUserActivityWithUniqueIdentifier:activityData:activityType:bundleIdentifier:options:completionHandler:]", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Server/LSDOpenService.mm", 329);
    v18[2](v18, 0, v27);
    goto LABEL_23;
  }

  v26 = [(_LSDClient *)self XPCConnection];
  _LSServer_OpenUserActivity(v14, v33, v15, 0, v16, 0, 0, v17, v26, v18);
LABEL_24:

  v32 = *MEMORY[0x1E69E9840];
}

- (void)getURLOverrideForURL:(id)a3 completionHandler:(id)a4
{
  v14[1] = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  _LSAssertRunningInServer("[_LSDOpenClient getURLOverrideForURL:completionHandler:]");
  if (v5)
  {
    v7 = [[_LSURLOverride alloc] initWithOriginalURL:v5];
    v8 = v7;
    if (v7)
    {
      v9 = [(_LSURLOverride *)v7 overrideURL];
    }

    else
    {
      v9 = 0;
    }

    v6[2](v6, v9, 0);
  }

  else
  {
    v13 = *MEMORY[0x1E696A278];
    v14[0] = @"invalid input URL";
    v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:&v13 count:1];
    v11 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], -50, v10, "[_LSDOpenClient getURLOverrideForURL:completionHandler:]", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Server/LSDOpenService.mm", 371);
    (v6)[2](v6, 0, v11);
  }

  v12 = *MEMORY[0x1E69E9840];
}

- (void)getiCloudHostNamesWithCompletionHandler:(id)a3
{
  v3 = a3;
  _LSAssertRunningInServer("[_LSDOpenClient getiCloudHostNamesWithCompletionHandler:]");
  v4 = _LSServer_GetIOQueue();
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __58___LSDOpenClient_getiCloudHostNamesWithCompletionHandler___block_invoke;
  block[3] = &unk_1E6A1C820;
  v7 = v3;
  v5 = v3;
  dispatch_async(v4, block);
}

- (void)openAppLink:(id)a3 state:(id)a4 completionHandler:(id)a5
{
  v38 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  _LSAssertRunningInServer("[_LSDOpenClient openAppLink:state:completionHandler:]");
  v11 = _LSOpenLog();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = [(_LSDClient *)self XPCConnection];
    *buf = 134218498;
    v33 = [v12 processIdentifier];
    v34 = 2112;
    v35 = v8;
    v36 = 2112;
    v37 = v9;
    _os_log_impl(&dword_18162D000, v11, OS_LOG_TYPE_DEFAULT, "pid %ld opening app link %@ %@", buf, 0x20u);
  }

  if (v8 && (-[_LSDClient XPCConnection](self, "XPCConnection"), v13 = objc_claimAutoreleasedReturnValue(), [v13 _xpcConnection], v14 = objc_claimAutoreleasedReturnValue(), v15 = _LSXPCConnectionMayMapDatabase(v14) == 0, v14, v13, v15))
  {
    v30 = *MEMORY[0x1E696A278];
    v31 = @"process may not map database";
    v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v31 forKeys:&v30 count:1];
    v22 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], -54, v20, "[_LSDOpenClient openAppLink:state:completionHandler:]", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Server/LSDOpenService.mm", 398);
    v10[2](v10, 0, v22);
  }

  else if (!v9 || ([v9 URL], v16 = objc_claimAutoreleasedReturnValue(), v17 = v16 == 0, v16, v17))
  {
    v28 = *MEMORY[0x1E696A278];
    v29 = @"openState";
    v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v29 forKeys:&v28 count:1];
    v21 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], -50, v20, "[_LSDOpenClient openAppLink:state:completionHandler:]", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Server/LSDOpenService.mm", 410);
    v10[2](v10, 0, v21);
  }

  else
  {
    v18 = [(_LSDClient *)self XPCConnection];
    [v9 setXPCConnection:v18];

    v19 = +[LSAppLink _dispatchQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __54___LSDOpenClient_openAppLink_state_completionHandler___block_invoke;
    block[3] = &unk_1E6A193B8;
    v25 = v8;
    v26 = v9;
    v27 = v10;
    dispatch_async(v19, block);

    v20 = v25;
  }

  v23 = *MEMORY[0x1E69E9840];
}

- (void)failedToOpenApplication:(id)a3 withURL:(id)a4 completionHandler:(id)a5
{
  v31[1] = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  _LSAssertRunningInServer("[_LSDOpenClient failedToOpenApplication:withURL:completionHandler:]");
  v11 = [(_LSDClient *)self XPCConnection];
  v12 = [v11 _xpcConnection];
  v13 = _LSXPCConnectionMayMapDatabase(v12);

  if (v13)
  {
    v29 = 0;
    v26 = 0;
    v27 = 0;
    v28 = 0;
    v14 = +[_LSDServiceDomain defaultServiceDomain];
    v15 = LaunchServices::Database::Context::_get(&v26, v14, 0);

    if (v15)
    {
      _LSServer_DisplayRemovedAppPrompt(v15, v8, v9, v10);
    }

    else
    {
      v20 = +[_LSDServiceDomain defaultServiceDomain];
      v21 = LaunchServices::Database::Context::_get(&v26, v20, 0);

      if (v21)
      {
        v22 = 0;
      }

      else
      {
        v22 = v29;
      }

      (*(v10 + 2))(v10, 0, v22);
    }

    if (v26 && v28 == 1)
    {
      _LSContextDestroy(v26);
    }

    v23 = v27;
    v26 = 0;
    v27 = 0;

    v28 = 0;
    v24 = v29;
    v29 = 0;
  }

  else
  {
    v16 = _LSOpenLog();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v17 = [(_LSDClient *)self XPCConnection];
      -[_LSDOpenClient failedToOpenApplication:withURL:completionHandler:].cold.1([v17 processIdentifier], &v26, v16, v17);
    }

    v30 = *MEMORY[0x1E696A278];
    v31[0] = @"process may not map database";
    v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v31 forKeys:&v30 count:1];
    v19 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], -54, v18, "[_LSDOpenClient failedToOpenApplication:withURL:completionHandler:]", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Server/LSDOpenService.mm", 422);
    (*(v10 + 2))(v10, 0, v19);
  }

  v25 = *MEMORY[0x1E69E9840];
}

- (void)updateRestrictionKnowledgeWithCompletionHandler:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(_LSDClient *)self XPCConnection];
  v6 = _LSCheckEntitlementForNSXPCConnection(v5, @"com.apple.lsapplicationworkspace.restrictions");

  if (v6)
  {
    v7 = +[LSDBExecutionContext sharedServerInstance];
    [(LSDBExecutionContext *)v7 assertNotActiveForThisThread];

    v8 = _LSDefaultLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = [(_LSDClient *)self XPCConnection];
      *buf = 134217984;
      v18 = [v9 processIdentifier];
      _os_log_impl(&dword_18162D000, v8, OS_LOG_TYPE_DEFAULT, "Pid %ld is forcing restriction knowledge update!", buf, 0xCu);
    }

    v10 = +[LSApplicationRestrictionsManager sharedInstance];
    v11 = [LSApplicationRestrictionsManager forceUpdateRestrictionKnowledgeWithError:v10];
    v12 = 0;

    if (v11)
    {
      v13 = 0;
    }

    else
    {
      v15 = _LSDefaultLog();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        [(_LSDOpenClient *)v12 updateRestrictionKnowledgeWithCompletionHandler:v15];
      }

      v13 = v12;
    }

    (v4)[2](v4, v11, v13);
  }

  else
  {
    v14 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], -54, 0, "[_LSDOpenClient updateRestrictionKnowledgeWithCompletionHandler:]", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Server/LSDOpenService.mm", 451);
    (v4)[2](v4, 0, v14);
  }

  v16 = *MEMORY[0x1E69E9840];
}

- (void)failedToOpenApplication:(os_log_t)log withURL:(void *)a4 completionHandler:.cold.1(int a1, uint8_t *buf, os_log_t log, void *a4)
{
  *buf = 134217984;
  *(buf + 4) = a1;
  _os_log_error_impl(&dword_18162D000, log, OS_LOG_TYPE_ERROR, "**ERROR** process MAY NOT MAP DATABASE! Ignoring failed URL from pid %llu", buf, 0xCu);
}

- (void)updateRestrictionKnowledgeWithCompletionHandler:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_18162D000, a2, OS_LOG_TYPE_ERROR, "error forcing restriction knowledge update: %@", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

@end