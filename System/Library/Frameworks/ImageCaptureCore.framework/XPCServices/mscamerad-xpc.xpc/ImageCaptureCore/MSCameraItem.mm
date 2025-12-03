@interface MSCameraItem
- (BOOL)locked;
- (BOOL)protectionStatus;
- (MSCameraItem)initWithFSURL:(id)l name:(id)name parent:(id)parent device:(id)device;
- (MSCameraItem)initWithName:(id)name parent:(id)parent device:(id)device;
- (NSString)name;
- (id)baseName;
- (id)device;
- (id)parent;
- (id)refreshInfo:(id)info;
- (int64_t)compareObjectHandle:(id)handle;
- (timespec)fsCreationTime;
- (timespec)fsModificationTime;
- (unint64_t)captureDate;
- (unint64_t)modificationDate;
- (unint64_t)size;
- (unsigned)objHandle;
- (unsigned)parentObject;
- (void)cancelSource;
- (void)dealloc;
- (void)refreshAndNotify;
- (void)setCaptureDate:(unint64_t)date;
- (void)setModificationDate:(unint64_t)date;
- (void)setName:(id)name;
- (void)setSize:(unint64_t)size;
@end

@implementation MSCameraItem

- (NSString)name
{
  cameraItemProxy = [(MSCameraItem *)self cameraItemProxy];
  name = [cameraItemProxy name];

  return name;
}

- (void)setName:(id)name
{
  nameCopy = name;
  cameraItemProxy = [(MSCameraItem *)self cameraItemProxy];
  [cameraItemProxy setName:nameCopy];
}

- (id)baseName
{
  name = [(MSCameraItem *)self name];
  stringByDeletingPathExtension = [name stringByDeletingPathExtension];

  return stringByDeletingPathExtension;
}

- (unint64_t)size
{
  cameraItemProxy = [(MSCameraItem *)self cameraItemProxy];
  v3 = [cameraItemProxy size];

  return v3;
}

- (void)setSize:(unint64_t)size
{
  cameraItemProxy = [(MSCameraItem *)self cameraItemProxy];
  [cameraItemProxy setSize:size];
}

- (unsigned)objHandle
{
  cameraItemProxy = [(MSCameraItem *)self cameraItemProxy];
  objectHandle = [cameraItemProxy objectHandle];

  return objectHandle;
}

- (unsigned)parentObject
{
  cameraItemProxy = [(MSCameraItem *)self cameraItemProxy];
  parentObjectHandle = [cameraItemProxy parentObjectHandle];

  return parentObjectHandle;
}

- (BOOL)protectionStatus
{
  cameraItemProxy = [(MSCameraItem *)self cameraItemProxy];
  readOnly = [cameraItemProxy readOnly];

  return readOnly;
}

- (unint64_t)captureDate
{
  cameraItemProxy = [(MSCameraItem *)self cameraItemProxy];
  captureDate = [cameraItemProxy captureDate];

  return captureDate;
}

- (void)setCaptureDate:(unint64_t)date
{
  cameraItemProxy = [(MSCameraItem *)self cameraItemProxy];
  [cameraItemProxy setCaptureDate:date];
}

- (unint64_t)modificationDate
{
  cameraItemProxy = [(MSCameraItem *)self cameraItemProxy];
  modificationDate = [cameraItemProxy modificationDate];

  return modificationDate;
}

- (void)setModificationDate:(unint64_t)date
{
  cameraItemProxy = [(MSCameraItem *)self cameraItemProxy];
  [cameraItemProxy setModificationDate:date];
}

- (void)cancelSource
{
  filesystemChangeSource = self->_filesystemChangeSource;
  if (filesystemChangeSource)
  {
    dispatch_source_cancel(filesystemChangeSource);
    v4 = self->_filesystemChangeSource;
    self->_filesystemChangeSource = 0;
  }
}

- (void)dealloc
{
  [(MSCameraItem *)self cancelSource];
  v3.receiver = self;
  v3.super_class = MSCameraItem;
  [(MSCameraItem *)&v3 dealloc];
}

- (MSCameraItem)initWithFSURL:(id)l name:(id)name parent:(id)parent device:(id)device
{
  lCopy = l;
  nameCopy = name;
  parentCopy = parent;
  deviceCopy = device;
  v31.receiver = self;
  v31.super_class = MSCameraItem;
  v14 = [(MSCameraItem *)&v31 init];
  v15 = v14;
  if (v14)
  {
    v28 = parentCopy;
    v29 = nameCopy;
    [(MSCameraItem *)v14 setDevice:deviceCopy];
    v16 = objc_opt_new();
    [(MSCameraItem *)v15 setCameraItemProxy:v16];

    v32[0] = NSURLNameKey;
    v32[1] = NSURLFileSizeKey;
    v32[2] = NSURLCreationDateKey;
    v32[3] = NSURLContentModificationDateKey;
    v32[4] = NSURLIsWritableKey;
    v17 = [NSArray arrayWithObjects:v32 count:5];
    v30 = 0;
    v18 = [lCopy resourceValuesForKeys:v17 error:&v30];
    v19 = v30;

    if (v19)
    {
      v20 = v15;
      v15 = 0;
      parentCopy = v28;
    }

    else
    {
      v20 = [v18 objectForKeyedSubscript:NSURLCreationDateKey];
      [v20 timeIntervalSince1970];
      [(MSCameraItem *)v15 setCaptureDate:v21];
      v22 = [v18 objectForKeyedSubscript:NSURLContentModificationDateKey];
      [v22 timeIntervalSince1970];
      [(MSCameraItem *)v15 setModificationDate:v23];
      v24 = [v18 objectForKeyedSubscript:NSURLFileSizeKey];
      -[MSCameraItem setSize:](v15, "setSize:", [v24 unsignedLongLongValue]);
      v25 = [v18 objectForKeyedSubscript:NSURLIsWritableKey];
      -[MSCameraItem setProtectionStatus:](v15, "setProtectionStatus:", [v25 BOOLValue] ^ 1);
      atomic_fetch_add(_sCameraFileID, 1u);
      [(MSCameraItem *)v15 setObjHandle:?];
      [(MSCameraItem *)v15 setName:v29];
      parentCopy = v28;
      -[MSCameraItem setParentObject:](v15, "setParentObject:", [v28 objHandle]);
      path = [lCopy path];
      [(MSCameraItem *)v15 setPath:path];
    }

    nameCopy = v29;
  }

  return v15;
}

- (MSCameraItem)initWithName:(id)name parent:(id)parent device:(id)device
{
  nameCopy = name;
  parentCopy = parent;
  deviceCopy = device;
  v19.receiver = self;
  v19.super_class = MSCameraItem;
  v11 = [(MSCameraItem *)&v19 init];
  if (v11)
  {
    v12 = objc_opt_new();
    [(MSCameraItem *)v11 setCameraItemProxy:v12];

    [(MSCameraItem *)v11 setName:nameCopy];
    -[MSCameraItem setParentObject:](v11, "setParentObject:", [parentCopy objHandle]);
    [(MSCameraItem *)v11 setDevice:deviceCopy];
    memset(&v18.st_size, 0, 48);
    path = [parentCopy path];
    name = [(MSCameraItem *)v11 name];
    v15 = [path stringByAppendingString:name];
    [(MSCameraItem *)v11 setPath:v15];

    path2 = [(MSCameraItem *)v11 path];
    LODWORD(name) = lstat([path2 UTF8String], &v18);

    if (name)
    {

      v11 = 0;
    }

    else
    {
      [(MSCameraItem *)v11 setSize:v18.st_size];
    }
  }

  return v11;
}

- (void)refreshAndNotify
{
  v3 = +[NSMutableDictionary dictionary];
  v4 = [(MSCameraItem *)self refreshInfo:v3];
  if ([v3 count])
  {
    v13 = @"ICObjectInfoUpdate";
    v5 = [NSNumber numberWithUnsignedInt:[(MSCameraItem *)self objHandle]];
    v11 = v5;
    v12 = v3;
    v6 = [NSDictionary dictionaryWithObjects:&v12 forKeys:&v11 count:1];
    v14 = v6;
    v7 = [NSDictionary dictionaryWithObjects:&v14 forKeys:&v13 count:1];

    device = [(MSCameraItem *)self device];
    device2 = [(MSCameraItem *)self device];
    allConnections = [device2 allConnections];
    [device sendUpdatedItemsNotification:v7 toConnections:allConnections];
  }
}

- (id)refreshInfo:(id)info
{
  infoCopy = info;
  path = [(MSCameraItem *)self path];
  v6 = [NSURL fileURLWithPath:path];

  v76[0] = NSURLFileSizeKey;
  v76[1] = NSURLCreationDateKey;
  v76[2] = NSURLContentModificationDateKey;
  v7 = [NSArray arrayWithObjects:v76 count:3];
  v71 = 0;
  v8 = [v6 resourceValuesForKeys:v7 error:&v71];
  v9 = v71;

  if (v9)
  {
    [(MSCameraItem *)self type];
  }

  else
  {
    v64 = v6;
    v10 = [v8 objectForKeyedSubscript:NSURLCreationDateKey];
    captureDate = [(MSCameraItem *)self captureDate];
    v65 = v10;
    [v10 timeIntervalSince1970];
    if (captureDate != v12)
    {
      __ICOSLogCreate();
      name = [(MSCameraItem *)self name];
      if ([name length] >= 0x15)
      {
        v14 = [name substringWithRange:{0, 18}];
        v15 = [v14 stringByAppendingString:@".."];

        name = v15;
      }

      captureDate2 = [(MSCameraItem *)self captureDate];
      [v65 timeIntervalSince1970];
      v18 = [NSString stringWithFormat:@"refreshInfo: creation date %llu -> %llu", captureDate2, v17];
      v19 = _gICOSLog;
      if (os_log_type_enabled(_gICOSLog, OS_LOG_TYPE_DEFAULT))
      {
        v20 = name;
        v21 = v19;
        uTF8String = [name UTF8String];
        *buf = 136446466;
        v73 = uTF8String;
        v74 = 2114;
        v75 = v18;
        _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "%{public}20s | %{public}@", buf, 0x16u);
      }

      [v65 timeIntervalSince1970];
      [(MSCameraItem *)self setCaptureDate:v23];
      if (infoCopy)
      {
        v24 = [NSNumber numberWithUnsignedLongLong:[(MSCameraItem *)self captureDate]];
        [infoCopy setObject:v24 forKeyedSubscript:@"ICCaptureDate"];
      }
    }

    v25 = [v8 objectForKeyedSubscript:NSURLContentModificationDateKey];
    modificationDate = [(MSCameraItem *)self modificationDate];
    [v25 timeIntervalSince1970];
    if (modificationDate != v27)
    {
      __ICOSLogCreate();
      name2 = [(MSCameraItem *)self name];
      if ([name2 length] >= 0x15)
      {
        v29 = [name2 substringWithRange:{0, 18}];
        v30 = [v29 stringByAppendingString:@".."];

        name2 = v30;
      }

      modificationDate2 = [(MSCameraItem *)self modificationDate];
      v32 = v25;
      [v25 timeIntervalSince1970];
      v34 = [NSString stringWithFormat:@"refreshInfo: modification date %llu -> %llu", modificationDate2, v33];
      v35 = _gICOSLog;
      if (os_log_type_enabled(_gICOSLog, OS_LOG_TYPE_DEFAULT))
      {
        v36 = name2;
        v37 = v35;
        uTF8String2 = [name2 UTF8String];
        *buf = 136446466;
        v73 = uTF8String2;
        v74 = 2114;
        v75 = v34;
        _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEFAULT, "%{public}20s | %{public}@", buf, 0x16u);
      }

      v25 = v32;
      [v32 timeIntervalSince1970];
      [(MSCameraItem *)self setModificationDate:v39];
      if (infoCopy)
      {
        v40 = [NSNumber numberWithUnsignedLongLong:[(MSCameraItem *)self modificationDate]];
        [infoCopy setObject:v40 forKeyedSubscript:@"ICModificationDate"];
      }
    }

    v41 = infoCopy;
    v42 = [v8 objectForKeyedSubscript:NSURLFileSizeKey];
    v43 = [(MSCameraItem *)self size];
    unsignedLongLongValue = [v42 unsignedLongLongValue];
    if (v43 != unsignedLongLongValue)
    {
      v63 = v25;
      __ICOSLogCreate();
      name3 = [(MSCameraItem *)self name];
      if ([name3 length] >= 0x15)
      {
        v46 = [name3 substringWithRange:{0, 18}];
        v47 = [v46 stringByAppendingString:@".."];

        name3 = v47;
      }

      v48 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"refreshInfo: file size %llu -> %llu", -[MSCameraItem size](self, "size"), [v42 unsignedLongLongValue]);
      v49 = _gICOSLog;
      if (os_log_type_enabled(_gICOSLog, OS_LOG_TYPE_DEFAULT))
      {
        v50 = name3;
        v51 = v49;
        uTF8String3 = [name3 UTF8String];
        *buf = 136446466;
        v73 = uTF8String3;
        v74 = 2114;
        v75 = v48;
        _os_log_impl(&_mh_execute_header, v51, OS_LOG_TYPE_DEFAULT, "%{public}20s | %{public}@", buf, 0x16u);
      }

      -[MSCameraItem setSize:](self, "setSize:", [v42 unsignedLongLongValue]);
      v25 = v63;
      if (v41)
      {
        v53 = [NSNumber numberWithUnsignedLongLong:[(MSCameraItem *)self size]];
        [v41 setObject:v53 forKeyedSubscript:@"ICFileSize"];
      }
    }

    type = [(MSCameraItem *)self type];
    infoCopy = v41;
    v6 = v64;
    if (v43 != unsignedLongLongValue && type == 1836019574)
    {
      v55 = dispatch_semaphore_create(0);
      v56 = objc_alloc_init(NSMutableArray);
      v57 = [AVURLAsset alloc];
      path2 = [(MSCameraItem *)self path];
      v59 = [NSURL fileURLWithPath:path2];
      v60 = [v57 initWithURL:v59 options:0];

      [v56 addObject:@"duration"];
      if (v60)
      {
        v66[0] = _NSConcreteStackBlock;
        v66[1] = 3221225472;
        v66[2] = __28__MSCameraItem_refreshInfo___block_invoke;
        v66[3] = &unk_1000248F0;
        v67 = v60;
        selfCopy = self;
        v69 = infoCopy;
        v70 = v55;
        [v67 loadValuesAsynchronouslyForKeys:v56 completionHandler:v66];
      }

      dispatch_semaphore_wait(v55, 0xFFFFFFFFFFFFFFFFLL);

      v6 = v64;
    }
  }

  cameraItemProxy = [(MSCameraItem *)self cameraItemProxy];

  return cameraItemProxy;
}

void __28__MSCameraItem_refreshInfo___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v27 = 0;
  v3 = [v2 statusOfValueForKey:@"duration" error:&v27];
  v4 = v27;
  if (v3 != 2)
  {
    __ICOSLogCreate();
    v18 = [*(a1 + 40) name];
    if ([v18 length] >= 0x15)
    {
      v19 = [v18 substringWithRange:{0, 18}];
      v20 = [v19 stringByAppendingString:@".."];

      v18 = v20;
    }

    v21 = [NSString stringWithFormat:@"AVAsset: loadValuesAsynchronously failed to return the duration"];
    v22 = _gICOSLog;
    if (os_log_type_enabled(_gICOSLog, OS_LOG_TYPE_DEFAULT))
    {
      v23 = v18;
      v24 = v22;
      v25 = [v18 UTF8String];
      LODWORD(buf.value) = 136446466;
      *(&buf.value + 4) = v25;
      LOWORD(buf.flags) = 2114;
      *(&buf.flags + 2) = v21;
      _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "%{public}20s | %{public}@", &buf, 0x16u);
    }

    goto LABEL_12;
  }

  memset(&buf, 0, sizeof(buf));
  v5 = *(a1 + 32);
  if (v5)
  {
    [v5 duration];
  }

  v26 = buf;
  Seconds = CMTimeGetSeconds(&v26);
  v7 = [*(a1 + 40) metadata];
  v8 = [v7 objectForKeyedSubscript:@"VideoDuration"];
  [v8 floatValue];
  v10 = v9;

  if (v10 != Seconds)
  {
    v26 = buf;
    v11 = CMTimeGetSeconds(&v26);
    *&v11 = v11;
    v12 = [NSNumber numberWithFloat:v11];
    v13 = [*(a1 + 40) metadata];
    [v13 setObject:v12 forKeyedSubscript:@"VideoDuration"];

    v26 = buf;
    v14 = CMTimeGetSeconds(&v26);
    *&v14 = v14;
    v15 = [NSNumber numberWithFloat:v14];
    v16 = [*(a1 + 40) metadata];
    [v16 setObject:v15 forKeyedSubscript:@"Duration"];

    if (*(a1 + 48))
    {
      v26 = buf;
      v17 = CMTimeGetSeconds(&v26);
      *&v17 = v17;
      v18 = [NSNumber numberWithFloat:v17];
      [*(a1 + 48) setObject:v18 forKeyedSubscript:@"ICMediaDuration"];
LABEL_12:
    }
  }

  dispatch_semaphore_signal(*(a1 + 56));
}

- (int64_t)compareObjectHandle:(id)handle
{
  objHandle = [handle objHandle];
  if (objHandle == [(MSCameraItem *)self objHandle])
  {
    return 0;
  }

  if (objHandle > [(MSCameraItem *)self objHandle])
  {
    return -1;
  }

  return 1;
}

- (BOOL)locked
{
  device = [(MSCameraItem *)self device];
  cameraDictionary = [device cameraDictionary];
  v5 = [cameraDictionary objectForKeyedSubscript:@"ICDeviceLocked"];
  if ([v5 BOOLValue])
  {
    protectionStatus = 1;
  }

  else
  {
    protectionStatus = [(MSCameraItem *)self protectionStatus];
  }

  return protectionStatus;
}

- (id)parent
{
  WeakRetained = objc_loadWeakRetained(&self->_parent);

  return WeakRetained;
}

- (id)device
{
  WeakRetained = objc_loadWeakRetained(&self->_device);

  return WeakRetained;
}

- (timespec)fsCreationTime
{
  tv_nsec = self->_fsCreationTime.tv_nsec;
  tv_sec = self->_fsCreationTime.tv_sec;
  result.tv_nsec = tv_nsec;
  result.tv_sec = tv_sec;
  return result;
}

- (timespec)fsModificationTime
{
  tv_nsec = self->_fsModificationTime.tv_nsec;
  tv_sec = self->_fsModificationTime.tv_sec;
  result.tv_nsec = tv_nsec;
  result.tv_sec = tv_sec;
  return result;
}

@end