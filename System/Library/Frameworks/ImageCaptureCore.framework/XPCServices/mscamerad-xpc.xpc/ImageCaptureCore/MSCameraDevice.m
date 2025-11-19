@interface MSCameraDevice
- (BOOL)acceptConnection:(id)a3;
- (BOOL)deleteFile:(id)a3;
- (BOOL)reflightPaused;
- (BOOL)removeCameraItemFromIndex:(unint64_t)a3;
- (MSCameraDevice)initWithDeviceContext:(id)a3;
- (id)cameraFileWithObjectID:(unint64_t)a3;
- (id)cameraFolderWithObjectID:(unint64_t)a3;
- (id)cameraItemWithObjectID:(unint64_t)a3;
- (id)copyIndexedFoldersAndFiles;
- (id)copyIndexedFoldersAndFilesURLs;
- (id)filesystemPath;
- (id)indexedFiles;
- (id)indexedFolders;
- (id)name;
- (id)reflight:(char *)a3 error:(id *)a4;
- (unint64_t)itemsInFolder:(id)a3;
- (void)addCameraFileToIndex:(id)a3;
- (void)addCameraFolderToIndex:(id)a3;
- (void)cameraViewfinder:(id)a3 viewfinderSessionDidBegin:(id)a4;
- (void)cameraViewfinder:(id)a3 viewfinderSessionDidEnd:(id)a4;
- (void)cameraViewfinderSessionDidFinishMovieRecording:(id)a3;
- (void)cameraViewfinderSessionDidStartMovieRecording:(id)a3;
- (void)dealloc;
- (void)enumerateContentWithOptions:(id)a3;
- (void)notifyDeviceReadyObjectCount;
- (void)notifyDeviceReadyPreflightCount;
- (void)pauseReflight;
- (void)preflight;
- (void)preflight:(char *)a3;
- (void)reflight;
- (void)removeCameraFileFromIndex:(unint64_t)a3;
- (void)removeCameraFolderFromIndex:(unint64_t)a3;
- (void)requestDeleteObjectHandle:(id)a3 options:(id)a4 withReply:(id)a5;
- (void)requestDownloadObjectHandle:(id)a3 options:(id)a4 withReply:(id)a5;
- (void)requestFingerprintForObjectHandle:(id)a3 withReply:(id)a4;
- (void)requestMetadataForObjectHandle:(id)a3 options:(id)a4 withReply:(id)a5;
- (void)requestReadDataFromObjectHandle:(id)a3 options:(id)a4 withReply:(id)a5;
- (void)requestRefreshObjectHandleInfo:(id)a3 withReply:(id)a4;
- (void)requestSecurityScopedURLForObjectHandle:(id)a3 withReply:(id)a4;
- (void)requestStartUsingDeviceWithReply:(id)a3;
- (void)requestThumbnailDataForObjectHandle:(id)a3 options:(id)a4 withReply:(id)a5;
- (void)sendContentsNotification:(id)a3;
@end

@implementation MSCameraDevice

- (MSCameraDevice)initWithDeviceContext:(id)a3
{
  v4 = a3;
  v25.receiver = self;
  v25.super_class = MSCameraDevice;
  v5 = [(MSCameraDevice *)&v25 initWithDeviceContext:v4];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"ICDevicePrimaryIdentifier"];
    v7 = [NSURL fileURLWithPath:v6];
    url = v5->_url;
    v5->_url = v7;

    v5->_filledStorageCache = 0;
    v9 = objc_alloc_init(NSMutableArray);
    mediaPaths = v5->_mediaPaths;
    v5->_mediaPaths = v9;

    atomic_store(0, &v5->_preflightCount);
    v5->_prioritizeSpeed = 0;
    v11 = [[ICOrderedMediaSet alloc] initWithTypes:&off_1000268F8];
    indexedMediaSet = v5->_indexedMediaSet;
    v5->_indexedMediaSet = v11;

    v5->_mediaLock._os_unfair_lock_opaque = 0;
    v13 = [(MSCameraDevice *)v5 cameraDictionary];
    [v13 setObject:@"sdcard" forKeyedSubscript:@"ICDeviceSystemSymbolName"];

    v14 = [v4 objectForKeyedSubscript:@"ICDeviceName"];
    v15 = [(MSCameraDevice *)v5 cameraDictionary];
    [v15 setObject:v14 forKeyedSubscript:@"ICDeviceName"];

    v16 = [(MSCameraDevice *)v5 cameraDictionary];
    [v16 setObject:&__kCFBooleanFalse forKeyedSubscript:@"ICDeviceAllowsSyncingClock"];

    v17 = [(MSCameraDevice *)v5 cameraDictionary];
    [v17 setObject:@"ICTransportTypeMassStorage" forKeyedSubscript:@"ICDeviceTransportType"];

    v18 = [(MSCameraDevice *)v5 cameraDictionary];
    [v18 setObject:@"Camera" forKeyedSubscript:@"ICDeviceType"];

    v19 = [(MSCameraDevice *)v5 cameraDictionary];
    [v19 setObject:@"Camera" forKeyedSubscript:@"ICDeviceProductKind"];

    v20 = objc_alloc_init(FigCameraViewfinder);
    viewFinder = v5->_viewFinder;
    v5->_viewFinder = v20;

    v22 = dispatch_queue_create("viewfinder-delegate-queue", 0);
    viewFinderDelegateQueue = v5->_viewFinderDelegateQueue;
    v5->_viewFinderDelegateQueue = v22;

    [(FigCameraViewfinder *)v5->_viewFinder setDelegate:v5 queue:v5->_viewFinderDelegateQueue];
    [(FigCameraViewfinder *)v5->_viewFinder startWithOptions:0];
  }

  return v5;
}

- (void)dealloc
{
  self->_filledStorageCache = 0;
  [(FigCameraViewfinder *)self->_viewFinder setDelegate:0 queue:0];
  [(FigCameraViewfinder *)self->_viewFinder stop];
  __ICOSLogCreate();
  v3 = @"mscameradevice";
  if ([@"mscameradevice" length] >= 0x15)
  {
    v4 = [@"mscameradevice" substringWithRange:{0, 18}];
    v3 = [v4 stringByAppendingString:@".."];
  }

  v5 = [(MSCameraDevice *)self url];
  v6 = [v5 lastPathComponent];
  v7 = [NSString stringWithFormat:@"%s: %@", "Deallocated", v6];

  v8 = _gICOSLog;
  if (os_log_type_enabled(_gICOSLog, OS_LOG_TYPE_DEFAULT))
  {
    v9 = v3;
    v10 = v8;
    *buf = 136446466;
    v22 = [(__CFString *)v3 UTF8String];
    v23 = 2114;
    v24 = v7;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%{public}20s | %{public}@", buf, 0x16u);
  }

  v11 = [(MSCameraDevice *)self deviceOperationQueue];
  [v11 cancelAllOperations];

  v12 = [(MSCameraDevice *)self deviceOperationQueue];
  [v12 waitUntilAllOperationsAreFinished];

  [(MSCameraDevice *)self setUrl:0];
  v13 = [(MSCameraDevice *)self listener];

  if (v13)
  {
    v14 = [(MSCameraDevice *)self listener];
    [v14 invalidate];

    v15 = [(MSCameraDevice *)self listener];
    [v15 setDelegate:0];
  }

  reflightPauseSource = self->_reflightPauseSource;
  if (reflightPauseSource)
  {
    dispatch_source_cancel(reflightPauseSource);
    v17 = self->_reflightPauseSource;
    self->_reflightPauseSource = 0;
  }

  v18 = [(MSCameraDevice *)self indexedMediaSet];
  [v18 performSelector:@"clearDevice" onTypes:&off_100026910];

  v19 = [(MSCameraDevice *)self indexedMediaSet];
  [v19 performSelector:@"cancelSource" onTypes:&off_100026928];

  v20.receiver = self;
  v20.super_class = MSCameraDevice;
  [(MSCameraDevice *)&v20 dealloc];
}

- (void)requestStartUsingDeviceWithReply:(id)a3
{
  v6 = _NSConcreteStackBlock;
  v7 = 3221225472;
  v8 = __51__MSCameraDevice_requestStartUsingDeviceWithReply___block_invoke;
  v9 = &unk_100024648;
  v10 = self;
  v11 = a3;
  v4 = v11;
  v5 = [NSBlockOperation blockOperationWithBlock:&v6];
  [(MSCameraDevice *)self addInteractiveOperation:v5, v6, v7, v8, v9, v10];
}

void __51__MSCameraDevice_requestStartUsingDeviceWithReply___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) cameraDictionary];
  v3 = [v2 objectForKeyedSubscript:@"ICDeviceStarted"];

  if (v3)
  {
    goto LABEL_22;
  }

  v4 = [*(a1 + 32) url];
  v5 = [v4 path];

  [*(a1 + 32) setPreflightCount:0];
  v6 = [[NSDictionary alloc] initWithContentsOfFile:@"/System/Library/Frameworks/ImageCaptureCore.framework/DeviceMatchingInfo.plist"];
  v49 = 0;
  v7 = IsSupportedMassStorageCameraVolume(v5, &v49, v6);
  v8 = v49;
  if (v7)
  {
    v9 = [*(a1 + 32) mediaPaths];
    [v9 addObjectsFromArray:v8];

    __ICOSLogCreate();
    v10 = @"Volume";
    if ([@"Volume" length] >= 0x15)
    {
      v11 = [@"Volume" substringWithRange:{0, 18}];
      v10 = [v11 stringByAppendingString:@".."];
    }

    v12 = [NSString stringWithFormat:@"❎ Added: %@", v8];
    v13 = _gICOSLog;
    if (!os_log_type_enabled(_gICOSLog, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_11;
    }
  }

  else
  {
    __ICOSLogCreate();
    v10 = @"Volume";
    if ([@"Volume" length] >= 0x15)
    {
      v14 = [@"Volume" substringWithRange:{0, 18}];
      v10 = [v14 stringByAppendingString:@".."];
    }

    v12 = [NSString stringWithFormat:@"⚠️ No camera created media paths: %@", v5];
    v13 = _gICOSLog;
    if (!os_log_type_enabled(_gICOSLog, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_11;
    }
  }

  v15 = v10;
  v16 = v13;
  v17 = [(__CFString *)v10 UTF8String];
  buf.f_bsize = 136446466;
  *&buf.f_iosize = v17;
  WORD2(buf.f_blocks) = 2114;
  *(&buf.f_blocks + 6) = v12;
  _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "%{public}20s | %{public}@", &buf, 0x16u);

LABEL_11:
  __ICOSLogCreate();
  v18 = @"session";
  if ([@"session" length] >= 0x15)
  {
    v19 = [@"session" substringWithRange:{0, 18}];
    v18 = [v19 stringByAppendingString:@".."];
  }

  v20 = [*(a1 + 32) cameraDictionary];
  v21 = [NSString stringWithFormat:@"MSCameraDevice Properties: %@", v20];

  v22 = _gICOSLog;
  if (os_log_type_enabled(_gICOSLog, OS_LOG_TYPE_DEFAULT))
  {
    v23 = v18;
    v24 = v22;
    v25 = [(__CFString *)v18 UTF8String];
    buf.f_bsize = 136446466;
    *&buf.f_iosize = v25;
    WORD2(buf.f_blocks) = 2114;
    *(&buf.f_blocks + 6) = v21;
    _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "%{public}20s | %{public}@", &buf, 0x16u);
  }

  memset(&buf, 0, 512);
  statfs([v5 fileSystemRepresentation], &buf);
  __ICOSLogCreate();
  v26 = @"fsInfo";
  if ([@"fsInfo" length] >= 0x15)
  {
    v27 = [@"fsInfo" substringWithRange:{0, 18}];
    v26 = [v27 stringByAppendingString:@".."];
  }

  v28 = [NSString stringWithFormat:@"flags: %d, typename: %s, mntonname: %s, mntfromname: %s", buf.f_flags, buf.f_fstypename, buf.f_mntonname, buf.f_mntfromname];
  v29 = _gICOSLog;
  if (os_log_type_enabled(_gICOSLog, OS_LOG_TYPE_DEFAULT))
  {
    v30 = v26;
    v31 = v29;
    v32 = [(__CFString *)v26 UTF8String];
    *v50 = 136446466;
    v51 = v32;
    v52 = 2114;
    v53 = v28;
    _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "%{public}20s | %{public}@", v50, 0x16u);
  }

  f_flags = buf.f_flags;
  v34 = [NSNumber numberWithBool:0];
  v35 = [*(a1 + 32) cameraDictionary];
  [v35 setObject:v34 forKeyedSubscript:@"ICDeviceEjectable"];

  v36 = [*(a1 + 32) cameraDictionary];
  [v36 setObject:@"ICTransportTypeMassStorage" forKeyedSubscript:@"ICDeviceTransportType"];

  v37 = [NSNumber numberWithBool:f_flags & 1];
  v38 = [*(a1 + 32) cameraDictionary];
  [v38 setObject:v37 forKeyedSubscript:@"ICDeviceLocked"];

  v39 = [*(a1 + 32) cameraDictionary];
  [v39 setObject:v5 forKeyedSubscript:@"ICDeviceVolumePath"];

  v40 = [*(a1 + 32) cameraDictionary];
  [v40 setObject:@"sdcard" forKeyedSubscript:@"ICDeviceSystemSymbolName"];

  v41 = [*(a1 + 32) cameraDictionary];
  [v41 setObject:@"Camera" forKeyedSubscript:@"ICDeviceType"];

  v42 = [*(a1 + 32) cameraDictionary];
  [v42 setObject:@"Camera" forKeyedSubscript:@"ICDeviceProductKind"];

  v43 = [*(a1 + 32) cameraDictionary];
  [v43 setObject:&__kCFBooleanTrue forKeyedSubscript:@"ICDeviceStarted"];

  v44 = +[NSMutableArray array];
  v45 = v44;
  if ((f_flags & 1) == 0)
  {
    [v44 addObject:@"ICCameraDeviceCanDeleteOneFile"];
  }

  v46 = [*(a1 + 32) cameraDictionary];
  [v46 setObject:v45 forKeyedSubscript:@"ICDeviceCapabilities"];

LABEL_22:
  v47 = *(a1 + 40);
  v48 = [*(a1 + 32) cameraDictionary];
  (*(v47 + 16))(v47, v48);
}

- (void)requestMetadataForObjectHandle:(id)a3 options:(id)a4 withReply:(id)a5
{
  v12 = _NSConcreteStackBlock;
  v13 = 3221225472;
  v14 = __67__MSCameraDevice_requestMetadataForObjectHandle_options_withReply___block_invoke;
  v15 = &unk_100024670;
  v16 = self;
  v17 = a3;
  v18 = a4;
  v19 = a5;
  v8 = v19;
  v9 = v18;
  v10 = v17;
  v11 = [NSBlockOperation blockOperationWithBlock:&v12];
  [(MSCameraDevice *)self addInteractiveOperation:v11, v12, v13, v14, v15, v16];
}

void __67__MSCameraDevice_requestMetadataForObjectHandle_options_withReply___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) cameraItemWithObjectID:{objc_msgSend(*(a1 + 40), "unsignedIntegerValue")}];
  __ICOSLogCreate();
  if (__ICLogTypeEnabled())
  {
    v3 = [v2 name];
    if ([v3 length] >= 0x15)
    {
      v4 = [v3 substringWithRange:{0, 18}];
      v5 = [v4 stringByAppendingString:@".."];

      v3 = v5;
    }

    v6 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"requestMetadataForObjectHandle: %d", [*(a1 + 40) intValue]);
    v7 = _gICOSLog;
    if (os_log_type_enabled(_gICOSLog, OS_LOG_TYPE_DEFAULT))
    {
      v8 = v3;
      v9 = v7;
      *buf = 136446466;
      v13 = [v3 UTF8String];
      v14 = 2114;
      v15 = v6;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%{public}20s | %{public}@", buf, 0x16u);
    }
  }

  if (v2)
  {
    [v2 metadataWithOptions:*(a1 + 48) reply:*(a1 + 56)];
  }

  else
  {
    v10 = +[NSMutableDictionary dictionary];
    v11 = [NSNumber numberWithInteger:-21450];
    [v10 setObject:v11 forKeyedSubscript:@"errCode"];

    (*(*(a1 + 56) + 16))();
  }
}

- (void)requestThumbnailDataForObjectHandle:(id)a3 options:(id)a4 withReply:(id)a5
{
  v12 = _NSConcreteStackBlock;
  v13 = 3221225472;
  v14 = __72__MSCameraDevice_requestThumbnailDataForObjectHandle_options_withReply___block_invoke;
  v15 = &unk_100024670;
  v16 = self;
  v17 = a3;
  v18 = a4;
  v19 = a5;
  v8 = v19;
  v9 = v18;
  v10 = v17;
  v11 = [NSBlockOperation blockOperationWithBlock:&v12];
  [(MSCameraDevice *)self addInteractiveOperation:v11, v12, v13, v14, v15, v16];
}

void __72__MSCameraDevice_requestThumbnailDataForObjectHandle_options_withReply___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) cameraItemWithObjectID:{objc_msgSend(*(a1 + 40), "unsignedIntegerValue")}];
  __ICOSLogCreate();
  if (__ICLogTypeEnabled())
  {
    v3 = [v2 name];
    if ([v3 length] >= 0x15)
    {
      v4 = [v3 substringWithRange:{0, 18}];
      v5 = [v4 stringByAppendingString:@".."];

      v3 = v5;
    }

    v6 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"requestThumbnailDataForObjectHandle: %d", [*(a1 + 40) intValue]);
    v7 = _gICOSLog;
    if (os_log_type_enabled(_gICOSLog, OS_LOG_TYPE_DEFAULT))
    {
      v8 = v3;
      v9 = v7;
      *buf = 136446466;
      v13 = [v3 UTF8String];
      v14 = 2114;
      v15 = v6;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%{public}20s | %{public}@", buf, 0x16u);
    }
  }

  if (v2)
  {
    [v2 thumbnailDataWithOptions:*(a1 + 48) reply:*(a1 + 56)];
  }

  else
  {
    v10 = +[NSMutableDictionary dictionary];
    v11 = [NSNumber numberWithInteger:-21450];
    [v10 setObject:v11 forKeyedSubscript:@"errCode"];

    (*(*(a1 + 56) + 16))();
  }
}

- (void)requestDownloadObjectHandle:(id)a3 options:(id)a4 withReply:(id)a5
{
  v10 = _NSConcreteStackBlock;
  v11 = 3221225472;
  v12 = __64__MSCameraDevice_requestDownloadObjectHandle_options_withReply___block_invoke;
  v13 = &unk_100024648;
  v14 = a4;
  v15 = a5;
  v7 = v15;
  v8 = v14;
  v9 = [NSBlockOperation blockOperationWithBlock:&v10];
  [(MSCameraDevice *)self addInteractiveOperation:v9, v10, v11, v12, v13];
}

void __64__MSCameraDevice_requestDownloadObjectHandle_options_withReply___block_invoke(uint64_t a1)
{
  v3 = +[NSMutableDictionary dictionary];
  [v3 addEntriesFromDictionary:*(a1 + 32)];
  v2 = [NSNumber numberWithInteger:-9934];
  [v3 setObject:v2 forKeyedSubscript:@"errCode"];

  (*(*(a1 + 40) + 16))();
}

- (void)requestReadDataFromObjectHandle:(id)a3 options:(id)a4 withReply:(id)a5
{
  v12 = _NSConcreteStackBlock;
  v13 = 3221225472;
  v14 = __68__MSCameraDevice_requestReadDataFromObjectHandle_options_withReply___block_invoke;
  v15 = &unk_100024670;
  v16 = self;
  v17 = a3;
  v18 = a4;
  v19 = a5;
  v8 = v19;
  v9 = v18;
  v10 = v17;
  v11 = [NSBlockOperation blockOperationWithBlock:&v12];
  [(MSCameraDevice *)self addInteractiveOperation:v11, v12, v13, v14, v15, v16];
}

void __68__MSCameraDevice_requestReadDataFromObjectHandle_options_withReply___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) cameraItemWithObjectID:{objc_msgSend(*(a1 + 40), "unsignedIntegerValue")}];
  v5 = v2;
  if (v2)
  {
    [v2 readDataWithOptions:*(a1 + 48) reply:*(a1 + 56)];
  }

  else
  {
    v3 = +[NSMutableDictionary dictionary];
    v4 = [NSNumber numberWithInteger:-21450];
    [v3 setObject:v4 forKeyedSubscript:@"errCode"];

    (*(*(a1 + 56) + 16))();
  }
}

- (void)requestDeleteObjectHandle:(id)a3 options:(id)a4 withReply:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  +[NSXPCConnection currentConnection];
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = __62__MSCameraDevice_requestDeleteObjectHandle_options_withReply___block_invoke;
  v16[3] = &unk_1000246C0;
  v16[4] = self;
  v19 = v17 = v8;
  v20 = v10;
  v18 = v9;
  v11 = v19;
  v12 = v10;
  v13 = v9;
  v14 = v8;
  v15 = [NSBlockOperation blockOperationWithBlock:v16];
  [(MSCameraDevice *)self addInteractiveOperation:v15];
}

void __62__MSCameraDevice_requestDeleteObjectHandle_options_withReply___block_invoke(uint64_t a1)
{
  [*(a1 + 32) holdPowerAssertion];
  v2 = [*(a1 + 32) cameraItemWithObjectID:{objc_msgSend(*(a1 + 40), "unsignedIntegerValue")}];
  __ICOSLogCreate();
  v3 = @"delete";
  if ([@"delete" length] >= 0x15)
  {
    v4 = [@"delete" substringWithRange:{0, 18}];
    v3 = [v4 stringByAppendingString:@".."];
  }

  v5 = [v2 name];
  v6 = [NSString stringWithFormat:@"MSCamera - %@", v5];

  v7 = _gICOSLog;
  if (os_log_type_enabled(_gICOSLog, OS_LOG_TYPE_DEFAULT))
  {
    v8 = v3;
    v9 = v7;
    *buf = 136446466;
    v28 = [(__CFString *)v3 UTF8String];
    v29 = 2114;
    v30 = v6;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%{public}20s | %{public}@", buf, 0x16u);
  }

  if (v2)
  {
    v10 = [*(a1 + 32) deleteFile:v2];
    if (v10)
    {
      v11 = 0;
    }

    else
    {
      v11 = -9941;
    }

    v12 = +[NSMutableDictionary dictionary];
    [v12 addEntriesFromDictionary:*(a1 + 48)];
    v13 = [NSNumber numberWithInteger:v11];
    [v12 setObject:v13 forKeyedSubscript:@"errCode"];

    __ICOSLogCreate();
    v14 = @"delete";
    if ([@"delete" length] >= 0x15)
    {
      v15 = [@"delete" substringWithRange:{0, 18}];
      v14 = [v15 stringByAppendingString:@".."];
    }

    v16 = [NSString stringWithFormat:@"MSCamera reply - %@", v12];
    v17 = _gICOSLog;
    if (os_log_type_enabled(_gICOSLog, OS_LOG_TYPE_DEFAULT))
    {
      v18 = v14;
      v19 = v17;
      v20 = [(__CFString *)v14 UTF8String];
      *buf = 136446466;
      v28 = v20;
      v29 = 2114;
      v30 = v16;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "%{public}20s | %{public}@", buf, 0x16u);
    }

    (*(*(a1 + 64) + 16))();
    if (v10)
    {
      v21 = *(a1 + 32);
      v24[0] = _NSConcreteStackBlock;
      v24[1] = 3221225472;
      v24[2] = __62__MSCameraDevice_requestDeleteObjectHandle_options_withReply___block_invoke_132;
      v24[3] = &unk_100024698;
      v24[4] = v21;
      v25 = *(a1 + 56);
      v26 = *(a1 + 40);
      v22 = [NSBlockOperation blockOperationWithBlock:v24];
      [v21 addInteractiveOperation:v22];
    }
  }

  else
  {
    v12 = +[NSMutableDictionary dictionary];
    v23 = [NSNumber numberWithInteger:-21450];
    [v12 setObject:v23 forKeyedSubscript:@"errCode"];

    (*(*(a1 + 64) + 16))();
  }

  [*(a1 + 32) releasePowerAssertion];
}

void __62__MSCameraDevice_requestDeleteObjectHandle_options_withReply___block_invoke_132(uint64_t a1)
{
  v2 = [*(a1 + 32) allConnections];
  v3 = [v2 mutableCopy];

  if (v3)
  {
    [v3 removeObject:*(a1 + 40)];
    v6 = *(a1 + 48);
    v7 = @"ICObjectIDArray";
    v4 = [NSArray arrayWithObjects:&v6 count:1];
    v8 = v4;
    v5 = [NSDictionary dictionaryWithObjects:&v8 forKeys:&v7 count:1];

    [*(a1 + 32) sendRemovedItemsNotification:v5 toConnections:v3];
  }
}

- (void)requestSecurityScopedURLForObjectHandle:(id)a3 withReply:(id)a4
{
  v6 = a3;
  v7 = a4;
  +[NSXPCConnection currentConnection];
  v12 = _NSConcreteStackBlock;
  v13 = 3221225472;
  v14 = __68__MSCameraDevice_requestSecurityScopedURLForObjectHandle_withReply___block_invoke;
  v15 = &unk_100024670;
  v16 = self;
  v18 = v17 = v6;
  v19 = v7;
  v8 = v7;
  v9 = v18;
  v10 = v6;
  v11 = [NSBlockOperation blockOperationWithBlock:&v12];
  [(MSCameraDevice *)self addInteractiveOperation:v11, v12, v13, v14, v15, v16];
}

void __68__MSCameraDevice_requestSecurityScopedURLForObjectHandle_withReply___block_invoke(uint64_t a1)
{
  [*(a1 + 32) holdPowerAssertion];
  v2 = +[NSMutableDictionary dictionary];
  v3 = [*(a1 + 32) cameraItemWithObjectID:{objc_msgSend(*(a1 + 40), "unsignedIntegerValue")}];
  __ICOSLogCreate();
  v4 = @"scopedURL";
  if ([@"scopedURL" length] >= 0x15)
  {
    v5 = [@"scopedURL" substringWithRange:{0, 18}];
    v4 = [v5 stringByAppendingString:@".."];
  }

  v6 = [v3 name];
  v7 = [NSString stringWithFormat:@"MSCamera - %@", v6];

  v8 = _gICOSLog;
  if (os_log_type_enabled(_gICOSLog, OS_LOG_TYPE_DEFAULT))
  {
    v9 = v4;
    v10 = v8;
    *buf = 136446466;
    *&buf[4] = [(__CFString *)v4 UTF8String];
    *&buf[12] = 2114;
    *&buf[14] = v7;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%{public}20s | %{public}@", buf, 0x16u);
  }

  memset(buf, 0, 32);
  v11 = *(a1 + 48);
  if (v11)
  {
    [v11 auditToken];
  }

  v12 = [v3 path];
  [v12 UTF8String];
  v25 = *buf;
  v26 = *&buf[16];
  v13 = sandbox_extension_issue_file_to_process();

  if (v13)
  {
    v14 = [v3 path];
    v15 = [NSURL fileURLWithPath:v14];

    v16 = strlen(v13);
    v17 = CFDataCreate(kCFAllocatorDefault, v13, v16 + 1);
    _CFURLAttachSecurityScopeToFileURL();
    v18 = [[NSSecurityScopedURLWrapper alloc] initWithURL:v15 readonly:1 scope:v17];
    [v2 setObject:v18 forKeyedSubscript:@"ICSecurityScopedWrappedURL"];
    CFRelease(v17);
    v19 = 0;
  }

  else
  {
    __ICOSLogCreate();
    v15 = @"scopedURL";
    if ([@"scopedURL" length] >= 0x15)
    {
      v20 = [@"scopedURL" substringWithRange:{0, 18}];
      v15 = [v20 stringByAppendingString:@".."];
    }

    v21 = *(a1 + 32);
    v22 = __error();
    v18 = [NSString stringWithFormat:@"Could not create sandbox read extension for file URL %@, error: %s", v21, strerror(*v22), v25, v26];
    v23 = _gICOSLog;
    if (os_log_type_enabled(_gICOSLog, OS_LOG_TYPE_ERROR))
    {
      __68__MSCameraDevice_requestSecurityScopedURLForObjectHandle_withReply___block_invoke_cold_1(v15, v23);
    }

    v19 = -21450;
  }

  v24 = [NSNumber numberWithInteger:v19];
  [v2 setObject:v24 forKeyedSubscript:@"errCode"];

  (*(*(a1 + 56) + 16))();
  [*(a1 + 32) releasePowerAssertion];
}

- (void)requestFingerprintForObjectHandle:(id)a3 withReply:(id)a4
{
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = __62__MSCameraDevice_requestFingerprintForObjectHandle_withReply___block_invoke;
  v9[3] = &unk_1000246E8;
  v9[4] = self;
  v10 = a3;
  v11 = a4;
  v6 = v11;
  v7 = v10;
  v8 = [NSBlockOperation blockOperationWithBlock:v9];
  [(MSCameraDevice *)self addInteractiveOperation:v8];
}

void __62__MSCameraDevice_requestFingerprintForObjectHandle_withReply___block_invoke(uint64_t a1)
{
  [*(a1 + 32) holdPowerAssertion];
  v2 = +[NSMutableDictionary dictionary];
  v3 = [*(a1 + 32) cameraItemWithObjectID:{objc_msgSend(*(a1 + 40), "unsignedIntegerValue")}];
  v8 = 0;
  v4 = [v3 fingerprintWithError:&v8];
  v5 = v8;
  if (v4)
  {
    [v2 setObject:v4 forKeyedSubscript:@"ICCameraFileFingerprint"];
  }

  if (v5)
  {
    v6 = [v5 code];
  }

  else
  {
    v6 = 0;
  }

  v7 = [NSNumber numberWithInteger:v6];
  [v2 setObject:v7 forKeyedSubscript:@"errCode"];

  (*(*(a1 + 48) + 16))();
  [*(a1 + 32) releasePowerAssertion];
}

- (void)requestRefreshObjectHandleInfo:(id)a3 withReply:(id)a4
{
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = __59__MSCameraDevice_requestRefreshObjectHandleInfo_withReply___block_invoke;
  v9[3] = &unk_1000246E8;
  v9[4] = self;
  v10 = a3;
  v11 = a4;
  v6 = v11;
  v7 = v10;
  v8 = [NSBlockOperation blockOperationWithBlock:v9];
  [(MSCameraDevice *)self addInteractiveOperation:v8];
}

void __59__MSCameraDevice_requestRefreshObjectHandleInfo_withReply___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) cameraItemWithObjectID:{objc_msgSend(*(a1 + 40), "unsignedIntegerValue")}];
  v3 = +[NSMutableDictionary dictionary];
  if (v2)
  {
    v4 = +[NSMutableDictionary dictionary];
    v5 = [v2 refreshInfo:v4];
    if ([v4 count])
    {
      v9 = *(a1 + 40);
      v10 = v4;
      v6 = [NSDictionary dictionaryWithObjects:&v10 forKeys:&v9 count:1];
      [v3 setObject:v6 forKeyedSubscript:@"ICObjectInfoUpdate"];

      v7 = 0;
    }

    else
    {
      v7 = -9922;
    }
  }

  else
  {
    v7 = -9922;
  }

  v8 = [NSNumber numberWithInteger:v7];
  [v3 setObject:v8 forKeyedSubscript:@"errCode"];

  (*(*(a1 + 48) + 16))();
}

- (id)filesystemPath
{
  v2 = [(MSCameraDevice *)self cameraDictionary];
  v3 = [v2 objectForKeyedSubscript:@"ICDeviceVolumePath"];

  return v3;
}

- (unint64_t)itemsInFolder:(id)a3
{
  v3 = a3;
  v4 = +[NSFileManager defaultManager];
  v27 = v3;
  v5 = [NSURL fileURLWithPath:v3];
  v39 = NSURLContentModificationDateKey;
  v6 = [NSArray arrayWithObjects:&v39 count:1];
  v7 = [v4 contentsOfDirectoryAtURL:v5 includingPropertiesForKeys:v6 options:4 error:0];

  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  obj = v7;
  v8 = [obj countByEnumeratingWithState:&v29 objects:v38 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = 0;
    v11 = *v30;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v30 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v29 + 1) + 8 * i);
        v14 = +[NSFileManager defaultManager];
        v37 = NSURLContentModificationDateKey;
        v15 = [NSArray arrayWithObjects:&v37 count:1];
        v16 = [v14 contentsOfDirectoryAtURL:v13 includingPropertiesForKeys:v15 options:4 error:0];

        v17 = v16;
        v18 = [v16 count];
        __ICOSLogCreate();
        v19 = @"content";
        if ([@"content" length] >= 0x15)
        {
          v20 = [@"content" substringWithRange:{0, 18}];
          v19 = [v20 stringByAppendingString:@".."];
        }

        v10 += v18;
        v21 = [NSString stringWithFormat:@"[%05lu] - %@", v10, v13];
        v22 = _gICOSLog;
        if (os_log_type_enabled(_gICOSLog, OS_LOG_TYPE_DEFAULT))
        {
          v23 = v19;
          v24 = v22;
          v25 = [(__CFString *)v19 UTF8String];
          *buf = 136446466;
          v34 = v25;
          v35 = 2114;
          v36 = v21;
          _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "%{public}20s | %{public}@", buf, 0x16u);
        }
      }

      v9 = [obj countByEnumeratingWithState:&v29 objects:v38 count:16];
    }

    while (v9);
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (void)sendContentsNotification:(id)a3
{
  v6 = _NSConcreteStackBlock;
  v7 = 3221225472;
  v8 = __43__MSCameraDevice_sendContentsNotification___block_invoke;
  v9 = &unk_100024750;
  v10 = self;
  v11 = a3;
  v4 = v11;
  v5 = [NSBlockOperation blockOperationWithBlock:&v6];
  [(MSCameraDevice *)self addInitiatedOperation:v5, v6, v7, v8, v9, v10];
}

void __43__MSCameraDevice_sendContentsNotification___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) indexedFolders];
  __ICOSLogCreate();
  v2 = @"FolderCount";
  if ([@"FolderCount" length] >= 0x15)
  {
    v3 = [@"FolderCount" substringWithRange:{0, 18}];
    v2 = [v3 stringByAppendingString:@".."];
  }

  v4 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%lu", [v1 count]);
  v5 = _gICOSLog;
  if (os_log_type_enabled(_gICOSLog, OS_LOG_TYPE_DEFAULT))
  {
    v6 = v2;
    v7 = v5;
    *buf = 136446466;
    v69 = [(__CFString *)v2 UTF8String];
    v70 = 2114;
    v71 = v4;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%{public}20s | %{public}@", buf, 0x16u);
  }

  if (v1)
  {
    v8 = objc_alloc_init(NSMutableArray);
    v55 = 0u;
    v56 = 0u;
    v57 = 0u;
    v58 = 0u;
    v9 = v1;
    v10 = [v9 countByEnumeratingWithState:&v55 objects:v67 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v56;
      do
      {
        v13 = 0;
        do
        {
          if (*v56 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = [*(*(&v55 + 1) + 8 * v13) cameraItemProxy];
          [v8 addObject:v14];

          v13 = v13 + 1;
        }

        while (v11 != v13);
        v11 = [v9 countByEnumeratingWithState:&v55 objects:v67 count:16];
      }

      while (v11);
    }

    v65 = @"ICCameraItemProxyArray";
    v66 = v8;
    v15 = [NSDictionary dictionaryWithObjects:&v66 forKeys:&v65 count:1];
    v16 = *(a1 + 32);
    v64 = *(a1 + 40);
    v17 = [NSArray arrayWithObjects:&v64 count:1];
    [v16 sendAddedItemsNotification:v15 toConnections:v17];
  }

  v18 = [*(a1 + 32) indexedFiles];
  __ICOSLogCreate();
  v19 = @"FileCount";
  if ([@"FileCount" length] >= 0x15)
  {
    v20 = [@"FileCount" substringWithRange:{0, 18}];
    v19 = [v20 stringByAppendingString:@".."];
  }

  v21 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%lu", [v18 count]);
  v22 = _gICOSLog;
  if (os_log_type_enabled(_gICOSLog, OS_LOG_TYPE_DEFAULT))
  {
    v23 = v19;
    v24 = v22;
    v25 = [(__CFString *)v19 UTF8String];
    *buf = 136446466;
    v69 = v25;
    v70 = 2114;
    v71 = v21;
    _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "%{public}20s | %{public}@", buf, 0x16u);
  }

  if (v18)
  {
    v43 = v18;
    v44 = v1;
    v51 = 0u;
    v52 = 0u;
    v53 = 0u;
    v54 = 0u;
    v26 = [v18 copyGroupIntoDictionary:&__block_literal_global];
    v27 = [v26 countByEnumeratingWithState:&v51 objects:v63 count:16];
    if (v27)
    {
      v28 = v27;
      v45 = *v52;
      do
      {
        v29 = 0;
        do
        {
          if (*v52 != v45)
          {
            objc_enumerationMutation(v26);
          }

          v30 = *(*(&v51 + 1) + 8 * v29);
          v31 = objc_alloc_init(NSMutableArray);
          v47 = 0u;
          v48 = 0u;
          v49 = 0u;
          v50 = 0u;
          v32 = [v26 objectForKeyedSubscript:v30];
          v33 = [v32 countByEnumeratingWithState:&v47 objects:v62 count:16];
          if (v33)
          {
            v34 = v33;
            v35 = *v48;
            do
            {
              v36 = 0;
              do
              {
                if (*v48 != v35)
                {
                  objc_enumerationMutation(v32);
                }

                v37 = *(*(&v47 + 1) + 8 * v36);
                v38 = objc_autoreleasePoolPush();
                v39 = [v37 cameraItemProxy];
                [v31 addObject:v39];

                objc_autoreleasePoolPop(v38);
                v36 = v36 + 1;
              }

              while (v34 != v36);
              v34 = [v32 countByEnumeratingWithState:&v47 objects:v62 count:16];
            }

            while (v34);
          }

          v60 = @"ICCameraItemProxyArray";
          v61 = v31;
          v40 = [NSDictionary dictionaryWithObjects:&v61 forKeys:&v60 count:1];
          v41 = *(a1 + 32);
          v59 = *(a1 + 40);
          v42 = [NSArray arrayWithObjects:&v59 count:1];
          [v41 sendAddedItemsNotification:v40 toConnections:v42];

          v29 = v29 + 1;
        }

        while (v29 != v28);
        v28 = [v26 countByEnumeratingWithState:&v51 objects:v63 count:16];
      }

      while (v28);
    }

    v18 = v43;
    v1 = v44;
  }
}

- (id)name
{
  v2 = [(MSCameraDevice *)self cameraDictionary];
  v3 = [v2 objectForKeyedSubscript:@"ICDeviceName"];

  return v3;
}

- (void)preflight:(char *)a3
{
  v4 = [NSString stringWithUTF8String:a3];
  v5 = +[NSFileManager defaultManager];
  v63 = v4;
  v6 = [NSURL fileURLWithPath:v4];
  v86 = NSURLContentModificationDateKey;
  v7 = [NSArray arrayWithObjects:&v86 count:1];
  v8 = [v5 contentsOfDirectoryAtURL:v6 includingPropertiesForKeys:v7 options:4 error:0];

  v77 = 0u;
  v78 = 0u;
  v75 = 0u;
  v76 = 0u;
  obj = v8;
  v9 = [obj countByEnumeratingWithState:&v75 objects:v85 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v76;
    v64 = *v76;
    do
    {
      v12 = 0;
      v65 = v10;
      do
      {
        if (*v76 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v75 + 1) + 8 * v12);
        v14 = [v13 lastPathComponent];
        if (_ValidDCFObjectName([v14 UTF8String], objc_msgSend(v14, "length"), 1))
        {
          v67 = v14;
          v68 = v12;
          [(MSCameraDevice *)self incrementPreflightObjectCount:1];
          v15 = +[NSFileManager defaultManager];
          v84[0] = NSURLContentModificationDateKey;
          v84[1] = NSURLFileSizeKey;
          v16 = [NSArray arrayWithObjects:v84 count:2];
          v17 = [v15 contentsOfDirectoryAtURL:v13 includingPropertiesForKeys:v16 options:4 error:0];

          v73 = 0u;
          v74 = 0u;
          v71 = 0u;
          v72 = 0u;
          v18 = v17;
          v19 = [v18 countByEnumeratingWithState:&v71 objects:v83 count:16];
          if (v19)
          {
            v20 = v19;
            v69 = 0;
            v21 = *v72;
            do
            {
              for (i = 0; i != v20; i = i + 1)
              {
                if (*v72 != v21)
                {
                  objc_enumerationMutation(v18);
                }

                v23 = *(*(&v71 + 1) + 8 * i);
                v24 = [v23 lastPathComponent];
                if (!_ValidDCFObjectName([v24 UTF8String], objc_msgSend(v24, "length"), 0))
                {
                  goto LABEL_14;
                }

                v25 = [v23 path];
                v26 = [v25 lastPathComponent];
                v27 = [v26 pathExtension];
                [v27 lowercaseString];
                v28 = v20;
                v29 = v21;
                v30 = self;
                v32 = v31 = v18;
                v70 = [v32 isEqualToString:@"mov"];

                v18 = v31;
                self = v30;
                v21 = v29;
                v20 = v28;

                if ((v70 & 1) == 0)
                {
                  [(MSCameraDevice *)self incrementPreflightObjectCount:1];
                  v69 = (v69 + 1);
                }

                else
                {
LABEL_14:
                  __ICOSLogCreate();
                  v33 = [(MSCameraDevice *)self name];
                  if ([v33 length] >= 0x15)
                  {
                    v34 = [v33 substringWithRange:{0, 18}];
                    v35 = [v34 stringByAppendingString:@".."];

                    v33 = v35;
                  }

                  v36 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"!DCF File: [%16s]", [v24 UTF8String]);
                  v37 = _gICOSLog;
                  if (os_log_type_enabled(_gICOSLog, OS_LOG_TYPE_DEFAULT))
                  {
                    v38 = v33;
                    v39 = v37;
                    v40 = [v33 UTF8String];
                    *buf = 136446466;
                    v80 = v40;
                    v81 = 2114;
                    v82 = v36;
                    _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_DEFAULT, "%{public}20s | %{public}@", buf, 0x16u);
                  }
                }
              }

              v20 = [v18 countByEnumeratingWithState:&v71 objects:v83 count:16];
            }

            while (v20);
          }

          else
          {
            v69 = 0;
          }

          __ICOSLogCreate();
          v48 = [(MSCameraDevice *)self name];
          if ([v48 length] >= 0x15)
          {
            v49 = [v48 substringWithRange:{0, 18}];
            v50 = [v49 stringByAppendingString:@".."];

            v48 = v50;
          }

          v10 = v65;
          v14 = v67;
          v51 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"🗂 Folder Added - %04d - [%8s]", 1, [v67 UTF8String]);
          v52 = _gICOSLog;
          if (os_log_type_enabled(_gICOSLog, OS_LOG_TYPE_DEFAULT))
          {
            v53 = v48;
            v54 = v52;
            v55 = [v48 UTF8String];
            *buf = 136446466;
            v80 = v55;
            v81 = 2114;
            v82 = v51;
            _os_log_impl(&_mh_execute_header, v54, OS_LOG_TYPE_DEFAULT, "%{public}20s | %{public}@", buf, 0x16u);
          }

          __ICOSLogCreate();
          v43 = [(MSCameraDevice *)self name];
          v12 = v68;
          if ([v43 length] >= 0x15)
          {
            v56 = [v43 substringWithRange:{0, 18}];
            v57 = [v56 stringByAppendingString:@".."];

            v43 = v57;
          }

          v58 = [NSString stringWithFormat:@"🗳 Files Added  - %04d", v69];
          v59 = _gICOSLog;
          if (os_log_type_enabled(_gICOSLog, OS_LOG_TYPE_DEFAULT))
          {
            v60 = v43;
            v61 = v59;
            v62 = [v43 UTF8String];
            *buf = 136446466;
            v80 = v62;
            v81 = 2114;
            v82 = v58;
            _os_log_impl(&_mh_execute_header, v61, OS_LOG_TYPE_DEFAULT, "%{public}20s | %{public}@", buf, 0x16u);
          }

          v11 = v64;
        }

        else
        {
          __ICOSLogCreate();
          v18 = [(MSCameraDevice *)self name];
          if ([v18 length] >= 0x15)
          {
            v41 = [v18 substringWithRange:{0, 18}];
            v42 = [v41 stringByAppendingString:@".."];

            v18 = v42;
          }

          v43 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"!DCF Folder: [%16s]", [v14 UTF8String]);
          v44 = _gICOSLog;
          if (os_log_type_enabled(_gICOSLog, OS_LOG_TYPE_DEFAULT))
          {
            v45 = v18;
            v46 = v44;
            v47 = [v18 UTF8String];
            *buf = 136446466;
            v80 = v47;
            v81 = 2114;
            v82 = v43;
            _os_log_impl(&_mh_execute_header, v46, OS_LOG_TYPE_DEFAULT, "%{public}20s | %{public}@", buf, 0x16u);
          }
        }

        v12 = v12 + 1;
      }

      while (v12 != v10);
      v10 = [obj countByEnumeratingWithState:&v75 objects:v85 count:16];
    }

    while (v10);
  }
}

- (void)preflight
{
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  obj = [(MSCameraDevice *)self mediaPaths];
  v3 = [obj countByEnumeratingWithState:&v20 objects:v28 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v21;
    do
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v21 != v5)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v20 + 1) + 8 * i);
        [(MSCameraDevice *)self incrementPreflightObjectCount:1];
        __ICOSLogCreate();
        v8 = [(MSCameraDevice *)self name];
        if ([v8 length] >= 0x15)
        {
          v9 = [v8 substringWithRange:{0, 18}];
          v10 = [v9 stringByAppendingString:@".."];

          v8 = v10;
        }

        v11 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"🗄 Store Added  - %04d - [%8s]", 1, [v7 UTF8String]);
        v12 = _gICOSLog;
        if (os_log_type_enabled(_gICOSLog, OS_LOG_TYPE_DEFAULT))
        {
          v13 = v8;
          v14 = v12;
          v15 = [v8 UTF8String];
          *buf = 136446466;
          v25 = v15;
          v26 = 2114;
          v27 = v11;
          _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "%{public}20s | %{public}@", buf, 0x16u);
        }

        v16 = [(MSCameraDevice *)self cameraDictionary];
        v17 = [v16 objectForKeyedSubscript:@"ICDeviceVolumePath"];

        v18 = [v17 stringByAppendingPathComponent:v7];
        -[MSCameraDevice preflight:](self, "preflight:", [v18 fileSystemRepresentation]);
      }

      v4 = [obj countByEnumeratingWithState:&v20 objects:v28 count:16];
    }

    while (v4);
  }

  [(MSCameraDevice *)self notifyDeviceReadyPreflightCount];
}

- (void)notifyDeviceReadyPreflightCount
{
  v3 = [(MSCameraDevice *)self preflightCount];
  v17[0] = @"ICDeviceStatus";
  v17[1] = @"ICANumberOfPreflightObjectsKey";
  v18[0] = @"ICDeviceIsReady";
  v4 = [NSNumber numberWithUnsignedInteger:v3];
  v18[1] = v4;
  v5 = [NSDictionary dictionaryWithObjects:v18 forKeys:v17 count:2];

  v6 = [(MSCameraDevice *)self allConnections];
  [(MSCameraDevice *)self sendStatusNotification:v5 toConnections:v6];

  __ICOSLogCreate();
  v7 = @"notifyDeviceReady";
  if ([@"notifyDeviceReady" length] >= 0x15)
  {
    v8 = [@"notifyDeviceReady" substringWithRange:{0, 18}];
    v7 = [v8 stringByAppendingString:@".."];
  }

  v9 = [NSString stringWithFormat:@"%lu Preflighted", v3];
  v10 = _gICOSLog;
  if (os_log_type_enabled(_gICOSLog, OS_LOG_TYPE_DEFAULT))
  {
    v11 = v7;
    v12 = v10;
    *buf = 136446466;
    v14 = [(__CFString *)v7 UTF8String];
    v15 = 2114;
    v16 = v9;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "%{public}20s | %{public}@", buf, 0x16u);
  }
}

- (void)notifyDeviceReadyObjectCount
{
  v3 = [(MSCameraDevice *)self indexedMediaSet];
  v4 = [v3 mediaItemCount];

  v18[0] = @"ICDeviceStatus";
  v18[1] = @"ICANumberOfPreflightObjectsKey";
  v19[0] = @"ICDeviceIsReady";
  v5 = [NSNumber numberWithUnsignedInteger:v4];
  v19[1] = v5;
  v6 = [NSDictionary dictionaryWithObjects:v19 forKeys:v18 count:2];

  v7 = [(MSCameraDevice *)self allConnections];
  [(MSCameraDevice *)self sendStatusNotification:v6 toConnections:v7];

  __ICOSLogCreate();
  v8 = @"notifyDeviceReady";
  if ([@"notifyDeviceReady" length] >= 0x15)
  {
    v9 = [@"notifyDeviceReady" substringWithRange:{0, 18}];
    v8 = [v9 stringByAppendingString:@".."];
  }

  v10 = [NSString stringWithFormat:@"%lu Preflighted", v4];
  v11 = _gICOSLog;
  if (os_log_type_enabled(_gICOSLog, OS_LOG_TYPE_DEFAULT))
  {
    v12 = v8;
    v13 = v11;
    *buf = 136446466;
    v15 = [(__CFString *)v8 UTF8String];
    v16 = 2114;
    v17 = v10;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "%{public}20s | %{public}@", buf, 0x16u);
  }
}

- (id)reflight:(char *)a3 error:(id *)a4
{
  v5 = +[NSMutableArray array];
  v6 = [NSString stringWithUTF8String:a3];
  v7 = +[NSFileManager defaultManager];
  v35 = v6;
  v8 = [NSURL fileURLWithPath:v6];
  v51 = NSURLContentModificationDateKey;
  v9 = [NSArray arrayWithObjects:&v51 count:1];
  v10 = [v7 contentsOfDirectoryAtURL:v8 includingPropertiesForKeys:v9 options:4 error:0];

  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  v11 = v10;
  v12 = [v11 countByEnumeratingWithState:&v44 objects:v50 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v45;
    v36 = *v45;
    v37 = v11;
    while (2)
    {
      v15 = 0;
      v38 = v13;
      do
      {
        if (*v45 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v44 + 1) + 8 * v15);
        v17 = [v16 lastPathComponent];
        if (_ValidDCFObjectName([v17 UTF8String], objc_msgSend(v17, "length"), 1))
        {
          [v5 addObject:v16];
          v18 = +[NSFileManager defaultManager];
          v49 = NSURLContentModificationDateKey;
          v19 = [NSArray arrayWithObjects:&v49 count:1];
          v20 = [v18 contentsOfDirectoryAtURL:v16 includingPropertiesForKeys:v19 options:4 error:a4];

          if (*a4)
          {
            __ICOSLogCreate();
            v29 = v17;
            v30 = v29;
            if ([v29 length] >= 0x15)
            {
              v31 = [v29 substringWithRange:{0, 18}];
              v30 = [v31 stringByAppendingString:@".."];
            }

            v32 = [NSString stringWithFormat:@"contentsOfDirectoryAtURL Returned Error: %@", *a4];
            v33 = _gICOSLog;
            if (os_log_type_enabled(_gICOSLog, OS_LOG_TYPE_ERROR))
            {
              __68__MSCameraDevice_requestSecurityScopedURLForObjectHandle_withReply___block_invoke_cold_1(v30, v33);
            }

            v28 = 0;
            goto LABEL_26;
          }

          v42 = 0u;
          v43 = 0u;
          v40 = 0u;
          v41 = 0u;
          v21 = v20;
          v22 = [v21 countByEnumeratingWithState:&v40 objects:v48 count:16];
          if (v22)
          {
            v23 = v22;
            v24 = *v41;
            do
            {
              for (i = 0; i != v23; i = i + 1)
              {
                if (*v41 != v24)
                {
                  objc_enumerationMutation(v21);
                }

                v26 = *(*(&v40 + 1) + 8 * i);
                v27 = [v26 lastPathComponent];
                if (_ValidDCFObjectName([v27 UTF8String], objc_msgSend(v27, "length"), 0))
                {
                  [v5 addObject:v26];
                }
              }

              v23 = [v21 countByEnumeratingWithState:&v40 objects:v48 count:16];
            }

            while (v23);
          }

          v14 = v36;
          v11 = v37;
          v13 = v38;
        }

        v15 = v15 + 1;
      }

      while (v15 != v13);
      v13 = [v11 countByEnumeratingWithState:&v44 objects:v50 count:16];
      if (v13)
      {
        continue;
      }

      break;
    }
  }

  v28 = v5;
LABEL_26:

  return v28;
}

- (void)reflight
{
  if (![(MSCameraDevice *)self filledStorageCache]|| [(MSCameraDevice *)self reflightPaused]|| [(MSCameraDevice *)self movieRecording])
  {
    __ICOSLogCreate();
    v3 = [(MSCameraDevice *)self name];
    if ([v3 length] >= 0x15)
    {
      v4 = [v3 substringWithRange:{0, 18}];
      v5 = [v4 stringByAppendingString:@".."];

      v3 = v5;
    }

    v6 = [NSString stringWithFormat:@"Reflight Cancelled - enumerating[%d], paused[%d], recording[%d]", [(MSCameraDevice *)self filledStorageCache]^ 1, [(MSCameraDevice *)self reflightPaused], [(MSCameraDevice *)self movieRecording]];
    v7 = _gICOSLog;
    if (os_log_type_enabled(_gICOSLog, OS_LOG_TYPE_DEFAULT))
    {
      v8 = v3;
      v9 = v7;
      *buf = 136446466;
      v12 = [v3 UTF8String];
      v13 = 2114;
      v14 = v6;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%{public}20s | %{public}@", buf, 0x16u);
    }
  }

  else
  {
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = __26__MSCameraDevice_reflight__block_invoke;
    v10[3] = &unk_100024778;
    v10[4] = self;
    v3 = [NSBlockOperation blockOperationWithBlock:v10];
    [(MSCameraDevice *)self addInitiatedOperation:v3];
  }
}

void __26__MSCameraDevice_reflight__block_invoke(uint64_t a1)
{
  v91 = +[NSMutableArray array];
  v2 = [*(a1 + 32) cameraDictionary];
  v104 = a1;
  if (!v2)
  {
    goto LABEL_12;
  }

  v3 = v2;
  v4 = [*(a1 + 32) cameraDictionary];
  v5 = [v4 objectForKeyedSubscript:@"ICDeviceVolumePath"];

  if (!v5)
  {
    goto LABEL_12;
  }

  v139 = 0u;
  v140 = 0u;
  v137 = 0u;
  v138 = 0u;
  obj = [*(a1 + 32) mediaPaths];
  v6 = [obj countByEnumeratingWithState:&v137 objects:v154 count:16];
  if (!v6)
  {
LABEL_11:

    a1 = v104;
LABEL_12:
    obj = [*(a1 + 32) copyIndexedFoldersAndFilesURLs];
    v20 = [NSMutableSet setWithArray:?];
    v89 = [NSMutableSet setWithArray:v91];
    [v20 minusSet:?];
    v21 = +[NSMutableArray array];
    v132 = 0u;
    v133 = 0u;
    v134 = 0u;
    v135 = 0u;
    v100 = v20;
    v22 = [v100 countByEnumeratingWithState:&v132 objects:v153 count:16];
    if (v22)
    {
      v23 = v22;
      v24 = *v133;
      do
      {
        for (i = 0; i != v23; i = i + 1)
        {
          if (*v133 != v24)
          {
            objc_enumerationMutation(v100);
          }

          v26 = objc_getAssociatedObject(*(*(&v132 + 1) + 8 * i), "ICObjectHandle");
          [*(a1 + 32) removeCameraItemFromIndex:{objc_msgSend(v26, "intValue")}];
          [v21 addObject:v26];
        }

        v23 = [v100 countByEnumeratingWithState:&v132 objects:v153 count:16];
      }

      while (v23);
    }

    if ([v21 count])
    {
      v27 = *(a1 + 32);
      v129[0] = _NSConcreteStackBlock;
      v129[1] = 3221225472;
      v129[2] = __26__MSCameraDevice_reflight__block_invoke_2;
      v129[3] = &unk_100024750;
      v28 = v21;
      v29 = *(a1 + 32);
      v130 = v28;
      v131 = v29;
      v30 = [NSBlockOperation blockOperationWithBlock:v129];
      [v27 addInteractiveOperation:v30];
    }

    v88 = [NSMutableSet setWithArray:obj];
    [v89 minusSet:?];
    v31 = [v89 allObjects];
    __ICOSLogCreate();
    v32 = @"MSCamera";
    if ([@"MSCamera" length] >= 0x15)
    {
      v33 = [@"MSCamera" substringWithRange:{0, 18}];
      v32 = [v33 stringByAppendingString:@".."];
    }

    v34 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"[%5lu] Added, [%5lu] Removed", [v31 count], objc_msgSend(v21, "count"));
    v35 = _gICOSLog;
    if (os_log_type_enabled(_gICOSLog, OS_LOG_TYPE_DEFAULT))
    {
      v36 = v32;
      v37 = v35;
      v38 = [(__CFString *)v32 UTF8String];
      *buf = 136446466;
      v150 = v38;
      v151 = 2114;
      v152 = v34;
      _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEFAULT, "%{public}20s | %{public}@", buf, 0x16u);
    }

    if ([v31 count])
    {
      v95 = [*(a1 + 32) indexedFolders];
      v39 = +[NSMutableArray array];
      v103 = +[NSMutableArray array];
      v125 = 0u;
      v126 = 0u;
      v127 = 0u;
      v128 = 0u;
      v40 = v31;
      v41 = [v40 countByEnumeratingWithState:&v125 objects:v148 count:16];
      v99 = v21;
      v87 = v31;
      if (v41)
      {
        v42 = v41;
        v43 = *v126;
        v44 = NSURLIsDirectoryKey;
        v93 = v40;
        v94 = v39;
        v92 = *v126;
        do
        {
          v45 = 0;
          v96 = v42;
          do
          {
            if (*v126 != v43)
            {
              objc_enumerationMutation(v40);
            }

            v46 = *(*(&v125 + 1) + 8 * v45);
            v124 = 0;
            v47 = [v46 getResourceValue:&v124 forKey:v44 error:0];
            v101 = v124;
            if (v47 && [v101 BOOLValue])
            {
              v97 = v45;
              v48 = [v46 path];
              v49 = [v48 stringByDeletingLastPathComponent];

              v122 = 0u;
              v123 = 0u;
              v120 = 0u;
              v121 = 0u;
              v106 = v95;
              v50 = [v106 countByEnumeratingWithState:&v120 objects:v147 count:16];
              if (v50)
              {
                v51 = v50;
                v52 = *v121;
                do
                {
                  for (j = 0; j != v51; j = j + 1)
                  {
                    if (*v121 != v52)
                    {
                      objc_enumerationMutation(v106);
                    }

                    v54 = *(*(&v120 + 1) + 8 * j);
                    v55 = [v54 path];
                    v56 = [v49 hasSuffix:v55];

                    if (v56)
                    {
                      v57 = [MSCameraFolder alloc];
                      v58 = [v46 path];
                      v59 = [v58 lastPathComponent];
                      v60 = [(MSCameraFolder *)v57 initWithFSURL:v46 name:v59 parent:v54 device:*(v104 + 32)];

                      if (v60)
                      {
                        [*(v104 + 32) addCameraFolderToIndex:v60];
                        v145 = @"ICCameraItemProxyArray";
                        v61 = [(MSCameraItem *)v60 cameraItemProxy];
                        v144 = v61;
                        v62 = [NSArray arrayWithObjects:&v144 count:1];
                        v146 = v62;
                        v63 = [NSDictionary dictionaryWithObjects:&v146 forKeys:&v145 count:1];

                        v64 = *(v104 + 32);
                        v65 = [v64 allConnections];
                        [v64 sendAddedItemsNotification:v63 toConnections:v65];

                        [(MSCameraFolder *)v60 enumerateContentWithOptions:0];
                        v66 = [(MSCameraItem *)v60 path];
                        [v103 addObject:v66];
                      }
                    }
                  }

                  v51 = [v106 countByEnumeratingWithState:&v120 objects:v147 count:16];
                }

                while (v51);
              }

              v45 = v97;
              v21 = v99;
              a1 = v104;
              v40 = v93;
              v39 = v94;
              v44 = NSURLIsDirectoryKey;
              v43 = v92;
              v42 = v96;
            }

            else
            {
              [v39 addObject:v46];
            }

            v45 = v45 + 1;
          }

          while (v45 != v42);
          v42 = [v40 countByEnumeratingWithState:&v125 objects:v148 count:16];
        }

        while (v42);
      }

      v98 = [*(a1 + 32) indexedFolders];

      v118 = 0u;
      v119 = 0u;
      v116 = 0u;
      v117 = 0u;
      v102 = v39;
      v107 = [v102 countByEnumeratingWithState:&v116 objects:v143 count:16];
      if (v107)
      {
        v105 = *v117;
        do
        {
          for (k = 0; k != v107; k = k + 1)
          {
            if (*v117 != v105)
            {
              objc_enumerationMutation(v102);
            }

            v68 = *(*(&v116 + 1) + 8 * k);
            v112 = 0u;
            v113 = 0u;
            v114 = 0u;
            v115 = 0u;
            v69 = v103;
            v70 = [v69 countByEnumeratingWithState:&v112 objects:v142 count:16];
            if (v70)
            {
              v71 = v70;
              v72 = *v113;
LABEL_55:
              v73 = 0;
              while (1)
              {
                if (*v113 != v72)
                {
                  objc_enumerationMutation(v69);
                }

                v74 = *(*(&v112 + 1) + 8 * v73);
                v75 = [v68 path];
                v76 = [v75 stringByDeletingLastPathComponent];
                LOBYTE(v74) = [v76 isEqualToString:v74];

                if (v74)
                {
                  break;
                }

                if (v71 == ++v73)
                {
                  v71 = [v69 countByEnumeratingWithState:&v112 objects:v142 count:16];
                  if (v71)
                  {
                    goto LABEL_55;
                  }

                  goto LABEL_61;
                }
              }
            }

            else
            {
LABEL_61:

              v77 = [v68 path];
              v69 = [v77 stringByDeletingLastPathComponent];

              v110 = 0u;
              v111 = 0u;
              v108 = 0u;
              v109 = 0u;
              v78 = v98;
              v79 = [v78 countByEnumeratingWithState:&v108 objects:v141 count:16];
              if (v79)
              {
                v80 = v79;
                v81 = *v109;
                do
                {
                  for (m = 0; m != v80; m = m + 1)
                  {
                    if (*v109 != v81)
                    {
                      objc_enumerationMutation(v78);
                    }

                    v83 = *(*(&v108 + 1) + 8 * m);
                    v84 = [v83 path];
                    v85 = [v69 isEqualToString:v84];

                    if (v85)
                    {
                      v86 = [v83 createAssetFromURL:v68 notify:1 preflight:0];
                    }
                  }

                  v80 = [v78 countByEnumeratingWithState:&v108 objects:v141 count:16];
                }

                while (v80);
              }

              v21 = v99;
            }
          }

          v107 = [v102 countByEnumeratingWithState:&v116 objects:v143 count:16];
        }

        while (v107);
      }

      v31 = v87;
    }

    goto LABEL_75;
  }

  v7 = v6;
  v8 = *v138;
LABEL_5:
  v9 = 0;
  while (1)
  {
    if (*v138 != v8)
    {
      objc_enumerationMutation(obj);
    }

    v10 = *(*(&v137 + 1) + 8 * v9);
    v11 = [*(v104 + 32) cameraDictionary];
    v12 = [v11 objectForKeyedSubscript:@"ICDeviceVolumePath"];

    v13 = [v12 stringByAppendingPathComponent:v10];
    v14 = [NSURL fileURLWithPath:v13];

    [v91 addObject:v14];
    v15 = *(v104 + 32);
    v16 = [v12 stringByAppendingPathComponent:v10];
    v17 = [v16 fileSystemRepresentation];
    v136 = 0;
    v18 = [v15 reflight:v17 error:&v136];
    v19 = v136;
    [v91 addObjectsFromArray:v18];

    if (v19)
    {
      break;
    }

    if (v7 == ++v9)
    {
      v7 = [obj countByEnumeratingWithState:&v137 objects:v154 count:16];
      if (v7)
      {
        goto LABEL_5;
      }

      goto LABEL_11;
    }
  }

LABEL_75:
}

void __26__MSCameraDevice_reflight__block_invoke_2(uint64_t a1)
{
  __ICOSLogCreate();
  v2 = @"removing";
  if ([@"removing" length] >= 0x15)
  {
    v3 = [@"removing" substringWithRange:{0, 18}];
    v2 = [v3 stringByAppendingString:@".."];
  }

  v4 = [NSString stringWithFormat:@"--> Removed %@", *(a1 + 32)];
  v5 = _gICOSLog;
  if (os_log_type_enabled(_gICOSLog, OS_LOG_TYPE_DEFAULT))
  {
    v6 = v2;
    v7 = v5;
    *buf = 136446466;
    v15 = [(__CFString *)v2 UTF8String];
    v16 = 2114;
    v17 = v4;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%{public}20s | %{public}@", buf, 0x16u);
  }

  v8 = *(a1 + 32);
  v12 = @"ICObjectIDArray";
  v13 = v8;
  v9 = [NSDictionary dictionaryWithObjects:&v13 forKeys:&v12 count:1];
  v10 = *(a1 + 40);
  v11 = [v10 allConnections];
  [v10 sendRemovedItemsNotification:v9 toConnections:v11];
}

- (void)enumerateContentWithOptions:(id)a3
{
  v30 = a3;
  v4 = [v30 objectForKeyedSubscript:@"ICEnumerationPrioritizeSpeed"];
  if ([v4 BOOLValue])
  {
    -[MSCameraDevice setPrioritizeSpeed:](self, "setPrioritizeSpeed:", [v4 BOOLValue]);
  }

  if ([(MSCameraDevice *)self filledStorageCache])
  {
    [(MSCameraDevice *)self notifyDeviceReadyObjectCount];
    v5 = +[NSXPCConnection currentConnection];
    __ICOSLogCreate();
    v6 = @"enumerateContent";
    if ([@"enumerateContent" length] >= 0x15)
    {
      v7 = [@"enumerateContent" substringWithRange:{0, 18}];
      v6 = [v7 stringByAppendingString:@".."];
    }

    v8 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"Requested From:%d", [v5 processIdentifier]);
    v9 = _gICOSLog;
    if (os_log_type_enabled(_gICOSLog, OS_LOG_TYPE_DEFAULT))
    {
      v10 = v6;
      v11 = v9;
      *buf = 136446466;
      v36 = [(__CFString *)v6 UTF8String];
      v37 = 2114;
      v38 = v8;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%{public}20s | %{public}@", buf, 0x16u);
    }

    [(MSCameraDevice *)self sendContentsNotification:v5];
  }

  else
  {
    [(MSCameraDevice *)self preflight];
    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v5 = [(MSCameraDevice *)self mediaPaths];
    v12 = [v5 countByEnumeratingWithState:&v31 objects:v42 count:16];
    if (v12)
    {
      v13 = v12;
      v29 = v4;
      v14 = *v32;
      do
      {
        v15 = v5;
        for (i = 0; i != v13; i = i + 1)
        {
          if (*v32 != v14)
          {
            objc_enumerationMutation(v15);
          }

          v17 = *(*(&v31 + 1) + 8 * i);
          v18 = [(MSCameraDevice *)self cameraDictionary];
          v19 = [v18 objectForKeyedSubscript:@"ICDeviceVolumePath"];
          v20 = [v19 stringByAppendingPathComponent:v17];

          v21 = [MSCameraFolder alloc];
          v22 = [NSURL fileURLWithPath:v20 isDirectory:1];
          v23 = [v17 lastPathComponent];
          v24 = [(MSCameraFolder *)v21 initWithFSURL:v22 name:v23 parent:0 device:self];

          if (v24)
          {
            [(MSCameraDevice *)self addCameraFolderToIndex:v24];
            v40 = @"ICCameraItemProxyArray";
            v25 = [(MSCameraItem *)v24 cameraItemProxy];
            v39 = v25;
            v26 = [NSArray arrayWithObjects:&v39 count:1];
            v41 = v26;
            v27 = [NSDictionary dictionaryWithObjects:&v41 forKeys:&v40 count:1];

            v28 = [(MSCameraDevice *)self allConnections];
            [(MSCameraDevice *)self sendAddedItemsNotification:v27 toConnections:v28];

            [(MSCameraFolder *)v24 enumerateContentWithOptions:v30];
          }
        }

        v5 = v15;
        v13 = [v15 countByEnumeratingWithState:&v31 objects:v42 count:16];
      }

      while (v13);
      v4 = v29;
    }
  }

  [(MSCameraDevice *)self setFilledStorageCache:1];
}

- (void)pauseReflight
{
  v3 = [(MSCameraDevice *)self deviceOperationQueue];
  v4 = [v3 underlyingQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = __31__MSCameraDevice_pauseReflight__block_invoke;
  block[3] = &unk_100024778;
  block[4] = self;
  dispatch_async(v4, block);
}

void __31__MSCameraDevice_pauseReflight__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) reflightPauseSource];

  if (v2)
  {
    __ICOSLogCreate();
    v3 = [*(a1 + 32) name];
    if ([v3 length] >= 0x15)
    {
      v4 = [v3 substringWithRange:{0, 18}];
      v5 = [v4 stringByAppendingString:@".."];

      v3 = v5;
    }

    v6 = [NSString stringWithFormat:@"Reflight Timer - Existing & Boosted"];
    v7 = _gICOSLog;
    if (os_log_type_enabled(_gICOSLog, OS_LOG_TYPE_DEFAULT))
    {
      v8 = v3;
      v9 = v7;
      *buf = 136446466;
      *&buf[4] = [v3 UTF8String];
      *&buf[12] = 2114;
      *&buf[14] = v6;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%{public}20s | %{public}@", buf, 0x16u);
    }

    v10 = [*(a1 + 32) reflightPauseSource];
    v11 = dispatch_time(0, 2000000000);
    dispatch_source_set_timer(v10, v11, 0xFFFFFFFFFFFFFFFFLL, 0x5F5E100uLL);
  }

  else
  {
    v12 = [*(a1 + 32) deviceOperationQueue];
    v13 = [v12 underlyingQueue];
    v14 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, v13);
    [*(a1 + 32) setReflightPauseSource:v14];

    v15 = [*(a1 + 32) reflightPauseSource];
    v16 = dispatch_time(0, 2000000000);
    dispatch_source_set_timer(v15, v16, 0xFFFFFFFFFFFFFFFFLL, 0x5F5E100uLL);

    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v32 = __Block_byref_object_copy_;
    v33 = __Block_byref_object_dispose_;
    v34 = *(a1 + 32);
    v17 = [*(a1 + 32) reflightPauseSource];
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 3221225472;
    handler[2] = __31__MSCameraDevice_pauseReflight__block_invoke_243;
    handler[3] = &unk_1000247A0;
    handler[4] = buf;
    dispatch_source_set_event_handler(v17, handler);

    v18 = [*(a1 + 32) reflightPauseSource];
    dispatch_resume(v18);

    __ICOSLogCreate();
    v19 = [*(a1 + 32) name];
    if ([v19 length] >= 0x15)
    {
      v20 = [v19 substringWithRange:{0, 18}];
      v21 = [v20 stringByAppendingString:@".."];

      v19 = v21;
    }

    v22 = [NSString stringWithFormat:@"Reflight Timer - Created & Resumed"];
    v23 = _gICOSLog;
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      v24 = v19;
      v25 = [v19 UTF8String];
      *v27 = 136446466;
      v28 = v25;
      v29 = 2114;
      v30 = v22;
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "%{public}20s | %{public}@", v27, 0x16u);
    }

    _Block_object_dispose(buf, 8);
  }
}

void __31__MSCameraDevice_pauseReflight__block_invoke_243(uint64_t a1)
{
  v1 = *(*(*(a1 + 32) + 8) + 40);
  v2 = v1;
  if (v1)
  {
    v3 = [v1 reflightPauseSource];

    if (v3)
    {
      v4 = [v2 reflightPauseSource];
      dispatch_source_cancel(v4);

      [v2 setReflightPauseSource:0];
      __ICOSLogCreate();
      v5 = [v2 name];
      if ([v5 length] >= 0x15)
      {
        v6 = [v5 substringWithRange:{0, 18}];
        v7 = [v6 stringByAppendingString:@".."];

        v5 = v7;
      }

      v8 = [NSString stringWithFormat:@"Reflight Timer - Unpaused & Destroyed"];
      v9 = _gICOSLog;
      if (os_log_type_enabled(_gICOSLog, OS_LOG_TYPE_DEFAULT))
      {
        v10 = v5;
        v11 = v9;
        v12 = 136446466;
        v13 = [v5 UTF8String];
        v14 = 2114;
        v15 = v8;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%{public}20s | %{public}@", &v12, 0x16u);
      }
    }
  }
}

- (BOOL)reflightPaused
{
  if ([(MSCameraDevice *)self viewFinderOpen])
  {
    usleep(0x7D0u);
  }

  v3 = [(MSCameraDevice *)self reflightPauseSource];
  v4 = v3 != 0;

  return v4;
}

- (BOOL)deleteFile:(id)a3
{
  v4 = a3;
  [(MSCameraDevice *)self pauseReflight];
  if ([v4 locked])
  {
    goto LABEL_4;
  }

  v5 = [v4 path];
  if (!unlink([v5 fileSystemRepresentation]))
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = [v5 lastPathComponent];
      v9 = [v8 stringByDeletingPathExtension];
      v10 = [v9 stringByAppendingPathComponent:@"THM"];

      v11 = [v5 stringByDeletingLastPathComponent];
      v12 = [v11 stringByAppendingPathComponent:v10];

      if (v12)
      {
        unlink([v12 fileSystemRepresentation]);
      }
    }

    goto LABEL_10;
  }

  v6 = *__error();

  if (v6 == 2)
  {
LABEL_10:
    -[MSCameraDevice removeCameraFileFromIndex:](self, "removeCameraFileFromIndex:", [v4 objHandle]);
    v7 = 1;
    goto LABEL_11;
  }

LABEL_4:
  v7 = 0;
LABEL_11:

  return v7;
}

- (void)addCameraFileToIndex:(id)a3
{
  v4 = a3;
  v5 = [(MSCameraDevice *)self indexedMediaSet];
  [v5 addMediaItemToIndex:v4];
}

- (void)addCameraFolderToIndex:(id)a3
{
  v4 = a3;
  v5 = [(MSCameraDevice *)self indexedMediaSet];
  [v5 addMediaItemToIndex:v4];
}

- (id)cameraFileWithObjectID:(unint64_t)a3
{
  v4 = [(MSCameraDevice *)self indexedMediaSet];
  v5 = [v4 mediaItemWithHandle:a3 inTypes:&off_100026940];

  return v5;
}

- (id)cameraFolderWithObjectID:(unint64_t)a3
{
  v4 = [(MSCameraDevice *)self indexedMediaSet];
  v5 = [v4 mediaItemWithHandle:a3 inTypes:&off_100026958];

  return v5;
}

- (id)cameraItemWithObjectID:(unint64_t)a3
{
  v4 = [(MSCameraDevice *)self indexedMediaSet];
  v5 = [v4 mediaItemWithHandle:a3 inTypes:0];

  return v5;
}

- (void)removeCameraFileFromIndex:(unint64_t)a3
{
  v4 = [(MSCameraDevice *)self cameraFileWithObjectID:a3];
  if (v4)
  {
    v6 = v4;
    v5 = [(MSCameraDevice *)self indexedMediaSet];
    [v5 removeMediaItemFromIndex:v6];

    [(MSCameraDevice *)self updateEnumeratedItemCountWithDelta:0xFFFFFFFFLL];
    [(MSCameraDevice *)self incrementPreflightObjectCount:0xFFFFFFFFLL];
    v4 = v6;
  }
}

- (void)removeCameraFolderFromIndex:(unint64_t)a3
{
  v4 = [(MSCameraDevice *)self cameraFolderWithObjectID:a3];
  if (v4)
  {
    v6 = v4;
    [v4 cancelSource];
    v5 = [(MSCameraDevice *)self indexedMediaSet];
    [v5 removeMediaItemFromIndex:v6];

    [(MSCameraDevice *)self updateEnumeratedItemCountWithDelta:0xFFFFFFFFLL];
    v4 = v6;
  }
}

- (BOOL)removeCameraItemFromIndex:(unint64_t)a3
{
  v5 = [(MSCameraDevice *)self cameraItemWithObjectID:?];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(MSCameraDevice *)self removeCameraFolderFromIndex:a3];
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v6 = 0;
      goto LABEL_7;
    }

    [(MSCameraDevice *)self removeCameraFileFromIndex:a3];
  }

  v6 = 1;
LABEL_7:

  return v6;
}

- (id)copyIndexedFoldersAndFiles
{
  v3 = [(MSCameraDevice *)self indexedMediaSet];
  v4 = [v3 arrayForType:@"file"];

  v5 = [(MSCameraDevice *)self indexedMediaSet];
  v6 = [v5 arrayForType:@"folder"];

  v7 = objc_alloc_init(NSMutableArray);
  [v7 addObjectsFromArray:v6];
  [v7 addObjectsFromArray:v4];

  return v7;
}

- (id)indexedFiles
{
  v2 = [(MSCameraDevice *)self indexedMediaSet];
  v3 = [v2 arrayForType:@"file"];

  return v3;
}

- (id)indexedFolders
{
  v2 = [(MSCameraDevice *)self indexedMediaSet];
  v3 = [v2 arrayForType:@"folder"];

  return v3;
}

- (id)copyIndexedFoldersAndFilesURLs
{
  v2 = [(MSCameraDevice *)self indexedMediaSet];
  v3 = [v2 arrayForType:@"file"];

  v4 = objc_alloc_init(NSMutableArray);
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v32 objects:v37 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v33;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v33 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v32 + 1) + 8 * i);
        v11 = [v10 path];
        v12 = [NSURL fileURLWithPath:v11];

        v13 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [v10 objHandle]);
        objc_setAssociatedObject(v12, "ICObjectHandle", v13, 0x303);

        [v4 addObject:v12];
      }

      v7 = [v5 countByEnumeratingWithState:&v32 objects:v37 count:16];
    }

    while (v7);
  }

  v27 = v5;

  v14 = [(MSCameraDevice *)self indexedMediaSet];
  v15 = [v14 arrayForType:@"folder"];

  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v16 = v15;
  v17 = [v16 countByEnumeratingWithState:&v28 objects:v36 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v29;
    do
    {
      for (j = 0; j != v18; j = j + 1)
      {
        if (*v29 != v19)
        {
          objc_enumerationMutation(v16);
        }

        v21 = *(*(&v28 + 1) + 8 * j);
        v22 = [v21 path];
        v23 = [NSURL fileURLWithPath:v22];

        v24 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [v21 objHandle]);
        objc_setAssociatedObject(v23, "ICObjectHandle", v24, 0x303);

        [v4 addObject:v23];
      }

      v18 = [v16 countByEnumeratingWithState:&v28 objects:v36 count:16];
    }

    while (v18);
  }

  return v4;
}

- (BOOL)acceptConnection:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = MSCameraDevice;
  if (![(MSCameraDevice *)&v15 acceptConnection:v4])
  {
    v14.receiver = self;
    v14.super_class = MSCameraDevice;
    if (![(MSCameraDevice *)&v14 evaulateCommonTCC:v4])
    {
      v12 = 0;
      goto LABEL_10;
    }

    __ICOSLogCreate();
    v5 = @"TCC Access";
    if ([@"TCC Access" length] >= 0x15)
    {
      v6 = [@"TCC Access" substringWithRange:{0, 18}];
      v5 = [v6 stringByAppendingString:@".."];
    }

    v7 = [NSString stringWithFormat:@"Access has been granted"];
    v8 = _gICOSLog;
    if (os_log_type_enabled(_gICOSLog, OS_LOG_TYPE_DEFAULT))
    {
      v9 = v5;
      v10 = v8;
      v11 = [(__CFString *)v5 UTF8String];
      *buf = 136446466;
      v17 = v11;
      v18 = 2114;
      v19 = v7;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%{public}20s | %{public}@", buf, 0x16u);
    }
  }

  v12 = 1;
LABEL_10:

  return v12;
}

- (void)cameraViewfinderSessionDidStartMovieRecording:(id)a3
{
  v4 = a3;
  [(MSCameraDevice *)self setMovieRecording:1];
  __ICOSLogCreate();
  v5 = @"didStart";
  if ([@"didStart" length] >= 0x15)
  {
    v6 = [@"didStart" substringWithRange:{0, 18}];
    v5 = [v6 stringByAppendingString:@".."];
  }

  v7 = [NSString stringWithFormat:@"%@", v4];
  v8 = _gICOSLog;
  if (os_log_type_enabled(_gICOSLog, OS_LOG_TYPE_DEFAULT))
  {
    v9 = v5;
    v10 = v8;
    *buf = 136446466;
    v12 = [(__CFString *)v5 UTF8String];
    v13 = 2114;
    v14 = v7;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%{public}20s | %{public}@", buf, 0x16u);
  }
}

- (void)cameraViewfinderSessionDidFinishMovieRecording:(id)a3
{
  v4 = a3;
  [(MSCameraDevice *)self setMovieRecording:0];
  [(MSCameraDevice *)self reflight];
  __ICOSLogCreate();
  v5 = @"didStop";
  if ([@"didStop" length] >= 0x15)
  {
    v6 = [@"didStop" substringWithRange:{0, 18}];
    v5 = [v6 stringByAppendingString:@".."];
  }

  v7 = [NSString stringWithFormat:@"%@", v4];
  v8 = _gICOSLog;
  if (os_log_type_enabled(_gICOSLog, OS_LOG_TYPE_DEFAULT))
  {
    v9 = v5;
    v10 = v8;
    *buf = 136446466;
    v12 = [(__CFString *)v5 UTF8String];
    v13 = 2114;
    v14 = v7;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%{public}20s | %{public}@", buf, 0x16u);
  }
}

- (void)cameraViewfinder:(id)a3 viewfinderSessionDidBegin:(id)a4
{
  v5 = a4;
  [(MSCameraDevice *)self setViewFinderOpen:1];
  __ICOSLogCreate();
  v6 = @"vfDidStart";
  if ([@"vfDidStart" length] >= 0x15)
  {
    v7 = [@"vfDidStart" substringWithRange:{0, 18}];
    v6 = [v7 stringByAppendingString:@".."];
  }

  v8 = [NSString stringWithFormat:@"%@", v5];
  v9 = _gICOSLog;
  if (os_log_type_enabled(_gICOSLog, OS_LOG_TYPE_DEFAULT))
  {
    v10 = v6;
    v11 = v9;
    *buf = 136446466;
    v13 = [(__CFString *)v6 UTF8String];
    v14 = 2114;
    v15 = v8;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%{public}20s | %{public}@", buf, 0x16u);
  }
}

- (void)cameraViewfinder:(id)a3 viewfinderSessionDidEnd:(id)a4
{
  v5 = a4;
  [(MSCameraDevice *)self setViewFinderOpen:0];
  __ICOSLogCreate();
  v6 = @"vfDidEnd";
  if ([@"vfDidEnd" length] >= 0x15)
  {
    v7 = [@"vfDidEnd" substringWithRange:{0, 18}];
    v6 = [v7 stringByAppendingString:@".."];
  }

  v8 = [NSString stringWithFormat:@"%@", v5];
  v9 = _gICOSLog;
  if (os_log_type_enabled(_gICOSLog, OS_LOG_TYPE_DEFAULT))
  {
    v10 = v6;
    v11 = v9;
    *buf = 136446466;
    v13 = [(__CFString *)v6 UTF8String];
    v14 = 2114;
    v15 = v8;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%{public}20s | %{public}@", buf, 0x16u);
  }
}

void __68__MSCameraDevice_requestSecurityScopedURLForObjectHandle_withReply___block_invoke_cold_1(void *a1, void *a2)
{
  v4 = a1;
  v5 = a2;
  [a1 UTF8String];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&_mh_execute_header, v6, v7, "%{public}20s ! %{public}@", v8, v9, v10, v11, v12);
}

@end