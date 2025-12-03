@interface CacheDeletePruner
+ (id)prunerWithFileAge:(double)age dirAge:(double)dirAge;
- (CacheDeletePruner)initWithFileAge:(double)age dirAge:(double)dirAge;
- (unint64_t)pruneContainerTmps;
- (unint64_t)pruneDir:(id)dir bundleID:(id)d;
@end

@implementation CacheDeletePruner

- (CacheDeletePruner)initWithFileAge:(double)age dirAge:(double)dirAge
{
  v7.receiver = self;
  v7.super_class = CacheDeletePruner;
  result = [(CacheDeletePruner *)&v7 init];
  if (result)
  {
    result->_dir_age = dirAge;
    result->_file_age = age;
  }

  return result;
}

+ (id)prunerWithFileAge:(double)age dirAge:(double)dirAge
{
  v4 = [[CacheDeletePruner alloc] initWithFileAge:age dirAge:dirAge];

  return v4;
}

- (unint64_t)pruneContainerTmps
{
  v3 = objc_autoreleasePoolPush();
  v4 = getRootVolume();
  if (v4)
  {
    v5 = [CacheDeleteVolume volumeWithPath:v4];
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = __39__CacheDeletePruner_pruneContainerTmps__block_invoke;
    v7[3] = &unk_10000C4C8;
    v7[4] = self;
    [AppCache enumerateAppCachesOnVolume:v5 options:0 telemetry:0 block:v7];
  }

  else
  {
    v5 = CDGetLogHandle();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "Unable to get root volume ", buf, 2u);
    }
  }

  objc_autoreleasePoolPop(v3);
  return 0;
}

uint64_t __39__CacheDeletePruner_pruneContainerTmps__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = [*(a1 + 32) cancel];
  if ((v5 & 1) == 0)
  {
    v6 = [v3 dataContainerURL];
    v7 = [v6 path];
    v8 = [v7 stringByAppendingPathComponent:@"tmp"];
    v9 = [v8 fileSystemRepresentation];

    if (!v9)
    {
      v15 = CDGetLogHandle();
      if (!os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_11;
      }

      v16 = [v3 identifier];
      *buf = 138412290;
      v20 = v16;
      _os_log_error_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "Unable to create /tmp/ path for %@", buf, 0xCu);
LABEL_9:

LABEL_11:
      goto LABEL_12;
    }

    if (stat(v9, &v18) != -1 && (v18.st_mode & 0xF000) == 0x4000)
    {
      v10 = [NSString stringWithUTF8String:v9];
      v11 = traverse_directory();

      v12 = CDGetLogHandle();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v13 = [v3 identifier];
        *buf = 138412546;
        v20 = v13;
        v21 = 2048;
        v22 = v11;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "%@ /tmp/ size: %llu", buf, 0x16u);
      }

      if (v11 > 0xA00000)
      {
        v14 = *(a1 + 32);
        v15 = [NSString stringWithUTF8String:v9];
        v16 = [v3 identifier];
        [v14 pruneDir:v15 bundleID:v16];
        goto LABEL_9;
      }
    }
  }

LABEL_12:
  objc_autoreleasePoolPop(v4);

  return v5 ^ 1;
}

- (unint64_t)pruneDir:(id)dir bundleID:(id)d
{
  dirCopy = dir;
  dCopy = d;
  v29 = 0;
  v30 = &v29;
  v31 = 0x2020000000;
  v32 = 0;
  v8 = dirCopy;
  fileSystemRepresentation = [dirCopy fileSystemRepresentation];
  v10 = +[NSMutableSet set];
  v28.tv_sec = 0;
  *&v28.tv_usec = 0;
  if (gettimeofday(&v28, 0))
  {
    v11 = CDGetLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v20 = __error();
      v21 = strerror(*v20);
      *buf = 136315138;
      v35 = v21;
      _os_log_error_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "gettimeofday failed: %s", buf, 0xCu);
    }
  }

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = __39__CacheDeletePruner_pruneDir_bundleID___block_invoke;
  block[3] = &unk_10000C518;
  v26 = fileSystemRepresentation;
  block[4] = self;
  v27 = v28;
  v12 = v10;
  v24 = v12;
  v25 = &v29;
  v13 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, QOS_CLASS_BACKGROUND, 0, block);
  v14 = v13;
  if (dCopy)
  {
    testObject = [(CacheDeletePruner *)self testObject];
    v33 = dCopy;
    v16 = [NSArray arrayWithObjects:&v33 count:1];
    v22 = v14;
    v17 = assert_group_cache_deletion();
  }

  else
  {
    (*(v13 + 2))(v13);
  }

  v18 = v30[3];

  _Block_object_dispose(&v29, 8);
  return v18;
}

void __39__CacheDeletePruner_pruneDir_bundleID___block_invoke(uint64_t a1)
{
  v2 = [NSString stringWithUTF8String:*(a1 + 56)];
  v16 = _NSConcreteStackBlock;
  v17 = 3221225472;
  v18 = __39__CacheDeletePruner_pruneDir_bundleID___block_invoke_2;
  v19 = &unk_10000C4F0;
  v3 = *(a1 + 40);
  v20 = *(a1 + 32);
  v23 = *(a1 + 64);
  v4 = v3;
  v5 = *(a1 + 48);
  v21 = v4;
  v22 = v5;
  traverse_directory();

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v6 = *(a1 + 40);
  v7 = [v6 countByEnumeratingWithState:&v12 objects:v24 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v13;
    do
    {
      v10 = 0;
      do
      {
        if (*v13 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v12 + 1) + 8 * v10);
        rmdir([v11 fileSystemRepresentation]);
        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v12 objects:v24 count:16];
    }

    while (v8);
  }
}

uint64_t __39__CacheDeletePruner_pruneDir_bundleID___block_invoke_2(uint64_t a1, const char *a2, uint64_t a3)
{
  if ([*(a1 + 32) cancel])
  {
    return 0;
  }

  v7 = *(a3 + 48);
  v8 = *(a1 + 56);
  v9 = *(a1 + 32);
  if (*a3 == 1)
  {
    if (v7 >= v8 - [v9 dir_age])
    {
      *(a3 + 1) = 1;
    }

    else
    {
      v10 = CDGetLogHandle();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v20 = 67109378;
        *v21 = 167;
        *&v21[4] = 2080;
        *&v21[6] = a2;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%d pruneDir rmdir'ing %s", &v20, 0x12u);
      }

      if (rmdir(a2))
      {
        v11 = CDGetLogHandle();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
        {
          v16 = __error();
          v17 = strerror(*v16);
          v20 = 136315394;
          *v21 = a2;
          *&v21[8] = 2080;
          *&v21[10] = v17;
          _os_log_error_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "Could not rmdir %s: %s\n", &v20, 0x16u);
        }

        *(a3 + 1) = 1;
        v12 = *(a1 + 40);
        v13 = [NSString stringWithUTF8String:a2];
        [v12 addObject:v13];
      }
    }
  }

  else if (v7 <= v8 - [v9 file_age])
  {
    v14 = CDGetLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v20 = 67109378;
      *v21 = 182;
      *&v21[4] = 2080;
      *&v21[6] = a2;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "%d pruneDir unlink'ing %s", &v20, 0x12u);
    }

    if (unlinkat(-2, a2, 4096))
    {
      v15 = CDGetLogHandle();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        v18 = __error();
        v19 = strerror(*v18);
        v20 = 136315394;
        *v21 = a2;
        *&v21[8] = 2080;
        *&v21[10] = v19;
        _os_log_error_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "unlink failed on %s : %s", &v20, 0x16u);
      }
    }

    else
    {
      *(*(*(a1 + 48) + 8) + 24) += *(a3 + 8);
    }
  }

  return [*(a1 + 32) cancel] ^ 1;
}

void __39__CacheDeletePruner_pruneDir_bundleID___block_invoke_2_17(id a1, NSError *a2, NSString *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = CDGetLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    v7 = 138412546;
    v8 = v5;
    v9 = 2112;
    v10 = v4;
    _os_log_error_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "Failed to acquire termination assertion for '%@': %@", &v7, 0x16u);
  }
}

@end