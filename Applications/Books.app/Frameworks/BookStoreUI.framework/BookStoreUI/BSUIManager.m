@interface BSUIManager
- (id)filterRegistry;
- (id)imageResourceCache;
- (void)registerTemplateBundlesFromPackage:(id)a3;
@end

@implementation BSUIManager

- (id)imageResourceCache
{
  v2 = self;
  objc_sync_enter(v2);
  if (!v2->_imageResourceCache)
  {
    v3 = [TUIImageResourceCache alloc];
    v4 = [(BSUIManager *)v2 resourceLoader];
    v5 = [(BSUIManager *)v2 filterRegistry];
    v6 = BSUIBundle();
    v7 = [v3 initWithLoader:v4 filters:v5 customImageBundle:v6];
    imageResourceCache = v2->_imageResourceCache;
    v2->_imageResourceCache = v7;
  }

  objc_sync_exit(v2);

  v9 = v2->_imageResourceCache;

  return v9;
}

- (id)filterRegistry
{
  v2 = self;
  objc_sync_enter(v2);
  if (!v2->_filterRegistry)
  {
    v3 = objc_alloc_init(TUIFilterRegistry);
    filterRegistry = v2->_filterRegistry;
    v2->_filterRegistry = v3;

    v5 = +[BCCoverEffects sharedInstance];
    v6 = v2->_filterRegistry;
    v7 = [v5 templateImageFilters];
    [(TUIFilterRegistry *)v6 registerImageFilters:v7];

    v8 = v2->_filterRegistry;
    v9 = [v5 templateImageSetFilters];
    [(TUIFilterRegistry *)v8 registerImageSetFilters:v9];
  }

  objc_sync_exit(v2);

  v10 = v2->_filterRegistry;

  return v10;
}

- (void)registerTemplateBundlesFromPackage:(id)a3
{
  v39 = a3;
  v4 = BCSignpostLaunch();
  spid = os_signpost_id_generate(v4);

  v5 = BCSignpostLaunch();
  v6 = v5;
  if (spid - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v5))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_0, v6, OS_SIGNPOST_INTERVAL_BEGIN, spid, "Register Template Bundles", "", buf, 2u);
  }

  v7 = self;
  objc_sync_enter(v7);
  oslog = os_log_create("com.apple.iBooks", "BSUIManager");
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  v8 = v7->_registeredPackages;
  v9 = [(NSArray *)v8 countByEnumeratingWithState:&v44 objects:v57 count:16];
  if (v9)
  {
    v10 = *v45;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v45 != v10)
        {
          objc_enumerationMutation(v8);
        }

        v12 = *(*(&v44 + 1) + 8 * i);
        v13 = +[BSUITemplate factory];
        [v13 unregisterPackage:v12];
      }

      v9 = [(NSArray *)v8 countByEnumeratingWithState:&v44 objects:v57 count:16];
    }

    while (v9);
  }

  v14 = +[NSFileManager defaultManager];
  v15 = NSTemporaryDirectory();
  if (([v14 fileExistsAtPath:v15] & 1) == 0)
  {
    v43 = 0;
    v16 = [v14 createDirectoryAtPath:v15 withIntermediateDirectories:1 attributes:0 error:&v43];
    v17 = v43;
    if (v16)
    {
      if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
      {
        sub_2BD288();
      }
    }

    else
    {
      if (os_log_type_enabled(oslog, OS_LOG_TYPE_FAULT))
      {
        sub_2BD204();
      }

      if (+[JSADevice isInternalBuild])
      {
        v55 = @"tempDir";
        v56 = v15;
        v34 = [NSDictionary dictionaryWithObjects:&v56 forKeys:&v55 count:1];
        v35 = [NSException exceptionWithName:NSInternalInconsistencyException reason:@"Temp dir does not exist even after attempting to create it again. Why?" userInfo:v34];
        v36 = v35;

        objc_exception_throw(v35);
      }
    }
  }

  v18 = [v15 stringByAppendingPathComponent:@"templates.tpkg"];
  v19 = [NSURL fileURLWithPath:v18];

  [TUIBinaryPackage removeCacheForURL:v19];
  v20 = [v39 dataAtPath:@"templates.tpkg"];
  v42 = 0;
  LOBYTE(v18) = [v20 writeToURL:v19 options:1 error:&v42];
  v37 = v42;
  if ((v18 & 1) == 0)
  {
    v21 = oslog;
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      v33 = [v20 length];
      *buf = 134218498;
      v50 = v33;
      v51 = 2114;
      v52 = v19;
      v53 = 2114;
      v54 = v37;
      _os_log_error_impl(&dword_0, v21, OS_LOG_TYPE_ERROR, "Failed to write data (%lu bytes) to disk at '%{public}@': %{public}@", buf, 0x20u);
    }
  }

  v22 = [NSString stringWithFormat:@"jetpack:///"];
  v23 = [NSURL URLWithString:v22];

  v41 = 0;
  v24 = [TUIBinaryPackage packageWithURL:v19 baseURL:v23 error:&v41];
  v25 = v41;
  if (!v24 && os_log_type_enabled(oslog, OS_LOG_TYPE_FAULT))
  {
    *buf = 138543874;
    v50 = v19;
    v51 = 2114;
    v52 = v23;
    v53 = 2114;
    v54 = v25;
    _os_log_fault_impl(&dword_0, oslog, OS_LOG_TYPE_FAULT, "Fatal: Failed to get a binary package at %{public}@ (%{public}@): %{public}@", buf, 0x20u);
  }

  v26 = +[BSUITemplate factory];
  [v26 registerPackage:v24];

  v48 = v24;
  v27 = [NSArray arrayWithObjects:&v48 count:1];
  registeredPackages = v7->_registeredPackages;
  v7->_registeredPackages = v27;

  v29 = BSUITemplateLog();
  if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
  {
    v30 = [v39 version];
    *buf = 138543874;
    v50 = @"templates.tpkg";
    v51 = 2114;
    v52 = v30;
    v53 = 2114;
    v54 = v23;
    _os_log_impl(&dword_0, v29, OS_LOG_TYPE_DEFAULT, "Registered %{public}@ from JetPack %{public}@ to TUITemplateFactory with baseURL=%{public}@", buf, 0x20u);
  }

  objc_sync_exit(v7);
  v31 = BCSignpostLaunch();
  v32 = v31;
  if (spid - 1 < 0xFFFFFFFFFFFFFFFELL && os_signpost_enabled(v31))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_0, v32, OS_SIGNPOST_INTERVAL_END, spid, "Register Template Bundles", "", buf, 2u);
  }
}

@end