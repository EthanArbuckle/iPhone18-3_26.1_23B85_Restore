@interface _LSDOpenClient
- (void)failedToOpenApplication:(id)application withURL:(id)l completionHandler:(id)handler;
- (void)getURLOverrideForURL:(id)l completionHandler:(id)handler;
- (void)getiCloudHostNamesWithCompletionHandler:(id)handler;
- (void)invokeServiceInvocation:(id)invocation isReply:(BOOL)reply;
- (void)openAppLink:(id)link state:(id)state completionHandler:(id)handler;
- (void)openApplicationWithIdentifier:(id)identifier options:(id)options useClientProcessHandle:(BOOL)handle completionHandler:(id)handler;
- (void)openURL:(id)l fileHandle:(id)handle options:(id)options completionHandler:(id)handler;
- (void)openUserActivityWithUniqueIdentifier:(id)identifier activityData:(id)data activityType:(id)type bundleIdentifier:(id)bundleIdentifier options:(id)options completionHandler:(id)handler;
- (void)performOpenOperationWithURL:(id)l fileHandle:(id)handle bundleIdentifier:(id)identifier documentIdentifier:(id)documentIdentifier isContentManaged:(BOOL)managed sourceAuditToken:(id *)token userInfo:(id)info options:(id)self0 delegate:(id)self1 completionHandler:(id)self2;
- (void)updateRestrictionKnowledgeWithCompletionHandler:(id)handler;
@end

@implementation _LSDOpenClient

- (void)invokeServiceInvocation:(id)invocation isReply:(BOOL)reply
{
  invocationCopy = invocation;
  v7 = invocationCopy;
  if (reply || !-[_LSDOpenClient serviceSelectorRequiresDatabaseContext:](self, "serviceSelectorRequiresDatabaseContext:", [invocationCopy selector]))
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

- (void)performOpenOperationWithURL:(id)l fileHandle:(id)handle bundleIdentifier:(id)identifier documentIdentifier:(id)documentIdentifier isContentManaged:(BOOL)managed sourceAuditToken:(id *)token userInfo:(id)info options:(id)self0 delegate:(id)self1 completionHandler:(id)self2
{
  v53 = *MEMORY[0x1E69E9840];
  lCopy = l;
  handleCopy = handle;
  identifierCopy = identifier;
  documentIdentifierCopy = documentIdentifier;
  infoCopy = info;
  optionsCopy = options;
  delegateCopy = delegate;
  handlerCopy = handler;
  _LSAssertRunningInServer("[_LSDOpenClient performOpenOperationWithURL:fileHandle:bundleIdentifier:documentIdentifier:isContentManaged:sourceAuditToken:userInfo:options:delegate:completionHandler:]");
  v22 = _LSOpenLog();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    xPCConnection = [(_LSDClient *)self XPCConnection];
    processIdentifier = [xPCConnection processIdentifier];
    if (token)
    {
      v25 = *&token->var0[4];
      *atoken.val = *token->var0;
      *&atoken.val[4] = v25;
      v26 = audit_token_to_pid(&atoken);
    }

    else
    {
      v26 = 0;
    }

    *buf = 134219010;
    v44 = processIdentifier;
    v45 = 2112;
    v46 = lCopy;
    v47 = 2112;
    v48 = identifierCopy;
    v49 = 2112;
    v50 = documentIdentifierCopy;
    v51 = 2048;
    v52 = v26;
    _os_log_impl(&dword_18162D000, v22, OS_LOG_TYPE_DEFAULT, "pid %ld issuing open of %@ by %@, doc %@ on behalf of %ld", buf, 0x34u);
  }

  if (!lCopy)
  {
    goto LABEL_14;
  }

  scheme = [lCopy scheme];
  v28 = scheme != 0;

  v29 = v28 ^ 1;
  if (!infoCopy)
  {
    v29 = 1;
  }

  if ((v29 & 1) == 0)
  {
    v30 = [MEMORY[0x1E695DFD8] setWithObject:objc_opt_class()];
    v28 = _LSIsDictionaryWithKeysAndValuesOfClasses(infoCopy, v30, 0);
  }

  if (!optionsCopy || !v28)
  {
    if (!v28)
    {
      goto LABEL_14;
    }

LABEL_16:
    xPCConnection2 = [(_LSDClient *)self XPCConnection];
    _LSServer_PerformOpenOperation(lCopy, handleCopy, identifierCopy, managed, token, documentIdentifierCopy, infoCopy, optionsCopy, delegateCopy, xPCConnection2, handlerCopy);
    goto LABEL_17;
  }

  v31 = [MEMORY[0x1E695DFD8] setWithObject:objc_opt_class()];
  v32 = _LSIsDictionaryWithKeysAndValuesOfClasses(optionsCopy, v31, 0);

  if (v32)
  {
    goto LABEL_16;
  }

LABEL_14:
  v41 = *MEMORY[0x1E696A278];
  v42 = @"invalid input parameters";
  xPCConnection2 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v42 forKeys:&v41 count:1];
  v34 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], -50, xPCConnection2, "[_LSDOpenClient performOpenOperationWithURL:fileHandle:bundleIdentifier:documentIdentifier:isContentManaged:sourceAuditToken:userInfo:options:delegate:completionHandler:]", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Server/LSDOpenService.mm", 213);
  (*(handlerCopy + 2))(handlerCopy, 0, v34);

LABEL_17:
  v35 = *MEMORY[0x1E69E9840];
}

- (void)openApplicationWithIdentifier:(id)identifier options:(id)options useClientProcessHandle:(BOOL)handle completionHandler:(id)handler
{
  handleCopy = handle;
  v27 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  optionsCopy = options;
  handlerCopy = handler;
  _LSAssertRunningInServer("[_LSDOpenClient openApplicationWithIdentifier:options:useClientProcessHandle:completionHandler:]");
  v13 = _LSOpenLog();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    xPCConnection = [(_LSDClient *)self XPCConnection];
    *buf = 134218242;
    processIdentifier = [xPCConnection processIdentifier];
    v25 = 2112;
    v26 = identifierCopy;
    _os_log_impl(&dword_18162D000, v13, OS_LOG_TYPE_DEFAULT, "pid %ld requests to open application with identifier %@", buf, 0x16u);
  }

  v15 = _os_feature_enabled_impl();
  v16 = v15 | handleCopy;
  if (v15 && !handleCopy)
  {
    v17 = _LSOpenLog();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_18162D000, v17, OS_LOG_TYPE_INFO, "using client process handle even though the client asked not to", buf, 2u);
    }

    v16 = 1;
  }

  if (identifierCopy)
  {
    xPCConnection2 = [(_LSDClient *)self XPCConnection];
    _LSServer_OpenApplication(identifierCopy, optionsCopy, xPCConnection2, v16, handlerCopy);
  }

  else
  {
    v21 = *MEMORY[0x1E696A278];
    v22 = @"identifier";
    xPCConnection2 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v22 forKeys:&v21 count:1];
    v19 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], -50, xPCConnection2, "[_LSDOpenClient openApplicationWithIdentifier:options:useClientProcessHandle:completionHandler:]", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Server/LSDOpenService.mm", 237);
    (*(handlerCopy + 2))(handlerCopy, 0, v19);
  }

  v20 = *MEMORY[0x1E69E9840];
}

- (void)openURL:(id)l fileHandle:(id)handle options:(id)options completionHandler:(id)handler
{
  v41 = *MEMORY[0x1E69E9840];
  lCopy = l;
  handleCopy = handle;
  optionsCopy = options;
  handlerCopy = handler;
  _LSAssertRunningInServer("[_LSDOpenClient openURL:fileHandle:options:completionHandler:]");
  v14 = _LSOpenLog();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    xPCConnection = [(_LSDClient *)self XPCConnection];
    processIdentifier = [xPCConnection processIdentifier];
    scheme = [lCopy scheme];
    *buf = 134349315;
    v38 = processIdentifier;
    v39 = 2113;
    v40 = scheme;
    _os_log_impl(&dword_18162D000, v14, OS_LOG_TYPE_DEFAULT, "pid %{public}ld requests to open URL with scheme %{private}@", buf, 0x16u);
  }

  if (!lCopy)
  {
    goto LABEL_9;
  }

  scheme2 = [lCopy scheme];

  if (optionsCopy)
  {
    v19 = scheme2 == 0;
  }

  else
  {
    v19 = 1;
  }

  if (v19)
  {
    if (!scheme2)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v20 = [MEMORY[0x1E695DFD8] setWithObject:objc_opt_class()];
    v21 = _LSIsDictionaryWithKeysAndValuesOfClasses(optionsCopy, v20, 0);

    if ((v21 & 1) == 0)
    {
LABEL_9:
      v22 = _LSOpenLog();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v38 = lCopy;
        _os_log_impl(&dword_18162D000, v22, OS_LOG_TYPE_DEFAULT, "ERROR: paramError, cannot open URL %@", buf, 0xCu);
      }

      v35 = *MEMORY[0x1E696A278];
      v36 = @"invalid input parameters";
      xPCConnection3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v36 forKeys:&v35 count:1];
      xPCConnection2 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], -50, xPCConnection3, "[_LSDOpenClient openURL:fileHandle:options:completionHandler:]", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Server/LSDOpenService.mm", 288);
      handlerCopy[2](handlerCopy, 0, xPCConnection2);
LABEL_12:

      goto LABEL_13;
    }
  }

  if (![lCopy isFileURL])
  {
    v27 = objc_opt_class();
    v28 = [optionsCopy objectForKey:@"LSOpenSensitiveURLOption"];
    v29 = v28;
    if (v27 && v28 && (objc_opt_isKindOfClass() & 1) == 0)
    {

      v29 = 0;
    }

    bOOLValue = [v29 BOOLValue];

    v31 = +[LSApplicationWorkspace defaultWorkspace];
    LOBYTE(bOOLValue) = [v31 isApplicationAvailableToOpenURL:lCopy includePrivateURLSchemes:bOOLValue error:0];

    scheme3 = [lCopy scheme];
    xPCConnection3 = scheme3;
    if ((bOOLValue & 1) == 0 && [scheme3 caseInsensitiveCompare:@"search"] && objc_msgSend(xPCConnection3, "caseInsensitiveCompare:", @"com-apple-audiounit"))
    {
      v33 = _LSOpenLog();
      if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
      {
        scheme4 = [lCopy scheme];
        *buf = 138412290;
        v38 = scheme4;
        _os_log_impl(&dword_18162D000, v33, OS_LOG_TYPE_DEFAULT, "ERROR: There is no registered handler for URL scheme %@", buf, 0xCu);
      }

      xPCConnection2 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], -10814, 0, "[_LSDOpenClient openURL:fileHandle:options:completionHandler:]", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Server/LSDOpenService.mm", 282);
      handlerCopy[2](handlerCopy, 0, xPCConnection2);
    }

    else
    {
      xPCConnection2 = [(_LSDClient *)self XPCConnection];
      _LSServer_PerformOpenOperation(lCopy, handleCopy, 0, 0, 0, 0, 0, optionsCopy, 0, xPCConnection2, handlerCopy);
    }

    goto LABEL_12;
  }

  v26 = _LSOpenLog();
  if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_18162D000, v26, OS_LOG_TYPE_DEFAULT, "opening file: URL via simple openURL: path.", buf, 2u);
  }

  xPCConnection3 = [(_LSDClient *)self XPCConnection];
  _LSServer_PerformOpenOperation(lCopy, handleCopy, 0, 0, 0, 0, 0, optionsCopy, 0, xPCConnection3, handlerCopy);
LABEL_13:

  v25 = *MEMORY[0x1E69E9840];
}

- (void)openUserActivityWithUniqueIdentifier:(id)identifier activityData:(id)data activityType:(id)type bundleIdentifier:(id)bundleIdentifier options:(id)options completionHandler:(id)handler
{
  v44 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  dataCopy = data;
  typeCopy = type;
  bundleIdentifierCopy = bundleIdentifier;
  optionsCopy = options;
  handlerCopy = handler;
  _LSAssertRunningInServer("[_LSDOpenClient openUserActivityWithUniqueIdentifier:activityData:activityType:bundleIdentifier:options:completionHandler:]");
  v19 = _LSOpenLog();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    xPCConnection = [(_LSDClient *)self XPCConnection];
    *buf = 134218498;
    processIdentifier = [xPCConnection processIdentifier];
    v40 = 2112;
    v41 = identifierCopy;
    v42 = 2112;
    v43 = typeCopy;
    _os_log_impl(&dword_18162D000, v19, OS_LOG_TYPE_DEFAULT, "pid %ld opening user activity %@ of type %@", buf, 0x20u);
  }

  if (identifierCopy | dataCopy)
  {
    v21 = typeCopy == 0;
  }

  else
  {
    v21 = 1;
  }

  v22 = v21 || bundleIdentifierCopy == 0;
  v23 = !v22;
  if (v22 || !optionsCopy)
  {
    if (!v23)
    {
      goto LABEL_15;
    }
  }

  else
  {
    v24 = [MEMORY[0x1E695DFD8] setWithObject:objc_opt_class()];
    v25 = _LSIsDictionaryWithKeysAndValuesOfClasses(optionsCopy, v24, 0);

    if ((v25 & 1) == 0)
    {
LABEL_15:
      v34 = *MEMORY[0x1E696A278];
      v35 = @"invalid input parameters";
      xPCConnection3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v35 forKeys:&v34 count:1];
      v27 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], -50, xPCConnection3, "[_LSDOpenClient openUserActivityWithUniqueIdentifier:activityData:activityType:bundleIdentifier:options:completionHandler:]", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Server/LSDOpenService.mm", 333);
      handlerCopy[2](handlerCopy, 0, v27);
LABEL_23:

      goto LABEL_24;
    }
  }

  xPCConnection2 = [(_LSDClient *)self XPCConnection];
  _xpcConnection = [xPCConnection2 _xpcConnection];
  v30 = _LSCheckEntitlementForXPCConnection(_xpcConnection, @"com.apple.private.coreservices.canopenactivity") == 0;

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
    xPCConnection3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v37 forKeys:&v36 count:1];
    v27 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], -54, xPCConnection3, "[_LSDOpenClient openUserActivityWithUniqueIdentifier:activityData:activityType:bundleIdentifier:options:completionHandler:]", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Server/LSDOpenService.mm", 329);
    handlerCopy[2](handlerCopy, 0, v27);
    goto LABEL_23;
  }

  xPCConnection3 = [(_LSDClient *)self XPCConnection];
  _LSServer_OpenUserActivity(identifierCopy, dataCopy, typeCopy, 0, bundleIdentifierCopy, 0, 0, optionsCopy, xPCConnection3, handlerCopy);
LABEL_24:

  v32 = *MEMORY[0x1E69E9840];
}

- (void)getURLOverrideForURL:(id)l completionHandler:(id)handler
{
  v14[1] = *MEMORY[0x1E69E9840];
  lCopy = l;
  handlerCopy = handler;
  _LSAssertRunningInServer("[_LSDOpenClient getURLOverrideForURL:completionHandler:]");
  if (lCopy)
  {
    v7 = [[_LSURLOverride alloc] initWithOriginalURL:lCopy];
    v8 = v7;
    if (v7)
    {
      overrideURL = [(_LSURLOverride *)v7 overrideURL];
    }

    else
    {
      overrideURL = 0;
    }

    handlerCopy[2](handlerCopy, overrideURL, 0);
  }

  else
  {
    v13 = *MEMORY[0x1E696A278];
    v14[0] = @"invalid input URL";
    v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:&v13 count:1];
    v11 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], -50, v10, "[_LSDOpenClient getURLOverrideForURL:completionHandler:]", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Server/LSDOpenService.mm", 371);
    (handlerCopy)[2](handlerCopy, 0, v11);
  }

  v12 = *MEMORY[0x1E69E9840];
}

- (void)getiCloudHostNamesWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  _LSAssertRunningInServer("[_LSDOpenClient getiCloudHostNamesWithCompletionHandler:]");
  v4 = _LSServer_GetIOQueue();
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __58___LSDOpenClient_getiCloudHostNamesWithCompletionHandler___block_invoke;
  block[3] = &unk_1E6A1C820;
  v7 = handlerCopy;
  v5 = handlerCopy;
  dispatch_async(v4, block);
}

- (void)openAppLink:(id)link state:(id)state completionHandler:(id)handler
{
  v38 = *MEMORY[0x1E69E9840];
  linkCopy = link;
  stateCopy = state;
  handlerCopy = handler;
  _LSAssertRunningInServer("[_LSDOpenClient openAppLink:state:completionHandler:]");
  v11 = _LSOpenLog();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    xPCConnection = [(_LSDClient *)self XPCConnection];
    *buf = 134218498;
    processIdentifier = [xPCConnection processIdentifier];
    v34 = 2112;
    v35 = linkCopy;
    v36 = 2112;
    v37 = stateCopy;
    _os_log_impl(&dword_18162D000, v11, OS_LOG_TYPE_DEFAULT, "pid %ld opening app link %@ %@", buf, 0x20u);
  }

  if (linkCopy && (-[_LSDClient XPCConnection](self, "XPCConnection"), v13 = objc_claimAutoreleasedReturnValue(), [v13 _xpcConnection], v14 = objc_claimAutoreleasedReturnValue(), v15 = _LSXPCConnectionMayMapDatabase(v14) == 0, v14, v13, v15))
  {
    v30 = *MEMORY[0x1E696A278];
    v31 = @"process may not map database";
    v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v31 forKeys:&v30 count:1];
    v22 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], -54, v20, "[_LSDOpenClient openAppLink:state:completionHandler:]", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Server/LSDOpenService.mm", 398);
    handlerCopy[2](handlerCopy, 0, v22);
  }

  else if (!stateCopy || ([stateCopy URL], v16 = objc_claimAutoreleasedReturnValue(), v17 = v16 == 0, v16, v17))
  {
    v28 = *MEMORY[0x1E696A278];
    v29 = @"openState";
    v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v29 forKeys:&v28 count:1];
    v21 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], -50, v20, "[_LSDOpenClient openAppLink:state:completionHandler:]", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Server/LSDOpenService.mm", 410);
    handlerCopy[2](handlerCopy, 0, v21);
  }

  else
  {
    xPCConnection2 = [(_LSDClient *)self XPCConnection];
    [stateCopy setXPCConnection:xPCConnection2];

    v19 = +[LSAppLink _dispatchQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __54___LSDOpenClient_openAppLink_state_completionHandler___block_invoke;
    block[3] = &unk_1E6A193B8;
    v25 = linkCopy;
    v26 = stateCopy;
    v27 = handlerCopy;
    dispatch_async(v19, block);

    v20 = v25;
  }

  v23 = *MEMORY[0x1E69E9840];
}

- (void)failedToOpenApplication:(id)application withURL:(id)l completionHandler:(id)handler
{
  v31[1] = *MEMORY[0x1E69E9840];
  applicationCopy = application;
  lCopy = l;
  handlerCopy = handler;
  _LSAssertRunningInServer("[_LSDOpenClient failedToOpenApplication:withURL:completionHandler:]");
  xPCConnection = [(_LSDClient *)self XPCConnection];
  _xpcConnection = [xPCConnection _xpcConnection];
  v13 = _LSXPCConnectionMayMapDatabase(_xpcConnection);

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
      _LSServer_DisplayRemovedAppPrompt(v15, applicationCopy, lCopy, handlerCopy);
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

      (*(handlerCopy + 2))(handlerCopy, 0, v22);
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
      xPCConnection2 = [(_LSDClient *)self XPCConnection];
      -[_LSDOpenClient failedToOpenApplication:withURL:completionHandler:].cold.1([xPCConnection2 processIdentifier], &v26, v16, xPCConnection2);
    }

    v30 = *MEMORY[0x1E696A278];
    v31[0] = @"process may not map database";
    v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v31 forKeys:&v30 count:1];
    v19 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], -54, v18, "[_LSDOpenClient failedToOpenApplication:withURL:completionHandler:]", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Server/LSDOpenService.mm", 422);
    (*(handlerCopy + 2))(handlerCopy, 0, v19);
  }

  v25 = *MEMORY[0x1E69E9840];
}

- (void)updateRestrictionKnowledgeWithCompletionHandler:(id)handler
{
  v19 = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  xPCConnection = [(_LSDClient *)self XPCConnection];
  v6 = _LSCheckEntitlementForNSXPCConnection(xPCConnection, @"com.apple.lsapplicationworkspace.restrictions");

  if (v6)
  {
    v7 = +[LSDBExecutionContext sharedServerInstance];
    [(LSDBExecutionContext *)v7 assertNotActiveForThisThread];

    v8 = _LSDefaultLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      xPCConnection2 = [(_LSDClient *)self XPCConnection];
      *buf = 134217984;
      processIdentifier = [xPCConnection2 processIdentifier];
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

    (handlerCopy)[2](handlerCopy, v11, v13);
  }

  else
  {
    v14 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], -54, 0, "[_LSDOpenClient updateRestrictionKnowledgeWithCompletionHandler:]", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Server/LSDOpenService.mm", 451);
    (handlerCopy)[2](handlerCopy, 0, v14);
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