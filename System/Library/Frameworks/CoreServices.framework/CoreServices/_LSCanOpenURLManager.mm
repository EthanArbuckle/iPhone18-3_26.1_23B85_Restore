@interface _LSCanOpenURLManager
+ (BindingEvaluator)bindingEvaluatorForScheme:(SEL)scheme;
+ (_LSCanOpenURLManager)sharedManager;
+ (id)queryForApplicationsAvailableForOpeningURL:(id)l;
- (BOOL)findApplicationBundleID:(unsigned int *)d bundleData:(const LSBundleData *)data context:(LSContext *)context forXPCConnection:(id)connection;
- (BOOL)isBundleID:(unsigned int)d bundleData:(const LSBundleData *)data context:(LSContext *)context allowedToCheckScheme:(id)scheme error:(id *)error;
- (BOOL)isXPCConnection:(id)connection allowedToCheckScheme:(id)scheme error:(id *)error;
- (BOOL)legacy_isBundleID:(unsigned int)d bundleData:(const LSBundleData *)data context:(LSContext *)context allowedToCheckScheme:(id)scheme error:(id *)error;
- (_LSCanOpenURLManager)init;
- (id)copySchemesMap;
- (int64_t)schemeTypeOfScheme:(id)scheme;
- (void)getIsURL:(id)l alwaysCheckable:(BOOL *)checkable hasHandler:(BOOL *)handler;
- (void)resetSchemeQueryLimitForApplicationWithIdentifier:(id)identifier;
- (void)writeSchemesMap;
@end

@implementation _LSCanOpenURLManager

+ (_LSCanOpenURLManager)sharedManager
{
  _LSAssertRunningInServer("+[_LSCanOpenURLManager sharedManager]");
  if (+[_LSCanOpenURLManager sharedManager]::once != -1)
  {
    +[_LSCanOpenURLManager sharedManager];
  }

  v2 = +[_LSCanOpenURLManager sharedManager]::result;

  return v2;
}

- (_LSCanOpenURLManager)init
{
  v9.receiver = self;
  v9.super_class = _LSCanOpenURLManager;
  v2 = [(_LSCanOpenURLManager *)&v9 init];
  if (v2)
  {
    if ([__LSDefaultsGetSharedInstance() isLightweightSystemServer])
    {
      copySchemesMap = objc_alloc_init(MEMORY[0x1E695DF90]);
    }

    else
    {
      copySchemesMap = [(_LSCanOpenURLManager *)v2 copySchemesMap];
    }

    canOpenURLsMap = v2->_canOpenURLsMap;
    v2->_canOpenURLsMap = copySchemesMap;

    v5 = dispatch_queue_attr_make_with_autorelease_frequency(MEMORY[0x1E69E96A8], DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v6 = dispatch_queue_create("com.apple.launchservices.canopenurl", v5);
    canOpenURLsMapQueue = v2->_canOpenURLsMapQueue;
    v2->_canOpenURLsMapQueue = v6;
  }

  return v2;
}

- (int64_t)schemeTypeOfScheme:(id)scheme
{
  schemeCopy = scheme;
  _LSAssertRunningInServer("[_LSCanOpenURLManager schemeTypeOfScheme:]");
  if (!schemeCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"LSCanOpenURLManager.mm" lineNumber:116 description:{@"Invalid parameter not satisfying: %@", @"scheme != nil"}];
  }

  v6 = _LSGetSchemeType(schemeCopy);

  return v6;
}

- (void)resetSchemeQueryLimitForApplicationWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  _LSAssertRunningInServer("[_LSCanOpenURLManager resetSchemeQueryLimitForApplicationWithIdentifier:]");
  if ([__LSDefaultsGetSharedInstance() isLightweightSystemServer])
  {
    v5 = _LSDefaultLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      [_LSCanOpenURLManager resetSchemeQueryLimitForApplicationWithIdentifier:];
    }
  }

  else if (identifierCopy)
  {
    MEMORY[0x1865D7C40]();
    canOpenURLsMapQueue = self->_canOpenURLsMapQueue;
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __74___LSCanOpenURLManager_resetSchemeQueryLimitForApplicationWithIdentifier___block_invoke;
    v7[3] = &unk_1E6A1ABE8;
    v7[4] = self;
    v8 = identifierCopy;
    dispatch_barrier_async(canOpenURLsMapQueue, v7);
  }
}

+ (id)queryForApplicationsAvailableForOpeningURL:(id)l
{
  lCopy = l;
  v4 = [[_LSAvailableApplicationsForURLQuery alloc] initWithURL:lCopy];

  return v4;
}

- (void)writeSchemesMap
{
  _LSAssertRunningInServer("[_LSCanOpenURLManager(PrivateSchemeChecking) writeSchemesMap]");
  if ([__LSDefaultsGetSharedInstance() isLightweightSystemServer])
  {
    v4 = _LSDefaultLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      [_LSCanOpenURLManager(PrivateSchemeChecking) writeSchemesMap];
    }
  }

  else
  {
    canOpenURLsMapQueue = self->_canOpenURLsMapQueue;
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __62___LSCanOpenURLManager_PrivateSchemeChecking__writeSchemesMap__block_invoke;
    v6[3] = &unk_1E6A18D78;
    v6[4] = self;
    v6[5] = a2;
    _LSDispatchCoalescedAfterDelay(&self->_saveFlag, canOpenURLsMapQueue, v6, 1.0);
  }
}

- (id)copySchemesMap
{
  _LSAssertRunningInServer("[_LSCanOpenURLManager(PrivateSchemeChecking) copySchemesMap]");
  queriedSchemesMapFileURL = [__LSDefaultsGetSharedInstance() queriedSchemesMapFileURL];
  if (!queriedSchemesMapFileURL)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"LSCanOpenURLManager.mm" lineNumber:203 description:@"Failed to get URL for lsd-schemes file"];
  }

  v5 = [objc_alloc(MEMORY[0x1E695DF90]) initWithContentsOfURL:queriedSchemesMapFileURL];
  if (!v5)
  {
    defaultManager = [MEMORY[0x1E696AC08] defaultManager];
    path = [queriedSchemesMapFileURL path];
    v8 = [defaultManager fileExistsAtPath:path];

    if (v8)
    {
      v9 = _LSDefaultLog();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        [_LSCanOpenURLManager(PrivateSchemeChecking) copySchemesMap];
      }
    }

    else
    {
      v9 = _LSDefaultLog();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *v12 = 0;
        _os_log_impl(&dword_18162D000, v9, OS_LOG_TYPE_DEFAULT, "Scheme mapping file does not exist, creating file.", v12, 2u);
      }
    }

    v5 = objc_alloc_init(MEMORY[0x1E695DF90]);
  }

  return v5;
}

- (void)getIsURL:(id)l alwaysCheckable:(BOOL *)checkable hasHandler:(BOOL *)handler
{
  v30 = *MEMORY[0x1E69E9840];
  lCopy = l;
  if (!lCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"LSCanOpenURLManager.mm" lineNumber:293 description:{@"Invalid parameter not satisfying: %@", @"url != nil"}];
  }

  scheme = [lCopy scheme];
  v11 = scheme;
  if (scheme)
  {
    if ([scheme caseInsensitiveCompare:@"com-apple-audiounit"])
    {
      v12 = objc_opt_class();
      if (v12)
      {
        [v12 bindingEvaluatorForScheme:v11];
      }

      else
      {
        memset(v29, 0, sizeof(v29));
      }

      Options = LaunchServices::BindingEvaluator::getOptions(v29);
      LaunchServices::BindingEvaluator::setOptions(v29, Options | 4);
      v28 = 0;
      v25 = 0;
      v26 = 0;
      v27 = 0;
      v16 = +[_LSDServiceDomain defaultServiceDomain];
      v14 = LaunchServices::Database::Context::_get(&v25, v16, 0);

      if (v14)
      {
        LaunchServices::BindingEvaluator::getBestBinding(v29);
        v13 = v24;
        if (v24)
        {
          if (v21)
          {
            LOBYTE(v14) = *(v21 + 164);
          }

          else
          {
            LOBYTE(v14) = 0;
          }
        }

        else
        {
          LOBYTE(v14) = 0;
        }
      }

      else
      {
        v13 = 0;
      }

      if (v25 && v27 == 1)
      {
        _LSContextDestroy(v25);
      }

      v17 = v26;
      v25 = 0;
      v26 = 0;

      v27 = 0;
      v18 = v28;
      v28 = 0;

      LaunchServices::BindingEvaluator::~BindingEvaluator(v29);
    }

    else
    {
      v13 = 1;
      LOBYTE(v14) = 1;
    }
  }

  else
  {
    v13 = 0;
    LOBYTE(v14) = 0;
  }

  if (checkable)
  {
    *checkable = v14 & 1;
  }

  if (handler)
  {
    *handler = v13;
  }

  v19 = *MEMORY[0x1E69E9840];
}

- (BOOL)isXPCConnection:(id)connection allowedToCheckScheme:(id)scheme error:(id *)error
{
  v36 = *MEMORY[0x1E69E9840];
  connectionCopy = connection;
  schemeCopy = scheme;
  v11 = schemeCopy;
  if (connectionCopy)
  {
    if (!schemeCopy)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"LSCanOpenURLManager.mm" lineNumber:335 description:{@"Invalid parameter not satisfying: %@", @"scheme != nil"}];
    }

    v30 = 0;
    v27 = 0;
    v28 = 0;
    v29 = 0;
    v12 = +[_LSDServiceDomain defaultServiceDomain];
    v13 = LaunchServices::Database::Context::_get(&v27, v12, 0);

    if (v13)
    {
      v26 = 0;
      v25 = 0;
      if (![(_LSCanOpenURLManager *)self findApplicationBundleID:&v26 bundleData:&v25 context:v13 forXPCConnection:connectionCopy]|| v25 && (*(v25 + 164) & 1) != 0)
      {
        v16 = 1;
      }

      else
      {
        v14 = *(v25 + 76);
        v32 = *(v25 + 60);
        v33 = v14;
        _LSMakeVersionNumber(9, 0, 0, v31);
        v35[0] = v32;
        v35[1] = v33;
        v34[0] = v31[0];
        v34[1] = v31[1];
        if (_LSVersionNumberCompare(v35, v34) > 1)
        {
          v15 = [(_LSCanOpenURLManager *)self legacy_isBundleID:v26 bundleData:v25 context:v13 allowedToCheckScheme:v11 error:error];
        }

        else
        {
          v15 = [(_LSCanOpenURLManager *)self isBundleID:v26 bundleData:v25 context:v13 allowedToCheckScheme:v11 error:error];
        }

        v16 = v15;
      }
    }

    else if (error)
    {
      v17 = +[_LSDServiceDomain defaultServiceDomain];
      v18 = LaunchServices::Database::Context::_get(&v27, v17, 0);

      if (v18)
      {
        v19 = 0;
      }

      else
      {
        v19 = v30;
      }

      v16 = 0;
      *error = v19;
    }

    else
    {
      v16 = 0;
    }

    if (v27 && v29 == 1)
    {
      _LSContextDestroy(v27);
    }

    v20 = v28;
    v27 = 0;
    v28 = 0;

    v29 = 0;
    v21 = v30;
    v30 = 0;
  }

  else
  {
    v16 = 1;
  }

  v22 = *MEMORY[0x1E69E9840];
  return v16;
}

- (BOOL)findApplicationBundleID:(unsigned int *)d bundleData:(const LSBundleData *)data context:(LSContext *)context forXPCConnection:(id)connection
{
  connectionCopy = connection;
  v12 = connectionCopy;
  if (context && context->db)
  {
    if (connectionCopy)
    {
      goto LABEL_4;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"LSCanOpenURLManager.mm" lineNumber:391 description:{@"Invalid parameter not satisfying: %@", @"context != NULL && context->db != NULL"}];

    if (v12)
    {
      goto LABEL_4;
    }
  }

  currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"LSCanOpenURLManager.mm" lineNumber:392 description:{@"Invalid parameter not satisfying: %@", @"connection != nil"}];

LABEL_4:
  _xpcConnection = [v12 _xpcConnection];
  v14 = _LSCopyBundleURLForXPCConnection(_xpcConnection, 0);

  if (v14)
  {
    v15 = [[FSNode alloc] initWithURL:v14 flags:0 error:0];
    if (v15)
    {
      if (_LSBundleFindWithNode(context, v15, d, data))
      {

        path = [v14 path];
        v17 = [path rangeOfString:@".app/" options:4];
        if (v17 == 0x7FFFFFFFFFFFFFFFLL)
        {
          v19 = 0;
        }

        else
        {
          v20 = [path substringToIndex:v17 + v18];
          v21 = [objc_alloc(MEMORY[0x1E695DFF8]) initFileURLWithPath:v20 isDirectory:1];
          v22 = [[FSNode alloc] initWithURL:v21 flags:0 error:0];
          if (v22)
          {
            v19 = _LSBundleFindWithNode(context, v22, d, data) == 0;
          }

          else
          {
            v19 = 0;
          }
        }

        v15 = 0;
      }

      else
      {
        v19 = 1;
      }
    }

    else
    {
      v19 = 0;
    }
  }

  else
  {
    v19 = 0;
  }

  return v19;
}

- (BOOL)isBundleID:(unsigned int)d bundleData:(const LSBundleData *)data context:(LSContext *)context allowedToCheckScheme:(id)scheme error:(id *)error
{
  v25[1] = *MEMORY[0x1E69E9840];
  schemeCopy = scheme;
  if (d)
  {
    if (data)
    {
      goto LABEL_3;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"LSCanOpenURLManager.mm" lineNumber:426 description:{@"Invalid parameter not satisfying: %@", @"bundleID != kCSStoreNullID"}];

    if (data)
    {
LABEL_3:
      if (!context)
      {
        goto LABEL_17;
      }

      goto LABEL_4;
    }
  }

  currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"LSCanOpenURLManager.mm" lineNumber:427 description:{@"Invalid parameter not satisfying: %@", @"bundleData != NULL"}];

  if (!context)
  {
LABEL_17:
    currentHandler3 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler3 handleFailureInMethod:a2 object:self file:@"LSCanOpenURLManager.mm" lineNumber:428 description:{@"Invalid parameter not satisfying: %@", @"context != NULL && context->db != NULL"}];

    if (schemeCopy)
    {
      goto LABEL_6;
    }

    goto LABEL_18;
  }

LABEL_4:
  if (!context->db)
  {
    goto LABEL_17;
  }

  if (schemeCopy)
  {
    goto LABEL_6;
  }

LABEL_18:
  currentHandler4 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler4 handleFailureInMethod:a2 object:self file:@"LSCanOpenURLManager.mm" lineNumber:429 description:{@"Invalid parameter not satisfying: %@", @"scheme != nil"}];

LABEL_6:
  if (data->plugins)
  {
    v14 = _LSDatabaseGetStringArray(context->db);
    if (schemeCopy)
    {
      goto LABEL_8;
    }

LABEL_11:
    v15 = 0;
    if (!error)
    {
      goto LABEL_14;
    }

    goto LABEL_12;
  }

  v14 = 0;
  if (!schemeCopy)
  {
    goto LABEL_11;
  }

LABEL_8:
  v15 = [v14 containsObject:schemeCopy];
  if (!error)
  {
    goto LABEL_14;
  }

LABEL_12:
  if ((v15 & 1) == 0)
  {
    schemeCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"This app is not allowed to query for scheme %@", schemeCopy];
    v24 = *MEMORY[0x1E696A578];
    v25[0] = schemeCopy;
    v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v25 forKeys:&v24 count:1];
    *error = _LSMakeNSErrorImpl(@"LSApplicationWorkspaceErrorDomain", -106, v17, "[_LSCanOpenURLManager(PrivateSchemeChecking) isBundleID:bundleData:context:allowedToCheckScheme:error:]", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Server/LSCanOpenURLManager.mm", 448);
  }

LABEL_14:

  v18 = *MEMORY[0x1E69E9840];
  return v15;
}

- (BOOL)legacy_isBundleID:(unsigned int)d bundleData:(const LSBundleData *)data context:(LSContext *)context allowedToCheckScheme:(id)scheme error:(id *)error
{
  v50 = *MEMORY[0x1E69E9840];
  schemeCopy = scheme;
  if (d)
  {
    if (data)
    {
      goto LABEL_3;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"LSCanOpenURLManager.mm" lineNumber:461 description:{@"Invalid parameter not satisfying: %@", @"bundleID != kCSStoreNullID"}];

    if (data)
    {
LABEL_3:
      if (!context)
      {
        goto LABEL_35;
      }

      goto LABEL_4;
    }
  }

  currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"LSCanOpenURLManager.mm" lineNumber:462 description:{@"Invalid parameter not satisfying: %@", @"bundleData != NULL"}];

  if (!context)
  {
LABEL_35:
    currentHandler3 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler3 handleFailureInMethod:a2 object:self file:@"LSCanOpenURLManager.mm" lineNumber:463 description:{@"Invalid parameter not satisfying: %@", @"context != NULL && context->db != NULL"}];

    if (schemeCopy)
    {
      goto LABEL_6;
    }

    goto LABEL_36;
  }

LABEL_4:
  if (!context->db)
  {
    goto LABEL_35;
  }

  if (schemeCopy)
  {
    goto LABEL_6;
  }

LABEL_36:
  currentHandler4 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler4 handleFailureInMethod:a2 object:self file:@"LSCanOpenURLManager.mm" lineNumber:464 description:{@"Invalid parameter not satisfying: %@", @"scheme != nil"}];

LABEL_6:
  if ([__LSDefaultsGetSharedInstance() isLightweightSystemServer])
  {
    v14 = _LSDefaultLog();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
    {
      [_LSCanOpenURLManager(PrivateSchemeChecking) legacy_isBundleID:bundleData:context:allowedToCheckScheme:error:];
    }

    goto LABEL_15;
  }

  deviceFamilies = data->deviceFamilies;
  [(_LSDatabase *)context->db store];
  v16 = _CSStringCopyCFString();
  v14 = v16;
  if (!v16)
  {
LABEL_15:
    v20 = 0;
    goto LABEL_24;
  }

  v39 = 0;
  v40[0] = &v39;
  v40[1] = 0x3032000000;
  v40[2] = __Block_byref_object_copy__12;
  v40[3] = __Block_byref_object_dispose__12;
  v41 = 0;
  canOpenURLsMapQueue = self->_canOpenURLsMapQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __111___LSCanOpenURLManager_PrivateSchemeChecking__legacy_isBundleID_bundleData_context_allowedToCheckScheme_error___block_invoke;
  block[3] = &unk_1E6A1B118;
  v38 = &v39;
  block[4] = self;
  v14 = v16;
  v37 = v14;
  dispatch_sync(canOpenURLsMapQueue, block);
  v18 = *(v40[0] + 40);
  if (v18)
  {
    if ([v18 containsObject:schemeCopy])
    {
      v19 = _LSDefaultLog();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
      {
        [_LSCanOpenURLManager(PrivateSchemeChecking) legacy_isBundleID:bundleData:context:allowedToCheckScheme:error:];
      }

      goto LABEL_22;
    }

    if ([*(v40[0] + 40) count] > 0x31)
    {
      v27 = _LSDefaultLog();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
      {
        [_LSCanOpenURLManager(PrivateSchemeChecking) legacy_isBundleID:v14 bundleData:v40 context:? allowedToCheckScheme:? error:?];
      }

      v20 = 0;
      goto LABEL_23;
    }

    v21 = _LSDefaultLog();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
    {
      v28 = [*(v40[0] + 40) count];
      *buf = 138412802;
      v45 = v14;
      v46 = 1024;
      v47 = v28;
      v48 = 2112;
      v49 = schemeCopy;
      _os_log_debug_impl(&dword_18162D000, v21, OS_LOG_TYPE_DEBUG, "LSTesting: app %@ has only asked about %d schemes, adding %@ and allowing", buf, 0x1Cu);
    }
  }

  else
  {
    v21 = _LSDefaultLog();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
    {
      [_LSCanOpenURLManager(PrivateSchemeChecking) legacy_isBundleID:bundleData:context:allowedToCheckScheme:error:];
    }
  }

  MEMORY[0x1865D7C40]();
  v22 = self->_canOpenURLsMapQueue;
  v33[0] = MEMORY[0x1E69E9820];
  v33[1] = 3221225472;
  v33[2] = __111___LSCanOpenURLManager_PrivateSchemeChecking__legacy_isBundleID_bundleData_context_allowedToCheckScheme_error___block_invoke_74;
  v33[3] = &unk_1E6A1B140;
  v33[4] = self;
  v34 = v14;
  v35 = schemeCopy;
  dispatch_barrier_async(v22, v33);

LABEL_22:
  v20 = 1;
LABEL_23:

  _Block_object_dispose(&v39, 8);
LABEL_24:

  if (error)
  {
    v23 = v20;
  }

  else
  {
    v23 = 1;
  }

  if ((v23 & 1) == 0)
  {
    v42 = *MEMORY[0x1E696A578];
    v43 = @"This app has exceeded the number of allowed scheme queries";
    v24 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v43 forKeys:&v42 count:1];
    *error = _LSMakeNSErrorImpl(@"LSApplicationWorkspaceErrorDomain", -107, v24, "[_LSCanOpenURLManager(PrivateSchemeChecking) legacy_isBundleID:bundleData:context:allowedToCheckScheme:error:]", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Server/LSCanOpenURLManager.mm", 524);
  }

  v25 = *MEMORY[0x1E69E9840];
  return v20;
}

+ (BindingEvaluator)bindingEvaluatorForScheme:(SEL)scheme
{
  v8[1] = *MEMORY[0x1E69E9840];
  LaunchServices::BindingEvaluator::CreateWithURLScheme(a4, &retstr->var0);
  LaunchServices::BindingEvaluator::setOptions(retstr, 64);
  v8[0] = 0xE00000002;
  std::vector<LSBundleClass>::vector[abi:nn200100](__p, v8, 2uLL);
  LaunchServices::BindingEvaluator::setAllowedBundleClasses(retstr, __p);
  result = __p[0];
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  v6 = *MEMORY[0x1E69E9840];
  return result;
}

@end