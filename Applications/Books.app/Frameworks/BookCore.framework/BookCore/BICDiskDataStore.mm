@interface BICDiskDataStore
- (BICDiskDataStore)initWithCachePath:(id)a3;
- (BOOL)canStoreDescribedImage:(id)a3;
- (CGImage)_readCachedImageFromPath:(id)a3;
- (id)_filePathFromEntryLocation:(id)a3;
- (id)_writeCachedImage:(CGImage *)a3 unprocessed:(BOOL)a4 toRelativePath:(id)a5;
- (int64_t)costFor:(signed __int16)a3;
- (void)_clean:(id)a3;
- (void)_inventoryLevel:(signed __int16)a3 addLevelID:(BOOL)a4 completion:(id)a5;
- (void)_removeFileAtPath:(id)a3;
- (void)afterAllStoreOperationsCompletedPerformBlock:(id)a3;
- (void)deleteImageForEntryLocation:(id)a3;
- (void)deleteRemovedEntries:(id)a3 deletingCompletedHandler:(id)a4;
- (void)fetchImagesForEntry:(id)a3 forRequest:(id)a4 completion:(id)a5;
- (void)setCachePath:(id)a3;
- (void)storeAddedEntries:(id)a3 forRequest:(id)a4 storingCompletedHandler:(id)a5;
@end

@implementation BICDiskDataStore

- (BICDiskDataStore)initWithCachePath:(id)a3
{
  v4 = a3;
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
    v15 = [v4 stringByAppendingPathComponent:@"BICDiskDataStore"];
    [(BICDiskDataStore *)v5 setCachePath:v15];
    v5->_deviceSupportsASTC = MGGetBoolAnswer();
    v16 = CGImageDestinationCopyTypeIdentifiers();
    v5->_deviceSupportsHEIC = [(__CFArray *)v16 containsObject:AVFileTypeHEIC];
  }

  return v5;
}

- (void)setCachePath:(id)a3
{
  v5 = a3;
  if (v5)
  {
    cachePath = self->_cachePath;
    p_cachePath = &self->_cachePath;
    if (![(NSString *)cachePath isEqualToString:v5])
    {
      v8 = +[NSFileManager defaultManager];
      v9 = [v8 fileExistsAtPath:v5];

      if ((v9 & 1) == 0)
      {
        v10 = +[NSFileManager defaultManager];
        v14 = 0;
        v11 = [v10 createDirectoryAtPath:v5 withIntermediateDirectories:1 attributes:0 error:&v14];
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

      objc_storeStrong(p_cachePath, a3);
    }
  }
}

- (BOOL)canStoreDescribedImage:(id)a3
{
  v3 = a3;
  v4 = [v3 identifier];
  if (v4)
  {
    v5 = [v3 image];
    if ([v5 CGImage])
    {
      v6 = 1;
    }

    else
    {
      v7 = [v3 filePath];
      v6 = [v7 length] != 0;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)deleteRemovedEntries:(id)a3 deletingCompletedHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  obj = v6;
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
        v12 = [v11 imageDescription];
        objc_initWeak(&location, self);
        v13 = [(BICDiskDataStore *)self writeWorkQueue];
        v15[0] = _NSConcreteStackBlock;
        v15[1] = 3221225472;
        v15[2] = sub_17C920;
        v15[3] = &unk_2CEF38;
        objc_copyWeak(&v17, &location);
        v15[4] = v11;
        v16 = v7;
        [v13 addWorkItemWithPriority:v12 description:@"DiskDataStore delete removed entries" block:v15];

        objc_destroyWeak(&v17);
        objc_destroyWeak(&location);
      }

      v8 = [obj countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v8);
  }
}

- (void)afterAllStoreOperationsCompletedPerformBlock:(id)a3
{
  v4 = a3;
  v5 = [BICDescribedImage describedImageWithPriority:3];
  v6 = [(BICDiskDataStore *)self writeWorkQueue];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_17CB8C;
  v8[3] = &unk_2CEF60;
  v9 = v4;
  v7 = v4;
  [v6 addWorkItemWithPriority:v5 description:@"DiskDataStore after all ops" block:v8];
}

- (void)fetchImagesForEntry:(id)a3 forRequest:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [BICDescribedImage describedImageFromImageEntry:v8];
  [v11 setExpiry:0];
  v12 = [v8 dataStoreInformation];
  if (v12 && (-[BICDiskDataStore cachePath](self, "cachePath"), v13 = objc_claimAutoreleasedReturnValue(), [v13 stringByAppendingPathComponent:v12], v14 = objc_claimAutoreleasedReturnValue(), v13, v14))
  {
    [v11 imageSize];
    v16 = v15;
    v18 = v17;
    [v9 imageSize];
    v20 = 1;
    if (v16 == v21 && v18 == v19)
    {
      v22 = [v11 processingOptions];
      v20 = v22 != [v9 processingOptions];
    }

    if (([v9 persistanceOptions] & 2) == 0 || v20)
    {
      [BICCacheStats logOperation:BICCacheStatsOperationDiskReadQueueStart[0] forRequest:v9];
      objc_initWeak(&location, self);
      v27 = [(BICDiskDataStore *)self readWorkQueue];
      v29[0] = _NSConcreteStackBlock;
      v29[1] = 3221225472;
      v29[2] = sub_17CEF4;
      v29[3] = &unk_2CEF88;
      v30 = v9;
      objc_copyWeak(&v34, &location);
      v28 = v14;
      v31 = v28;
      v32 = v11;
      v33 = v10;
      [v27 addWorkItemWithPriority:v30 description:@"DiskDataStore read" block:v29];

      objc_destroyWeak(&v34);
      objc_destroyWeak(&location);
    }

    else
    {
      [v11 setFilePath:v14];
      v23 = objc_retainBlock(v10);
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
    v25 = objc_retainBlock(v10);
    v26 = v25;
    if (v25)
    {
      (*(v25 + 2))(v25, 0);
    }
  }
}

- (void)deleteImageForEntryLocation:(id)a3
{
  v10 = [(BICDiskDataStore *)self _filePathFromEntryLocation:a3];
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

- (id)_filePathFromEntryLocation:(id)a3
{
  v4 = a3;
  v5 = [BICDescribedImage identifierFromEntryLocation:v4];
  v6 = [(BICDiskDataStore *)self cachePath];
  v7 = [v6 stringByAppendingPathComponent:v5];

  v8 = [v7 stringByAppendingPathComponent:v4];

  return v8;
}

- (void)_removeFileAtPath:(id)a3
{
  v3 = a3;
  v4 = +[NSFileManager defaultManager];
  v5 = [v4 fileExistsAtPath:v3];

  if (v5)
  {
    v6 = +[NSFileManager defaultManager];
    v10 = 0;
    v7 = [v6 removeItemAtPath:v3 error:&v10];
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

- (void)storeAddedEntries:(id)a3 forRequest:(id)a4 storingCompletedHandler:(id)a5
{
  v8 = a3;
  v25 = a4;
  v21 = a5;
  v9 = dispatch_group_create();
  v22 = +[NSMutableArray array];
  v23 = +[NSMutableArray array];
  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  obj = v8;
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
        v14 = [v13 imageDescription];
        if ([(BICDiskDataStore *)self canStoreDescribedImage:v14])
        {
          objc_initWeak(&location, self);
          [v14 setPriority:3];
          [BICCacheStats logOperation:BICCacheStatsOperationDiskWriteQueueStart[0] forRequest:v25];
          v15 = [(BICDiskDataStore *)self writeWorkQueue];
          v30[0] = _NSConcreteStackBlock;
          v30[1] = 3221225472;
          v30[2] = sub_17D80C;
          v30[3] = &unk_2CEFB0;
          v31 = v25;
          v32 = self;
          v16 = v14;
          v33 = v16;
          v34 = v13;
          v35 = v23;
          v36 = v9;
          objc_copyWeak(&v38, &location);
          v37 = v22;
          [v15 addWorkItemWithPriority:v16 description:@"DiskDataStore write" block:v30];

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

  v17 = [(BICDiskDataStore *)self readQ];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_17DEB8;
  block[3] = &unk_2CB128;
  v27 = v22;
  v28 = v23;
  v29 = v21;
  v18 = v23;
  v19 = v22;
  v20 = v21;
  dispatch_group_notify(v9, v17, block);
}

- (int64_t)costFor:(signed __int16)a3
{
  if (a3 != 1)
  {
    return 0;
  }

  v4 = +[NSFileManager defaultManager];
  v5 = [(BICDiskDataStore *)self cachePath];
  v6 = [v4 contentsOfDirectoryAtPath:v5 error:0];

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

- (CGImage)_readCachedImageFromPath:(id)a3
{
  v3 = a3;
  kdebug_trace();
  v4 = [NSURL fileURLWithPath:v3];

  if (qword_3461C0 != -1)
  {
    sub_1ED71C();
  }

  v5 = +[NSFileManager defaultManager];
  v6 = [v4 path];
  v7 = [v5 fileExistsAtPath:v6];

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
  v9 = [v4 path];
  v10 = [v8 attributesOfItemAtPath:v9 error:0];

  v11 = [v10 fileSize];
  [BICCacheStats addToCounter:kBICCacheStatsCounterDiskBytesRead[0] amount:v11 >> 10];
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

- (id)_writeCachedImage:(CGImage *)a3 unprocessed:(BOOL)a4 toRelativePath:(id)a5
{
  v7 = a5;
  kdebug_trace();
  if (a3)
  {
    if (qword_3461F8 != -1)
    {
      sub_1ED868();
    }

    v8 = [v7 pathExtension];
    if ([v8 isEqualToString:@"heic"])
    {
      v9 = qword_3461D0;
      v10 = qword_3461E8;
    }

    else if ([v8 isEqualToString:@"astc"])
    {
      v9 = qword_3461C8;
      v10 = qword_3461E0;
    }

    else if ([v8 isEqualToString:@"png"])
    {
      v9 = [UTTypePNG identifier];

      v10 = 0;
    }

    else
    {
      v9 = qword_3461D8;
      v10 = qword_3461F0;
    }

    v11 = [(BICDiskDataStore *)self cachePath];
    v12 = [v11 stringByAppendingPathComponent:v7];

    v13 = [NSURL fileURLWithPath:v12];
    v14 = CGImageDestinationCreateWithURL(v13, v9, 1uLL, 0);
    if (v14)
    {
      v15 = v14;
      CGImageDestinationAddImage(v14, a3, v10);
      CGImageDestinationFinalize(v15);
      CFRelease(v15);
      v16 = +[NSFileManager defaultManager];
      v17 = [(__CFURL *)v13 path];
      v18 = [v16 attributesOfItemAtPath:v17 error:0];

      v19 = [v18 fileSize];
      [BICCacheStats addToCounter:kBICCacheStatsCounterDiskBytesWritten[0] amount:v19 >> 10];
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
    v8 = BCImageCacheLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_1ED8E4();
    }
  }

  kdebug_trace();

  return v7;
}

- (void)_inventoryLevel:(signed __int16)a3 addLevelID:(BOOL)a4 completion:(id)a5
{
  v5 = objc_retainBlock(a5);
  if (v5)
  {
    v6 = v5;
    (*(v5 + 2))(v5, &__NSArray0__struct);
    v5 = v6;
  }
}

- (void)_clean:(id)a3
{
  v4 = a3;
  v8 = [(BICDiskDataStore *)self cachePath];
  cachePath = self->_cachePath;
  self->_cachePath = &stru_2D2930;

  v6 = +[NSFileManager defaultManager];
  [v6 removeItemAtPath:v8 error:0];

  [(BICDiskDataStore *)self setCachePath:v8];
  v7 = objc_retainBlock(v4);

  if (v7)
  {
    v7[2](v7);
  }
}

@end