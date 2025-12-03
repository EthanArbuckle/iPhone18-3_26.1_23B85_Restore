@interface BICDiskDataStore
- (BICDiskDataStore)initWithCachePath:(id)path;
- (BOOL)canStoreDescribedImage:(id)image;
- (CGImage)_readCachedImageFromPath:(id)path;
- (id)_filePathFromEntryLocation:(id)location;
- (id)_writeCachedImage:(CGImage *)image unprocessed:(BOOL)unprocessed toRelativePath:(id)path;
- (int64_t)costFor:(signed __int16)for;
- (void)_clean:(id)_clean;
- (void)_inventoryLevel:(signed __int16)level addLevelID:(BOOL)d completion:(id)completion;
- (void)_removeFileAtPath:(id)path;
- (void)afterAllStoreOperationsCompletedPerformBlock:(id)block;
- (void)deleteImageForEntryLocation:(id)location;
- (void)deleteRemovedEntries:(id)entries deletingCompletedHandler:(id)handler;
- (void)fetchImagesForEntry:(id)entry forRequest:(id)request completion:(id)completion;
- (void)setCachePath:(id)path;
- (void)storeAddedEntries:(id)entries forRequest:(id)request storingCompletedHandler:(id)handler;
@end

@implementation BICDiskDataStore

- (BICDiskDataStore)initWithCachePath:(id)path
{
  pathCopy = path;
  v18.receiver = self;
  v18.super_class = BICDiskDataStore;
  v5 = [(BICDiskDataStore *)&v18 init];
  if (v5)
  {
    v6 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v7 = dispatch_queue_attr_make_with_qos_class(v6, QOS_CLASS_USER_INITIATED, 0);
    v8 = dispatch_queue_create("DiskDataStore-Read/Write", v7);
    readQ = v5->_readQ;
    v5->_readQ = v8;

    v10 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v11 = dispatch_queue_attr_make_with_qos_class(v10, QOS_CLASS_UTILITY, 0);
    v12 = dispatch_queue_create("DiskDataStore-Read/Write", v11);

    v13 = [BICWorkQueue workQueueWithHighPriorityTargetQueue:v5->_readQ backgroundTargetQueue:v12 numConcurrentWorkItems:1];
    readWorkQueue = v5->_readWorkQueue;
    v5->_readWorkQueue = v13;

    [(BICWorkQueue *)v5->_readWorkQueue setIdentifier:@"DiskDataStore-Read/Write"];
    objc_storeStrong(&v5->_writeWorkQueue, v5->_readWorkQueue);
    v15 = [pathCopy stringByAppendingPathComponent:@"BICDiskDataStore"];
    [(BICDiskDataStore *)v5 setCachePath:v15];
    v5->_deviceSupportsASTC = MGGetBoolAnswer();
    v16 = CGImageDestinationCopyTypeIdentifiers();
    v5->_deviceSupportsHEIC = [(__CFArray *)v16 containsObject:AVFileTypeHEIC];
  }

  return v5;
}

- (void)setCachePath:(id)path
{
  pathCopy = path;
  if (pathCopy)
  {
    cachePath = self->_cachePath;
    p_cachePath = &self->_cachePath;
    if (![(NSString *)cachePath isEqualToString:pathCopy])
    {
      v8 = +[NSFileManager defaultManager];
      v9 = [v8 fileExistsAtPath:pathCopy];

      if ((v9 & 1) == 0)
      {
        v10 = +[NSFileManager defaultManager];
        v14 = 0;
        v11 = [v10 createDirectoryAtPath:pathCopy withIntermediateDirectories:1 attributes:0 error:&v14];
        v12 = v14;

        if ((v11 & 1) == 0)
        {
          v13 = BCImageCacheLog();
          if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
          {
            sub_1ED354();
          }
        }
      }

      objc_storeStrong(p_cachePath, path);
    }
  }
}

- (BOOL)canStoreDescribedImage:(id)image
{
  imageCopy = image;
  identifier = [imageCopy identifier];
  if (identifier)
  {
    image = [imageCopy image];
    if ([image CGImage])
    {
      v6 = 1;
    }

    else
    {
      filePath = [imageCopy filePath];
      v6 = [filePath length] != 0;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)deleteRemovedEntries:(id)entries deletingCompletedHandler:(id)handler
{
  entriesCopy = entries;
  handlerCopy = handler;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  obj = entriesCopy;
  v8 = [obj countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v8)
  {
    v9 = *v20;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v20 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v19 + 1) + 8 * i);
        imageDescription = [v11 imageDescription];
        objc_initWeak(&location, self);
        writeWorkQueue = [(BICDiskDataStore *)self writeWorkQueue];
        v15[0] = _NSConcreteStackBlock;
        v15[1] = 3221225472;
        v15[2] = sub_17C920;
        v15[3] = &unk_2CEF38;
        objc_copyWeak(&v17, &location);
        v15[4] = v11;
        v16 = handlerCopy;
        [writeWorkQueue addWorkItemWithPriority:imageDescription description:@"DiskDataStore delete removed entries" block:v15];

        objc_destroyWeak(&v17);
        objc_destroyWeak(&location);
      }

      v8 = [obj countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v8);
  }
}

- (void)afterAllStoreOperationsCompletedPerformBlock:(id)block
{
  blockCopy = block;
  v5 = [BICDescribedImage describedImageWithPriority:3];
  writeWorkQueue = [(BICDiskDataStore *)self writeWorkQueue];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_17CB8C;
  v8[3] = &unk_2CEF60;
  v9 = blockCopy;
  v7 = blockCopy;
  [writeWorkQueue addWorkItemWithPriority:v5 description:@"DiskDataStore after all ops" block:v8];
}

- (void)fetchImagesForEntry:(id)entry forRequest:(id)request completion:(id)completion
{
  entryCopy = entry;
  requestCopy = request;
  completionCopy = completion;
  v11 = [BICDescribedImage describedImageFromImageEntry:entryCopy];
  [v11 setExpiry:0];
  dataStoreInformation = [entryCopy dataStoreInformation];
  if (dataStoreInformation && (-[BICDiskDataStore cachePath](self, "cachePath"), v13 = objc_claimAutoreleasedReturnValue(), [v13 stringByAppendingPathComponent:dataStoreInformation], v14 = objc_claimAutoreleasedReturnValue(), v13, v14))
  {
    [v11 imageSize];
    v16 = v15;
    v18 = v17;
    [requestCopy imageSize];
    v20 = 1;
    if (v16 == v21 && v18 == v19)
    {
      processingOptions = [v11 processingOptions];
      v20 = processingOptions != [requestCopy processingOptions];
    }

    if (([requestCopy persistanceOptions] & 2) == 0 || v20)
    {
      [BICCacheStats logOperation:BICCacheStatsOperationDiskReadQueueStart[0] forRequest:requestCopy];
      objc_initWeak(&location, self);
      readWorkQueue = [(BICDiskDataStore *)self readWorkQueue];
      v29[0] = _NSConcreteStackBlock;
      v29[1] = 3221225472;
      v29[2] = sub_17CEF4;
      v29[3] = &unk_2CEF88;
      v30 = requestCopy;
      objc_copyWeak(&v34, &location);
      v28 = v14;
      v31 = v28;
      v32 = v11;
      v33 = completionCopy;
      [readWorkQueue addWorkItemWithPriority:v30 description:@"DiskDataStore read" block:v29];

      objc_destroyWeak(&v34);
      objc_destroyWeak(&location);
    }

    else
    {
      [v11 setFilePath:v14];
      v23 = objc_retainBlock(completionCopy);
      if (v23)
      {
        v36 = v11;
        v24 = [NSArray arrayWithObjects:&v36 count:1];
        v23[2](v23, v24);
      }
    }
  }

  else
  {
    v25 = objc_retainBlock(completionCopy);
    v26 = v25;
    if (v25)
    {
      (*(v25 + 2))(v25, 0);
    }
  }
}

- (void)deleteImageForEntryLocation:(id)location
{
  v10 = [(BICDiskDataStore *)self _filePathFromEntryLocation:location];
  v4 = [v10 stringByAppendingPathExtension:@"jpg"];
  v5 = [v10 stringByAppendingPathExtension:@"astc"];
  v6 = [v10 stringByAppendingPathExtension:@"heic"];
  v7 = [v10 stringByAppendingPathExtension:@"png"];
  [(BICDiskDataStore *)self _removeFileAtPath:v4];
  [(BICDiskDataStore *)self _removeFileAtPath:v5];
  v8 = [v5 stringByAppendingPathComponent:@"path"];
  [(BICDiskDataStore *)self _removeFileAtPath:v8];

  [(BICDiskDataStore *)self _removeFileAtPath:v6];
  [(BICDiskDataStore *)self _removeFileAtPath:v7];
  v9 = [v7 stringByAppendingPathComponent:@"path"];
  [(BICDiskDataStore *)self _removeFileAtPath:v9];
}

- (id)_filePathFromEntryLocation:(id)location
{
  locationCopy = location;
  v5 = [BICDescribedImage identifierFromEntryLocation:locationCopy];
  cachePath = [(BICDiskDataStore *)self cachePath];
  v7 = [cachePath stringByAppendingPathComponent:v5];

  v8 = [v7 stringByAppendingPathComponent:locationCopy];

  return v8;
}

- (void)_removeFileAtPath:(id)path
{
  pathCopy = path;
  v4 = +[NSFileManager defaultManager];
  v5 = [v4 fileExistsAtPath:pathCopy];

  if (v5)
  {
    v6 = +[NSFileManager defaultManager];
    v10 = 0;
    v7 = [v6 removeItemAtPath:pathCopy error:&v10];
    v8 = v10;

    if ((v7 & 1) == 0)
    {
      v9 = BCImageCacheLog();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        sub_1ED494();
      }
    }
  }

  else
  {
    v8 = 0;
  }
}

- (void)storeAddedEntries:(id)entries forRequest:(id)request storingCompletedHandler:(id)handler
{
  entriesCopy = entries;
  requestCopy = request;
  handlerCopy = handler;
  v9 = dispatch_group_create();
  v22 = +[NSMutableArray array];
  v23 = +[NSMutableArray array];
  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  obj = entriesCopy;
  v10 = [obj countByEnumeratingWithState:&v40 objects:v44 count:16];
  if (v10)
  {
    v11 = *v41;
    do
    {
      v12 = 0;
      do
      {
        if (*v41 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v40 + 1) + 8 * v12);
        dispatch_group_enter(v9);
        imageDescription = [v13 imageDescription];
        if ([(BICDiskDataStore *)self canStoreDescribedImage:imageDescription])
        {
          objc_initWeak(&location, self);
          [imageDescription setPriority:3];
          [BICCacheStats logOperation:BICCacheStatsOperationDiskWriteQueueStart[0] forRequest:requestCopy];
          writeWorkQueue = [(BICDiskDataStore *)self writeWorkQueue];
          v30[0] = _NSConcreteStackBlock;
          v30[1] = 3221225472;
          v30[2] = sub_17D80C;
          v30[3] = &unk_2CEFB0;
          v31 = requestCopy;
          selfCopy = self;
          v16 = imageDescription;
          v33 = v16;
          v34 = v13;
          v35 = v23;
          v36 = v9;
          objc_copyWeak(&v38, &location);
          v37 = v22;
          [writeWorkQueue addWorkItemWithPriority:v16 description:@"DiskDataStore write" block:v30];

          objc_destroyWeak(&v38);
          objc_destroyWeak(&location);
        }

        else
        {
          dispatch_group_leave(v9);
        }

        v12 = v12 + 1;
      }

      while (v10 != v12);
      v10 = [obj countByEnumeratingWithState:&v40 objects:v44 count:16];
    }

    while (v10);
  }

  readQ = [(BICDiskDataStore *)self readQ];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_17DEB8;
  block[3] = &unk_2CB128;
  v27 = v22;
  v28 = v23;
  v29 = handlerCopy;
  v18 = v23;
  v19 = v22;
  v20 = handlerCopy;
  dispatch_group_notify(v9, readQ, block);
}

- (int64_t)costFor:(signed __int16)for
{
  if (for != 1)
  {
    return 0;
  }

  v4 = +[NSFileManager defaultManager];
  cachePath = [(BICDiskDataStore *)self cachePath];
  v6 = [v4 contentsOfDirectoryAtPath:cachePath error:0];

  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_17E038;
  v9[3] = &unk_2CEFD8;
  v9[4] = self;
  v9[5] = &v10;
  [v6 enumerateObjectsUsingBlock:v9];
  v7 = v11[3];
  _Block_object_dispose(&v10, 8);

  return v7;
}

- (CGImage)_readCachedImageFromPath:(id)path
{
  pathCopy = path;
  kdebug_trace();
  v4 = [NSURL fileURLWithPath:pathCopy];

  if (qword_3461C0 != -1)
  {
    sub_1ED71C();
  }

  v5 = +[NSFileManager defaultManager];
  path = [v4 path];
  v7 = [v5 fileExistsAtPath:path];

  if (!v7)
  {
    v10 = BCImageCacheLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_1ED730();
    }

    goto LABEL_12;
  }

  v8 = +[NSFileManager defaultManager];
  path2 = [v4 path];
  v10 = [v8 attributesOfItemAtPath:path2 error:0];

  fileSize = [v10 fileSize];
  [BICCacheStats addToCounter:kBICCacheStatsCounterDiskBytesRead[0] amount:fileSize >> 10];
  v12 = CGImageSourceCreateWithURL(v4, 0);
  if (!v12)
  {
    v16 = BCImageCacheLog();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      sub_1ED800();
    }

LABEL_12:
    v15 = 0;
    goto LABEL_17;
  }

  v13 = v12;
  ImageAtIndex = CGImageSourceCreateImageAtIndex(v12, 0, qword_3461B8);
  v15 = ImageAtIndex;
  if (ImageAtIndex)
  {
    CFAutorelease(ImageAtIndex);
  }

  else
  {
    v17 = BCImageCacheLog();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      sub_1ED798();
    }
  }

  CFRelease(v13);
LABEL_17:

  kdebug_trace();
  return v15;
}

- (id)_writeCachedImage:(CGImage *)image unprocessed:(BOOL)unprocessed toRelativePath:(id)path
{
  pathCopy = path;
  kdebug_trace();
  if (image)
  {
    if (qword_3461F8 != -1)
    {
      sub_1ED868();
    }

    pathExtension = [pathCopy pathExtension];
    if ([pathExtension isEqualToString:@"heic"])
    {
      identifier = qword_3461D0;
      v10 = qword_3461E8;
    }

    else if ([pathExtension isEqualToString:@"astc"])
    {
      identifier = qword_3461C8;
      v10 = qword_3461E0;
    }

    else if ([pathExtension isEqualToString:@"png"])
    {
      identifier = [UTTypePNG identifier];

      v10 = 0;
    }

    else
    {
      identifier = qword_3461D8;
      v10 = qword_3461F0;
    }

    cachePath = [(BICDiskDataStore *)self cachePath];
    v12 = [cachePath stringByAppendingPathComponent:pathCopy];

    v13 = [NSURL fileURLWithPath:v12];
    v14 = CGImageDestinationCreateWithURL(v13, identifier, 1uLL, 0);
    if (v14)
    {
      v15 = v14;
      CGImageDestinationAddImage(v14, image, v10);
      CGImageDestinationFinalize(v15);
      CFRelease(v15);
      v16 = +[NSFileManager defaultManager];
      path = [(__CFURL *)v13 path];
      v18 = [v16 attributesOfItemAtPath:path error:0];

      fileSize = [v18 fileSize];
      [BICCacheStats addToCounter:kBICCacheStatsCounterDiskBytesWritten[0] amount:fileSize >> 10];
    }

    else
    {
      v20 = BCImageCacheLog();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        sub_1ED87C();
      }
    }
  }

  else
  {
    pathExtension = BCImageCacheLog();
    if (os_log_type_enabled(pathExtension, OS_LOG_TYPE_ERROR))
    {
      sub_1ED8E4();
    }
  }

  kdebug_trace();

  return pathCopy;
}

- (void)_inventoryLevel:(signed __int16)level addLevelID:(BOOL)d completion:(id)completion
{
  v5 = objc_retainBlock(completion);
  if (v5)
  {
    v6 = v5;
    (*(v5 + 2))(v5, &__NSArray0__struct);
    v5 = v6;
  }
}

- (void)_clean:(id)_clean
{
  _cleanCopy = _clean;
  cachePath = [(BICDiskDataStore *)self cachePath];
  cachePath = self->_cachePath;
  self->_cachePath = &stru_2D2930;

  v6 = +[NSFileManager defaultManager];
  [v6 removeItemAtPath:cachePath error:0];

  [(BICDiskDataStore *)self setCachePath:cachePath];
  v7 = objc_retainBlock(_cleanCopy);

  if (v7)
  {
    v7[2](v7);
  }
}

@end