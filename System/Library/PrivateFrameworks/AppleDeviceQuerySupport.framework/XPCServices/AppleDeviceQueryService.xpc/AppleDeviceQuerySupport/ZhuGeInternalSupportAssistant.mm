@interface ZhuGeInternalSupportAssistant
+ (BOOL)isXpcConnectionValid;
+ (_opaque_pthread_mutex_t)recursiveMutex;
+ (id)getInternalSupportPath;
+ (id)getXpcProxyWithError:(id *)error;
+ (void)executeCacheRefresh;
+ (void)getDylibHandlerWithError:(id *)error;
+ (void)registerCacheRefresh:(id)refresh;
@end

@implementation ZhuGeInternalSupportAssistant

+ (_opaque_pthread_mutex_t)recursiveMutex
{
  if (qword_100019D90 != -1)
  {
    sub_100009730();
  }

  return &unk_100019D98;
}

+ (BOOL)isXpcConnectionValid
{
  if (qword_100019DF0 != -1)
  {
    sub_100009744();
  }

  return byte_100019DE8;
}

+ (void)executeCacheRefresh
{
  pthread_mutex_lock([self recursiveMutex]);
  if ([self dylibHandler])
  {
    dlclose([self dylibHandler]);
    [self setDylibHandler:0];
  }

  [self setIsXpcConnectionValid:0];
  v10 = 0u;
  v11 = 0u;
  v8 = 0u;
  v9 = 0u;
  cacheList = [self cacheList];
  v4 = [cacheList countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v9;
    do
    {
      v7 = 0;
      do
      {
        if (*v9 != v6)
        {
          objc_enumerationMutation(cacheList);
        }

        [*(*(&v8 + 1) + 8 * v7) clearCache];
        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [cacheList countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v5);
  }

  pthread_mutex_unlock([self recursiveMutex]);
}

+ (id)getInternalSupportPath
{
  pthread_mutex_lock([self recursiveMutex]);
  v3 = +[NSFileManager defaultManager];
  v42 = 0;
  if (isZhuGeInRestoreOS())
  {
    ZhuGeLog(262400, "/Library/Caches/com.apple.xbs/Sources/ZhuGe_Service/ZhuGeInternalSupport/ZhuGeInternalSupportAssistant.m", "+[ZhuGeInternalSupportAssistant getInternalSupportPath]", 152, @"Skip retrieving internal support path in restoreOS", v4, v5, v6, v35);
    v7 = 0;
    v8 = 0;
LABEL_3:
    v9 = 0;
    goto LABEL_24;
  }

  if ([v3 fileExistsAtPath:qword_100019E00 isDirectory:&v42] && v42 == 1)
  {
    v8 = qword_100019E00;
    ZhuGeLog(262400, "/Library/Caches/com.apple.xbs/Sources/ZhuGe_Service/ZhuGeInternalSupport/ZhuGeInternalSupportAssistant.m", "+[ZhuGeInternalSupportAssistant getInternalSupportPath]", 159, @"Retrieving unchanged internal supported path: %@", v10, v11, v12, v8);
    v7 = 0;
    goto LABEL_3;
  }

  if ([v3 fileExistsAtPath:@"/usr/local/ZhuGe/ZhuGeInternalSupport" isDirectory:&v42] && (v42 & 1) != 0)
  {
    v7 = 0;
    v9 = 0;
    v8 = @"/usr/local/ZhuGe/ZhuGeInternalSupport";
LABEL_23:
    objc_storeStrong(&qword_100019E00, v8);
    ZhuGeLog(524544, "/Library/Caches/com.apple.xbs/Sources/ZhuGe_Service/ZhuGeInternalSupport/ZhuGeInternalSupportAssistant.m", "+[ZhuGeInternalSupportAssistant getInternalSupportPath]", 191, @"ZhuGe internal support path is updated to: %@", v31, v32, v33, v8);
    [self executeCacheRefresh];
  }

  else
  {
    v41 = 0;
    v9 = getZhuGeFDIPathsWithError(&v41, v13, v14, v15, v16, v17, v18, v19);
    v20 = v41;
    v7 = v20;
    if (v9)
    {
      v36 = v20;
      v39 = 0u;
      v40 = 0u;
      v37 = 0u;
      v38 = 0u;
      v9 = v9;
      v24 = [v9 countByEnumeratingWithState:&v37 objects:v43 count:16];
      if (v24)
      {
        v25 = v24;
        v26 = *v38;
        while (2)
        {
          for (i = 0; i != v25; i = i + 1)
          {
            if (*v38 != v26)
            {
              objc_enumerationMutation(v9);
            }

            v8 = [NSString stringWithFormat:@"%@%@", *(*(&v37 + 1) + 8 * i), @"/usr/local/ZhuGe/ZhuGeInternalSupport"];
            if ([v3 fileExistsAtPath:v8 isDirectory:&v42] && (v42 & 1) != 0)
            {

              v7 = v36;
              goto LABEL_23;
            }
          }

          v25 = [v9 countByEnumeratingWithState:&v37 objects:v43 count:16];
          if (v25)
          {
            continue;
          }

          break;
        }
      }

      ZhuGeLog(262656, "/Library/Caches/com.apple.xbs/Sources/ZhuGe_Service/ZhuGeInternalSupport/ZhuGeInternalSupportAssistant.m", "+[ZhuGeInternalSupportAssistant getInternalSupportPath]", 184, @"Didn't find ZhuGe internal Support Path", v28, v29, v30, v35);
      v8 = 0;
      v7 = v36;
    }

    else
    {
      ZhuGeLog(262656, "/Library/Caches/com.apple.xbs/Sources/ZhuGe_Service/ZhuGeInternalSupport/ZhuGeInternalSupportAssistant.m", "+[ZhuGeInternalSupportAssistant getInternalSupportPath]", 172, @"Failed to get FDI paths", v21, v22, v23, v35);
      v8 = 0;
    }
  }

LABEL_24:
  pthread_mutex_unlock([self recursiveMutex]);

  return v8;
}

+ (void)getDylibHandlerWithError:(id *)error
{
  pthread_mutex_lock([self recursiveMutex]);
  if (error)
  {
    *error = 0;
    v8 = 0;
    v9 = 0;
    if (![self dylibHandler])
    {
      getInternalSupportPath = [self getInternalSupportPath];
      v8 = getInternalSupportPath;
      if (!getInternalSupportPath)
      {
        ZhuGeLog(1040, "/Library/Caches/com.apple.xbs/Sources/ZhuGe_Service/ZhuGeInternalSupport/ZhuGeInternalSupportAssistant.m", "+[ZhuGeInternalSupportAssistant getDylibHandlerWithError:]", 224, @"Failed to get ZhuGe internal support path for dylib handler!", v11, v12, v13, v22);
        v19 = [NSError errorWithZhuGeErrorCode:43 underlyingError:0];
        v9 = 0;
LABEL_13:
        *error = v19;
        goto LABEL_14;
      }

      v23[0] = getInternalSupportPath;
      v23[1] = @"libZhuGeInternalArmory.dylib";
      v14 = [NSArray arrayWithObjects:v23 count:2];
      v9 = [NSString pathWithComponents:v14];

      if ([self dylibHandler])
      {
        dlclose([self dylibHandler]);
        [self setDylibHandler:0];
      }

      [self setDylibHandler:{dlopen(objc_msgSend(v9, "UTF8String"), 1)}];
      if (![self dylibHandler])
      {
        if (dlerror())
        {
          v18 = dlerror();
        }

        else
        {
          v18 = "(null)";
        }

        ZhuGeLog(1040, "/Library/Caches/com.apple.xbs/Sources/ZhuGe_Service/ZhuGeInternalSupport/ZhuGeInternalSupportAssistant.m", "+[ZhuGeInternalSupportAssistant getDylibHandlerWithError:]", 235, @"Failed to dlopen ZhuGe internal armory dylib with error: %s!", v15, v16, v17, v18);
        v19 = [NSError errorWithZhuGeErrorCode:13 underlyingError:0];
        goto LABEL_13;
      }
    }
  }

  else
  {
    ZhuGeLog(1040, "/Library/Caches/com.apple.xbs/Sources/ZhuGe_Service/ZhuGeInternalSupport/ZhuGeInternalSupportAssistant.m", "+[ZhuGeInternalSupportAssistant getDylibHandlerWithError:]", 211, @"error p-pointer is nil!", v5, v6, v7, v22);
    v8 = 0;
    v9 = 0;
  }

LABEL_14:
  pthread_mutex_unlock([self recursiveMutex]);
  dylibHandler = [self dylibHandler];

  return dylibHandler;
}

+ (void)registerCacheRefresh:(id)refresh
{
  refreshCopy = refresh;
  pthread_mutex_lock([self recursiveMutex]);
  if ((isZhuGeInRestoreOS() & 1) == 0)
  {
    cacheList = [self cacheList];

    if (!cacheList)
    {
      v5 = objc_alloc_init(NSMutableArray);
      [self setCacheList:v5];
    }

    cacheList2 = [self cacheList];
    v7 = [cacheList2 containsObject:refreshCopy];

    if ((v7 & 1) == 0)
    {
      cacheList3 = [self cacheList];
      [cacheList3 addObject:refreshCopy];
    }
  }

  pthread_mutex_unlock([self recursiveMutex]);
}

+ (id)getXpcProxyWithError:(id *)error
{
  if (isZhuGeInRestoreOS())
  {
    goto LABEL_6;
  }

  if (!error)
  {
    ZhuGeLog(1040, "/Library/Caches/com.apple.xbs/Sources/ZhuGe_Service/ZhuGeInternalSupport/ZhuGeInternalSupportAssistant.m", "+[ZhuGeInternalSupportAssistant getXpcProxyWithError:]", 288, @"error p-pointer is nil!", v5, v6, v7, v45);
LABEL_6:
    v11 = 0;
    v12 = 0;
    v13 = 0;
    xpcConnection = 0;
    goto LABEL_15;
  }

  *error = 0;
  pthread_mutex_lock([self recursiveMutex]);
  if ([self isXpcConnectionValid])
  {
    ZhuGeLog(524544, "/Library/Caches/com.apple.xbs/Sources/ZhuGe_Service/ZhuGeInternalSupport/ZhuGeInternalSupportAssistant.m", "+[ZhuGeInternalSupportAssistant getXpcProxyWithError:]", 297, @"Internal XPC connection is already available", v8, v9, v10, v45);
    v11 = 0;
    v12 = 0;
    v13 = 0;
  }

  else
  {
    getInternalSupportPath = [self getInternalSupportPath];
    v11 = getInternalSupportPath;
    if (!getInternalSupportPath)
    {
      ZhuGeLog(1040, "/Library/Caches/com.apple.xbs/Sources/ZhuGe_Service/ZhuGeInternalSupport/ZhuGeInternalSupportAssistant.m", "+[ZhuGeInternalSupportAssistant getXpcProxyWithError:]", 304, @"Failed to get ZhuGe internal support path for xpc proxy!", v16, v17, v18, v45);
      v43 = [NSError errorWithZhuGeErrorCode:43 underlyingError:0];
      v12 = 0;
      v13 = 0;
      xpcConnection = 0;
      goto LABEL_14;
    }

    v52[0] = getInternalSupportPath;
    v52[1] = @"ZhuGeInternalService.xpc";
    v19 = [NSArray arrayWithObjects:v52 count:2];
    v12 = [NSString pathWithComponents:v19];

    [v12 UTF8String];
    xpc_add_bundle();
    v20 = [[NSXPCConnection alloc] initWithServiceName:@"com.apple.ZhuGeInternalService"];
    [self setXpcConnection:v20];

    xpcConnection = [self xpcConnection];

    if (!xpcConnection)
    {
      ZhuGeLog(1040, "/Library/Caches/com.apple.xbs/Sources/ZhuGe_Service/ZhuGeInternalSupport/ZhuGeInternalSupportAssistant.m", "+[ZhuGeInternalSupportAssistant getXpcProxyWithError:]", 315, @"Failed to connect %@!", v21, v22, v23, @"com.apple.ZhuGeInternalService");
      v43 = [NSError errorWithZhuGeErrorCode:67 underlyingError:0];
      v13 = 0;
      goto LABEL_14;
    }

    v24 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___ZhuGeInternalServiceProtocol];
    xpcConnection2 = [self xpcConnection];
    [xpcConnection2 setRemoteObjectInterface:v24];

    v48 = objc_opt_class();
    v47 = objc_opt_class();
    v46 = objc_opt_class();
    v26 = objc_opt_class();
    v27 = objc_opt_class();
    v28 = objc_opt_class();
    v29 = objc_opt_class();
    v30 = objc_opt_class();
    v31 = objc_opt_class();
    v13 = [NSSet setWithObjects:v48, v47, v46, v26, v27, v28, v29, v30, v31, objc_opt_class(), 0];
    xpcConnection3 = [self xpcConnection];
    remoteObjectInterface = [xpcConnection3 remoteObjectInterface];
    [remoteObjectInterface setClasses:v13 forSelector:"setBulkKeys:getValuesAndError:" argumentIndex:0 ofReply:1];

    xpcConnection4 = [self xpcConnection];
    remoteObjectInterface2 = [xpcConnection4 remoteObjectInterface];
    [remoteObjectInterface2 setClasses:v13 forSelector:"setBulkMGKeys:getValuesAndError:" argumentIndex:0 ofReply:1];

    v51[0] = _NSConcreteStackBlock;
    v51[1] = 3221225472;
    v51[2] = sub_10000228C;
    v51[3] = &unk_100014418;
    v51[4] = self;
    xpcConnection5 = [self xpcConnection];
    [xpcConnection5 setInvalidationHandler:v51];

    v50[0] = _NSConcreteStackBlock;
    v50[1] = 3221225472;
    v50[2] = sub_100002314;
    v50[3] = &unk_100014418;
    v50[4] = self;
    xpcConnection6 = [self xpcConnection];
    [xpcConnection6 setInterruptionHandler:v50];

    xpcConnection7 = [self xpcConnection];
    [xpcConnection7 activate];

    [self setIsXpcConnectionValid:1];
  }

  xpcConnection8 = [self xpcConnection];
  v49[0] = _NSConcreteStackBlock;
  v49[1] = 3221225472;
  v49[2] = sub_10000239C;
  v49[3] = &unk_100014438;
  v49[4] = self;
  xpcConnection = [xpcConnection8 synchronousRemoteObjectProxyWithErrorHandler:v49];

  if (xpcConnection)
  {
    goto LABEL_15;
  }

  ZhuGeLog(1040, "/Library/Caches/com.apple.xbs/Sources/ZhuGe_Service/ZhuGeInternalSupport/ZhuGeInternalSupportAssistant.m", "+[ZhuGeInternalSupportAssistant getXpcProxyWithError:]", 360, @"Failed to get proxy for %@!", v40, v41, v42, @"com.apple.ZhuGeInternalService");
  v43 = [NSError errorWithZhuGeErrorCode:66 underlyingError:0];
LABEL_14:
  *error = v43;
LABEL_15:
  pthread_mutex_unlock([self recursiveMutex]);

  return xpcConnection;
}

@end