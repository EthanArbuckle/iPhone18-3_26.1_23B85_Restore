@interface MSCameraFolder
- (BOOL)validAVAsset:(id)asset;
- (MSCameraFolder)initWithFSURL:(id)l name:(id)name parent:(id)parent device:(id)device;
- (id)folderMatchingPath:(id)path;
- (void)cancelReflight;
- (void)dealloc;
- (void)enumerateContentWithOptions:(id)options;
- (void)issueReflight;
- (void)reflightSync;
@end

@implementation MSCameraFolder

- (void)issueReflight
{
  device = [(MSCameraItem *)self device];
  reflightPaused = [device reflightPaused];

  if (reflightPaused)
  {
    __ICOSLogCreate();
    name = [(MSCameraItem *)self name];
    if ([name length]>= 0x15)
    {
      v6 = [name substringWithRange:0, 18];
      v7 = [v6 stringByAppendingString:@".."];

      name = v7;
    }

    v8 = [NSString stringWithFormat:@"Device Paused Reflight"];
    v9 = _gICOSLog;
    if (os_log_type_enabled(_gICOSLog, OS_LOG_TYPE_DEFAULT))
    {
      v10 = name;
      v11 = v9;
      *buf = 136446466;
      uTF8String = [name UTF8String];
      v32 = 2114;
      v33 = v8;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%{public}20s | %{public}@", buf, 0x16u);
    }

LABEL_16:
    return;
  }

  reflightTimer = [(MSCameraFolder *)self reflightTimer];

  if (!reflightTimer)
  {
    __ICOSLogCreate();
    name2 = [(MSCameraItem *)self name];
    if ([name2 length] >= 0x15)
    {
      v14 = [name2 substringWithRange:{0, 18}];
      v15 = [v14 stringByAppendingString:@".."];

      name2 = v15;
    }

    v16 = [NSString stringWithFormat:@"Reflight Timer Started"];
    v17 = _gICOSLog;
    if (os_log_type_enabled(_gICOSLog, OS_LOG_TYPE_DEFAULT))
    {
      v18 = name2;
      v19 = v17;
      *buf = 136446466;
      uTF8String = [name2 UTF8String];
      v32 = 2114;
      v33 = v16;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "%{public}20s | %{public}@", buf, 0x16u);
    }

    reflightQueue = [(MSCameraFolder *)self reflightQueue];
    v21 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, reflightQueue);
    [(MSCameraFolder *)self setReflightTimer:v21];

    reflightQueue2 = [(MSCameraFolder *)self reflightQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = __31__MSCameraFolder_issueReflight__block_invoke;
    block[3] = &unk_100024778;
    block[4] = self;
    dispatch_async(reflightQueue2, block);

    reflightTimer2 = [(MSCameraFolder *)self reflightTimer];
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 3221225472;
    handler[2] = __31__MSCameraFolder_issueReflight__block_invoke_26;
    handler[3] = &unk_100024778;
    handler[4] = self;
    dispatch_source_set_event_handler(reflightTimer2, handler);

    reflightTimer3 = [(MSCameraFolder *)self reflightTimer];
    v27[0] = _NSConcreteStackBlock;
    v27[1] = 3221225472;
    v27[2] = __31__MSCameraFolder_issueReflight__block_invoke_30;
    v27[3] = &unk_100024778;
    v27[4] = self;
    dispatch_source_set_cancel_handler(reflightTimer3, v27);

    reflightTimer4 = [(MSCameraFolder *)self reflightTimer];
    v26 = dispatch_time(0, 2000000000);
    dispatch_source_set_timer(reflightTimer4, v26, 0x77359400uLL, 0x5F5E100uLL);

    name = [(MSCameraFolder *)self reflightTimer];
    dispatch_activate(name);
    goto LABEL_16;
  }

  [(MSCameraFolder *)self setReflightRequested:1];
}

void __31__MSCameraFolder_issueReflight__block_invoke(uint64_t a1)
{
  __ICOSLogCreate();
  v2 = [*(a1 + 32) name];
  if ([v2 length] >= 0x15)
  {
    v3 = [v2 substringWithRange:{0, 18}];
    v4 = [v3 stringByAppendingString:@".."];

    v2 = v4;
  }

  v5 = *(a1 + 32);
  v6 = [v5 reflightCount];
  [v5 setReflightCount:(v6 + 1)];
  v7 = [NSString stringWithFormat:@"Issuing Immediate Reflight: %d", v6];
  v8 = _gICOSLog;
  if (os_log_type_enabled(_gICOSLog, OS_LOG_TYPE_DEFAULT))
  {
    v9 = v2;
    v10 = v8;
    *buf = 136446466;
    v13 = [v2 UTF8String];
    v14 = 2114;
    v15 = v7;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%{public}20s | %{public}@", buf, 0x16u);
  }

  v11 = [*(a1 + 32) device];
  [v11 reflight];
}

void __31__MSCameraFolder_issueReflight__block_invoke_26(uint64_t a1)
{
  v2 = [*(a1 + 32) reflightRequested];
  v3 = *(a1 + 32);
  if (v2)
  {
    v4 = [v3 reflightQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = __31__MSCameraFolder_issueReflight__block_invoke_2;
    block[3] = &unk_100024778;
    block[4] = *(a1 + 32);
    dispatch_async(v4, block);

    [*(a1 + 32) setReflightRequested:0];
  }

  else
  {
    v5 = [v3 reflightTimer];
    dispatch_source_cancel(v5);
  }
}

void __31__MSCameraFolder_issueReflight__block_invoke_2(uint64_t a1)
{
  __ICOSLogCreate();
  v2 = [*(a1 + 32) name];
  if ([v2 length] >= 0x15)
  {
    v3 = [v2 substringWithRange:{0, 18}];
    v4 = [v3 stringByAppendingString:@".."];

    v2 = v4;
  }

  v5 = *(a1 + 32);
  v6 = [v5 reflightCount];
  [v5 setReflightCount:(v6 + 1)];
  v7 = [NSString stringWithFormat:@"Issuing Queued Reflight: %d", v6];
  v8 = _gICOSLog;
  if (os_log_type_enabled(_gICOSLog, OS_LOG_TYPE_DEFAULT))
  {
    v9 = v2;
    v10 = v8;
    *buf = 136446466;
    v13 = [v2 UTF8String];
    v14 = 2114;
    v15 = v7;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%{public}20s | %{public}@", buf, 0x16u);
  }

  v11 = [*(a1 + 32) device];
  [v11 reflight];
}

id __31__MSCameraFolder_issueReflight__block_invoke_30(uint64_t a1)
{
  __ICOSLogCreate();
  v2 = [*(a1 + 32) name];
  if ([v2 length] >= 0x15)
  {
    v3 = [v2 substringWithRange:{0, 18}];
    v4 = [v3 stringByAppendingString:@".."];

    v2 = v4;
  }

  v5 = [NSString stringWithFormat:@"Reflight Timer Canceled"];
  v6 = _gICOSLog;
  if (os_log_type_enabled(_gICOSLog, OS_LOG_TYPE_DEFAULT))
  {
    v7 = v2;
    v8 = v6;
    v10 = 136446466;
    v11 = [v2 UTF8String];
    v12 = 2114;
    v13 = v5;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%{public}20s | %{public}@", &v10, 0x16u);
  }

  [*(a1 + 32) setReflightRequested:0];
  return [*(a1 + 32) setReflightTimer:0];
}

- (void)reflightSync
{
  reflightTimer = [(MSCameraFolder *)self reflightTimer];

  if (!reflightTimer)
  {
    __ICOSLogCreate();
    name = [(MSCameraItem *)self name];
    if ([name length] >= 0x15)
    {
      v5 = [name substringWithRange:{0, 18}];
      v6 = [v5 stringByAppendingString:@".."];

      name = v6;
    }

    v7 = [NSString stringWithFormat:@"Reflight Timer Started"];
    v8 = _gICOSLog;
    if (os_log_type_enabled(_gICOSLog, OS_LOG_TYPE_DEFAULT))
    {
      v9 = name;
      v10 = v8;
      *buf = 136446466;
      uTF8String = [name UTF8String];
      v20 = 2114;
      v21 = v7;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%{public}20s | %{public}@", buf, 0x16u);
    }

    reflightQueue = [(MSCameraFolder *)self reflightQueue];
    v12 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, reflightQueue);
    [(MSCameraFolder *)self setReflightTimer:v12];

    reflightTimer2 = [(MSCameraFolder *)self reflightTimer];
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 3221225472;
    handler[2] = __30__MSCameraFolder_reflightSync__block_invoke;
    handler[3] = &unk_100024778;
    handler[4] = self;
    dispatch_source_set_event_handler(reflightTimer2, handler);

    reflightTimer3 = [(MSCameraFolder *)self reflightTimer];
    v15 = dispatch_time(0, 0);
    dispatch_source_set_timer(reflightTimer3, v15, 0x77359400uLL, 0x5F5E100uLL);

    reflightTimer4 = [(MSCameraFolder *)self reflightTimer];
    dispatch_activate(reflightTimer4);
  }
}

void __30__MSCameraFolder_reflightSync__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) reflightQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = __30__MSCameraFolder_reflightSync__block_invoke_2;
  block[3] = &unk_100024778;
  block[4] = *(a1 + 32);
  dispatch_async(v2, block);
}

void __30__MSCameraFolder_reflightSync__block_invoke_2(uint64_t a1)
{
  __ICOSLogCreate();
  v2 = [*(a1 + 32) name];
  if ([v2 length] >= 0x15)
  {
    v3 = [v2 substringWithRange:{0, 18}];
    v4 = [v3 stringByAppendingString:@".."];

    v2 = v4;
  }

  v5 = *(a1 + 32);
  v6 = [v5 reflightCount];
  [v5 setReflightCount:(v6 + 1)];
  v7 = [NSString stringWithFormat:@"Issuing Queued Reflight: %d", v6];
  v8 = _gICOSLog;
  if (os_log_type_enabled(_gICOSLog, OS_LOG_TYPE_DEFAULT))
  {
    v9 = v2;
    v10 = v8;
    *buf = 136446466;
    v13 = [v2 UTF8String];
    v14 = 2114;
    v15 = v7;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%{public}20s | %{public}@", buf, 0x16u);
  }

  v11 = [*(a1 + 32) device];
  [v11 reflight];
}

- (MSCameraFolder)initWithFSURL:(id)l name:(id)name parent:(id)parent device:(id)device
{
  lCopy = l;
  nameCopy = name;
  v32.receiver = self;
  v32.super_class = MSCameraFolder;
  v12 = [(MSCameraItem *)&v32 initWithFSURL:lCopy name:nameCopy parent:parent device:device];
  if (v12)
  {
    v13 = v12;
    v14 = ICCameraItemProxyTypeFolder;
    cameraItemProxy = [(MSCameraItem *)v12 cameraItemProxy];
    [cameraItemProxy setType:v14];

    if (!parent)
    {
      cameraItemProxy2 = [(MSCameraItem *)v13 cameraItemProxy];
      [cameraItemProxy2 setParentObjectHandle:4294967294];

      cameraItemProxy3 = [(MSCameraItem *)v13 cameraItemProxy];
      [cameraItemProxy3 setTopLevel:1];
    }

    nameCopy = [NSString stringWithFormat:@"%@-reflightQueue", nameCopy];
    v19 = dispatch_queue_create([nameCopy UTF8String], 0);
    [(MSCameraFolder *)v13 setReflightQueue:v19];

    path = [lCopy path];
    -[MSCameraItem setFilesystemChangeDescriptor:](v13, "setFilesystemChangeDescriptor:", open([path UTF8String], 0x8000));
    if ([(MSCameraItem *)v13 filesystemChangeDescriptor]== -1)
    {
      v25 = 0;
    }

    else
    {
      v21 = dispatch_source_create(&_dispatch_source_type_vnode, [(MSCameraItem *)v13 filesystemChangeDescriptor], 0x17FuLL, &_dispatch_main_q);
      [(MSCameraItem *)v13 setFilesystemChangeSource:v21];
      filesystemChangeSource = [(MSCameraItem *)v13 filesystemChangeSource];
      handler[0] = _NSConcreteStackBlock;
      handler[1] = 3221225472;
      handler[2] = __51__MSCameraFolder_initWithFSURL_name_parent_device___block_invoke;
      handler[3] = &unk_100024778;
      v23 = v13;
      v31 = v23;
      dispatch_source_set_event_handler(filesystemChangeSource, handler);

      filesystemChangeSource2 = [(MSCameraItem *)v23 filesystemChangeSource];
      v28[0] = _NSConcreteStackBlock;
      v28[1] = 3221225472;
      v28[2] = __51__MSCameraFolder_initWithFSURL_name_parent_device___block_invoke_2;
      v28[3] = &unk_100024778;
      v25 = v23;
      v29 = v25;
      dispatch_source_set_cancel_handler(filesystemChangeSource2, v28);

      filesystemChangeSource3 = [(MSCameraItem *)v25 filesystemChangeSource];
      dispatch_resume(filesystemChangeSource3);

      v13 = v21;
    }
  }

  else
  {
    v25 = 0;
  }

  return v25;
}

void __51__MSCameraFolder_initWithFSURL_name_parent_device___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) filesystemChangeSource];
  data = dispatch_source_get_data(v2);

  if ((data & 2) != 0)
  {
    v4 = *(a1 + 32);

    [v4 issueReflight];
  }
}

uint64_t __51__MSCameraFolder_initWithFSURL_name_parent_device___block_invoke_2(uint64_t a1)
{
  v1 = [*(a1 + 32) filesystemChangeDescriptor];

  return close(v1);
}

- (void)cancelReflight
{
  reflightTimer = [(MSCameraFolder *)self reflightTimer];

  if (reflightTimer)
  {
    reflightTimer2 = [(MSCameraFolder *)self reflightTimer];
    dispatch_source_cancel(reflightTimer2);
  }
}

- (void)dealloc
{
  [(MSCameraItem *)self cancelSource];
  [(MSCameraFolder *)self cancelReflight];
  [(MSCameraFolder *)self clearDevice];
  v3.receiver = self;
  v3.super_class = MSCameraFolder;
  [(MSCameraItem *)&v3 dealloc];
}

- (void)enumerateContentWithOptions:(id)options
{
  optionsCopy = options;
  v5 = dispatch_get_global_queue(33, 0);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = __46__MSCameraFolder_enumerateContentWithOptions___block_invoke;
  v7[3] = &unk_100024750;
  v8 = optionsCopy;
  selfCopy = self;
  v6 = optionsCopy;
  dispatch_async(v5, v7);
}

void __46__MSCameraFolder_enumerateContentWithOptions___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) objectForKeyedSubscript:@"ICEnumerationChronologicalOrder"];
  v96 = v2;
  if (v2)
  {
    v3 = [v2 integerValue];
  }

  else
  {
    v3 = -1;
  }

  info = 0;
  mach_timebase_info(&info);
  _gBenchmarkStartMachTime = 0;
  *&_gBenchmarkStartMachTime = mach_absolute_time();
  v4 = [*(a1 + 40) path];
  [NSURL fileURLWithPath:v4];
  v5 = v99 = a1;

  v6 = +[NSFileManager defaultManager];
  v125 = NSURLContentModificationDateKey;
  v7 = [NSArray arrayWithObjects:&v125 count:1];
  v95 = v5;
  v8 = [v6 contentsOfDirectoryAtURL:v5 includingPropertiesForKeys:v7 options:4 error:0];

  v111[0] = _NSConcreteStackBlock;
  v111[1] = 3221225472;
  v111[2] = __46__MSCameraFolder_enumerateContentWithOptions___block_invoke_2;
  v111[3] = &__block_descriptor_40_e25_q24__0__NSURL_8__NSURL_16l;
  v111[4] = v3;
  v92 = [NSSortDescriptor sortDescriptorWithKey:@"self" ascending:v3 != 0 comparator:v111];
  v124 = v92;
  v9 = [NSArray arrayWithObjects:&v124 count:1];
  v93 = v8;
  v10 = v8;
  v11 = v99;
  v12 = [v10 sortedArrayUsingDescriptors:v9];
  v13 = [v12 mutableCopy];

  __ICOSLogCreate();
  v14 = [*(v99 + 40) name];
  v94 = v6;
  if ([v14 length] >= 0x15)
  {
    v15 = [v14 substringWithRange:{0, 18}];
    v16 = [v15 stringByAppendingString:@".."];

    v14 = v16;
  }

  v17 = [NSString stringWithFormat:@"--> Entering Enumeration"];
  v18 = _gICOSLog;
  if (os_log_type_enabled(_gICOSLog, OS_LOG_TYPE_DEFAULT))
  {
    v19 = v14;
    v20 = v18;
    v21 = [v14 UTF8String];
    buf.st_dev = 136446466;
    *&buf.st_mode = v21;
    WORD2(buf.st_ino) = 2114;
    *(&buf.st_ino + 6) = v17;
    _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "%{public}20s | %{public}@", &buf, 0x16u);
  }

  v22 = [*(v99 + 40) name];
  v23 = [v22 isEqualToString:@"DCIM"];

  v24 = [*(v99 + 40) name];
  v25 = [v24 isEqualToString:@"MP_ROOT"];

  v97 = [v13 copyGroupIntoDictionary:&__block_literal_global_1];
  if ([v13 count])
  {
    v106 = 0;
    v103 = v23 | v25;
    do
    {
      v26 = [v13 firstObject];
      v27 = [v26 baseNameKey];

      v100 = objc_alloc_init(NSMutableArray);
      v107 = 0u;
      v108 = 0u;
      v109 = 0u;
      v110 = 0u;
      v98 = v27;
      obj = [v97 objectForKeyedSubscript:v27];
      v105 = [obj countByEnumeratingWithState:&v107 objects:v123 count:16];
      if (v105)
      {
        v104 = *v108;
        do
        {
          for (i = 0; i != v105; i = i + 1)
          {
            if (*v108 != v104)
            {
              objc_enumerationMutation(obj);
            }

            v29 = *(*(&v107 + 1) + 8 * i);
            v30 = objc_autoreleasePoolPush();
            v31 = [v29 lastPathComponent];
            memset(&buf, 0, sizeof(buf));
            v32 = [v29 path];
            v33 = lstat([v32 UTF8String], &buf);

            if (v33)
            {
              v34 = 0;
            }

            else
            {
              v34 = (buf.st_mode & 0xF000) == 0x4000;
            }

            v35 = v34;
            if (v103)
            {
              if (v35 && _ValidDCFObjectName([v31 UTF8String], objc_msgSend(v31, "length"), 1))
              {
                v36 = [MSCameraFolder alloc];
                v37 = *(v11 + 40);
                v38 = [v37 device];
                v39 = [(MSCameraFolder *)v36 initWithFSURL:v29 name:v31 parent:v37 device:v38];

                if (v39)
                {
                  v40 = [*(v11 + 40) device];
                  [v40 addCameraFolderToIndex:v39];

                  v120 = @"ICCameraItemProxyArray";
                  v41 = [(__CFString *)v39 cameraItemProxy];
                  v119 = v41;
                  v42 = [NSArray arrayWithObjects:&v119 count:1];
                  v121 = v42;
                  v43 = [NSDictionary dictionaryWithObjects:&v121 forKeys:&v120 count:1];

                  v44 = [*(v11 + 40) device];
                  v45 = [*(v11 + 40) device];
                  [v45 allConnections];
                  v47 = v46 = v13;
                  [v44 sendAddedItemsNotification:v43 toConnections:v47];

                  v13 = v46;
                  v11 = v99;

                  [(__CFString *)v39 enumerateContentWithOptions:*(v99 + 32)];
                }
              }

              else
              {
                __ICOSLogCreate();
                v39 = @"Dumped";
                if ([@"Dumped" length] >= 0x15)
                {
                  v51 = [@"Dumped" substringWithRange:{0, 18}];
                  v39 = [v51 stringByAppendingString:@".."];
                }

                if ([v31 length] <= 0x12)
                {
                  v53 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"[%18s] - DCIM can only contain subdirectories", [v31 UTF8String]);
                }

                else
                {
                  v52 = [v31 substringWithRange:{0, 17}];
                  v53 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"[%18s] - DCIM can only contain subdirectories", [v52 UTF8String]);
                }

                v65 = _gICOSLog;
                if (os_log_type_enabled(_gICOSLog, OS_LOG_TYPE_DEFAULT))
                {
                  v66 = v39;
                  v67 = v65;
                  v68 = [(__CFString *)v39 UTF8String];
                  *v115 = 136446466;
                  v116 = v68;
                  v117 = 2114;
                  v118 = v53;
                  _os_log_impl(&_mh_execute_header, v67, OS_LOG_TYPE_DEFAULT, "%{public}20s | %{public}@", v115, 0x16u);
                }

                ++v106;
              }
            }

            else if ((v35 & 1) != 0 || !_ValidDCFObjectName([v31 UTF8String], objc_msgSend(v31, "length"), 0))
            {
              __ICOSLogCreate();
              v54 = @"Dumped";
              if ([@"Dumped" length] >= 0x15)
              {
                v55 = [@"Dumped" substringWithRange:{0, 18}];
                v54 = [v55 stringByAppendingString:@".."];
              }

              v56 = [v31 length];
              v57 = v31;
              if (v56 >= 0x13)
              {
                v57 = [v31 substringWithRange:{0, 17}];
                v101 = v57;
              }

              v58 = [v57 UTF8String];
              v59 = "File Name";
              if (v35)
              {
                v59 = "Directory";
              }

              v60 = [NSString stringWithFormat:@"[%18s] - Unexpected %s", v58, v59];
              if (v56 >= 0x13)
              {
              }

              v61 = _gICOSLog;
              if (os_log_type_enabled(_gICOSLog, OS_LOG_TYPE_DEFAULT))
              {
                v62 = v54;
                v63 = v61;
                v64 = [(__CFString *)v54 UTF8String];
                *v115 = 136446466;
                v116 = v64;
                v117 = 2114;
                v118 = v60;
                _os_log_impl(&_mh_execute_header, v63, OS_LOG_TYPE_DEFAULT, "%{public}20s | %{public}@", v115, 0x16u);
              }

              ++v106;
            }

            else
            {
              v48 = [*(v11 + 40) createAssetFromURL:v29 notify:0 preflight:1];
              v49 = v48;
              if (v48)
              {
                v50 = [v48 cameraItemProxy];
                [v100 addObject:v50];
              }
            }

            objc_autoreleasePoolPop(v30);
            [v13 removeObject:v29];
          }

          v105 = [obj countByEnumeratingWithState:&v107 objects:v123 count:16];
        }

        while (v105);
      }

      if ([v100 count])
      {
        v113 = @"ICCameraItemProxyArray";
        v114 = v100;
        v69 = [NSDictionary dictionaryWithObjects:&v114 forKeys:&v113 count:1];
        v70 = [*(v11 + 40) device];
        v71 = [*(v11 + 40) device];
        v72 = [v71 allConnections];
        [v70 sendAddedItemsNotification:v69 toConnections:v72];

        v11 = v99;
      }
    }

    while ([v13 count]);
    if (v106)
    {
      __ICOSLogCreate();
      v73 = [*(v11 + 40) name];
      if ([v73 length] >= 0x15)
      {
        v74 = [v73 substringWithRange:{0, 18}];
        v75 = [v74 stringByAppendingString:@".."];

        v73 = v75;
        v11 = v99;
      }

      v76 = [NSString stringWithFormat:@"[%05lu] Non-compliant DCF objects", v106];
      v77 = _gICOSLog;
      if (os_log_type_enabled(_gICOSLog, OS_LOG_TYPE_DEFAULT))
      {
        v78 = v73;
        v79 = v77;
        v80 = [v73 UTF8String];
        buf.st_dev = 136446466;
        *&buf.st_mode = v80;
        WORD2(buf.st_ino) = 2114;
        *(&buf.st_ino + 6) = v76;
        _os_log_impl(&_mh_execute_header, v79, OS_LOG_TYPE_DEFAULT, "%{public}20s | %{public}@", &buf, 0x16u);
      }
    }
  }

  v81 = (((mach_absolute_time() - *&_gBenchmarkStartMachTime) * info.numer) / info.denom) / 1000000.0;
  __ICOSLogCreate();
  v82 = [*(v11 + 40) name];
  if ([v82 length] >= 0x15)
  {
    v83 = [v82 substringWithRange:{0, 18}];
    v84 = [v83 stringByAppendingString:@".."];

    v82 = v84;
  }

  if (v81 <= 300.0)
  {
    v85 = @"𝚫";
  }

  else
  {
    v85 = @"⊗";
  }

  v86 = [NSString stringWithFormat:@"Total Enumeration Time"];
  v87 = [NSString stringWithFormat:@"%@[%4.0f ms] %@", v85, v81, v86];

  v88 = _gICOSLog;
  if (os_log_type_enabled(_gICOSLog, OS_LOG_TYPE_DEFAULT))
  {
    v89 = v82;
    v90 = v88;
    v91 = [v82 UTF8String];
    buf.st_dev = 136446466;
    *&buf.st_mode = v91;
    WORD2(buf.st_ino) = 2114;
    *(&buf.st_ino + 6) = v87;
    _os_log_impl(&_mh_execute_header, v90, OS_LOG_TYPE_DEFAULT, "%{public}20s | %{public}@", &buf, 0x16u);
  }

  _gLastBenchmarkElapsedMilliseconds = LODWORD(v81);
}

uint64_t __46__MSCameraFolder_enumerateContentWithOptions___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v20 = 0;
  v19 = 0;
  v5 = a3;
  [a2 getResourceValue:&v20 forKey:NSURLContentModificationDateKey error:&v19];
  v6 = v20;
  v7 = v19;
  v17 = 0;
  v18 = 0;
  [v5 getResourceValue:&v18 forKey:NSURLContentModificationDateKey error:&v17];

  v8 = v18;
  v9 = v17;
  v10 = v8;
  [v6 timeIntervalSince1970];
  v12 = v11;
  [v10 timeIntervalSince1970];
  v14 = v13;

  if (v12 < v14)
  {
    v15 = *(a1 + 32);
  }

  else
  {
    v15 = -*(a1 + 32);
  }

  return v15;
}

void __72__MSCameraFolder_createValidAssetFromURL_attemptCount_notify_preflight___block_invoke(uint64_t a1)
{
  v2 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [*(a1 + 32) unsignedIntegerValue] - 1);
  v3 = [*(a1 + 40) device];
  v7 = _NSConcreteStackBlock;
  v8 = 3221225472;
  v9 = __72__MSCameraFolder_createValidAssetFromURL_attemptCount_notify_preflight___block_invoke_2;
  v10 = &unk_1000249E0;
  v4 = *(a1 + 48);
  v11 = *(a1 + 40);
  v12 = v4;
  v13 = v2;
  v14 = *(a1 + 56);
  v5 = v2;
  v6 = [NSBlockOperation blockOperationWithBlock:&v7];
  [v3 addInitiatedOperation:{v6, v7, v8, v9, v10, v11}];
}

- (BOOL)validAVAsset:(id)asset
{
  assetCopy = asset;
  v19 = 0;
  v20 = &v19;
  v21 = 0x2020000000;
  v22 = 0;
  memset(&v18, 0, sizeof(v18));
  path = [assetCopy path];
  v5 = lstat([path UTF8String], &v18);
  st_size = v18.st_size;

  if (!v5 && st_size >= 1)
  {
    lastPathComponent = [assetCopy lastPathComponent];
    v8 = dispatch_semaphore_create(0);
    v9 = +[NSMutableArray array];
    v10 = [[AVURLAsset alloc] initWithURL:assetCopy options:0];
    [v9 addObject:@"tracks"];
    if (v10)
    {
      v13[0] = _NSConcreteStackBlock;
      v13[1] = 3221225472;
      v13[2] = __31__MSCameraFolder_validAVAsset___block_invoke;
      v13[3] = &unk_100024A08;
      v14 = v10;
      v15 = lastPathComponent;
      v17 = &v19;
      v16 = v8;
      [v14 loadValuesAsynchronouslyForKeys:v9 completionHandler:v13];
    }

    dispatch_semaphore_wait(v8, 0xFFFFFFFFFFFFFFFFLL);
  }

  v11 = *(v20 + 24);
  _Block_object_dispose(&v19, 8);

  return v11;
}

void __31__MSCameraFolder_validAVAsset___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v23 = 0;
  v3 = [v2 statusOfValueForKey:@"tracks" error:&v23];
  v4 = v23;
  if (v3 == 2)
  {
    v21 = 0.0;
    v22 = 0.0;
    if ([*(a1 + 32) decodableVideoNamed:*(a1 + 40) width:&v21 height:&v22] && v21 != 0.0 && v22 != 0.0)
    {
      __ICOSLogCreate();
      v5 = *(a1 + 40);
      if ([v5 length] >= 0x15)
      {
        v6 = [v5 substringWithRange:{0, 18}];
        v7 = [v6 stringByAppendingString:@".."];

        v5 = v7;
      }

      v8 = [NSString stringWithFormat:@"Read %fw x %fh", *&v21, *&v22];
      v9 = _gICOSLog;
      if (os_log_type_enabled(_gICOSLog, OS_LOG_TYPE_DEFAULT))
      {
        v10 = v5;
        v11 = v9;
        v12 = [v5 UTF8String];
        *buf = 136446466;
        v25 = v12;
        v26 = 2114;
        v27 = v8;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%{public}20s | %{public}@", buf, 0x16u);
      }

      *(*(*(a1 + 56) + 8) + 24) = 1;
    }
  }

  else
  {
    __ICOSLogCreate();
    if (__ICLogTypeEnabled())
    {
      v13 = *(a1 + 40);
      if ([v13 length] >= 0x15)
      {
        v14 = [v13 substringWithRange:{0, 18}];
        v15 = [v14 stringByAppendingString:@".."];

        v13 = v15;
      }

      v16 = [NSString stringWithFormat:@"AVAsset: could not be loaded"];
      v17 = _gICOSLog;
      if (os_log_type_enabled(_gICOSLog, OS_LOG_TYPE_DEFAULT))
      {
        v18 = v13;
        v19 = v17;
        v20 = [v13 UTF8String];
        *buf = 136446466;
        v25 = v20;
        v26 = 2114;
        v27 = v16;
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "%{public}20s | %{public}@", buf, 0x16u);
      }
    }
  }

  dispatch_semaphore_signal(*(a1 + 48));
}

- (id)folderMatchingPath:(id)path
{
  pathComponents = [path pathComponents];
  v5 = [NSMutableArray arrayWithArray:pathComponents];

  if ([v5 count] == 1)
  {
    name = [(MSCameraItem *)self name];
    v7 = [v5 objectAtIndexedSubscript:0];
    v8 = [name isEqualToString:v7];

    selfCopy = 0;
    if (v8)
    {
      selfCopy = self;
    }
  }

  else
  {
    [v5 removeObjectAtIndex:0];
    v10 = [NSString pathWithComponents:v5];
    selfCopy = [(MSCameraFolder *)self folderMatchingPath:v10];
  }

  return selfCopy;
}

@end