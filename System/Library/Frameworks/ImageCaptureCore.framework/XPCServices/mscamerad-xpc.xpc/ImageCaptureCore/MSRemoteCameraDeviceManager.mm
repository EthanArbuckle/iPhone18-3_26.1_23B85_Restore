@interface MSRemoteCameraDeviceManager
- (BOOL)startMSDeviceNotifications;
- (MSRemoteCameraDeviceManager)init;
- (void)dealloc;
- (void)processAddedURLs:(id)ls;
- (void)processMountURLs:(id)ls;
- (void)processRemovedURLs:(id)ls;
- (void)updatedWithAddedMountPoints:(id)points andRemovedMountPoints:(id)mountPoints;
@end

@implementation MSRemoteCameraDeviceManager

- (MSRemoteCameraDeviceManager)init
{
  v10.receiver = self;
  v10.super_class = MSRemoteCameraDeviceManager;
  v2 = [(MSRemoteCameraDeviceManager *)&v10 initManaging:@"MSCameraDevice" systemDaemon:0];
  v3 = v2;
  if (v2)
  {
    monitoringContext = v2->_monitoringContext;
    v2->_monitoringContext = 0;

    v5 = objc_alloc_init(NSMutableDictionary);
    domainsByURLEnabled = v3->_domainsByURLEnabled;
    v3->_domainsByURLEnabled = v5;

    v7 = objc_alloc_init(NSMutableArray);
    mountURLs = v3->_mountURLs;
    v3->_mountURLs = v7;
  }

  return v3;
}

- (void)dealloc
{
  if (self->_monitoringContext)
  {
    [FPProviderDomain endMonitoringProviderDomainChanges:?];
    monitoringContext = self->_monitoringContext;
    self->_monitoringContext = 0;
  }

  v4.receiver = self;
  v4.super_class = MSRemoteCameraDeviceManager;
  [(MSRemoteCameraDeviceManager *)&v4 dealloc];
}

- (BOOL)startMSDeviceNotifications
{
  if (!self->_deviceMatchingInfo)
  {
    v3 = [[NSDictionary alloc] initWithContentsOfFile:@"/System/Library/Frameworks/ImageCaptureCore.framework/DeviceMatchingInfo.plist"];
    deviceMatchingInfo = self->_deviceMatchingInfo;
    self->_deviceMatchingInfo = v3;
  }

  __ICOSLogCreate();
  v5 = @"FPProviderDomain";
  if ([@"FPProviderDomain" length] >= 0x15)
  {
    v6 = [@"FPProviderDomain" substringWithRange:{0, 18}];
    v5 = [v6 stringByAppendingString:@".."];
  }

  v7 = [NSString stringWithFormat:@"%@", @"Begin monitoring live-files"];
  v8 = _gICOSLog;
  if (os_log_type_enabled(_gICOSLog, OS_LOG_TYPE_DEFAULT))
  {
    v9 = v5;
    v10 = v8;
    *buf = 136446466;
    uTF8String = [(__CFString *)v5 UTF8String];
    v17 = 2114;
    v18 = v7;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%{public}20s | %{public}@", buf, 0x16u);
  }

  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = __57__MSRemoteCameraDeviceManager_startMSDeviceNotifications__block_invoke;
  v14[3] = &unk_100024A30;
  v14[4] = self;
  v11 = [FPProviderDomain beginMonitoringProviderDomainChangesWithHandler:v14];
  monitoringContext = self->_monitoringContext;
  self->_monitoringContext = v11;

  return self->_monitoringContext != 0;
}

void __57__MSRemoteCameraDeviceManager_startMSDeviceNotifications__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v31 = v5;
  v32 = a3;
  if (v32)
  {
    __ICOSLogCreate();
    v6 = @"FPProviderDomain";
    if ([@"FPProviderDomain" length] >= 0x15)
    {
      v7 = [@"FPProviderDomain" substringWithRange:{0, 18}];
      v6 = [v7 stringByAppendingString:@".."];
    }

    v8 = [NSString stringWithFormat:@"Monitoring error: %@\n", v32];
    v9 = _gICOSLog;
    if (os_log_type_enabled(_gICOSLog, OS_LOG_TYPE_ERROR))
    {
      IsSupportedMassStorageCameraVolume_cold_1(v6, v9, v8);
    }
  }

  else
  {
    v30 = a1;
    v6 = +[NSMutableArray array];
    v42 = 0u;
    v43 = 0u;
    v44 = 0u;
    v45 = 0u;
    v10 = v5;
    v11 = [v10 countByEnumeratingWithState:&v42 objects:v51 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v43;
      v33 = *v43;
      v34 = v10;
      do
      {
        v14 = 0;
        v35 = v12;
        do
        {
          if (*v43 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = *(*(&v42 + 1) + 8 * v14);
          v16 = [v10 objectForKeyedSubscript:v15];
          if ([v15 containsString:@"UserFS"])
          {
            v36 = v16;
            v37 = v14;
            v40 = 0u;
            v41 = 0u;
            v38 = 0u;
            v39 = 0u;
            v17 = [v16 storageURLs];
            v18 = [v17 countByEnumeratingWithState:&v38 objects:v50 count:16];
            if (v18)
            {
              v19 = v18;
              v20 = *v39;
              do
              {
                for (i = 0; i != v19; i = i + 1)
                {
                  if (*v39 != v20)
                  {
                    objc_enumerationMutation(v17);
                  }

                  v22 = *(*(&v38 + 1) + 8 * i);
                  __ICOSLogCreate();
                  v23 = @"providerList";
                  if ([@"providerList" length] >= 0x15)
                  {
                    v24 = [@"providerList" substringWithRange:{0, 18}];
                    v23 = [v24 stringByAppendingString:@".."];
                  }

                  v25 = [NSString stringWithFormat:@"Adding: %@", v22];
                  v26 = _gICOSLog;
                  if (os_log_type_enabled(_gICOSLog, OS_LOG_TYPE_DEFAULT))
                  {
                    v27 = v23;
                    v28 = v26;
                    v29 = [(__CFString *)v23 UTF8String];
                    *buf = 136446466;
                    v47 = v29;
                    v48 = 2114;
                    v49 = v25;
                    _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "%{public}20s | %{public}@", buf, 0x16u);
                  }

                  [(__CFString *)v6 addObject:v22];
                }

                v19 = [v17 countByEnumeratingWithState:&v38 objects:v50 count:16];
              }

              while (v19);
            }

            v13 = v33;
            v10 = v34;
            v12 = v35;
            v16 = v36;
            v14 = v37;
          }

          v14 = v14 + 1;
        }

        while (v14 != v12);
        v12 = [v10 countByEnumeratingWithState:&v42 objects:v51 count:16];
      }

      while (v12);
    }

    [*(v30 + 32) processMountURLs:v6];
  }
}

- (void)processMountURLs:(id)ls
{
  lsCopy = ls;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  mountURLs = [(MSRemoteCameraDeviceManager *)selfCopy mountURLs];
  v7 = +[NSMutableArray array];
  v8 = +[NSMutableArray array];
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v9 = mountURLs;
  v10 = [v9 countByEnumeratingWithState:&v23 objects:v28 count:16];
  if (v10)
  {
    v11 = *v24;
    do
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v24 != v11)
        {
          objc_enumerationMutation(v9);
        }

        v13 = *(*(&v23 + 1) + 8 * i);
        if (([lsCopy containsObject:v13] & 1) == 0)
        {
          [v7 addObject:v13];
        }
      }

      v10 = [v9 countByEnumeratingWithState:&v23 objects:v28 count:16];
    }

    while (v10);
  }

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v14 = lsCopy;
  v15 = [v14 countByEnumeratingWithState:&v19 objects:v27 count:16];
  if (v15)
  {
    v16 = *v20;
    do
    {
      for (j = 0; j != v15; j = j + 1)
      {
        if (*v20 != v16)
        {
          objc_enumerationMutation(v14);
        }

        v18 = *(*(&v19 + 1) + 8 * j);
        if (([v9 containsObject:{v18, v19}] & 1) == 0)
        {
          [v8 addObject:v18];
        }
      }

      v15 = [v14 countByEnumeratingWithState:&v19 objects:v27 count:16];
    }

    while (v15);
  }

  [(MSRemoteCameraDeviceManager *)selfCopy processRemovedURLs:v7];
  [(MSRemoteCameraDeviceManager *)selfCopy processAddedURLs:v8];
  [(MSRemoteCameraDeviceManager *)selfCopy setMountURLs:v14];

  objc_sync_exit(selfCopy);
}

- (void)processRemovedURLs:(id)ls
{
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  obj = ls;
  v4 = [obj countByEnumeratingWithState:&v19 objects:v24 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v20;
    do
    {
      v7 = 0;
      do
      {
        if (*v20 != v6)
        {
          objc_enumerationMutation(obj);
        }

        path = [*(*(&v19 + 1) + 8 * v7) path];
        v9 = [NSString stringWithFormat:@"/private%@/", path];

        domainsByURLEnabled = [(MSRemoteCameraDeviceManager *)self domainsByURLEnabled];
        v11 = [NSURL fileURLWithPath:v9];
        v12 = [domainsByURLEnabled objectForKeyedSubscript:v11];

        v13 = [v12 objectForKeyedSubscript:@"ICProviderEnabled"];
        LODWORD(v11) = [v13 BOOLValue];

        if (v11)
        {
          v14 = [NSURL fileURLWithPath:v9];
          v23 = v14;
          v15 = [NSArray arrayWithObjects:&v23 count:1];
          [(MSRemoteCameraDeviceManager *)self updatedWithAddedMountPoints:0 andRemovedMountPoints:v15];
        }

        domainsByURLEnabled2 = [(MSRemoteCameraDeviceManager *)self domainsByURLEnabled];
        v17 = [NSURL fileURLWithPath:v9];
        [domainsByURLEnabled2 removeObjectForKey:v17];

        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [obj countByEnumeratingWithState:&v19 objects:v24 count:16];
    }

    while (v5);
  }
}

- (void)processAddedURLs:(id)ls
{
  v92 = 0u;
  v93 = 0u;
  v94 = 0u;
  v95 = 0u;
  obj = ls;
  v4 = [obj countByEnumeratingWithState:&v92 objects:v98 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v93;
    v7 = &__ICLogTypeEnabled_ptr;
    selfCopy = self;
    v74 = *v93;
    do
    {
      v8 = 0;
      v76 = v5;
      do
      {
        if (*v93 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v92 + 1) + 8 * v8);
        v10 = v7[192];
        v91 = 0;
        v11 = [v10 providerDomainForURL:v9 error:&v91];
        v12 = v91;
        v13 = v12;
        if (v11)
        {
          v80 = v12;
          identifier = [v11 identifier];
          providerDisplayName = [v11 providerDisplayName];
          path = [v9 path];
          v15 = [NSString stringWithFormat:@"/private%@", path];

          v16 = IsSupportedMassStorageCameraVolume(v15, 0, self->_deviceMatchingInfo);
          __ICOSLogCreate();
          v17 = @"-> Photos";
          if ([@"-> Photos" length] >= 0x15)
          {
            v18 = [@"-> Photos" substringWithRange:{0, 18}];
            v17 = [v18 stringByAppendingString:@".."];
          }

          v81 = v16;
          v19 = @"🆘";
          if (v16)
          {
            v19 = @"✅";
          }

          v78 = v19;
          v20 = [NSString stringWithFormat:@"%@ : %@", v19, v15];
          v21 = _gICOSLog;
          if (os_log_type_enabled(_gICOSLog, OS_LOG_TYPE_DEFAULT))
          {
            v22 = v17;
            v23 = v21;
            uTF8String = [(__CFString *)v17 UTF8String];
            *buf = 136446466;
            *&buf[4] = uTF8String;
            *&buf[12] = 2114;
            *&buf[14] = v20;
            _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "%{public}20s | %{public}@", buf, 0x16u);
          }

          v25 = v15;
          v26 = open([v25 UTF8String], 0x8000);
          if (v26 != -1)
          {
            v27 = v26;
            v28 = dispatch_source_create(&_dispatch_source_type_vnode, v26, 0x17FuLL, &_dispatch_main_q);
            handler[0] = _NSConcreteStackBlock;
            handler[1] = 3221225472;
            handler[2] = __48__MSRemoteCameraDeviceManager_processAddedURLs___block_invoke;
            handler[3] = &unk_100024698;
            v29 = v28;
            v88 = v29;
            selfCopy2 = self;
            v79 = v25;
            v90 = v79;
            dispatch_source_set_event_handler(v29, handler);
            v85[0] = _NSConcreteStackBlock;
            v85[1] = 3221225472;
            v85[2] = __48__MSRemoteCameraDeviceManager_processAddedURLs___block_invoke_66;
            v85[3] = &__block_descriptor_36_e5_v8__0l;
            v86 = v27;
            dispatch_source_set_cancel_handler(v29, v85);
            __src[0] = 0;
            __src[1] = 0;
            v84 = 0;
            if (!identifier)
            {
              goto LABEL_22;
            }

            smallestEncoding = [(__CFString *)identifier smallestEncoding];
            [(__CFString *)identifier length];
            v31 = [(__CFString *)identifier length]- 16;
            [(__CFString *)identifier length];
            if (![(__CFString *)identifier getBytes:__src maxLength:16 usedLength:&v84 encoding:smallestEncoding options:1 range:v31 remainingRange:16, 0])
            {
              goto LABEL_22;
            }

            byte15 = 0;
            v33 = 0;
            v34 = 0;
            v35 = 0;
            v36 = 0;
            v37 = 0;
            v38 = 0;
            v39 = 0;
            byte7 = 0;
            v41 = 0;
            v42 = 0;
            v43 = 0;
            v44 = 0;
            v45 = 0;
            v46 = 0;
            v47 = 0;
            *buf = 0;
            *&buf[8] = 0;
            v48 = 16 - v84;
            if (v84 >= 0x10)
            {
              v48 = 0;
            }

            if (v48 <= 15)
            {
              memcpy(&buf[v48], __src, (15 - v48) + 1);
              v47 = buf[0];
              v46 = buf[1];
              v45 = buf[2];
              v44 = buf[3];
              v43 = buf[4];
              v42 = buf[5];
              v41 = buf[6];
              byte7 = buf[7];
              v39 = buf[8];
              v38 = buf[9];
              v37 = buf[10];
              v36 = buf[11];
              v35 = buf[12];
              v34 = buf[13];
              v33 = buf[14];
              byte15 = buf[15];
            }

            v49 = CFUUIDCreateWithBytes(kCFAllocatorDefault, v47, v46, v45, v44, v43, v42, v41, byte7, v39, v38, v37, v36, v35, v34, v33, byte15);
            if (!v49 || (v50 = v49, v51 = CFUUIDCreateString(kCFAllocatorDefault, v49), CFRelease(v50), !v51))
            {
LABEL_22:
              v52 = +[NSUUID UUID];
              uUIDString = [v52 UUIDString];
              v51 = [uUIDString copy];
            }

            v54 = +[NSMutableDictionary dictionary];
            [v54 setObject:v29 forKeyedSubscript:@"ICProviderChangeSource"];
            v55 = [NSNumber numberWithBool:v81];
            [v54 setObject:v55 forKeyedSubscript:@"ICProviderEnabled"];

            [v54 setObject:providerDisplayName forKeyedSubscript:@"ICDeviceName"];
            [v54 setObject:v51 forKeyedSubscript:@"ICDeviceMSUUID"];
            domainsByURLEnabled = [(MSRemoteCameraDeviceManager *)self domainsByURLEnabled];
            v57 = [NSURL fileURLWithPath:v79];
            [domainsByURLEnabled setObject:v54 forKeyedSubscript:v57];

            v58 = +[NSMutableDictionary dictionary];
            v59 = [NSURL fileURLWithPath:v79];
            [v58 setObject:v54 forKeyedSubscript:v59];

            __ICOSLogCreate();
            v60 = @"-> Photos";
            if ([@"-> Photos" length] >= 0x15)
            {
              v61 = [@"-> Photos" substringWithRange:{0, 18}];
              v60 = [v61 stringByAppendingString:@".."];
            }

            v62 = [NSString stringWithFormat:@"%@ : %@", v78, v79];
            v63 = _gICOSLog;
            if (os_log_type_enabled(_gICOSLog, OS_LOG_TYPE_DEFAULT))
            {
              v64 = v60;
              v65 = v63;
              uTF8String2 = [(__CFString *)v60 UTF8String];
              *buf = 136446466;
              *&buf[4] = uTF8String2;
              *&buf[12] = 2114;
              *&buf[14] = v62;
              _os_log_impl(&_mh_execute_header, v65, OS_LOG_TYPE_DEFAULT, "%{public}20s | %{public}@", buf, 0x16u);
            }

            self = selfCopy;
            if (v81)
            {
              [(MSRemoteCameraDeviceManager *)selfCopy updatedWithAddedMountPoints:v58 andRemovedMountPoints:0];
            }

            dispatch_resume(v29);

            v5 = v76;
            v6 = v74;
            v7 = &__ICLogTypeEnabled_ptr;
          }

          v13 = v80;
          v68 = providerDisplayName;
          v67 = identifier;
        }

        else
        {
          __ICOSLogCreate();
          v67 = @"FPProvider";
          if ([@"FPProvider" length] >= 0x15)
          {
            v69 = [@"FPProvider" substringWithRange:{0, 18}];
            v67 = [v69 stringByAppendingString:@".."];
          }

          v68 = [NSString stringWithFormat:@"providerDomain returned nil -- error: %@", v13];
          v70 = _gICOSLog;
          if (os_log_type_enabled(_gICOSLog, OS_LOG_TYPE_ERROR))
          {
            v71 = v67;
            v72 = v70;
            uTF8String3 = [(__CFString *)v67 UTF8String];
            *buf = 136446466;
            *&buf[4] = uTF8String3;
            *&buf[12] = 2114;
            *&buf[14] = v68;
            _os_log_error_impl(&_mh_execute_header, v72, OS_LOG_TYPE_ERROR, "%{public}20s ! %{public}@", buf, 0x16u);
          }
        }

        v8 = v8 + 1;
      }

      while (v5 != v8);
      v5 = [obj countByEnumeratingWithState:&v92 objects:v98 count:16];
    }

    while (v5);
  }
}

void __48__MSRemoteCameraDeviceManager_processAddedURLs___block_invoke(uint64_t a1)
{
  if ((dispatch_source_get_data(*(a1 + 32)) & 2) != 0)
  {
    v2 = [*(a1 + 40) domainsByURLEnabled];
    v3 = [NSURL fileURLWithPath:*(a1 + 48)];
    v4 = [v2 objectForKeyedSubscript:v3];

    v5 = *(a1 + 48);
    v6 = [*(a1 + 40) deviceMatchingInfo];
    v7 = IsSupportedMassStorageCameraVolume(v5, 0, v6);

    __ICOSLogCreate();
    v8 = @"-> Photos";
    if ([@"-> Photos" length] >= 0x15)
    {
      v9 = [@"-> Photos" substringWithRange:{0, 18}];
      v8 = [v9 stringByAppendingString:@".."];
    }

    v10 = @"✅";
    if (!v7)
    {
      v10 = @"🆘";
    }

    v11 = [NSString stringWithFormat:@"%@ : %@", v10, *(a1 + 48)];
    v12 = _gICOSLog;
    if (os_log_type_enabled(_gICOSLog, OS_LOG_TYPE_DEFAULT))
    {
      v13 = v8;
      v14 = v12;
      *buf = 136446466;
      v29 = [(__CFString *)v8 UTF8String];
      v30 = 2114;
      v31 = v11;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "%{public}20s | %{public}@", buf, 0x16u);
    }

    v15 = [v4 objectForKeyedSubscript:@"ICProviderEnabled"];
    v16 = [v15 BOOLValue];

    v17 = [NSNumber numberWithBool:v7];
    [v4 setObject:v17 forKeyedSubscript:@"ICProviderEnabled"];

    if (!v7 || (v16 & 1) != 0)
    {
      if (v7 & 1 | ((v16 & 1) == 0))
      {
LABEL_14:

        return;
      }

      v24 = *(a1 + 40);
      v19 = [NSURL fileURLWithPath:*(a1 + 48)];
      v25 = v19;
      v20 = [NSArray arrayWithObjects:&v25 count:1];
      v21 = v24;
      v22 = 0;
      v23 = v20;
    }

    else
    {
      v18 = *(a1 + 40);
      v19 = [NSURL fileURLWithPath:*(a1 + 48)];
      v26 = v19;
      v27 = v4;
      v20 = [NSDictionary dictionaryWithObjects:&v27 forKeys:&v26 count:1];
      v21 = v18;
      v22 = v20;
      v23 = 0;
    }

    [v21 updatedWithAddedMountPoints:v22 andRemovedMountPoints:v23];

    goto LABEL_14;
  }
}

- (void)updatedWithAddedMountPoints:(id)points andRemovedMountPoints:(id)mountPoints
{
  pointsCopy = points;
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  obj = mountPoints;
  v5 = [obj countByEnumeratingWithState:&v44 objects:v53 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v45;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v45 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v44 + 1) + 8 * i);
        __ICOSLogCreate();
        v10 = @"MS Media";
        if ([@"MS Media" length] >= 0x15)
        {
          v11 = [@"MS Media" substringWithRange:{0, 18}];
          v10 = [v11 stringByAppendingString:@".."];
        }

        lastPathComponent = [v9 lastPathComponent];
        v13 = [NSString stringWithFormat:@"Removed: %@", lastPathComponent];

        v14 = _gICOSLog;
        if (os_log_type_enabled(_gICOSLog, OS_LOG_TYPE_DEFAULT))
        {
          v15 = v10;
          v16 = v14;
          uTF8String = [(__CFString *)v10 UTF8String];
          *buf = 136446466;
          v50 = uTF8String;
          v51 = 2114;
          v52 = v13;
          _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "%{public}20s | %{public}@", buf, 0x16u);
        }

        path = [v9 path];
        [(MSRemoteCameraDeviceManager *)self notifyClientDeviceRemoved:path];
      }

      v6 = [obj countByEnumeratingWithState:&v44 objects:v53 count:16];
    }

    while (v6);
  }

  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  allKeys = [pointsCopy allKeys];
  v19 = [allKeys countByEnumeratingWithState:&v40 objects:v48 count:16];
  if (v19)
  {
    v20 = v19;
    v37 = *v41;
    do
    {
      for (j = 0; j != v20; j = j + 1)
      {
        if (*v41 != v37)
        {
          objc_enumerationMutation(allKeys);
        }

        v22 = *(*(&v40 + 1) + 8 * j);
        v23 = [pointsCopy objectForKeyedSubscript:v22];
        v24 = [v23 objectForKeyedSubscript:@"ICDeviceName"];
        v25 = [v23 objectForKeyedSubscript:@"ICDeviceMSUUID"];
        __ICOSLogCreate();
        v26 = @"MS Media";
        if ([@"MS Media" length] >= 0x15)
        {
          v27 = [@"MS Media" substringWithRange:{0, 18}];
          v26 = [v27 stringByAppendingString:@".."];
        }

        lastPathComponent2 = [v22 lastPathComponent];
        v29 = [NSString stringWithFormat:@"Added: %@:%@", v24, lastPathComponent2];

        v30 = _gICOSLog;
        if (os_log_type_enabled(_gICOSLog, OS_LOG_TYPE_DEFAULT))
        {
          v31 = v26;
          v32 = v30;
          uTF8String2 = [(__CFString *)v26 UTF8String];
          *buf = 136446466;
          v50 = uTF8String2;
          v51 = 2114;
          v52 = v29;
          _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "%{public}20s | %{public}@", buf, 0x16u);
        }

        path2 = [v22 path];
        [(MSRemoteCameraDeviceManager *)self notifyClientDeviceAdded:path2 uuidString:v25 deviceName:v24];
      }

      v20 = [allKeys countByEnumeratingWithState:&v40 objects:v48 count:16];
    }

    while (v20);
  }
}

@end