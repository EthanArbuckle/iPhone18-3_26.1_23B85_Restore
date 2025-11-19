@interface _ANEStorageHelper
+ (BOOL)_markPurgeablePath:(id)a3 error:(id *)a4;
+ (BOOL)garbageCollectDanglingModelsAtPath:(id)a3;
+ (BOOL)markPathAndDirectParentPurgeable:(id)a3 error:(id *)a4;
+ (BOOL)removeDirectoryAtPath:(id)a3;
+ (BOOL)removeShapesDirectoryAtPath:(id)a3;
+ (BOOL)setAccessTime:(id)a3 forModelFilePath:(id)a4;
+ (BOOL)updateAccessTimeForFilePath:(id)a3;
+ (id)createModelCacheDictionary;
+ (id)getAccessTimeForFilePath:(id)a3;
+ (id)memoryMapModelAtPath:(id)a3 isPrecompiled:(BOOL)a4 modelAttributes:(id *)a5;
+ (id)memoryMapWeightAtPath:(id)a3;
+ (id)mergeModelCacheStorageInformation:(id)a3 with:(id)a4;
+ (id)sizeOfDirectoryAtPath:(id)a3 recursionLevel:(unint64_t)a4;
+ (id)sizeOfModelCacheAtPath:(id)a3 purgeSubdirectories:(BOOL)a4;
+ (id)uniqueFirstLevelSubdirectories:(id)a3;
+ (void)addSubdirectoryDetails:(id)a3 directoryPath:(id)a4 size:(unint64_t)a5;
+ (void)initialize;
+ (void)removeFilePath:(id)a3 ifDate:(id)a4 olderThanSecond:(id)a5;
@end

@implementation _ANEStorageHelper

+ (void)initialize
{
  if (qword_10000C8B0 != -1)
  {
    sub_100005098();
  }
}

+ (BOOL)removeDirectoryAtPath:(id)a3
{
  v4 = a3;
  v5 = +[NSFileManager defaultManager];
  v12 = 0;
  v6 = [v5 removeItemAtPath:v4 error:&v12];
  v7 = v12;

  if ((v6 & 1) == 0)
  {
    v8 = qword_10000C8C0;
    if (os_log_type_enabled(qword_10000C8C0, OS_LOG_TYPE_INFO))
    {
      v9 = v8;
      v10 = NSStringFromSelector(a2);
      *buf = 138412802;
      v14 = v10;
      v15 = 2112;
      v16 = v4;
      v17 = 2112;
      v18 = v7;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "%@: directoryPath=%@ : err=%@", buf, 0x20u);
    }
  }

  return v6;
}

+ (BOOL)removeShapesDirectoryAtPath:(id)a3
{
  v4 = a3;
  v18 = 1;
  v5 = +[NSFileManager defaultManager];
  v6 = [v5 fileExistsAtPath:v4 isDirectory:&v18];

  if (v6)
  {
    v7 = qword_10000C8C0;
    if (os_log_type_enabled(qword_10000C8C0, OS_LOG_TYPE_INFO))
    {
      v8 = v7;
      v9 = NSStringFromSelector(a2);
      *buf = 138412546;
      v20 = v9;
      v21 = 2112;
      v22 = v4;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "%@: Removing compiled JIT models associated with =%@ :", buf, 0x16u);
    }

    v10 = +[NSFileManager defaultManager];
    v17 = 0;
    v11 = [v10 removeItemAtPath:v4 error:&v17];
    v12 = v17;

    if ((v11 & 1) == 0)
    {
      v13 = qword_10000C8C0;
      if (os_log_type_enabled(qword_10000C8C0, OS_LOG_TYPE_INFO))
      {
        v14 = v13;
        v15 = NSStringFromSelector(a2);
        *buf = 138412802;
        v20 = v15;
        v21 = 2112;
        v22 = v4;
        v23 = 2112;
        v24 = v12;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "%@: directoryPath=%@ : err=%@", buf, 0x20u);
      }
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

+ (id)memoryMapModelAtPath:(id)a3 isPrecompiled:(BOOL)a4 modelAttributes:(id *)a5
{
  v8 = a3;
  v9 = qword_10000C8C0;
  if (os_log_type_enabled(qword_10000C8C0, OS_LOG_TYPE_DEBUG))
  {
    sub_1000050AC(v9, a2, v8);
  }

  v10 = v8;
  v11 = [v8 UTF8String];
  v45 = 0;
  v46 = &v45;
  v47 = 0x2020000000;
  v48 = open(v11, 256);
  if (*(v46 + 6) == -1)
  {
    v20 = qword_10000C8C0;
    if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
    {
      v21 = NSStringFromSelector(a2);
      v22 = *__error();
      v23 = __error();
      v24 = strerror(*v23);
      v59.st_dev = 138413058;
      *&v59.st_mode = v21;
      WORD2(v59.st_ino) = 2080;
      *(&v59.st_ino + 6) = v11;
      HIWORD(v59.st_gid) = 1024;
      v59.st_rdev = v22;
      *(&v59.st_rdev + 2) = 2080;
      *(&v59.st_rdev + 6) = v24;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_INFO, "%@: open(%s, (O_RDONLY|O_NOFOLLOW)) failed. errno=%d : %s", &v59, 0x26u);
    }

    goto LABEL_22;
  }

  memset(&v59, 0, sizeof(v59));
  if (fstat(*(v46 + 6), &v59) == -1)
  {
    v25 = qword_10000C8C0;
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      v30 = NSStringFromSelector(a2);
      v31 = *__error();
      v32 = __error();
      v33 = strerror(*v32);
      *buf = 138413058;
      v50 = v30;
      v51 = 2080;
      v52 = v11;
      v53 = 1024;
      *v54 = v31;
      *&v54[4] = 2080;
      *&v54[6] = v33;
      _os_log_error_impl(&_mh_execute_header, v25, OS_LOG_TYPE_ERROR, "%@: stat(%s) failed. errno=%d : %s", buf, 0x26u);
    }

    close(*(v46 + 6));
    goto LABEL_22;
  }

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  v43 = v59;
  block[2] = sub_100001A98;
  block[3] = &unk_1000082F8;
  block[4] = &v45;
  v44 = a2;
  dispatch_async(qword_10000C8B8, block);
  v12 = mmap(0, v59.st_size, 1, 1, *(v46 + 6), 0);
  if (v12 == -1)
  {
    v26 = qword_10000C8C0;
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      v34 = NSStringFromSelector(a2);
      st_size = v59.st_size;
      v36 = *(v46 + 6);
      v37 = *__error();
      v38 = __error();
      v39 = strerror(*v38);
      *buf = 138413570;
      v50 = v34;
      v51 = 2080;
      v52 = v11;
      v53 = 2048;
      *v54 = st_size;
      *&v54[8] = 1024;
      *&v54[10] = v36;
      v55 = 1024;
      v56 = v37;
      v57 = 2080;
      v58 = v39;
      _os_log_error_impl(&_mh_execute_header, v26, OS_LOG_TYPE_ERROR, "%@: mmap(%s) failed. sbuf.st_size=%lld : fd=%d errno=%d : %s", buf, 0x36u);
    }

    close(*(v46 + 6));
LABEL_22:
    v15 = 0;
    goto LABEL_27;
  }

  v13 = [NSData alloc];
  v41[0] = _NSConcreteStackBlock;
  v41[1] = 3221225472;
  v41[2] = sub_100001CA8;
  v41[3] = &unk_100008318;
  v41[4] = a2;
  v41[5] = v11;
  v14 = [v13 initWithBytesNoCopy:v12 length:v59.st_size deallocator:v41];
  v15 = v14;
  if (v14)
  {
    v16 = v14;
    [v15 bytes];
    [v15 length];
    *a5 = ANECCreateModelDictionary();
    if (!a4 && ([objc_opt_class() updateAccessTimeForFilePath:v8] & 1) == 0)
    {
      v17 = qword_10000C8C0;
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        v18 = NSStringFromSelector(a2);
        sub_10000515C(v18, v8, buf, v17);
      }
    }

    v40[0] = _NSConcreteStackBlock;
    v40[1] = 3221225472;
    v40[2] = sub_100001DE8;
    v40[3] = &unk_100008340;
    v40[4] = &v45;
    dispatch_async(qword_10000C8B8, v40);
    v19 = v15;
  }

  else
  {
    v27 = qword_10000C8C0;
    if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
    {
      v28 = NSStringFromSelector(a2);
      *buf = 138412546;
      v50 = v28;
      v51 = 2080;
      v52 = v11;
      _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_INFO, "%@: nil modelData for %s", buf, 0x16u);
    }

    close(*(v46 + 6));
  }

LABEL_27:
  _Block_object_dispose(&v45, 8);

  return v15;
}

+ (id)memoryMapWeightAtPath:(id)a3
{
  v4 = a3;
  v5 = qword_10000C8C0;
  if (os_log_type_enabled(qword_10000C8C0, OS_LOG_TYPE_DEBUG))
  {
    sub_1000051C4(v5, a2, v4);
  }

  v6 = v4;
  v7 = [v4 UTF8String];
  v37 = 0;
  v38 = &v37;
  v39 = 0x2020000000;
  v40 = open(v7, 256);
  if (*(v38 + 6) == -1)
  {
    v12 = qword_10000C8C0;
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v13 = NSStringFromSelector(a2);
      v14 = *__error();
      v15 = __error();
      v16 = strerror(*v15);
      v51.st_dev = 138413058;
      *&v51.st_mode = v13;
      WORD2(v51.st_ino) = 2080;
      *(&v51.st_ino + 6) = v7;
      HIWORD(v51.st_gid) = 1024;
      v51.st_rdev = v14;
      *(&v51.st_rdev + 2) = 2080;
      *(&v51.st_rdev + 6) = v16;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "%@: open(%s, (O_RDONLY|O_NOFOLLOW)) failed. errno=%d : %s", &v51, 0x26u);
    }

    goto LABEL_17;
  }

  memset(&v51, 0, sizeof(v51));
  if (fstat(*(v38 + 6), &v51) == -1)
  {
    v17 = qword_10000C8C0;
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v22 = NSStringFromSelector(a2);
      v23 = *__error();
      v24 = __error();
      v25 = strerror(*v24);
      *buf = 138413058;
      v42 = v22;
      v43 = 2080;
      v44 = v7;
      v45 = 1024;
      *v46 = v23;
      *&v46[4] = 2080;
      *&v46[6] = v25;
      _os_log_error_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "%@: stat(%s) failed. errno=%d : %s", buf, 0x26u);
    }

    close(*(v38 + 6));
    goto LABEL_17;
  }

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  v35 = v51;
  block[2] = sub_1000023A8;
  block[3] = &unk_1000082F8;
  block[4] = &v37;
  v36 = a2;
  dispatch_async(qword_10000C8B8, block);
  v8 = mmap(0, v51.st_size, 1, 1, *(v38 + 6), 0);
  if (v8 == -1)
  {
    v18 = qword_10000C8C0;
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v26 = NSStringFromSelector(a2);
      st_size = v51.st_size;
      v28 = *(v38 + 6);
      v29 = *__error();
      v30 = __error();
      v31 = strerror(*v30);
      *buf = 138413570;
      v42 = v26;
      v43 = 2080;
      v44 = v7;
      v45 = 2048;
      *v46 = st_size;
      *&v46[8] = 1024;
      *&v46[10] = v28;
      v47 = 1024;
      v48 = v29;
      v49 = 2080;
      v50 = v31;
      _os_log_error_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "%@: mmap(%s) failed. sbuf.st_size=%lld : fd=%d errno=%d : %s", buf, 0x36u);
    }

    close(*(v38 + 6));
LABEL_17:
    v10 = 0;
    goto LABEL_22;
  }

  v9 = [NSData alloc];
  v33[0] = _NSConcreteStackBlock;
  v33[1] = 3221225472;
  v33[2] = sub_1000025B8;
  v33[3] = &unk_100008318;
  v33[4] = a2;
  v33[5] = v7;
  v10 = [v9 initWithBytesNoCopy:v8 length:v51.st_size deallocator:v33];
  if (v10)
  {
    v32[0] = _NSConcreteStackBlock;
    v32[1] = 3221225472;
    v32[2] = sub_1000026F8;
    v32[3] = &unk_100008340;
    v32[4] = &v37;
    dispatch_async(qword_10000C8B8, v32);
    v11 = v10;
  }

  else
  {
    v19 = qword_10000C8C0;
    if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      v20 = NSStringFromSelector(a2);
      *buf = 138412546;
      v42 = v20;
      v43 = 2080;
      v44 = v7;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_INFO, "%@: nil modelData for %s", buf, 0x16u);
    }

    close(*(v38 + 6));
  }

LABEL_22:
  _Block_object_dispose(&v37, 8);

  return v10;
}

+ (BOOL)setAccessTime:(id)a3 forModelFilePath:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v6)
  {
    [v6 timeIntervalSince1970];
  }

  else
  {
    v8 = 0x7FEFFFFFFFFFFFFFLL;
  }

  value = v8;
  v9 = setxattr([v7 UTF8String], objc_msgSend(@"kANEAccessSeconds", "UTF8String"), &value, 8uLL, 0, 1);
  if (v9 < 0)
  {
    v10 = qword_10000C8C0;
    if (os_log_type_enabled(qword_10000C8C0, OS_LOG_TYPE_ERROR))
    {
      v12 = v10;
      v13 = NSStringFromSelector(a2);
      v14 = *__error();
      *buf = 138413570;
      v17 = v13;
      v18 = 2112;
      v19 = v7;
      v20 = 2112;
      v21 = @"kANEAccessSeconds";
      v22 = 2048;
      p_value = &value;
      v24 = 2048;
      v25 = 8;
      v26 = 1024;
      v27 = v14;
      _os_log_error_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "%@: setxattr(%@, %@, %p, %lu) failed  : errno=%d", buf, 0x3Au);
    }
  }

  return v9 >= 0;
}

+ (id)getAccessTimeForFilePath:(id)a3
{
  v4 = a3;
  value = 1.79769313e308;
  if ((getxattr([v4 UTF8String], objc_msgSend(@"kANEAccessSeconds", "UTF8String"), &value, 8uLL, 0, 1) & 0x8000000000000000) == 0)
  {
    v5 = [NSDate dateWithTimeIntervalSince1970:value];
    goto LABEL_8;
  }

  v6 = *__error();
  v7 = qword_10000C8C0;
  if (v6 == 93)
  {
    if (os_log_type_enabled(qword_10000C8C0, OS_LOG_TYPE_DEBUG))
    {
      v8 = v7;
      v9 = NSStringFromSelector(a2);
      v10 = *__error();
      *buf = 138413570;
      v15 = v9;
      v16 = 2112;
      v17 = v4;
      v18 = 2112;
      v19 = @"kANEAccessSeconds";
      v20 = 2048;
      p_value = &value;
      v22 = 2048;
      v23 = 8;
      v24 = 1024;
      v25 = v10;
      _os_log_debug_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "%@: getxattr(%@, %@, %p, %lu) missing attribute  : errno=%d", buf, 0x3Au);
LABEL_12:
    }
  }

  else if (os_log_type_enabled(qword_10000C8C0, OS_LOG_TYPE_ERROR))
  {
    v8 = v7;
    v9 = NSStringFromSelector(a2);
    v12 = *__error();
    *buf = 138413570;
    v15 = v9;
    v16 = 2112;
    v17 = v4;
    v18 = 2112;
    v19 = @"kANEAccessSeconds";
    v20 = 2048;
    p_value = &value;
    v22 = 2048;
    v23 = 8;
    v24 = 1024;
    v25 = v12;
    _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "%@: getxattr(%@, %@, %p, %lu) failed  : errno=%d", buf, 0x3Au);
    goto LABEL_12;
  }

  v5 = 0;
LABEL_8:

  return v5;
}

+ (BOOL)updateAccessTimeForFilePath:(id)a3
{
  v4 = a3;
  v5 = qword_10000C8C0;
  if (os_log_type_enabled(qword_10000C8C0, OS_LOG_TYPE_DEBUG))
  {
    sub_100005274(v5, a2, v4);
  }

  v6 = [NSDate dateWithTimeIntervalSinceNow:0.0];
  v7 = [objc_opt_class() getAccessTimeForFilePath:v4];
  v8 = v7;
  if (v7)
  {
    [v7 timeIntervalSince1970];
    v10 = v9;
    [v6 timeIntervalSince1970];
    if (v11 - v10 <= 86400.0)
    {
      v14 = qword_10000C8C0;
      if (os_log_type_enabled(qword_10000C8C0, OS_LOG_TYPE_DEBUG))
      {
        sub_100005320(v14, a2, v4);
      }

      goto LABEL_11;
    }
  }

  if ([objc_opt_class() setAccessTime:v6 forModelFilePath:v4])
  {
LABEL_11:
    v13 = 1;
    goto LABEL_12;
  }

  v12 = qword_10000C8C0;
  if (os_log_type_enabled(qword_10000C8C0, OS_LOG_TYPE_ERROR))
  {
    sub_1000053CC(v12, a2);
  }

  v13 = 0;
LABEL_12:

  return v13;
}

+ (void)removeFilePath:(id)a3 ifDate:(id)a4 olderThanSecond:(id)a5
{
  v7 = a3;
  v8 = a5;
  v9 = a4;
  v10 = [v9 compare:v8];
  v11 = [v9 compare:v8];

  if (v10 == -1 || !v11)
  {
    v12 = +[NSFileManager defaultManager];
    v15 = 0;
    v13 = [v12 removeItemAtPath:v7 error:&v15];
    v14 = v15;

    if ((v13 & 1) == 0 && os_log_type_enabled(qword_10000C8C0, OS_LOG_TYPE_ERROR))
    {
      sub_100005474();
    }
  }
}

+ (BOOL)garbageCollectDanglingModelsAtPath:(id)a3
{
  v4 = a3;
  v76 = mach_continuous_time();
  spid = os_signpost_id_generate(qword_10000C8C0);
  v5 = qword_10000C8C0;
  if (os_log_type_enabled(qword_10000C8C0, OS_LOG_TYPE_INFO))
  {
    v6 = v5;
    v7 = NSStringFromSelector(a2);
    *buf = 138412546;
    *v98 = v7;
    *&v98[8] = 2112;
    *v99 = v4;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "%@: START - pathURL=%@", buf, 0x16u);
  }

  v8 = +[NSFileManager defaultManager];
  v103 = NSURLIsRegularFileKey;
  v9 = [NSArray arrayWithObjects:&v103 count:1];
  v96[0] = _NSConcreteStackBlock;
  v96[1] = 3221225472;
  v96[2] = sub_10000391C;
  v96[3] = &unk_100008360;
  v96[4] = a2;
  v10 = [v8 enumeratorAtURL:v4 includingPropertiesForKeys:v9 options:0 errorHandler:v96];

  kdebug_trace();
  v11 = qword_10000C8C0;
  v12 = v11;
  v82 = spid - 1;
  if (spid - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v11))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v12, OS_SIGNPOST_EVENT, spid, "_ANED_MODELCACHE_GC", &unk_100006A81, buf, 2u);
  }

  v78 = v4;

  v94 = 0u;
  v95 = 0u;
  v92 = 0u;
  v93 = 0u;
  obj = v10;
  v13 = [obj countByEnumeratingWithState:&v92 objects:v102 count:16];
  if (!v13)
  {
    v83 = 0;
    v86 = 0;
    goto LABEL_60;
  }

  v14 = v13;
  v83 = 0;
  v86 = 0;
  v87 = *v93;
  v15 = &ANECCreateModelDictionary_ptr;
  v81 = v8;
  aSelector = a2;
  do
  {
    v16 = 0;
    v84 = v14;
    do
    {
      if (*v93 != v87)
      {
        objc_enumerationMutation(obj);
      }

      v17 = *(*(&v92 + 1) + 8 * v16);
      v18 = qword_10000C8C0;
      if (os_log_type_enabled(qword_10000C8C0, OS_LOG_TYPE_DEBUG))
      {
        v51 = v18;
        v52 = NSStringFromSelector(a2);
        *buf = 138412546;
        *v98 = v52;
        *&v98[8] = 2112;
        *v99 = v17;
        _os_log_debug_impl(&_mh_execute_header, v51, OS_LOG_TYPE_DEBUG, "%@: ---> url=%@", buf, 0x16u);
      }

      v19 = [v17 lastPathComponent];
      v20 = [v15[67] modelBinaryName];
      v21 = [v19 isEqualToString:v20];

      if (v21)
      {
        v22 = [v17 URLByDeletingLastPathComponent];
        v23 = [v15[67] modelSourceStoreName];
        v24 = [v22 URLByAppendingPathComponent:v23];

        v91 = 0;
        v25 = [NSString stringWithContentsOfURL:v24 encoding:4 error:&v91];
        v88 = v91;
        v26 = qword_10000C8C0;
        if (v25)
        {
          if (os_log_type_enabled(qword_10000C8C0, OS_LOG_TYPE_DEBUG))
          {
            v66 = v26;
            v67 = NSStringFromSelector(a2);
            *buf = 138412546;
            *v98 = v67;
            *&v98[8] = 2112;
            *v99 = v25;
            _os_log_debug_impl(&_mh_execute_header, v66, OS_LOG_TYPE_DEBUG, "%@: --->> sourcePathname=%@", buf, 0x16u);

            v15 = &ANECCreateModelDictionary_ptr;
          }

          v90 = 0;
          if ([v8 fileExistsAtPath:v25 isDirectory:&v90])
          {
            kdebug_trace();
            v27 = qword_10000C8C0;
            v28 = v27;
            if (v82 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v27))
            {
              *buf = 67109888;
              *v98 = 3;
              *&v98[4] = 1024;
              *&v98[6] = 1;
              *v99 = 2048;
              *&v99[2] = v86;
              *v100 = 2048;
              *&v100[2] = v83;
              v29 = v28;
              v30 = spid;
              v31 = "%u, ok:%u, attemptedCount:%lu, removedCount:%lu";
              v32 = 34;
              goto LABEL_26;
            }
          }

          else
          {
            v34 = qword_10000C8C0;
            if (os_log_type_enabled(qword_10000C8C0, OS_LOG_TYPE_INFO))
            {
              v35 = v34;
              v36 = NSStringFromSelector(a2);
              *buf = 138412802;
              *v98 = v36;
              *&v98[8] = 2112;
              *v99 = v25;
              *&v99[8] = 1024;
              *v100 = v90;
              _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_INFO, "%@: Missing sourcePathname=%@ : isDirectory=%d", buf, 0x1Cu);

              v15 = &ANECCreateModelDictionary_ptr;
            }

            v37 = [v15[67] modelCacheRetainName];
            v38 = [v22 URLByAppendingPathComponent:v37];
            v28 = [v38 path];

            v39 = qword_10000C8C0;
            if (os_log_type_enabled(qword_10000C8C0, OS_LOG_TYPE_INFO))
            {
              *buf = 138412290;
              *v98 = v28;
              _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_INFO, "modelCacheRetainPath=%@", buf, 0xCu);
            }

            v40 = [v8 fileExistsAtPath:v28 isDirectory:&v90];
            v41 = qword_10000C8C0;
            if (os_log_type_enabled(qword_10000C8C0, OS_LOG_TYPE_INFO))
            {
              *buf = 67109120;
              *v98 = v40;
              _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_INFO, "modelRetainFileExists=%d", buf, 8u);
            }

            if (v40)
            {
              v42 = +[_ANEStrings modelBinaryName];
              v43 = [v22 URLByAppendingPathComponent:v42];
              v44 = [v43 path];

              v45 = [objc_opt_class() getAccessTimeForFilePath:v44];
              if (v45)
              {
                v46 = [NSDate dateWithTimeIntervalSinceNow:0.0];
                [v45 timeIntervalSince1970];
                v48 = v47;
                [v46 timeIntervalSince1970];
                v50 = v49 - v48 <= 604800.0;
              }

              else
              {
                v50 = 0;
              }
            }

            else
            {
              v50 = 1;
            }

            v53 = qword_10000C8C0;
            if (os_log_type_enabled(qword_10000C8C0, OS_LOG_TYPE_INFO))
            {
              *buf = 67109120;
              *v98 = v50;
              _os_log_impl(&_mh_execute_header, v53, OS_LOG_TYPE_INFO, "retainModelCache=%d", buf, 8u);
            }

            if (v50)
            {
              v54 = v40;
            }

            else
            {
              v54 = 0;
            }

            if (v54)
            {
              v55 = 0;
              v56 = v83;
              v57 = v86;
            }

            else
            {
              v89 = v88;
              v55 = [v81 removeItemAtURL:v22 error:&v89];
              v58 = v89;

              v59 = qword_10000C8C0;
              if (os_log_type_enabled(qword_10000C8C0, OS_LOG_TYPE_INFO))
              {
                v60 = v59;
                v61 = NSStringFromSelector(aSelector);
                v62 = v61;
                *buf = 138412802;
                v63 = @"Success!";
                if (!v55)
                {
                  v63 = v58;
                }

                *v98 = v61;
                *&v98[8] = 2112;
                *v99 = v22;
                *&v99[8] = 2112;
                *v100 = v63;
                _os_log_impl(&_mh_execute_header, v60, OS_LOG_TYPE_INFO, "%@: Remove modelDirURL=%@ : %@", buf, 0x20u);
              }

              v57 = v86 + 1;
              v56 = v83 + v55;
              v88 = v58;
            }

            v86 = v57;
            kdebug_trace();
            v64 = qword_10000C8C0;
            v65 = v64;
            if (v82 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v64))
            {
              *buf = 67109888;
              *v98 = 2;
              *&v98[4] = 1024;
              *&v98[6] = v55;
              *v99 = 2048;
              *&v99[2] = v86;
              *v100 = 2048;
              *&v100[2] = v56;
              _os_signpost_emit_with_name_impl(&_mh_execute_header, v65, OS_SIGNPOST_EVENT, spid, "_ANED_MODELCACHE_GC", "%u, ok:%u, attemptedCount:%lu, removedCount:%lu", buf, 0x22u);
            }

            v83 = v56;

            v8 = v81;
            a2 = aSelector;
            v15 = &ANECCreateModelDictionary_ptr;
          }
        }

        else
        {
          if (os_log_type_enabled(qword_10000C8C0, OS_LOG_TYPE_ERROR))
          {
            v68 = v26;
            v69 = NSStringFromSelector(a2);
            *buf = 138412802;
            *v98 = v69;
            *&v98[8] = 2112;
            *v99 = v24;
            *&v99[8] = 2112;
            *v100 = v88;
            _os_log_error_impl(&_mh_execute_header, v68, OS_LOG_TYPE_ERROR, "%@: Nil sourcePathname! : srcStoreURL=%@ : lErr=%@", buf, 0x20u);

            v15 = &ANECCreateModelDictionary_ptr;
          }

          kdebug_trace();
          v33 = qword_10000C8C0;
          v28 = v33;
          if (v82 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v33))
          {
            *buf = 67109120;
            *v98 = 1;
            v29 = v28;
            v30 = spid;
            v31 = "%u";
            v32 = 8;
LABEL_26:
            _os_signpost_emit_with_name_impl(&_mh_execute_header, v29, OS_SIGNPOST_EVENT, v30, "_ANED_MODELCACHE_GC", v31, buf, v32);
          }
        }

        v14 = v84;
      }

      v16 = v16 + 1;
    }

    while (v14 != v16);
    v14 = [obj countByEnumeratingWithState:&v92 objects:v102 count:16];
  }

  while (v14);
LABEL_60:

  kdebug_trace();
  v70 = qword_10000C8C0;
  if (os_log_type_enabled(qword_10000C8C0, OS_LOG_TYPE_INFO))
  {
    v71 = v70;
    v72 = NSStringFromSelector(a2);
    *buf = 138413058;
    *v98 = v72;
    *&v98[8] = 2112;
    *v99 = v78;
    *&v99[8] = 2048;
    *v100 = v86;
    *&v100[8] = 2048;
    v101 = v83;
    _os_log_impl(&_mh_execute_header, v71, OS_LOG_TYPE_INFO, "%@: END - pathURL=%@ : attemptedCount=%lu : removedCount=%lu", buf, 0x2Au);
  }

  v73 = qword_10000C8C0;
  v74 = v73;
  if (v82 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v73))
  {
    *buf = 134349056;
    *v98 = v77;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v74, OS_SIGNPOST_EVENT, spid, "_ANED_MODELCACHE_GC", "%{public, signpost.description:begin_time}llu ", buf, 0xCu);
  }

  return 1;
}

+ (id)uniqueFirstLevelSubdirectories:(id)a3
{
  v3 = a3;
  v4 = objc_autoreleasePoolPush();
  v5 = +[NSMutableSet set];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v6 = v3;
  v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v16;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [*(*(&v15 + 1) + 8 * i) pathComponents];
        v12 = [v11 firstObject];
        [v5 addObject:v12];
      }

      v8 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v8);
  }

  v13 = [v5 copy];
  objc_autoreleasePoolPop(v4);

  return v13;
}

+ (id)sizeOfDirectoryAtPath:(id)a3 recursionLevel:(unint64_t)a4
{
  v5 = a3;
  v49 = objc_autoreleasePoolPush();
  v69[0] = kANEDModelDirectorySizeKey;
  v6 = [NSNumber numberWithUnsignedInteger:0];
  v69[1] = kANEDModelCacheDetailsKey;
  v70[0] = v6;
  v70[1] = &__NSDictionary0__struct;
  v7 = [NSDictionary dictionaryWithObjects:v70 forKeys:v69 count:2];
  v8 = [v7 mutableCopy];

  v9 = +[NSFileManager defaultManager];
  v61 = 0;
  v55 = v5;
  v10 = [v9 attributesOfItemAtPath:v5 error:&v61];
  v11 = v61;
  if (v10)
  {
    v12 = [v10 fileSize];
    v13 = [NSNumber numberWithUnsignedInteger:v12];
    [v8 setObject:v13 forKeyedSubscript:kANEDModelDirectorySizeKey];

    v14 = [v8 objectForKeyedSubscript:kANEDModelCacheDetailsKey];
    v15 = [v14 mutableCopy];

    v16 = v15;
    if (v15)
    {
      [a1 addSubdirectoryDetails:v15 directoryPath:v55 size:v12];
    }

    if (a4)
    {
      v60 = v11;
      v17 = [v9 subpathsOfDirectoryAtPath:v55 error:&v60];
      v18 = v60;

      if (v17)
      {
        v44 = v18;
        v45 = v17;
        v46 = v15;
        v47 = v10;
        v48 = v9;
        aSelectora = v8;
        v19 = [a1 uniqueFirstLevelSubdirectories:v17];
        v50 = [&__NSDictionary0__struct mutableCopy];
        v56 = 0u;
        v57 = 0u;
        v58 = 0u;
        v59 = 0u;
        obj = v19;
        v20 = [obj countByEnumeratingWithState:&v56 objects:v62 count:16];
        v21 = &off_10000C000;
        if (v20)
        {
          v22 = v20;
          v23 = a4 - 1;
          v24 = *v57;
          do
          {
            for (i = 0; i != v22; i = i + 1)
            {
              if (*v57 != v24)
              {
                objc_enumerationMutation(obj);
              }

              v26 = [v55 stringByAppendingPathComponent:*(*(&v56 + 1) + 8 * i)];
              v27 = [a1 sizeOfDirectoryAtPath:v26 recursionLevel:v23];
              v28 = [v27 objectForKeyedSubscript:kANEDModelDirectorySizeKey];
              v29 = [v28 unsignedIntegerValue];

              if (v29)
              {
                v30 = [aSelectora objectForKeyedSubscript:kANEDModelDirectorySizeKey];
                v31 = [v30 unsignedIntegerValue];

                v32 = [NSNumber numberWithUnsignedInteger:&v29[v31]];
                v21 = &off_10000C000;
                [aSelectora setObject:v32 forKeyedSubscript:kANEDModelDirectorySizeKey];

                v33 = [v27 objectForKeyedSubscript:kANEDModelCacheDetailsKey];
                if (v33)
                {
                  [v50 addEntriesFromDictionary:v33];
                }
              }
            }

            v22 = [obj countByEnumeratingWithState:&v56 objects:v62 count:16];
          }

          while (v22);
        }

        v34 = [v50 copy];
        v8 = aSelectora;
        [aSelectora setObject:v34 forKeyedSubscript:v21[277]];

        v35 = [aSelectora copy];
        v9 = v48;
        v36 = v49;
        v16 = v46;
        v10 = v47;
        v18 = v44;
        v17 = v45;
      }

      else
      {
        if (v18)
        {
          v38 = qword_10000C8C0;
          if (os_log_type_enabled(qword_10000C8C0, OS_LOG_TYPE_ERROR))
          {
            v42 = v38;
            v43 = NSStringFromSelector(a2);
            *buf = 138412802;
            v64 = v43;
            v65 = 2112;
            v66 = v55;
            v67 = 2112;
            v68 = v18;
            _os_log_error_impl(&_mh_execute_header, v42, OS_LOG_TYPE_ERROR, "%@: subpathsOfDirectoryAtPath:error: failed. directoryPath=%@ : err=%@", buf, 0x20u);
          }
        }

        v35 = [v8 copy];
        v36 = v49;
      }

      v11 = v18;
    }

    else
    {
      v35 = [v8 copy];
      v36 = v49;
    }
  }

  else
  {
    v37 = qword_10000C8C0;
    if (os_log_type_enabled(qword_10000C8C0, OS_LOG_TYPE_ERROR))
    {
      v40 = v37;
      v41 = NSStringFromSelector(a2);
      *buf = 138412802;
      v64 = v41;
      v65 = 2112;
      v66 = v55;
      v67 = 2112;
      v68 = v11;
      _os_log_error_impl(&_mh_execute_header, v40, OS_LOG_TYPE_ERROR, "%@: attributesOfItemAtPath:error: failed. directoryPath=%@ : err=%@", buf, 0x20u);
    }

    v35 = [v8 copy];
    v36 = v49;
  }

  objc_autoreleasePoolPop(v36);

  return v35;
}

+ (void)addSubdirectoryDetails:(id)a3 directoryPath:(id)a4 size:(unint64_t)a5
{
  v7 = a3;
  v8 = [a4 lastPathComponent];
  v11 = v8;
  v9 = [NSNumber numberWithUnsignedLongLong:a5];
  v12 = v9;
  v10 = [NSDictionary dictionaryWithObjects:&v12 forKeys:&v11 count:1];

  [v7 addEntriesFromDictionary:v10];
}

+ (id)createModelCacheDictionary
{
  v5[0] = kANEDModelDirectorySizeKey;
  v5[1] = kANEDModelCacheDetailsKey;
  v6[0] = &off_100008440;
  v6[1] = &__NSDictionary0__struct;
  v2 = [NSDictionary dictionaryWithObjects:v6 forKeys:v5 count:2];
  v3 = [v2 mutableCopy];

  return v3;
}

+ (id)sizeOfModelCacheAtPath:(id)a3 purgeSubdirectories:(BOOL)a4
{
  v51 = a4;
  v5 = a3;
  v6 = objc_autoreleasePoolPush();
  v7 = [objc_opt_class() createModelCacheDictionary];
  v8 = +[NSFileManager defaultManager];
  v59 = 0;
  v9 = [v8 attributesOfItemAtPath:v5 error:&v59];
  v10 = v59;
  if (v9)
  {
    v11 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [v9 fileSize]);
    [v7 setObject:v11 forKeyedSubscript:kANEDModelDirectorySizeKey];

    v58 = v10;
    v12 = [v8 subpathsOfDirectoryAtPath:v5 error:&v58];
    v13 = v58;

    if (v12)
    {
      v43 = v13;
      v44 = v12;
      v45 = v9;
      v46 = v8;
      v50 = v7;
      v47 = v6;
      v14 = [a1 uniqueFirstLevelSubdirectories:v12];
      v49 = [&__NSDictionary0__struct mutableCopy];
      v54 = 0u;
      v55 = 0u;
      v56 = 0u;
      v57 = 0u;
      obj = v14;
      v15 = [obj countByEnumeratingWithState:&v54 objects:v60 count:16];
      v16 = v51;
      if (v15)
      {
        v17 = v15;
        v18 = *v55;
        v52 = v5;
        do
        {
          v19 = 0;
          do
          {
            if (*v55 != v18)
            {
              objc_enumerationMutation(obj);
            }

            v20 = [v5 stringByAppendingPathComponent:*(*(&v54 + 1) + 8 * v19)];
            v21 = [a1 sizeOfDirectoryAtPath:v20 recursionLevel:3];
            v22 = [v21 objectForKeyedSubscript:kANEDModelDirectorySizeKey];
            v23 = [v22 unsignedIntegerValue];

            if (!v16)
            {
              goto LABEL_12;
            }

            v24 = qword_10000C8C0;
            if (os_log_type_enabled(qword_10000C8C0, OS_LOG_TYPE_DEBUG))
            {
              v30 = v24;
              v31 = NSStringFromSelector(a2);
              *buf = 138412546;
              v62 = v31;
              v63 = 2112;
              v64 = v20;
              _os_log_debug_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEBUG, "%@: removing %@", buf, 0x16u);

              v5 = v52;
            }

            if (![_ANEStorageHelper removeDirectoryAtPath:v20])
            {
              v29 = qword_10000C8C0;
              if (os_log_type_enabled(qword_10000C8C0, OS_LOG_TYPE_ERROR))
              {
                v32 = v29;
                v33 = NSStringFromSelector(a2);
                *buf = 138412546;
                v62 = v33;
                v63 = 2112;
                v64 = v20;
                _os_log_error_impl(&_mh_execute_header, v32, OS_LOG_TYPE_ERROR, "%@: FAILED to remove %@", buf, 0x16u);

                v5 = v52;
              }
            }

            else
            {
LABEL_12:
              if (v23)
              {
                v25 = [v50 objectForKeyedSubscript:kANEDModelDirectorySizeKey];
                v26 = [v25 unsignedIntegerValue];

                v27 = &v23[v26];
                v5 = v52;
                v28 = [NSNumber numberWithUnsignedInteger:v27];
                v16 = v51;
                [v50 setObject:v28 forKeyedSubscript:kANEDModelDirectorySizeKey];

                [a1 addSubdirectoryDetails:v49 directoryPath:v20 size:v23];
              }
            }

            v19 = v19 + 1;
          }

          while (v17 != v19);
          v17 = [obj countByEnumeratingWithState:&v54 objects:v60 count:16];
        }

        while (v17);
      }

      v34 = [v49 copy];
      v7 = v50;
      [v50 setObject:v34 forKeyedSubscript:kANEDModelCacheDetailsKey];

      v35 = [v50 copy];
      v8 = v46;
      v6 = v47;
      v12 = v44;
      v9 = v45;
      v13 = v43;
    }

    else
    {
      if (v13)
      {
        v37 = qword_10000C8C0;
        if (os_log_type_enabled(qword_10000C8C0, OS_LOG_TYPE_ERROR))
        {
          v41 = v37;
          v42 = NSStringFromSelector(a2);
          *buf = 138412802;
          v62 = v42;
          v63 = 2112;
          v64 = v5;
          v65 = 2112;
          v66 = v13;
          _os_log_error_impl(&_mh_execute_header, v41, OS_LOG_TYPE_ERROR, "%@: subpathsOfDirectoryAtPath:error: failed. modelDirectoryPath=%@ : err=%@", buf, 0x20u);
        }
      }

      v35 = [v7 copy];
    }

    v10 = v13;
  }

  else
  {
    v36 = qword_10000C8C0;
    if (os_log_type_enabled(qword_10000C8C0, OS_LOG_TYPE_ERROR))
    {
      v39 = v36;
      v40 = NSStringFromSelector(a2);
      *buf = 138412802;
      v62 = v40;
      v63 = 2112;
      v64 = v5;
      v65 = 2112;
      v66 = v10;
      _os_log_error_impl(&_mh_execute_header, v39, OS_LOG_TYPE_ERROR, "%@: attributesOfItemAtPath:error: failed. modelDirectoryPath=%@ : err=%@", buf, 0x20u);
    }

    v35 = [v7 copy];
  }

  objc_autoreleasePoolPop(v6);

  return v35;
}

+ (id)mergeModelCacheStorageInformation:(id)a3 with:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [objc_opt_class() createModelCacheDictionary];
  v8 = [v5 objectForKeyedSubscript:kANEDModelDirectorySizeKey];
  v9 = [v8 unsignedLongLongValue];

  v10 = [v6 objectForKeyedSubscript:kANEDModelDirectorySizeKey];
  v11 = [v10 unsignedLongLongValue];

  v12 = [NSNumber numberWithUnsignedLongLong:&v9[v11]];
  v34 = v7;
  [v7 setObject:v12 forKeyedSubscript:kANEDModelDirectorySizeKey];

  v36 = v5;
  v13 = [v5 objectForKeyedSubscript:kANEDModelCacheDetailsKey];
  v35 = v6;
  v14 = [v6 objectForKeyedSubscript:kANEDModelCacheDetailsKey];
  v15 = [v13 allKeys];
  v16 = [NSSet setWithArray:v15];

  v17 = [v14 allKeys];
  v33 = v16;
  v18 = [v16 setByAddingObjectsFromArray:v17];

  v19 = [&__NSDictionary0__struct mutableCopy];
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  obj = v18;
  v20 = [obj countByEnumeratingWithState:&v38 objects:v42 count:16];
  if (v20)
  {
    v21 = v20;
    v22 = *v39;
    do
    {
      for (i = 0; i != v21; i = i + 1)
      {
        if (*v39 != v22)
        {
          objc_enumerationMutation(obj);
        }

        v24 = *(*(&v38 + 1) + 8 * i);
        v25 = [v13 objectForKeyedSubscript:v24];
        v26 = [v25 unsignedIntegerValue];

        v27 = [v14 objectForKeyedSubscript:v24];
        v28 = [v27 unsignedIntegerValue];

        v29 = [NSNumber numberWithUnsignedInteger:&v26[v28]];
        [v19 setObject:v29 forKeyedSubscript:v24];
      }

      v21 = [obj countByEnumeratingWithState:&v38 objects:v42 count:16];
    }

    while (v21);
  }

  v30 = [v19 copy];
  [v34 setObject:v30 forKeyedSubscript:kANEDModelCacheDetailsKey];

  v31 = [v34 copy];

  return v31;
}

+ (BOOL)_markPurgeablePath:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = [v5 UTF8String];
  v7 = open(v6, 0);
  if (v7 < 0)
  {
    v16 = qword_10000C8C0;
    if (os_log_type_enabled(qword_10000C8C0, OS_LOG_TYPE_ERROR))
    {
      sub_100005574(v6, v16);
    }

    v17 = *__error();
    v34 = NSFilePathErrorKey;
    v35 = v5;
    v18 = [NSDictionary dictionaryWithObjects:&v35 forKeys:&v34 count:1];
    v15 = [NSError errorWithDomain:NSPOSIXErrorDomain code:v17 userInfo:v18];

    v10 = 0;
    if (a4)
    {
      goto LABEL_14;
    }
  }

  else
  {
    v8 = v7;
    v23 = 67589;
    v9 = ffsctl(v7, 0xC0084A44uLL, &v23, 0);
    v10 = v9 == 0;
    v11 = qword_10000C8C0;
    if (v9)
    {
      v12 = v9;
      if (os_log_type_enabled(qword_10000C8C0, OS_LOG_TYPE_ERROR))
      {
        v21 = v11;
        v22 = *__error();
        *buf = 136315906;
        v27 = v6;
        v28 = 1024;
        v29 = v12;
        v30 = 1024;
        v31 = v22;
        v32 = 2048;
        v33 = v23;
        _os_log_error_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "Fail to mark %s as purgeable (err %d) (%{darwin.errno}d) (flags 0x%llx)", buf, 0x22u);
      }

      v13 = *__error();
      v24 = NSFilePathErrorKey;
      v25 = v5;
      v14 = [NSDictionary dictionaryWithObjects:&v25 forKeys:&v24 count:1];
      v15 = [NSError errorWithDomain:NSPOSIXErrorDomain code:v13 userInfo:v14];
    }

    else
    {
      if (os_log_type_enabled(qword_10000C8C0, OS_LOG_TYPE_DEBUG))
      {
        sub_1000054F0(v6, &v23, v11);
      }

      v15 = 0;
    }

    close(v8);
    if (a4)
    {
LABEL_14:
      v19 = v15;
      *a4 = v15;
    }
  }

  return v10;
}

+ (BOOL)markPathAndDirectParentPurgeable:(id)a3 error:(id *)a4
{
  v5 = a3;
  if ([objc_opt_class() _markPurgeablePath:v5 error:a4])
  {
    v6 = [v5 stringByDeletingLastPathComponent];
    v7 = [objc_opt_class() _markPurgeablePath:v6 error:a4];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

@end