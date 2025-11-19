@interface _LSCanOpenURLManager
+ (BindingEvaluator)bindingEvaluatorForScheme:(SEL)a3;
+ (_LSCanOpenURLManager)sharedManager;
+ (id)queryForApplicationsAvailableForOpeningURL:(id)a3;
- (BOOL)findApplicationBundleID:(unsigned int *)a3 bundleData:(const LSBundleData *)a4 context:(LSContext *)a5 forXPCConnection:(id)a6;
- (BOOL)isBundleID:(unsigned int)a3 bundleData:(const LSBundleData *)a4 context:(LSContext *)a5 allowedToCheckScheme:(id)a6 error:(id *)a7;
- (BOOL)isXPCConnection:(id)a3 allowedToCheckScheme:(id)a4 error:(id *)a5;
- (BOOL)legacy_isBundleID:(unsigned int)a3 bundleData:(const LSBundleData *)a4 context:(LSContext *)a5 allowedToCheckScheme:(id)a6 error:(id *)a7;
- (_LSCanOpenURLManager)init;
- (id)copySchemesMap;
- (int64_t)schemeTypeOfScheme:(id)a3;
- (void)getIsURL:(id)a3 alwaysCheckable:(BOOL *)a4 hasHandler:(BOOL *)a5;
- (void)resetSchemeQueryLimitForApplicationWithIdentifier:(id)a3;
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
      v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
    }

    else
    {
      v3 = [(_LSCanOpenURLManager *)v2 copySchemesMap];
    }

    canOpenURLsMap = v2->_canOpenURLsMap;
    v2->_canOpenURLsMap = v3;

    v5 = dispatch_queue_attr_make_with_autorelease_frequency(MEMORY[0x1E69E96A8], DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v6 = dispatch_queue_create("com.apple.launchservices.canopenurl", v5);
    canOpenURLsMapQueue = v2->_canOpenURLsMapQueue;
    v2->_canOpenURLsMapQueue = v6;
  }

  return v2;
}

- (int64_t)schemeTypeOfScheme:(id)a3
{
  v5 = a3;
  _LSAssertRunningInServer("[_LSCanOpenURLManager schemeTypeOfScheme:]");
  if (!v5)
  {
    v8 = [MEMORY[0x1E696AAA8] currentHandler];
    [v8 handleFailureInMethod:a2 object:self file:@"LSCanOpenURLManager.mm" lineNumber:116 description:{@"Invalid parameter not satisfying: %@", @"scheme != nil"}];
  }

  v6 = _LSGetSchemeType(v5);

  return v6;
}

- (void)resetSchemeQueryLimitForApplicationWithIdentifier:(id)a3
{
  v4 = a3;
  _LSAssertRunningInServer("[_LSCanOpenURLManager resetSchemeQueryLimitForApplicationWithIdentifier:]");
  if ([__LSDefaultsGetSharedInstance() isLightweightSystemServer])
  {
    v5 = _LSDefaultLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      [_LSCanOpenURLManager resetSchemeQueryLimitForApplicationWithIdentifier:];
    }
  }

  else if (v4)
  {
    MEMORY[0x1865D7C40]();
    canOpenURLsMapQueue = self->_canOpenURLsMapQueue;
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __74___LSCanOpenURLManager_resetSchemeQueryLimitForApplicationWithIdentifier___block_invoke;
    v7[3] = &unk_1E6A1ABE8;
    v7[4] = self;
    v8 = v4;
    dispatch_barrier_async(canOpenURLsMapQueue, v7);
  }
}

+ (id)queryForApplicationsAvailableForOpeningURL:(id)a3
{
  v3 = a3;
  v4 = [[_LSAvailableApplicationsForURLQuery alloc] initWithURL:v3];

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
  v4 = [__LSDefaultsGetSharedInstance() queriedSchemesMapFileURL];
  if (!v4)
  {
    v11 = [MEMORY[0x1E696AAA8] currentHandler];
    [v11 handleFailureInMethod:a2 object:self file:@"LSCanOpenURLManager.mm" lineNumber:203 description:@"Failed to get URL for lsd-schemes file"];
  }

  v5 = [objc_alloc(MEMORY[0x1E695DF90]) initWithContentsOfURL:v4];
  if (!v5)
  {
    v6 = [MEMORY[0x1E696AC08] defaultManager];
    v7 = [v4 path];
    v8 = [v6 fileExistsAtPath:v7];

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

- (void)getIsURL:(id)a3 alwaysCheckable:(BOOL *)a4 hasHandler:(BOOL *)a5
{
  v30 = *MEMORY[0x1E69E9840];
  v9 = a3;
  if (!v9)
  {
    v20 = [MEMORY[0x1E696AAA8] currentHandler];
    [v20 handleFailureInMethod:a2 object:self file:@"LSCanOpenURLManager.mm" lineNumber:293 description:{@"Invalid parameter not satisfying: %@", @"url != nil"}];
  }

  v10 = [v9 scheme];
  v11 = v10;
  if (v10)
  {
    if ([v10 caseInsensitiveCompare:@"com-apple-audiounit"])
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

  if (a4)
  {
    *a4 = v14 & 1;
  }

  if (a5)
  {
    *a5 = v13;
  }

  v19 = *MEMORY[0x1E69E9840];
}

- (BOOL)isXPCConnection:(id)a3 allowedToCheckScheme:(id)a4 error:(id *)a5
{
  v36 = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a4;
  v11 = v10;
  if (v9)
  {
    if (!v10)
    {
      v24 = [MEMORY[0x1E696AAA8] currentHandler];
      [v24 handleFailureInMethod:a2 object:self file:@"LSCanOpenURLManager.mm" lineNumber:335 description:{@"Invalid parameter not satisfying: %@", @"scheme != nil"}];
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
      if (![(_LSCanOpenURLManager *)self findApplicationBundleID:&v26 bundleData:&v25 context:v13 forXPCConnection:v9]|| v25 && (*(v25 + 164) & 1) != 0)
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
          v15 = [(_LSCanOpenURLManager *)self legacy_isBundleID:v26 bundleData:v25 context:v13 allowedToCheckScheme:v11 error:a5];
        }

        else
        {
          v15 = [(_LSCanOpenURLManager *)self isBundleID:v26 bundleData:v25 context:v13 allowedToCheckScheme:v11 error:a5];
        }

        v16 = v15;
      }
    }

    else if (a5)
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
      *a5 = v19;
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

- (BOOL)findApplicationBundleID:(unsigned int *)a3 bundleData:(const LSBundleData *)a4 context:(LSContext *)a5 forXPCConnection:(id)a6
{
  v11 = a6;
  v12 = v11;
  if (a5 && a5->db)
  {
    if (v11)
    {
      goto LABEL_4;
    }
  }

  else
  {
    v24 = [MEMORY[0x1E696AAA8] currentHandler];
    [v24 handleFailureInMethod:a2 object:self file:@"LSCanOpenURLManager.mm" lineNumber:391 description:{@"Invalid parameter not satisfying: %@", @"context != NULL && context->db != NULL"}];

    if (v12)
    {
      goto LABEL_4;
    }
  }

  v25 = [MEMORY[0x1E696AAA8] currentHandler];
  [v25 handleFailureInMethod:a2 object:self file:@"LSCanOpenURLManager.mm" lineNumber:392 description:{@"Invalid parameter not satisfying: %@", @"connection != nil"}];

LABEL_4:
  v13 = [v12 _xpcConnection];
  v14 = _LSCopyBundleURLForXPCConnection(v13, 0);

  if (v14)
  {
    v15 = [[FSNode alloc] initWithURL:v14 flags:0 error:0];
    if (v15)
    {
      if (_LSBundleFindWithNode(a5, v15, a3, a4))
      {

        v16 = [v14 path];
        v17 = [v16 rangeOfString:@".app/" options:4];
        if (v17 == 0x7FFFFFFFFFFFFFFFLL)
        {
          v19 = 0;
        }

        else
        {
          v20 = [v16 substringToIndex:v17 + v18];
          v21 = [objc_alloc(MEMORY[0x1E695DFF8]) initFileURLWithPath:v20 isDirectory:1];
          v22 = [[FSNode alloc] initWithURL:v21 flags:0 error:0];
          if (v22)
          {
            v19 = _LSBundleFindWithNode(a5, v22, a3, a4) == 0;
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

- (BOOL)isBundleID:(unsigned int)a3 bundleData:(const LSBundleData *)a4 context:(LSContext *)a5 allowedToCheckScheme:(id)a6 error:(id *)a7
{
  v25[1] = *MEMORY[0x1E69E9840];
  v13 = a6;
  if (a3)
  {
    if (a4)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v20 = [MEMORY[0x1E696AAA8] currentHandler];
    [v20 handleFailureInMethod:a2 object:self file:@"LSCanOpenURLManager.mm" lineNumber:426 description:{@"Invalid parameter not satisfying: %@", @"bundleID != kCSStoreNullID"}];

    if (a4)
    {
LABEL_3:
      if (!a5)
      {
        goto LABEL_17;
      }

      goto LABEL_4;
    }
  }

  v21 = [MEMORY[0x1E696AAA8] currentHandler];
  [v21 handleFailureInMethod:a2 object:self file:@"LSCanOpenURLManager.mm" lineNumber:427 description:{@"Invalid parameter not satisfying: %@", @"bundleData != NULL"}];

  if (!a5)
  {
LABEL_17:
    v22 = [MEMORY[0x1E696AAA8] currentHandler];
    [v22 handleFailureInMethod:a2 object:self file:@"LSCanOpenURLManager.mm" lineNumber:428 description:{@"Invalid parameter not satisfying: %@", @"context != NULL && context->db != NULL"}];

    if (v13)
    {
      goto LABEL_6;
    }

    goto LABEL_18;
  }

LABEL_4:
  if (!a5->db)
  {
    goto LABEL_17;
  }

  if (v13)
  {
    goto LABEL_6;
  }

LABEL_18:
  v23 = [MEMORY[0x1E696AAA8] currentHandler];
  [v23 handleFailureInMethod:a2 object:self file:@"LSCanOpenURLManager.mm" lineNumber:429 description:{@"Invalid parameter not satisfying: %@", @"scheme != nil"}];

LABEL_6:
  if (a4->plugins)
  {
    v14 = _LSDatabaseGetStringArray(a5->db);
    if (v13)
    {
      goto LABEL_8;
    }

LABEL_11:
    v15 = 0;
    if (!a7)
    {
      goto LABEL_14;
    }

    goto LABEL_12;
  }

  v14 = 0;
  if (!v13)
  {
    goto LABEL_11;
  }

LABEL_8:
  v15 = [v14 containsObject:v13];
  if (!a7)
  {
    goto LABEL_14;
  }

LABEL_12:
  if ((v15 & 1) == 0)
  {
    v16 = [MEMORY[0x1E696AEC0] stringWithFormat:@"This app is not allowed to query for scheme %@", v13];
    v24 = *MEMORY[0x1E696A578];
    v25[0] = v16;
    v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v25 forKeys:&v24 count:1];
    *a7 = _LSMakeNSErrorImpl(@"LSApplicationWorkspaceErrorDomain", -106, v17, "[_LSCanOpenURLManager(PrivateSchemeChecking) isBundleID:bundleData:context:allowedToCheckScheme:error:]", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Server/LSCanOpenURLManager.mm", 448);
  }

LABEL_14:

  v18 = *MEMORY[0x1E69E9840];
  return v15;
}

- (BOOL)legacy_isBundleID:(unsigned int)a3 bundleData:(const LSBundleData *)a4 context:(LSContext *)a5 allowedToCheckScheme:(id)a6 error:(id *)a7
{
  v50 = *MEMORY[0x1E69E9840];
  v13 = a6;
  if (a3)
  {
    if (a4)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v29 = [MEMORY[0x1E696AAA8] currentHandler];
    [v29 handleFailureInMethod:a2 object:self file:@"LSCanOpenURLManager.mm" lineNumber:461 description:{@"Invalid parameter not satisfying: %@", @"bundleID != kCSStoreNullID"}];

    if (a4)
    {
LABEL_3:
      if (!a5)
      {
        goto LABEL_35;
      }

      goto LABEL_4;
    }
  }

  v30 = [MEMORY[0x1E696AAA8] currentHandler];
  [v30 handleFailureInMethod:a2 object:self file:@"LSCanOpenURLManager.mm" lineNumber:462 description:{@"Invalid parameter not satisfying: %@", @"bundleData != NULL"}];

  if (!a5)
  {
LABEL_35:
    v31 = [MEMORY[0x1E696AAA8] currentHandler];
    [v31 handleFailureInMethod:a2 object:self file:@"LSCanOpenURLManager.mm" lineNumber:463 description:{@"Invalid parameter not satisfying: %@", @"context != NULL && context->db != NULL"}];

    if (v13)
    {
      goto LABEL_6;
    }

    goto LABEL_36;
  }

LABEL_4:
  if (!a5->db)
  {
    goto LABEL_35;
  }

  if (v13)
  {
    goto LABEL_6;
  }

LABEL_36:
  v32 = [MEMORY[0x1E696AAA8] currentHandler];
  [v32 handleFailureInMethod:a2 object:self file:@"LSCanOpenURLManager.mm" lineNumber:464 description:{@"Invalid parameter not satisfying: %@", @"scheme != nil"}];

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

  deviceFamilies = a4->deviceFamilies;
  [(_LSDatabase *)a5->db store];
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
    if ([v18 containsObject:v13])
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
      v49 = v13;
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
  v35 = v13;
  dispatch_barrier_async(v22, v33);

LABEL_22:
  v20 = 1;
LABEL_23:

  _Block_object_dispose(&v39, 8);
LABEL_24:

  if (a7)
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
    *a7 = _LSMakeNSErrorImpl(@"LSApplicationWorkspaceErrorDomain", -107, v24, "[_LSCanOpenURLManager(PrivateSchemeChecking) legacy_isBundleID:bundleData:context:allowedToCheckScheme:error:]", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Server/LSCanOpenURLManager.mm", 524);
  }

  v25 = *MEMORY[0x1E69E9840];
  return v20;
}

+ (BindingEvaluator)bindingEvaluatorForScheme:(SEL)a3
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