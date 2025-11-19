@interface ISMutableIconCache
- (ISMutableIconCache)initWithURL:(id)a3 needsGarbageCollection:(BOOL *)a4;
- (id)mutableStoreIndex;
- (void)clear;
- (void)collectGarbage;
- (void)registerRecordIdentifiers:(id)a3 asSourceForUnit:(id)a4;
- (void)registerTintColor:(id)a3 forUnit:(id)a4;
@end

@implementation ISMutableIconCache

- (ISMutableIconCache)initWithURL:(id)a3 needsGarbageCollection:(BOOL *)a4
{
  v6 = a3;
  v7 = v6;
  if (v6)
  {
    v57 = a4;
    v8 = [v6 URLByAppendingPathComponent:@"__cache_info__" isDirectory:0];
    v9 = [NSDictionary dictionaryWithContentsOfURL:v8 error:0];
    v10 = [NSDictionary dictionaryWithContentsOfFile:@"/System/Library/CoreServices/SystemVersion.plist"];
    v11 = [v10 objectForKey:@"ProductBuildVersion"];
    v12 = [v9 objectForKey:@"ProductBuildVersion"];
    v66 = [v9 objectForKey:@"SystemTintColor"];
    v13 = +[NSFileManager defaultManager];
    v14 = [v7 path];
    v65 = [v13 attributesOfItemAtPath:v14 error:0];

    v68 = +[NSLocale _deviceLanguage];
    if (v9 && v12 && v11 && [v12 isEqualToString:v11])
    {
      v15 = [v65 fileOwnerAccountName];
      if ([v15 isEqualToString:@"_iconservices"])
      {
        v16 = sub_1000012CC(v7);

        if (!v16)
        {
          goto LABEL_59;
        }
      }

      else
      {
      }
    }

    v59 = v12;
    v60 = v10;
    v67 = v11;
    v61 = v9;
    v62 = self;
    v63 = v7;
    v64 = v8;
    v17 = [v7 URLByDeletingLastPathComponent];
    v18 = _ISDefaultLog();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_INFO, "Resetting icon cache ...", buf, 2u);
    }

    v19 = +[NSFileManager defaultManager];
    v58 = v17;
    v20 = [v19 enumeratorAtURL:v17 includingPropertiesForKeys:0 options:1 errorHandler:0];

    v78 = 0u;
    v79 = 0u;
    v76 = 0u;
    v77 = 0u;
    v21 = v20;
    v22 = [v21 countByEnumeratingWithState:&v76 objects:buf count:16];
    if (v22)
    {
      v23 = v22;
      v24 = *v77;
      do
      {
        for (i = 0; i != v23; i = i + 1)
        {
          if (*v77 != v24)
          {
            objc_enumerationMutation(v21);
          }

          v26 = *(*(&v76 + 1) + 8 * i);
          v27 = +[NSFileManager defaultManager];
          v71 = 0;
          v28 = [v27 removeItemAtURL:v26 error:&v71];
          v29 = v71;

          if ((v28 & 1) == 0)
          {
            v30 = _ISDefaultLog();
            if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
            {
              *v72 = 138412546;
              *&v72[4] = v26;
              v73 = 2112;
              v74 = v29;
              _os_log_debug_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEBUG, "Failed to remove item at URL: %@ with error: %@", v72, 0x16u);
            }
          }
        }

        v23 = [v21 countByEnumeratingWithState:&v76 objects:buf count:16];
      }

      while (v23);
    }

    v31 = _ISDefaultLog();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
    {
      *v72 = 0;
      _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_INFO, "... Done", v72, 2u);
    }

    *v72 = NSFilePosixPermissions;
    *&v76 = &off_10000CCF8;
    v32 = [NSDictionary dictionaryWithObjects:&v76 forKeys:v72 count:1];
    v33 = +[NSFileManager defaultManager];
    v7 = v63;
    v34 = [v63 path];
    v71 = 0;
    v35 = [v33 createDirectoryAtPath:v34 withIntermediateDirectories:1 attributes:v32 error:&v71];
    v36 = v71;

    v8 = v64;
    if ((v35 & 1) == 0)
    {
      v42 = _ISDefaultLog();
      if (os_log_type_enabled(v42, OS_LOG_TYPE_FAULT))
      {
        sub_1000053D4();
      }

      goto LABEL_58;
    }

    v37 = v63;
    if (!sub_1000012CC(v37))
    {
LABEL_40:

      v43 = objc_opt_new();
      v36 = v43;
      if (v68)
      {
        [v43 setObject:v68 forKey:@"language"];
      }

      if (v67)
      {
        [v36 setObject:v67 forKey:@"ProductBuildVersion"];
      }

      *buf = 0;
      v42 = [NSPropertyListSerialization dataWithPropertyList:v36 format:200 options:0 error:buf];
      v44 = *buf;
      v32 = v44;
      if (v42)
      {
        v70 = v44;
        v45 = [v42 writeToURL:v8 options:268435457 error:&v70];
        v46 = v70;

        if ((v45 & 1) == 0)
        {
          v47 = _ISDefaultLog();
          if (os_log_type_enabled(v47, OS_LOG_TYPE_FAULT))
          {
            sub_100005508(v8, v46, v47);
          }
        }

        if (v57 && [v66 length] && objc_msgSend(0, "length") && (objc_msgSend(v66, "isEqual:", 0) & 1) == 0)
        {
          *v57 = 1;
        }

        v32 = v46;
      }

      else
      {
        v48 = _ISDefaultLog();
        if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
        {
          sub_1000055E0(v32, v48);
        }

        v42 = 0;
      }

LABEL_58:

      v9 = v61;
      self = v62;
      v12 = v59;
      v10 = v60;
      v11 = v67;
LABEL_59:

      goto LABEL_60;
    }

    v38 = objc_alloc_init(NSFileSecurity);
    if (CFFileSecuritySetAccessControlList(v38, 1))
    {
      *buf = 0;
      v39 = [v37 setResourceValue:v38 forKey:NSURLFileSecurityKey error:buf];
      v40 = *buf;
      if (v39)
      {
LABEL_39:

        goto LABEL_40;
      }

      v41 = _ISDefaultLog();
      if (os_log_type_enabled(v41, OS_LOG_TYPE_DEBUG))
      {
        sub_100005458();
      }
    }

    else
    {
      v41 = _ISDefaultLog();
      if (os_log_type_enabled(v41, OS_LOG_TYPE_DEBUG))
      {
        sub_1000054C8();
      }

      v40 = 0;
    }

    v8 = v64;
    goto LABEL_39;
  }

  v8 = _ISDefaultLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    sub_100005698(v8);
  }

LABEL_60:

  v49 = [v7 URLByAppendingPathComponent:@"store.index" isDirectory:0];
  v50 = _ISDefaultLog();
  if (os_log_type_enabled(v50, OS_LOG_TYPE_DEBUG))
  {
    sub_1000056DC();
  }

  v51 = [[ISMutableStoreIndex alloc] initWithStoreFileURL:v49 capacity:4000];
  v52 = [v7 URLByAppendingPathComponent:@"store-source-registry.map" isDirectory:0];
  v53 = [[ISStoreMapTable alloc] initWithURL:v52 capacity:4000];
  unitSourceRegistry = self->_unitSourceRegistry;
  self->_unitSourceRegistry = v53;

  v69.receiver = self;
  v69.super_class = ISMutableIconCache;
  v55 = [(ISMutableIconCache *)&v69 initWithURL:v7 storeIndex:v51 sandboxExtensionToken:0];

  return v55;
}

- (id)mutableStoreIndex
{
  v4.receiver = self;
  v4.super_class = ISMutableIconCache;
  v2 = [(ISMutableIconCache *)&v4 storeIndex];

  return v2;
}

- (void)registerRecordIdentifiers:(id)a3 asSourceForUnit:(id)a4
{
  v6 = a3;
  v7 = a4;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v8 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v16;
    do
    {
      v11 = 0;
      do
      {
        if (*v16 != v10)
        {
          objc_enumerationMutation(v6);
        }

        v12 = *(*(&v15 + 1) + 8 * v11);
        v13 = [(ISMutableIconCache *)self unitSourceRegistry];
        v14 = [v7 UUID];
        [v13 addData:v12 forUUID:v14];

        v11 = v11 + 1;
      }

      while (v9 != v11);
      v9 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v9);
  }
}

- (void)registerTintColor:(id)a3 forUnit:(id)a4
{
  v6 = a4;
  if (a3)
  {
    v12 = v6;
    v7 = sub_100001AF8(a3);
    v8 = v7;
    if (v7)
    {
      v9 = [v7 dataUsingEncoding:4];
      v10 = [(ISMutableIconCache *)self tintColorRegistry];
      v11 = [v12 UUID];
      [v10 addData:v9 forUUID:v11];
    }

    v6 = v12;
  }
}

- (void)clear
{
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  v3 = _os_activity_create(&_mh_execute_header, "CLEAR CACHE", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v3, &state);
  CFAbsoluteTimeGetCurrent();
  v4 = _ISDefaultLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "Clearing all icon cache entries...", buf, 2u);
  }

  v5 = +[NSFileManager defaultManager];
  v6 = [(ISMutableIconCache *)self cacheURL];
  v7 = [v5 enumeratorAtURL:v6 includingPropertiesForKeys:0 options:7 errorHandler:0];

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v8 = v7;
  v9 = [v8 countByEnumeratingWithState:&v20 objects:v26 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v21;
    do
    {
      v12 = 0;
      do
      {
        if (*v21 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v20 + 1) + 8 * v12);
        v14 = +[NSFileManager defaultManager];
        [v14 removeItemAtURL:v13 error:0];

        v12 = v12 + 1;
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v20 objects:v26 count:16];
    }

    while (v10);
  }

  v15 = [(ISMutableIconCache *)self unitSourceRegistry];
  [v15 removeAll];

  v16 = [(ISMutableIconCache *)self mutableStoreIndex];
  [v16 removeAll];

  v17 = [(ISMutableIconCache *)self tintColorRegistry];
  [v17 removeAll];

  v18 = _ISDefaultLog();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_INFO, "... Done", buf, 2u);
  }

  v19 = _ISTraceLog();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
  {
    sub_10000574C();
  }

  os_activity_scope_leave(&state);
}

- (void)collectGarbage
{
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  v3 = _os_activity_create(&_mh_execute_header, "CLEAR STALE CACHE ENTRIES", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v3, &state);
  CFAbsoluteTimeGetCurrent();
  v4 = _ISDefaultLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "Clearing stale icon cache entries...", buf, 2u);
  }

  v5 = [(ISMutableIconCache *)self unitSourceRegistry];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100002BF0;
  v8[3] = &unk_10000C4B0;
  v8[4] = self;
  [v5 enumerateWithBlock:v8];

  v6 = _ISDefaultLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "... Done", buf, 2u);
  }

  v7 = _ISTraceLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    sub_1000057E8();
  }

  os_activity_scope_leave(&state);
}

@end