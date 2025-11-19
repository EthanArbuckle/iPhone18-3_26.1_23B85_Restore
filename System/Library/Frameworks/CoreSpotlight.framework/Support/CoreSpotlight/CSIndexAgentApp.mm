@interface CSIndexAgentApp
+ (void)initialize;
- (BOOL)handleCommand:(const char *)a3 info:(id)a4 connection:(id)a5;
- (BOOL)lostClientConnection:(id)a3 error:(id)a4;
- (id)createVolumeConfigForMountPath:(const char *)a3 volumeUUID:(id)a4;
- (id)indexerForCStringVolume:(const char *)a3;
- (id)indexerForVolume:(id)a3;
- (id)macOSJournalSafeScanDateFromIndexPath:(const char *)a3;
- (int)_indexQueryStart:(id)a3 queryString:(id)a4 queryContext:(id)a5 queryID:(int64_t)a6 remoteConnection:(id)a7;
- (int)_mountVolume:(id)a3;
- (int)_queryCancel:(id)a3;
- (int)_scanQueryStart:(id)a3 scope:(id)a4 queryString:(id)a5 criteria:(id)a6 queryContext:(id)a7 queryID:(int64_t)a8 remoteConnection:(id)a9;
- (void)_closeAllWithCompletionHandler:(id)a3;
- (void)_closeIndexAtPath:(id)a3;
- (void)_handleFSE:(id)a3;
- (void)_handleMount:(id)a3 force:(BOOL)a4;
- (void)_handleScan:(id)a3 completionHandler:(id)a4;
- (void)handleCloseAll:(id)a3 completionBlock:(id)a4;
- (void)handleEjectOrUnmountNotificationFromDADisk:(__DADisk *)a3 label:(id)a4;
- (void)handleFSE:(id)a3 completionBlock:(id)a4;
- (void)handleMount:(id)a3 completionBlock:(id)a4;
- (void)handleQueryCancel:(id)a3 completionBlock:(id)a4;
- (void)handleQueryStart:(id)a3 completionBlock:(id)a4;
- (void)handleReset:(id)a3 completionBlock:(id)a4;
- (void)handleResolveInfo:(const char *)a3 completionBlock:(id)a4;
- (void)handleResolvePath:(const char *)a3 info:(id)a4 completionBlock:(id)a5;
- (void)handleScan:(id)a3 completionBlock:(id)a4;
- (void)handleStatus:(id)a3 completionBlock:(id)a4;
- (void)handleWalkPath:(const char *)a3 flat:(BOOL)a4 completionBlock:(id)a5;
- (void)importItems:(id)a3 indexer:(id)a4;
- (void)openIndex:(id)a3 rootPath:(id)a4 volumeUUID:(id)a5 options:(unint64_t)a6;
- (void)performScan:(id)a3 liveFSHandle:(id)a4 pathFromMountPoint:(id)a5 fromDate:(id)a6 allowImport:(BOOL)a7 completionHandler:(id)a8;
- (void)queryActiviate;
- (void)removeChildRecords:(int64_t)a3 withIndexer:(id)a4 withVolumeName:(const char *)a5;
- (void)udatedWithAddedMountPoints:(id)a3 andRemovedMountPoints:(id)a4;
@end

@implementation CSIndexAgentApp

+ (void)initialize
{
  if (objc_opt_class() == a1)
  {
    v2 = [CSIndexAgentApp alloc];
    v3 = [(CSIndexAgentApp *)v2 initMachServiceListenerWithName:CSUserFSAppMachServiceName];
    v4 = qword_10003CB90;
    qword_10003CB90 = v3;

    v5 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_UTILITY, 0);
    v6 = dispatch_queue_create("index queue", v5);
    [qword_10003CB90 setIndexQueue:v6];

    v7 = dispatch_queue_attr_make_initially_inactive(0);
    v8 = dispatch_queue_attr_make_with_qos_class(v7, QOS_CLASS_UTILITY, 0);
    v9 = dispatch_queue_create("query queue", v8);
    [qword_10003CB90 setQueryQueue:v9];

    [qword_10003CB90 setQueryQueueActive:0];
    v10 = [FPMonitor alloc];
    v11 = [(FPMonitor *)v10 initWithDelegate:qword_10003CB90];
    [qword_10003CB90 setFpMonitor:v11];

    v12 = [qword_10003CB90 indexQueue];
    v13 = [SPQueryResultsQueue sharedInstanceDispatchQueue:v12];

    [qword_10003CB90 indexQueue];
    v21 = _NSConcreteStackBlock;
    v22 = 3221225472;
    v23 = sub_10001819C;
    v25 = v24 = &unk_1000352E8;
    v14 = qword_10003CBE8;
    v15 = v25;
    if (v14 != -1)
    {
      dispatch_once(&qword_10003CBE8, &v21);
    }

    qword_10003CBA0 = DASessionCreate(kCFAllocatorDefault);
    if (qword_10003CBA0)
    {
      v26 = @"DADeviceInternal";
      v27 = kCFBooleanFalse;
      v16 = kDADiskDescriptionMatchVolumeMountable;
      v17 = [NSDictionary dictionaryWithObjects:&v27 forKeys:&v26 count:1, v21, v22, v23, v24];
      DARegisterDiskUnmountApprovalCallbackBlock();
      v18 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_UTILITY, 0);
      v19 = dispatch_queue_create("DiskArb queue", v18);
      v20 = qword_10003CB98;
      qword_10003CB98 = v19;

      DASessionSetDispatchQueue(qword_10003CBA0, qword_10003CB98);
    }
  }
}

- (void)handleEjectOrUnmountNotificationFromDADisk:(__DADisk *)a3 label:(id)a4
{
  v5 = a4;
  v6 = DADiskCopyDescription(a3);
  v7 = [(__CFDictionary *)v6 objectForKeyedSubscript:kDADiskDescriptionVolumeNameKey];
  v8 = [(__CFDictionary *)v6 objectForKeyedSubscript:kDADiskDescriptionMediaBSDNameKey];
  v9 = sub_10000EAB0(v6);
  v10 = sub_10000EB78(v6);
  v11 = logForCSLogCategoryDefault();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138413570;
    v18 = v5;
    v19 = 2048;
    v20 = a3;
    v21 = 2112;
    v22 = v8;
    v23 = 2112;
    v24 = v7;
    v25 = 2112;
    v26 = v9;
    v27 = 2112;
    v28 = v10;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "DiskApproval %@ enter %p %@ %@ %@ %@", buf, 0x3Eu);
  }

  v12 = objc_opt_new();
  sub_10000EBF8(a3, v12);
  if ([v12 count])
  {
    v13 = [qword_10003CB90 indexQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10000EEC0;
    block[3] = &unk_1000352E8;
    v16 = v12;
    dispatch_sync(v13, block);
  }

  v14 = logForCSLogCategoryDefault();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138413058;
    v18 = v5;
    v19 = 2048;
    v20 = a3;
    v21 = 2112;
    v22 = v8;
    v23 = 2112;
    v24 = v10;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "DiskApproval %@ exit %p %@ %@", buf, 0x2Au);
  }
}

- (id)indexerForCStringVolume:(const char *)a3
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = sub_10000F0F8;
  v10 = sub_10000F108;
  v11 = 0;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10000F170;
  v5[3] = &unk_100035310;
  v5[4] = &v6;
  v5[5] = a3;
  sub_10000F110(v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (id)indexerForVolume:(id)a3
{
  v5 = a3;
  v6 = [a3 UTF8String];

  return [(CSIndexAgentApp *)self indexerForCStringVolume:v6];
}

- (void)_closeIndexAtPath:(id)a3
{
  v3 = a3;
  v4 = sub_10000F404(v3);
  if (v4)
  {
    v5 = logForCSLogCategoryDefault();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v17 = v4;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Closing %@", buf, 0xCu);
    }

    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    v6 = [v4 allQueryTasks];
    v7 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v12;
      do
      {
        v10 = 0;
        do
        {
          if (*v12 != v9)
          {
            objc_enumerationMutation(v6);
          }

          [*(*(&v11 + 1) + 8 * v10) cancel];
          v10 = v10 + 1;
        }

        while (v8 != v10);
        v8 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
      }

      while (v8);
    }

    [v4 close];
    sub_10000F470(0, v3);
  }
}

- (void)queryActiviate
{
  if (!self->_queryQueueActive)
  {
    dispatch_activate(self->_queryQueue);
    self->_queryQueueActive = 1;
  }
}

- (void)udatedWithAddedMountPoints:(id)a3 andRemovedMountPoints:(id)a4
{
  v6 = a3;
  v7 = a4;
  indexQueue = self->_indexQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000F604;
  block[3] = &unk_100035360;
  v12 = v7;
  v13 = self;
  v14 = v6;
  v9 = v6;
  v10 = v7;
  dispatch_async(indexQueue, block);
}

- (void)handleStatus:(id)a3 completionBlock:(id)a4
{
  v5 = a4;
  indexQueue = self->_indexQueue;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10000FB08;
  v8[3] = &unk_1000353B0;
  v8[4] = self;
  v9 = v5;
  v7 = v5;
  dispatch_async(indexQueue, v8);
}

- (id)createVolumeConfigForMountPath:(const char *)a3 volumeUUID:(id)a4
{
  v5 = a4;
  v6 = v5;
  v7 = 0;
  v8 = 22;
  v9 = 0;
  v10 = 0;
  if (a3 && v5)
  {
    v11 = objc_opt_new();
    v7 = [v11 UUIDString];

    v12 = [v7 UTF8String];
    if (!v12)
    {
      goto LABEL_5;
    }

    v13 = v12;
    v14 = strlen(v12);
    v15 = strlen(a3);
    if (v14 + v15 - 743 < 0xFFFFFFFFFFFFFC00)
    {
      goto LABEL_5;
    }

    v19 = v15;
    bzero(v32, 0x400uLL);
    __memcpy_chk();
    v20 = &v32[v19];
    strcpy(&v32[v19], "/.Spotlight-V100");
    if (mkdir(v32, 0x1C0u) != -1 || (v8 = *__error(), v8 == 17))
    {
      v31[0] = v6;
      v30[0] = @"ConfigurationVolumeUUID";
      v30[1] = @"ConfigurationCreationDate";
      v21 = +[NSDate date];
      v31[1] = v21;
      v31[2] = &__NSArray0__struct;
      v30[2] = @"Exclusions";
      v30[3] = @"Stores";
      v28 = v7;
      v29 = &off_100036C48;
      v22 = [NSDictionary dictionaryWithObjects:&v29 forKeys:&v28 count:1];
      v31[3] = v22;
      v10 = [NSDictionary dictionaryWithObjects:v31 forKeys:v30 count:4];

      v9 = [NSPropertyListSerialization dataWithPropertyList:v10 format:100 options:0 error:0];
      if ([v9 length])
      {
        strcpy(v20 + 16, "/VolumeConfiguration.plist");
        v23 = open(v32, 536872449, 448);
        if (v23 == -1)
        {
          v8 = *__error();
        }

        else
        {
          v24 = v23;
          if (write(v23, [v9 bytes], objc_msgSend(v9, "length")) == -1)
          {
            v8 = *__error();
            close(v24);
          }

          else
          {
            close(v24);
            strcpy(v20 + 17, "Store-V2");
            if (mkdir(v32, 0x1C0u) != -1 || (v8 = *__error(), v8 == 17))
            {
              *(v20 + 25) = 47;
              memcpy(v20 + 26, v13, v14 + 1);
              if (mkdir(v32, 0x1C0u) != -1 || (v8 = *__error(), v8 == 17))
              {
                v25 = logForCSLogCategoryDefault();
                if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
                {
                  *buf = 136315138;
                  v27 = v32;
                  _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_INFO, "createVolumeConfig %s", buf, 0xCu);
                }

                v10 = v10;
                v17 = v10;
                goto LABEL_9;
              }
            }
          }
        }
      }

      else
      {
        v8 = 22;
      }
    }

    else
    {
LABEL_5:
      v9 = 0;
      v10 = 0;
    }
  }

  v16 = logForCSLogCategoryDefault();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
  {
    *buf = 67109120;
    LODWORD(v27) = v8;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "createVolumeConfigForMountPath error:%d", buf, 8u);
  }

  v17 = 0;
LABEL_9:

  return v17;
}

- (void)_handleMount:(id)a3 force:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  bzero(__s, 0x400uLL);
  v7 = [v6 fileSystemRepresentation];
  if (!v7)
  {
    goto LABEL_14;
  }

  v8 = v7;
  if (strlen(v7) - 1 > 0x2FE)
  {
    goto LABEL_14;
  }

  if (!strncmp(v8, "/System/Library/PrivateFrameworks/UserFS.framework/PlugIns/com.apple.filesystems.userfsd/", 0x59uLL))
  {
    if (strlen(v8 + 89) + 69 <= 0x3FF)
    {
      v66 = self;
      qmemcpy(__s, "/private/var/mobile/Library/LiveFiles/com.apple.filesystems.userfsd/", 68);
      goto LABEL_7;
    }

LABEL_14:
    v13 = logForCSLogCategoryDefault();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      sub_100024360();
    }

    goto LABEL_16;
  }

  v66 = self;
LABEL_7:
  __memcpy_chk();
  v9 = strlen(__s);
  v10 = 0;
  strcpy(&__s[v9], "/.");
  v67 = v9;
  v69 = &__s[v9];
  memset(&v76, 0, sizeof(v76));
  while (stat(__s, &v76))
  {
    v11 = *__error();
    v12 = logForCSLogCategoryDefault();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      buf.f_bsize = 67109634;
      buf.f_iosize = v10;
      LOWORD(buf.f_blocks) = 1024;
      *(&buf.f_blocks + 2) = v11;
      HIWORD(buf.f_blocks) = 2080;
      buf.f_bfree = __s;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "stat[%d] error:%d on %s", &buf, 0x18u);
    }

    if (v11 != 57)
    {
      if (v11)
      {
        goto LABEL_17;
      }

      break;
    }

    sleep(1u);
    if (++v10 == 5)
    {
      goto LABEL_17;
    }
  }

  bzero(&buf, 0x878uLL);
  if (statfs(__s, &buf))
  {
    goto LABEL_17;
  }

  v14 = logForCSLogCategoryDefault();
  v15 = v4;
  if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
  {
    *v79 = 67109120;
    LODWORD(st_ino) = v4;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "force: %d", v79, 8u);
  }

  v16 = logForCSLogCategoryDefault();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
  {
    *v79 = 67109120;
    LODWORD(st_ino) = v76.st_dev;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "dev_t: %d", v79, 8u);
  }

  v17 = logForCSLogCategoryDefault();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
  {
    *v79 = 134217984;
    st_ino = v76.st_ino;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_INFO, "st_ino: %lld", v79, 0xCu);
  }

  v18 = logForCSLogCategoryDefault();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
  {
    *v79 = 136315138;
    st_ino = buf.f_fstypename;
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_INFO, "f_fstypename: %s", v79, 0xCu);
  }

  v19 = logForCSLogCategoryDefault();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
  {
    *v79 = 136315138;
    st_ino = buf.f_mntonname;
    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_INFO, "f_mntonname: %s", v79, 0xCu);
  }

  v20 = logForCSLogCategoryDefault();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
  {
    *v79 = 136315138;
    st_ino = buf.f_mntfromname;
    _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_INFO, "f_mntfromname: %s", v79, 0xCu);
  }

  v21 = logForCSLogCategoryDefault();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
  {
    *v79 = 134217984;
    st_ino = buf.f_flags;
    _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_INFO, "f_flags: 0x%llx", v79, 0xCu);
  }

  v22 = logForCSLogCategoryDefault();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
  {
    *v79 = 134217984;
    st_ino = buf.f_bsize;
    _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_INFO, "f_bsize: 0x%llx", v79, 0xCu);
  }

  v23 = logForCSLogCategoryDefault();
  if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
  {
    *v79 = 134217984;
    st_ino = buf.f_blocks;
    _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_INFO, "f_blocks: 0x%llx", v79, 0xCu);
  }

  v24 = logForCSLogCategoryDefault();
  if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
  {
    *v79 = 134217984;
    st_ino = buf.f_bavail;
    _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_INFO, "f_bavail: 0x%llx", v79, 0xCu);
  }

  *v69 = 0;
  v25 = buf.f_blocks * buf.f_bsize;
  if (v25 <= 0x3FFFFFF)
  {
    v13 = logForCSLogCategoryIndex();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *v79 = 136315394;
      st_ino = buf.f_mntfromname;
      v81 = 2048;
      v82 = v25;
      v26 = "*warn* volume %s too small for index %lld";
      v27 = v79;
      v28 = v13;
      v29 = OS_LOG_TYPE_DEFAULT;
      v30 = 22;
LABEL_58:
      _os_log_impl(&_mh_execute_header, v28, v29, v26, v27, v30);
      goto LABEL_16;
    }

    goto LABEL_16;
  }

  bzero(v79, 0x400uLL);
  if (__strlcpy_chk() > 0x3FF || ((memset(&v78, 0, sizeof(v78)), __strlcat_chk() > 0x3FF) ? (v31 = 0) : (v31 = stat(v79, &v78) != 0), (v79[v67] = 0, __strlcat_chk() > 0x3FF) || stat(v79, &v78) == 0 || !v31))
  {
    v13 = logForCSLogCategoryDefault();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v78.st_dev = 138412290;
      *&v78.st_mode = v6;
      v26 = "/.metadata_never_index variant found on %@";
      v27 = &v78;
      v28 = v13;
      v29 = OS_LOG_TYPE_INFO;
      v30 = 12;
      goto LABEL_58;
    }

LABEL_16:

    goto LABEL_17;
  }

  v32 = strrchr(buf.f_mntonname, 47);
  if (!v32)
  {
    v13 = logForCSLogCategoryDefault();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      sub_1000242F0();
    }

    goto LABEL_16;
  }

  v33 = [NSString stringWithUTF8String:v32 + 1];
  v34 = logForCSLogCategoryDefault();
  if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
  {
    v78.st_dev = 138412290;
    *&v78.st_mode = v33;
    _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_INFO, "using volume UUID %@", &v78, 0xCu);
  }

  v35 = strcmp(buf.f_fstypename, [LiveFSFileSystemTypeName UTF8String]);
  if (!v15 && v35)
  {
    goto LABEL_104;
  }

  if (v35)
  {
    v36 = 0;
    v68 = 33;
  }

  else
  {
    v68 = sub_100010E10(&buf) | 1;
    v36 = [NSString stringWithUTF8String:__s];
  }

  v37 = v66;
  v38 = [NSString stringWithFormat:@"%s/%s", __s, ".Spotlight-V100/VolumeConfiguration.plist"];
  v75 = 0;
  v39 = [NSData dataWithContentsOfFile:v38 options:0 error:&v75];
  v40 = v75;

  if ([v39 length])
  {
    [NSPropertyListSerialization propertyListWithData:v39 options:0 format:0 error:0];
  }

  else
  {
    [(CSIndexAgentApp *)v66 createVolumeConfigForMountPath:__s volumeUUID:v33];
  }
  v41 = ;
  v42 = v41;
  if (!v41)
  {
    goto LABEL_103;
  }

  v70 = v41;
  v43 = [v41 objectForKeyedSubscript:@"ConfigurationVolumeUUID"];
  if (v43)
  {
    v44 = v39;
    v45 = logForCSLogCategoryDefault();
    if (os_log_type_enabled(v45, OS_LOG_TYPE_INFO))
    {
      v78.st_dev = 138412290;
      *&v78.st_mode = v43;
      _os_log_impl(&_mh_execute_header, v45, OS_LOG_TYPE_INFO, "ConfigurationVolumeUUID:%@", &v78, 0xCu);
    }

    if (!v33)
    {
      v39 = v44;
      goto LABEL_78;
    }

    v39 = v44;
    if (([v43 isEqualToString:v33] & 1) == 0)
    {
      v46 = v40;
      v47 = logForCSLogCategoryDefault();
      if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
      {
        v78.st_dev = 138412546;
        *&v78.st_mode = v33;
        WORD2(v78.st_ino) = 2112;
        *(&v78.st_ino + 6) = v43;
        _os_log_impl(&_mh_execute_header, v47, OS_LOG_TYPE_DEFAULT, "Allowing volumeUUID %@ for configurationVolumeUUID %@", &v78, 0x16u);
      }

      [v43 isEqualToString:v33];
      v40 = v46;
      v39 = v44;
      goto LABEL_81;
    }
  }

  else if (!v33)
  {
    if (!v15)
    {
      goto LABEL_79;
    }

    goto LABEL_81;
  }

  if ([v43 isEqualToString:v33])
  {
    goto LABEL_81;
  }

LABEL_78:
  if (!v15)
  {
LABEL_79:
    v48 = v43;
    goto LABEL_102;
  }

LABEL_81:
  v65 = v40;
  [v70 objectForKeyedSubscript:@"Stores"];
  v71 = 0u;
  v72 = 0u;
  v73 = 0u;
  v49 = v74 = 0u;
  v50 = [v49 countByEnumeratingWithState:&v71 objects:v77 count:16];
  if (!v50)
  {
    v48 = 0;
    goto LABEL_100;
  }

  v51 = v50;
  v62 = v43;
  v63 = v39;
  v64 = v33;
  v52 = *v72;
  while (2)
  {
    for (i = 0; i != v51; i = i + 1)
    {
      if (*v72 != v52)
      {
        objc_enumerationMutation(v49);
      }

      v54 = *(*(&v71 + 1) + 8 * i);
      v55 = [v49 objectForKeyedSubscript:v54];
      v56 = logForCSLogCategoryDefault();
      if (os_log_type_enabled(v56, OS_LOG_TYPE_INFO))
      {
        v78.st_dev = 138412290;
        *&v78.st_mode = v55;
        _os_log_impl(&_mh_execute_header, v56, OS_LOG_TYPE_INFO, "%@", &v78, 0xCu);
      }

      v57 = [v55 objectForKeyedSubscript:@"PartialPath"];
      v58 = [v57 isEqualToString:@"/"];

      if (v58)
      {
        v59 = [v55 objectForKeyedSubscript:@"PolicyLevel"];
        if ([v59 isEqualToString:@"kMDConfigSearchLevelReadOnly"])
        {
          v60 = v68 | 0x21;
        }

        else
        {
          if ([v59 isEqualToString:@"kMDConfigSearchLevelReadWrite"])
          {
LABEL_99:
            v33 = v64;
            v37 = v66;
            v43 = v62;
            v48 = [NSString stringWithFormat:@"%s/.Spotlight-V100/Store-V2/%@", __s, v54];

            v39 = v63;
            goto LABEL_100;
          }

          v61 = [v59 isEqualToString:@"kMDConfigSearchLevelFSSearchOnly"];
          v60 = v68;
          if (v61)
          {
            v60 = v68 | 4;
          }
        }

        v68 = v60;
        goto LABEL_99;
      }
    }

    v51 = [v49 countByEnumeratingWithState:&v71 objects:v77 count:16];
    if (v51)
    {
      continue;
    }

    break;
  }

  v48 = 0;
  v33 = v64;
  v37 = v66;
  v43 = v62;
  v39 = v63;
LABEL_100:

  v40 = v65;
  v42 = v70;
  if (v48)
  {
    [(CSIndexAgentApp *)v37 openIndex:v48 rootPath:v36 volumeUUID:v33 options:v68];
LABEL_102:

    v42 = v70;
  }

LABEL_103:

LABEL_104:
LABEL_17:
}

- (id)macOSJournalSafeScanDateFromIndexPath:(const char *)a3
{
  if (!a3 || (v3 = open(a3, 0), v3 == -1))
  {
    v8 = 0;
    goto LABEL_12;
  }

  v4 = v3;
  v5 = -[QueueImportJournal initWithPartialPath:under:allowModification:]([QueueImportJournal alloc], "initWithPartialPath:under:allowModification:", [@"journals.scan" UTF8String], v3, 0);
  if (![(QueueImportJournal *)v5 scanForFiles])
  {
    close(v4);
LABEL_10:
    v8 = 0;
    goto LABEL_11;
  }

  v6 = [(QueueImportJournal *)v5 oldestDateAfterRetirement];
  v7 = logForCSLogCategoryDefault();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v10 = 134217984;
    v11 = v6;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "oldestTime from journal:%lu\n", &v10, 0xCu);
  }

  close(v4);
  if (!v6)
  {
    goto LABEL_10;
  }

  v8 = [NSDate dateWithTimeIntervalSince1970:v6];
LABEL_11:

LABEL_12:

  return v8;
}

- (void)openIndex:(id)a3 rootPath:(id)a4 volumeUUID:(id)a5 options:(unint64_t)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  if (qword_10003CBA8 != -1)
  {
    sub_1000243D0();
  }

  if ((a6 & 0xA) != 0)
  {
    v13 = logForCSLogCategoryDefault();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      sub_1000243E4();
    }

    goto LABEL_52;
  }

  v14 = sub_10000F404(v10);
  v13 = v14;
  if (v14)
  {
    if ((a6 & 4) != 0 || [v14 isOpen])
    {
      v15 = logForCSLogCategoryDefault();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        v59 = v13;
        v60 = 2112;
        v61 = v10;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Found %@ for  %@", buf, 0x16u);
      }

      goto LABEL_52;
    }

    sub_10000F470(0, v10);
  }

  v16 = [SIIndexer indexerWithPath:v10 rootPath:v11];

  v17 = logForCSLogCategoryDefault();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
  {
    *buf = 138412546;
    v59 = v16;
    v60 = 2112;
    v61 = v10;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_INFO, "%@ for  %@", buf, 0x16u);
  }

  if (v16)
  {
    v18 = [VolumeScan alloc];
    v19 = [v16 rootPath];
    v20 = [(VolumeScan *)v18 initWithVolumeUUID:v12 rootPath:v19];

    [v16 setVolumeObject:v20];
    if ((a6 & 0x80) != 0)
    {
      LODWORD(location) = 45;
      [(VolumeScan *)v20 parentFromOID:2 error:&location];
      if (location == 45)
      {
        v21 = logForCSLogCategoryDefault();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v59 = v10;
          _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "Persistent fileIDs not supported for %@", buf, 0xCu);
        }

        a6 = a6 & 0xFFFFFFFFFFFFFFD0 | 0x24;
      }
    }

    if ((a6 & 1) != 0 && (([v16 openWithOptions:a6], v22 = [v16 isOpen], (a6 & 0x64) != 0) ? (v23 = 1) : (v23 = v22), (v23 & 1) == 0))
    {
      [v16 openWithOptions:a6 | 0x40];
      v24 = [v16 isOpen];
    }

    else
    {
      v24 = 0;
    }

    sub_10000F470(v16, v10);
    [v16 setBundleID:@"com.apple.filesystems.UserFS.FileProvider"];
    [v16 setDomain:v12];
    if ([v16 isOpen])
    {
      v25 = logForCSLogCategoryDefault();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
      {
        *buf = 138412802;
        v59 = v16;
        v60 = 2112;
        v61 = v12;
        v62 = 2112;
        v63 = v10;
        _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_INFO, "Open %@ %@ %@", buf, 0x20u);
      }

      objc_initWeak(&location, v16);
      v26 = [SDDirtyIdleTimer alloc];
      indexQueue = self->_indexQueue;
      v54[0] = _NSConcreteStackBlock;
      v54[1] = 3221225472;
      v54[2] = sub_100011A1C;
      v54[3] = &unk_1000353F8;
      objc_copyWeak(&v56, &location);
      v51 = v12;
      v55 = v51;
      v28 = [v26 initWithQueue:indexQueue timeoutBlock:v54];
      [v28 setIdleTimeout:5000000000];
      [v28 setDirtyTimeout:30000000000];
      [v16 setDirtyIdleTimer:v28];
      if (v24)
      {
        [(CSIndexAgentApp *)self performScan:v51 liveFSHandle:0 pathFromMountPoint:0 fromDate:0 allowImport:1 completionHandler:0];
      }

      else
      {
        [v16 index];
        v29 = SICopyProperty();
        v30 = v10;
        v31 = [(CSIndexAgentApp *)self macOSJournalSafeScanDateFromIndexPath:[v10 fileSystemRepresentation]];
        v48 = v29;
        v50 = v31;
        v53 = v48;
        if (v31)
        {
          [v31 timeIntervalSinceNow];
          v33 = v32;
          [v48 timeIntervalSinceNow];
          v53 = v48;
          if (v33 > v34)
          {
            v53 = v31;
          }
        }

        [v16 index];
        v35 = _SIGetRecoverTimeStamp();
        if (v35)
        {
          v52 = [NSDate dateWithTimeIntervalSince1970:v35];
          [v52 timeIntervalSinceNow];
          v37 = v36;
          [v53 timeIntervalSinceNow];
          if (v37 > v38)
          {
            v52 = v52;

            v53 = v52;
          }
        }

        else
        {
          v52 = 0;
        }

        v39 = [(VolumeScan *)v20 mountTime];
        if (!v39)
        {
          goto LABEL_46;
        }

        v40 = [(VolumeScan *)v20 mountTime];
        [v40 timeIntervalSinceNow];
        v42 = v41 < 60.0;

        if (v42)
        {
          goto LABEL_46;
        }

        v43 = [(VolumeScan *)v20 lastMTime];
        if (!v43 || (-[VolumeScan lastMTime](v20, "lastMTime"), v44 = objc_claimAutoreleasedReturnValue(), [v44 timeIntervalSinceDate:v53], v46 = v45 < 60.0, v44, v43, v46))
        {
LABEL_46:
          v47 = logForCSLogCategoryDefault();
          if (os_log_type_enabled(v47, OS_LOG_TYPE_INFO))
          {
            *buf = 138413058;
            v59 = v53;
            v60 = 2112;
            v61 = v49;
            v62 = 2112;
            v63 = v50;
            v64 = 2112;
            v65 = v52;
            _os_log_impl(&_mh_execute_header, v47, OS_LOG_TYPE_INFO, "Starting catchup scan from %@ (%@, %@, %@)", buf, 0x2Au);
          }

          [(CSIndexAgentApp *)self performScan:v51 liveFSHandle:0 pathFromMountPoint:0 fromDate:v53 allowImport:1 completionHandler:0];
        }
      }

      objc_destroyWeak(&v56);
      objc_destroyWeak(&location);
    }

    v13 = v16;
  }

  else
  {
    v13 = logForCSLogCategoryDefault();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      sub_100024464();
    }
  }

LABEL_52:
}

- (void)importItems:(id)a3 indexer:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v5 count];
  __chkstk_darwin(v7, 8 * v7, v8, v9, v10);
  v12 = v28 - v11;
  bzero(v28 - v11, v13);
  v30 = v6;
  v14 = [v6 persistentFileIDs];
  if (!v7)
  {
    goto LABEL_18;
  }

  v16 = v14;
  v28[1] = v28;
  v17 = 0;
  v18 = 0;
  *&v15 = 134218242;
  v29 = v15;
  do
  {
    v19 = [v5 objectAtIndexedSubscript:v18];
    v20 = v19;
    if (!v16 || ([v19 objectForKeyedSubscript:@":MD:_kMDItemOID"], v21 = objc_claimAutoreleasedReturnValue(), v22 = objc_msgSend(v21, "unsignedLongLongValue"), v21, !v22))
    {
      v23 = [v20 objectForKeyedSubscript:@":MD:kMDItemPath"];
      if (!v23)
      {
        v22 = 0;
        goto LABEL_11;
      }

      v24 = v23;
      v25 = [v23 UTF8String];
      v22 = [v30 oidForPath:v25 allowCreate:1];

      if (!v22)
      {
        goto LABEL_11;
      }
    }

    v26 = logForCSLogCategoryDefault();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
    {
      *buf = v29;
      v32 = v22;
      v33 = 2112;
      v34 = v20;
      _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_INFO, "addRecords oid: %lld item: %@", buf, 0x16u);
    }

    ++v17;

LABEL_11:
    *&v12[8 * v18] = v22;

    v18 = v18 + 1;
  }

  while (v7 != v18);
  if (v17)
  {
    if (qword_10003CBC0 != -1)
    {
      sub_1000244D4();
    }

    v27 = logForCSLogCategoryDefault();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      LODWORD(v32) = v17;
      _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "importing %d items", buf, 8u);
    }

    dispatch_semaphore_wait(qword_10003CBB8, 0xFFFFFFFFFFFFFFFFLL);
    [v30 addRecords:v5 forIDs:v12 completionHandler:&stru_100035458];
  }

LABEL_18:
}

- (void)handleReset:(id)a3 completionBlock:(id)a4
{
  v6 = a3;
  v17 = a4;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v7 = [(CSIndexAgentApp *)self fpMonitor];
  v8 = [v7 domainsByPath];
  v9 = [v8 allKeys];

  v10 = [v9 countByEnumeratingWithState:&v20 objects:v26 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v21;
    do
    {
      for (i = 0; i != v11; i = i + 1)
      {
        if (*v21 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v20 + 1) + 8 * i);
        if ([v14 fileSystemRepresentation])
        {
          memset(&v19, 0, sizeof(v19));
          v18 = 0;
          asprintf(&v18, "%s/%s", [v14 fileSystemRepresentation], ".Spotlight-V100");
          if (!stat(v18, &v19))
          {
            v15 = logForCSLogCategoryDefault();
            if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
            {
              *buf = 136315138;
              v25 = v18;
              _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "deleting spotlight directory %s", buf, 0xCu);
            }

            sub_1000040B0(v18, 0, 0, 4, &stru_100035498);
          }

          free(v18);
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v20 objects:v26 count:16];
    }

    while (v11);
  }

  if (v17)
  {
    v17[2]();
  }

  v16 = logForCSLogCategoryDefault();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v19.st_dev) = 0;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Quiting for reset", &v19, 2u);
  }

  exit(0);
}

- (void)_closeAllWithCompletionHandler:(id)a3
{
  v4 = a3;
  dispatch_assert_queue_V2(self->_indexQueue);
  dispatch_assert_queue_V2(qword_10003CBE0);
  v5 = [qword_10003CC88 allKeys];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v11;
    do
    {
      v9 = 0;
      do
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [(CSIndexAgentApp *)self _closeIndexAtPath:*(*(&v10 + 1) + 8 * v9)];
        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }

  v4[2](v4, 0);
}

- (int)_indexQueryStart:(id)a3 queryString:(id)a4 queryContext:(id)a5 queryID:(int64_t)a6 remoteConnection:(id)a7
{
  v12 = a3;
  v30 = a4;
  v13 = a5;
  v31 = a7;
  dispatch_assert_queue_V2(self->_indexQueue);
  if ([v12 index])
  {
    v29 = [v12 domain];
    v14 = logForCSLogCategoryDefault();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      *buf = 138412802;
      *&buf[4] = v31;
      *&buf[12] = 1024;
      *&buf[14] = a6;
      *&buf[18] = 2112;
      *&buf[20] = v30;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "Start Query[%@ %d] - %@", buf, 0x1Cu);
    }

    v15 = [[SPCoreSpotlightTask alloc] initWithQueryString:v30 queryContext:v13];
    [v15 start];
    if ([v15 siQuery])
    {
      v16 = [v15 resultsQueue];
      [v16 siResultsQueue];
      v28 = SIExecuteQuery();
      v17 = objc_opt_new();
      [v17 setQueryTask:v15];
      [v17 setClientConnection:v31];
      v18 = [NSNumber numberWithInteger:a6];
      [v12 setQueryTask:v17 forID:v18];

      v44[0] = _NSConcreteStackBlock;
      v44[1] = 3221225472;
      v44[2] = sub_100012768;
      v44[3] = &unk_1000354C0;
      v45 = v12;
      v46 = a6;
      [v15 setCompletionBlock:v44];
      LOBYTE(v18) = [v13 live];
      *buf = 0;
      *&buf[8] = buf;
      *&buf[16] = 0x2020000000;
      buf[24] = 0;
      v42[0] = 0;
      v42[1] = v42;
      v42[2] = 0x2020000000;
      v43 = 0;
      v19 = [v13 fetchAttributes];
      v20 = [v19 count];

      v32[0] = _NSConcreteStackBlock;
      v32[1] = 3221225472;
      v32[2] = sub_1000127CC;
      v32[3] = &unk_100035528;
      v41 = v18;
      v39 = a6;
      v40 = v20;
      v37 = v42;
      v38 = buf;
      v21 = v17;
      v33 = v21;
      v34 = v29;
      v35 = v31;
      v36 = self;
      v22 = objc_retainBlock(v32);
      v23 = [[SPQueryJob alloc] initWithSIJob:v28 dataclass:0 eventHandler:0 resultsHandler:v22];
      [v16 addJob:v23];
      [v15 addJob:v23];

      _Block_object_dispose(v42, 8);
      _Block_object_dispose(buf, 8);

      v24 = 0;
    }

    else
    {
      [v15 finishWithError:0];
      v16 = logForCSLogCategoryDefault();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        *&buf[4] = v30;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "could not create query for %@", buf, 0xCu);
      }

      v24 = -1;
    }

    v26 = v29;
  }

  else
  {
    v25 = logForCSLogCategoryDefault();
    v26 = v25;
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      sub_10002456C();
      v24 = -1;
      v26 = v25;
    }

    else
    {
      v24 = -1;
    }
  }

  return v24;
}

- (int)_scanQueryStart:(id)a3 scope:(id)a4 queryString:(id)a5 criteria:(id)a6 queryContext:(id)a7 queryID:(int64_t)a8 remoteConnection:(id)a9
{
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v18 = a6;
  v19 = a7;
  v20 = a9;
  if ([v19 live])
  {
    v21 = logForCSLogCategoryDefault();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      sub_1000248A0();
    }

    goto LABEL_9;
  }

  v21 = [v15 volumeObject];
  if (v21)
  {
    v22 = -[NSObject resolveLiveFSHandleForPathFromMountPoint:](v21, "resolveLiveFSHandleForPathFromMountPoint:", [v16 UTF8String]);
    if (v22)
    {
      v43 = v20;
      v23 = [v16 hasPrefix:@".Trashes"];
      v40 = [v15 persistentFileIDs];
      location[1] = _NSConcreteStackBlock;
      location[2] = 3221225472;
      location[3] = sub_100013114;
      location[4] = &unk_100035548;
      v44 = v23;
      v64 = v23;
      EvaluatorWithBlock = _MDCreateSimpleQueryEvaluatorWithBlock();
      if (!EvaluatorWithBlock)
      {
        v27 = -1;
        v20 = v43;
LABEL_20:

        goto LABEL_21;
      }

      v39 = EvaluatorWithBlock;
      v41 = a8;
      v38 = [v15 domain];
      v25 = objc_opt_new();
      [v25 setVolumeScan:v21];
      v20 = v43;
      [v25 setClientConnection:v43];
      v42 = v22;
      v35 = v17;
      if (v16)
      {
        v26 = sub_100020E24(v16);
      }

      else
      {
        v26 = 1;
      }

      v37 = [v16 length];
      objc_initWeak(location, v21);
      v53[0] = _NSConcreteStackBlock;
      v53[1] = 3221225472;
      v53[2] = sub_1000131EC;
      v53[3] = &unk_100035590;
      v59[1] = v41;
      objc_copyWeak(v59, location);
      v54 = v25;
      v55 = v16;
      v60 = v26;
      v61 = v40;
      v59[2] = v37;
      v59[3] = v39;
      v56 = v19;
      v28 = v38;
      v62 = v44;
      v57 = v28;
      v58 = self;
      v46[0] = _NSConcreteStackBlock;
      v46[1] = 3221225472;
      v46[2] = sub_100013970;
      v46[3] = &unk_1000355D8;
      v51 = v41;
      v29 = v54;
      v47 = v29;
      v45 = v28;
      v48 = v45;
      v49 = self;
      v30 = v15;
      v50 = v30;
      v52 = v39;
      v31 = [v21 scanAtLiveFSHandle:v42 pathFromMountPoint:v55 withCriteria:v18 itemHandler:v53 completionHandler:v46];
      [v29 setSearchToken:v31];

      [v29 searchToken];
      v32 = v17 = v36;

      if (v32)
      {
        v33 = [NSNumber numberWithInteger:v41];
        [v30 setQueryTask:v29 forID:v33];

        v27 = 0;
      }

      else
      {
        v27 = -1;
      }

      objc_destroyWeak(v59);
      objc_destroyWeak(location);

      v22 = v42;
    }

    else
    {
      v45 = logForCSLogCategoryDefault();
      if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
      {
        sub_100024830();
      }

      v27 = -1;
    }

    goto LABEL_20;
  }

LABEL_9:
  v27 = -1;
LABEL_21:

  return v27;
}

- (int)_queryCancel:(id)a3
{
  indexQueue = self->_indexQueue;
  v4 = a3;
  dispatch_assert_queue_V2(indexQueue);
  uint64 = xpc_dictionary_get_uint64(v4, "qid");

  [NSNumber numberWithUnsignedLongLong:uint64];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100013C18;
  v9 = v8[3] = &unk_100035388;
  v6 = v9;
  sub_10000F110(v8);

  return 0;
}

- (void)removeChildRecords:(int64_t)a3 withIndexer:(id)a4 withVolumeName:(const char *)a5
{
  v8 = a4;
  dispatch_assert_queue_V2(self->_indexQueue);
  v9 = [NSString stringWithFormat:@"_kMDItemQueryPathOID=%lld", a3];
  v10 = objc_opt_new();
  v30 = MDItemIndexOID;
  v11 = [NSArray arrayWithObjects:&v30 count:1];
  [v10 setFetchAttributes:v11];

  v12 = [NSString stringWithUTF8String:a5];
  v29 = v12;
  v13 = [NSArray arrayWithObjects:&v29 count:1];
  [v10 setMountPoints:v13];

  if ([v8 index])
  {
    v14 = [[SPCoreSpotlightTask alloc] initWithQueryString:v9 queryContext:v10];
    [v14 start];
    if ([v14 siQuery])
    {
      v15 = [v14 resultsQueue];
      [v15 siResultsQueue];
      v16 = SIExecuteQuery();
      v17 = objc_opt_new();
      [v17 setQueryTask:v14];
      [v17 setClientConnection:0];
      *&buf = 0;
      *(&buf + 1) = &buf;
      v27 = 0x2020000000;
      v28 = 0;
      v21[0] = _NSConcreteStackBlock;
      v21[1] = 3221225472;
      v21[2] = sub_100013FE0;
      v21[3] = &unk_100035620;
      v22 = v8;
      p_buf = &buf;
      v18 = v17;
      v23 = v18;
      v25 = a3;
      v19 = objc_retainBlock(v21);
      v20 = [[SPQueryJob alloc] initWithSIJob:v16 dataclass:0 eventHandler:0 resultsHandler:v19];
      [v15 addJob:v20];
      [v14 addJob:v20];

      _Block_object_dispose(&buf, 8);
    }

    else
    {
      [v14 finishWithError:0];
      v15 = logForCSLogCategoryDefault();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
      {
        LODWORD(buf) = 138412290;
        *(&buf + 4) = v9;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "could not create query for %@", &buf, 0xCu);
      }
    }
  }

  else
  {
    v14 = logForCSLogCategoryDefault();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      sub_10002456C();
    }
  }
}

- (void)_handleFSE:(id)a3
{
  v4 = a3;
  dispatch_assert_queue_V2(self->_indexQueue);
  v5 = [v4 dataSize];
  v6 = [v4 dataPtr];
  if (v5)
  {
    v7 = v6;
    if (v6)
    {
      v8 = (v6 + 8);
      v105 = &v5[[v4 dataPtr]];
      if (v7 + 8 <= v105)
      {
        *&v9 = 67109376;
        v91 = v9;
        v100 = self;
        do
        {
          v10 = *v7;
          v11 = v7 + v10;
          if (v10)
          {
            v12 = v11 > v105;
          }

          else
          {
            v12 = 1;
          }

          if (v12)
          {
            break;
          }

          v13 = *(v7 + 10);
          if (!*(v7 + 10))
          {
            break;
          }

          v14 = &v8[*(v7 + 10)];
          if (v14 >= v11 || *v14)
          {
            break;
          }

          v106 = (v7 + v10);
          v15 = *(v7 + 11);
          v16 = *(v7 + 12);
          v103 = *(v7 + 13);
          v17 = *(v7 + 14);
          v102 = *(v7 + 15);
          v18 = v7[1];
          v19 = sub_100020E18(v8);
          v20 = v14 + 1;
          if (v15)
          {
            v21 = &v20[v15];
            v23 = *v21;
            v22 = (v21 + 1);
            v24 = v106;
            if (v23)
            {
              v25 = 1;
            }

            else
            {
              v25 = v22 > v106;
            }

            if (v25)
            {
              break;
            }

            if (v16)
            {
LABEL_18:
              v26 = (v22 + v16);
              if (v26 > v24)
              {
                break;
              }

              goto LABEL_22;
            }
          }

          else
          {
            v22 = (v14 + 1);
            v20 = 0;
            v24 = v106;
            if (v16)
            {
              goto LABEL_18;
            }
          }

          v26 = v22;
          v22 = 0;
LABEL_22:
          v27 = 0;
          v28 = v18 & 0xFFF;
          v29 = ++dword_10003CBD8;
          if (v28 > 0xE)
          {
            goto LABEL_39;
          }

          v30 = 1 << v28;
          if (((1 << v28) & 0x19D4) != 0)
          {
            goto LABEL_24;
          }

          if ((v30 & 0x4028) != 0)
          {
            if (v103)
            {
              if (v26 + v103 < v24)
              {
                v35 = v19;
                v36 = v29;
                v37 = v20;
                v38 = sub_100020E18(v26);
                v20 = v37;
                v29 = v36;
                v31 = v38;
                v19 = v35;
                v33 = 0;
                v27 = 0;
                v34 = 0;
                goto LABEL_47;
              }

              v31 = 0;
              v27 = 0;
              v34 = 0;
            }

            else
            {
              v31 = 0;
              v27 = 0;
              v34 = 0;
              v26 = 0;
            }

            v33 = 1;
LABEL_47:
            v32 = 1;
            if (!v22)
            {
              goto LABEL_53;
            }

            goto LABEL_48;
          }

          if ((v30 & 0x600) != 0)
          {
            if (v17)
            {
              if (v26 + v17 >= v24)
              {
                v31 = 0;
                v32 = 0;
                v27 = 0;
              }

              else
              {
                if (!v102)
                {
                  v27 = 0;
                  goto LABEL_25;
                }

                v27 = v26 + v17 + 1;
                if (v27 + v102 <= v24)
                {
LABEL_25:
                  v31 = 1;
                  goto LABEL_26;
                }

                v31 = 0;
                v32 = 0;
              }

              v33 = 1;
              v34 = v26;
              goto LABEL_27;
            }

            v31 = 0;
            v32 = 0;
            v27 = 0;
            v34 = 0;
            v26 = 0;
            v33 = 1;
            if (!v22)
            {
LABEL_53:
              v40 = 0;
              LOWORD(v39) = 0;
              goto LABEL_54;
            }
          }

          else
          {
LABEL_39:
            if (!v28)
            {
LABEL_24:
              v26 = 0;
              goto LABEL_25;
            }

            v31 = 0;
            if (v28 == 1)
            {
              v26 = 0;
LABEL_26:
              v32 = v31;
              v33 = v19 ^ 1;
              v34 = v26;
              v31 = 0;
LABEL_27:
              v26 = 0;
              if (!v22)
              {
                goto LABEL_53;
              }

              goto LABEL_48;
            }

            v33 = 1;
            v32 = 0;
            v34 = 0;
            v26 = 0;
            if (!v22)
            {
              goto LABEL_53;
            }
          }

LABEL_48:
          v39 = *(v22 + 8);
          if (v39)
          {
            v41 = *(v22 + 24);
            v40 = v41 == 2;
            if (v41 > 2)
            {
              v33 = 1;
            }
          }

          else
          {
            v40 = 0;
          }

LABEL_54:
          if (!v19)
          {
            v33 |= ~v31;
          }

          if (v33)
          {
            qword_10003CBD0 = 0;
            v42 = qword_10003CBC8;
            qword_10003CBC8 = 0;
          }

          else
          {
            v98 = v19;
            v99 = v39;
            v94 = v40;
            v95 = v32;
            v92 = v27;
            v93 = v34;
            v101 = v20;
            v96 = v29;
            v43 = logForCSLogCategoryDefault();
            if (os_log_type_enabled(v43, OS_LOG_TYPE_INFO))
            {
              v44 = v7[4];
              v45 = "";
              if (v101)
              {
                v45 = v101;
              }

              *buf = 67110146;
              v125 = v96;
              v126 = 1024;
              v127 = v28;
              v128 = 1024;
              v129 = v44;
              v130 = 2080;
              v131 = v45;
              v132 = 2080;
              v133 = v8;
              _os_log_impl(&_mh_execute_header, v43, OS_LOG_TYPE_INFO, "event[%d]: %d pid:%d volume:%s path:%s", buf, 0x28u);
            }

            v46 = [(CSIndexAgentApp *)v100 indexerForCStringVolume:v101];
            v47 = v46;
            if (!v46 || ![v46 index] || (objc_msgSend(v47, "isFSOnly") & 1) != 0 || (objc_msgSend(v47, "readOnly") & 1) != 0)
            {
              goto LABEL_170;
            }

            v48 = v4;
            v104 = v47;
            v97 = [v47 rootPath];
            v49 = [v97 UTF8String];
            if (!v49 || (v50 = strlen(v49), v50 - 1022 < 0xFFFFFFFFFFFFFC00))
            {

LABEL_170:
              break;
            }

            v51 = v50;
            bzero(buf, 0x400uLL);
            __memcpy_chk();
            v52 = v51 + 1;
            *&buf[v51] = 47;
            v113 = 0;
            v53 = [v104 persistentFileIDs];
            if (v51 + 1 + v13 < 0x400)
            {
              v54 = v98;
            }

            else
            {
              v54 = 0;
            }

            if (v52 + v103 < 0x400)
            {
              v55 = v31;
            }

            else
            {
              v55 = 0;
            }

            if ((v99 & 0x100) != 0 && v53)
            {
              v113 = *(v22 + 64);
            }

            if (v28 == 3)
            {
              if (v53)
              {
                v56 = *(v7 + 1);
              }

              else
              {
                v56 = 0;
              }

              v59 = v113;
              v113 = v56;
              v58 = v102;
              if (v54)
              {
                if (v55)
                {
                  bzero(v122, 0x400uLL);
                  if (v59 || (__memcpy_chk(), memcpy(&v122[v52], v26, v103 + 1), [v104 oidForPath:v122 allowCreate:0]))
                  {
                    memcpy(&buf[v52], v8, v13 + 1);
                    [v104 rename:v122 toPath:buf];
                  }

                  v60 = v113;
                  if (!v113)
                  {
                    v60 = [v104 oidForPath:buf allowCreate:v95];
                    v113 = v60;
                  }

                  v4 = v48;
                  v57 = v100;
                  if (v60 >= 3)
                  {
                    if (v94)
                    {
                      v121 = v60;
                      v61 = logForCSLogCategoryDefault();
                      if (os_log_type_enabled(v61, OS_LOG_TYPE_INFO))
                      {
                        *v119 = 134217984;
                        v120 = v113;
                        _os_log_impl(&_mh_execute_header, v61, OS_LOG_TYPE_INFO, "Moving dirictory %lld", v119, 0xCu);
                      }

                      [v104 index];
                      SIMoveDirectories();
                    }

                    else
                    {
                      v69 = logForCSLogCategoryDefault();
                      if (os_log_type_enabled(v69, OS_LOG_TYPE_INFO))
                      {
                        LODWORD(v121) = 134217984;
                        *(&v121 + 4) = v113;
                        _os_log_impl(&_mh_execute_header, v69, OS_LOG_TYPE_INFO, "Moving file %lld", &v121, 0xCu);
                      }

                      v121 = v113;
                      [v104 index];
                      SIMoveFiles();
                    }
                  }
                }

                else
                {
                  memcpy(&buf[v52], v8, v13 + 1);
                  v62 = [v104 oidForPath:buf allowCreate:v95];
                  v63 = v62;
                  v4 = v48;
                  v57 = v100;
                  if (v62 >= 3 && v113 >= 3 && v62 != v113)
                  {
                    v64 = logForCSLogCategoryDefault();
                    if (os_log_type_enabled(v64, OS_LOG_TYPE_INFO))
                    {
                      *v122 = 134218240;
                      *v123 = v113;
                      *&v123[8] = 2048;
                      *&v123[10] = v63;
                      _os_log_impl(&_mh_execute_header, v64, OS_LOG_TYPE_INFO, "Transfer %lld to %lld", v122, 0x16u);
                    }

                    [v104 index];
                    SITransferAttributes();
                    v58 = v102;
                  }

                  v113 = v63;
                  if (v94)
                  {
                    v65 = [v104 volumeObject];
                    v66 = [v65 resolveLiveFSHandleForPathFromMountPoint:v8];

                    if (v66)
                    {
                      v67 = [NSString stringWithUTF8String:v101];
                      v68 = [NSString stringWithUTF8String:v8];
                      [(CSIndexAgentApp *)v100 performScan:v67 liveFSHandle:v66 pathFromMountPoint:v68 fromDate:0 allowImport:1 completionHandler:0];
                    }

                    v58 = v102;
                  }
                }

                if ((v99 & 0x100) != 0)
                {
                  *(v22 + 64) = v113;
                }

                if ((v99 & 0x200) != 0)
                {
                  *(v22 + 72) = 0;
                }

                v28 = 2;
                v55 = 1;
                v26 = v8;
              }

              else
              {
                v28 = 1;
                LODWORD(v13) = v103;
                v4 = v48;
                v57 = v100;
              }
            }

            else
            {
              v55 = v54;
              v26 = v8;
              v4 = v48;
              v57 = v100;
              v58 = v102;
            }

            v70 = v113;
            if (v55 && !v113)
            {
              memcpy(&buf[v52], v26, (v13 + 1));
              v70 = [v104 oidForPath:buf allowCreate:v95];
              v113 = v70;
            }

            v71 = 0;
            v72 = 1;
            v42 = v104;
            v73 = v97;
            switch(v28)
            {
              case 0u:
              case 7u:
              case 0xBu:
                v72 = 0;
                if (!v70)
                {
                  goto LABEL_138;
                }

                goto LABEL_123;
              case 1u:
                if (v70)
                {
                  [v104 deleteOID:?];
                  v81 = logForCSLogCategoryDefault();
                  v82 = os_log_type_enabled(v81, OS_LOG_TYPE_INFO);
                  if (v94)
                  {
                    if (v82)
                    {
                      *v122 = 134217984;
                      *v123 = v113;
                      _os_log_impl(&_mh_execute_header, v81, OS_LOG_TYPE_INFO, "removing children of oid: %lld", v122, 0xCu);
                    }

                    [(CSIndexAgentApp *)v57 removeChildRecords:v113 withIndexer:v104 withVolumeName:v101];
                  }

                  else
                  {
                    if (v82)
                    {
                      *v122 = v91;
                      *v123 = v96;
                      *&v123[4] = 2048;
                      *&v123[6] = v113;
                      _os_log_impl(&_mh_execute_header, v81, OS_LOG_TYPE_INFO, "[%d] removing oid: %lld", v122, 0x12u);
                    }

                    v111[0] = _NSConcreteStackBlock;
                    v111[1] = 3221225472;
                    v111[2] = sub_100015388;
                    v111[3] = &unk_100035640;
                    v112 = v96;
                    v111[4] = v113;
                    [v104 removeRecordsForIDs:&v113 count:1 completionHandler:v111];
                  }
                }

                goto LABEL_138;
              case 2u:
              case 4u:
              case 6u:
              case 8u:
              case 0xCu:
                if (!v70)
                {
                  goto LABEL_138;
                }

LABEL_123:
                v74 = [NSString stringWithUTF8String:v26, v91];
                v71 = sub_100020E90(v97, v74, v22, 0);
                goto LABEL_124;
              case 3u:
                v77 = logForCSLogCategoryDefault();
                if (!os_log_type_enabled(v77, OS_LOG_TYPE_INFO))
                {
                  goto LABEL_137;
                }

                *v122 = 0;
                v78 = v77;
                v79 = "FSE_RENAME not implemented";
                goto LABEL_136;
              case 5u:
                v77 = logForCSLogCategoryDefault();
                if (!os_log_type_enabled(v77, OS_LOG_TYPE_INFO))
                {
                  goto LABEL_137;
                }

                *v122 = 0;
                v78 = v77;
                v79 = "FSE_EXCHANGE not implemented";
                goto LABEL_136;
              case 9u:
                v71 = 0;
                if (!v92 || !v70 || !v93)
                {
                  goto LABEL_139;
                }

                v85 = [NSString stringWithUTF8String:v93];
                v117 = v85;
                v86 = [NSData dataWithBytesNoCopy:v92 length:v58 freeWhenDone:0];
                v118 = v86;
                v72 = 1;
                v74 = [NSDictionary dictionaryWithObjects:&v118 forKeys:&v117 count:1];

                v87 = [NSString stringWithUTF8String:v26];
                v71 = sub_100020E90(v97, v87, v22, v74);

                v42 = v104;
                goto LABEL_124;
              case 0xAu:
                v71 = 0;
                if (!v70 || !v93)
                {
                  goto LABEL_139;
                }

                v83 = [NSString stringWithUTF8String:v93];
                v115 = v83;
                v116 = kCFNull;
                v72 = 1;
                v74 = [NSDictionary dictionaryWithObjects:&v116 forKeys:&v115 count:1];

                v84 = [NSString stringWithUTF8String:v26];
                v71 = sub_100020E90(v97, v84, v22, v74);

                v42 = v104;
LABEL_124:

                v75 = v113;
                if (!v113 || !v71)
                {
                  goto LABEL_139;
                }

                if (v113 != qword_10003CBD0)
                {
                  goto LABEL_153;
                }

                if ([qword_10003CBC8 isEqual:v71])
                {
                  v76 = logForCSLogCategoryDefault();
                  if (os_log_type_enabled(v76, OS_LOG_TYPE_INFO))
                  {
                    *v122 = 134217984;
                    *v123 = v113;
                    _os_log_impl(&_mh_execute_header, v76, OS_LOG_TYPE_INFO, "skipping duplicate event for oid: %lld", v122, 0xCu);
                  }
                }

                else
                {
                  v75 = v113;
LABEL_153:
                  *&v121 = v75;
                  v114 = v71;
                  v76 = [NSArray arrayWithObjects:&v114 count:1, v91];
                  v88 = [v42 dirtyIdleTimer];
                  [v88 dirty];

                  v89 = logForCSLogCategoryDefault();
                  v90 = os_log_type_enabled(v89, OS_LOG_TYPE_INFO);
                  if (v72)
                  {
                    if (v90)
                    {
                      *v122 = 67109634;
                      *v123 = v96;
                      *&v123[4] = 2048;
                      *&v123[6] = v113;
                      *&v123[14] = 2112;
                      *&v123[16] = v71;
                      _os_log_impl(&_mh_execute_header, v89, OS_LOG_TYPE_INFO, "[%d] update oid: %lld info: %@", v122, 0x1Cu);
                    }

                    v109[0] = _NSConcreteStackBlock;
                    v109[1] = 3221225472;
                    v109[2] = sub_100015478;
                    v109[3] = &unk_100035640;
                    v110 = v96;
                    v109[4] = v113;
                    v42 = v104;
                    [v104 updateRecords:v76 forIDs:&v121 completionHandler:v109];
                  }

                  else
                  {
                    if (v90)
                    {
                      *v122 = 67109634;
                      *v123 = v96;
                      *&v123[4] = 2048;
                      *&v123[6] = v113;
                      *&v123[14] = 2112;
                      *&v123[16] = v71;
                      _os_log_impl(&_mh_execute_header, v89, OS_LOG_TYPE_INFO, "[%d] add oid: %lld info: %@", v122, 0x1Cu);
                    }

                    v107[0] = _NSConcreteStackBlock;
                    v107[1] = 3221225472;
                    v107[2] = sub_100015568;
                    v107[3] = &unk_100035640;
                    v108 = v96;
                    v107[4] = v113;
                    v42 = v104;
                    [v104 addRecords:v76 forIDs:&v121 completionHandler:v107];
                  }

                  qword_10003CBD0 = v113;
                  objc_storeStrong(&qword_10003CBC8, v71);
                }

LABEL_162:
                break;
              case 0xDu:
                goto LABEL_139;
              case 0xEu:
                v77 = logForCSLogCategoryDefault();
                if (!os_log_type_enabled(v77, OS_LOG_TYPE_INFO))
                {
                  goto LABEL_137;
                }

                *v122 = 0;
                v78 = v77;
                v79 = "FSE_CLONE not implemented";
LABEL_136:
                _os_log_impl(&_mh_execute_header, v78, OS_LOG_TYPE_INFO, v79, v122, 2u);
LABEL_137:

LABEL_138:
                v71 = 0;
LABEL_139:
                qword_10003CBD0 = 0;
                v80 = qword_10003CBC8;
                qword_10003CBC8 = 0;

                goto LABEL_162;
              default:
                v42 = v104;
                v73 = v97;
                goto LABEL_139;
            }
          }

          v7 = v106;
          v8 = (v106 + 8);
        }

        while (v106 + 8 <= v105);
      }
    }
  }
}

- (void)handleCloseAll:(id)a3 completionBlock:(id)a4
{
  v5 = a4;
  indexQueue = self->_indexQueue;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1000156F8;
  v8[3] = &unk_1000353B0;
  v8[4] = self;
  v9 = v5;
  v7 = v5;
  dispatch_async(indexQueue, v8);
}

- (void)handleScan:(id)a3 completionBlock:(id)a4
{
  v6 = a3;
  v7 = a4;
  indexQueue = self->_indexQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100015868;
  block[3] = &unk_100035690;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(indexQueue, block);
}

- (void)handleMount:(id)a3 completionBlock:(id)a4
{
  v6 = a3;
  v7 = a4;
  indexQueue = self->_indexQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000159E0;
  block[3] = &unk_100035690;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(indexQueue, block);
}

- (void)handleQueryStart:(id)a3 completionBlock:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v7)
  {
    indexQueue = self->_indexQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100015B0C;
    block[3] = &unk_1000356B8;
    v10 = v6;
    v11 = self;
    v12 = v7;
    dispatch_async(indexQueue, block);
  }
}

- (void)handleQueryCancel:(id)a3 completionBlock:(id)a4
{
  v6 = a3;
  v7 = a4;
  indexQueue = self->_indexQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000161C0;
  block[3] = &unk_100035690;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(indexQueue, block);
}

- (void)handleFSE:(id)a3 completionBlock:(id)a4
{
  v6 = a4;
  v7 = [CSXPCConnection dataWrapperForKey:"data" sizeKey:"data-size" fromXPCDictionary:a3];
  if ([v7 dataPtr])
  {
    indexQueue = self->_indexQueue;
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_100016320;
    v9[3] = &unk_1000356E0;
    v9[4] = self;
    v10 = v7;
    dispatch_async(indexQueue, v9);
  }

  if (v6)
  {
    (*(v6 + 2))(v6, 0, 0);
  }
}

- (void)performScan:(id)a3 liveFSHandle:(id)a4 pathFromMountPoint:(id)a5 fromDate:(id)a6 allowImport:(BOOL)a7 completionHandler:(id)a8
{
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a8;
  indexQueue = self->_indexQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000164A4;
  block[3] = &unk_100035758;
  block[4] = self;
  v26 = v14;
  v27 = v15;
  v28 = v17;
  v31 = a7;
  v29 = v16;
  v30 = v18;
  v20 = v18;
  v21 = v16;
  v22 = v17;
  v23 = v15;
  v24 = v14;
  dispatch_async(indexQueue, block);
}

- (int)_mountVolume:(id)a3
{
  v4 = a3;
  dispatch_assert_queue_V2(self->_indexQueue);
  string = xpc_dictionary_get_string(v4, "url");
  if (string)
  {
    v6 = [NSString stringWithUTF8String:string];
    v7 = [NSURL URLWithString:v6];

    if ([v7 isFileURL])
    {
      v8 = [v7 path];

      if (v8)
      {
        goto LABEL_4;
      }
    }

    else
    {
    }

LABEL_13:
    v10 = -1;
    goto LABEL_14;
  }

  v11 = xpc_dictionary_get_string(v4, "command");
  if (!v11)
  {
    goto LABEL_13;
  }

  v12 = v11;
  if (strncmp(v11, "mount:", 6uLL))
  {
    goto LABEL_13;
  }

  v15 = *(v12 + 6);
  v14 = v12 + 6;
  v13 = v15;
  if (!v15)
  {
    goto LABEL_13;
  }

  if (v13 == 47)
  {
    [NSString stringWithUTF8String:v14];
  }

  else
  {
    [NSString stringWithFormat:@"%s%s", "/private/var/mobile/Library/LiveFiles/com.apple.filesystems.userfsd/", v14];
  }
  v8 = ;
  if (!v8)
  {
    goto LABEL_13;
  }

LABEL_4:
  v9 = logForCSLogCategoryDefault();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v18 = v8;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "mounted at %@", buf, 0xCu);
  }

  [(CSIndexAgentApp *)self _handleMount:v8 force:1];
  v10 = 0;
LABEL_14:

  return v10;
}

- (void)_handleScan:(id)a3 completionHandler:(id)a4
{
  v17 = a4;
  indexQueue = self->_indexQueue;
  v7 = a3;
  dispatch_assert_queue_V2(indexQueue);
  string = xpc_dictionary_get_string(v7, "command");

  if (!string || strncmp(string, "scan", 4uLL))
  {
    v17[2](v17, 0xFFFFFFFFLL);
    goto LABEL_20;
  }

  v9 = strncmp(string + 4, "Import", 6uLL);
  v10 = string + 10;
  v11 = 4;
  if (v9)
  {
    v10 = string + 4;
  }

  else
  {
    v11 = 10;
  }

  if (string[v11] != 58 || (v12 = (v10 + 1), __endptr = (v10 + 1), v13 = strtol(v10 + 1, &__endptr, 0), __endptr == v12))
  {
    v14 = 0;
  }

  else
  {
    if (v13 < 0)
    {
      [NSDate dateWithTimeIntervalSinceNow:v13];
    }

    else
    {
      [NSDate dateWithTimeIntervalSinceReferenceDate:v13];
    }
    v14 = ;
  }

  v15 = +[VolumeScan volumeNames];
  v16 = [v15 firstObject];

  if (v16)
  {
    [(CSIndexAgentApp *)self performScan:v16 liveFSHandle:0 pathFromMountPoint:0 fromDate:v14 allowImport:v9 == 0 completionHandler:v17];
  }

  else if (v17)
  {
    (v17[2])();
    goto LABEL_19;
  }

  v17 = 0;
LABEL_19:

LABEL_20:
}

- (void)handleResolvePath:(const char *)a3 info:(id)a4 completionBlock:(id)a5
{
  v7 = a5;
  memset(&v16, 0, sizeof(v16));
  if (stat(a3, &v16))
  {
    v8 = __error();
    if (!v7)
    {
      return;
    }

    (*(v7 + 2))(v7, *v8, 0);
  }

  else
  {
    v9 = [NSString stringWithUTF8String:a3];
    indexQueue = self->_indexQueue;
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_100016D54;
    v11[3] = &unk_100035780;
    v12 = v9;
    v13 = self;
    v14 = v7;
    v15 = a3;
    v7 = v9;
    dispatch_async(indexQueue, v11);
  }
}

- (void)handleResolveInfo:(const char *)a3 completionBlock:(id)a4
{
  v6 = a4;
  v7 = [NSString stringWithUTF8String:a3];
  v8 = [v7 componentsSeparatedByString:@":"];

  v9 = [v8 count];
  if (v9 >= 3)
  {
    indexQueue = self->_indexQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000170E0;
    block[3] = &unk_1000357A8;
    v14 = v9;
    v12 = v8;
    v13 = v6;
    dispatch_async(indexQueue, block);

    v6 = v12;
LABEL_5:

    goto LABEL_6;
  }

  if (v6)
  {
    (*(v6 + 2))(v6, 0xFFFFFFFFLL, 0);
    goto LABEL_5;
  }

LABEL_6:
}

- (void)handleWalkPath:(const char *)a3 flat:(BOOL)a4 completionBlock:(id)a5
{
  v7 = a5;
  *&v9 = _NSConcreteStackBlock;
  *(&v9 + 1) = 3221225472;
  v10 = sub_100017418;
  v11 = &unk_1000357C8;
  v12 = a4;
  v8 = sub_1000040B0(a3, 0, 0, 4, &v9);
  if (v7)
  {
    v7[2](v7, v8, 0);
  }
}

- (BOOL)handleCommand:(const char *)a3 info:(id)a4 connection:(id)a5
{
  v8 = a4;
  v9 = a5;
  v10 = logForCSLogCategoryDefault();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    sub_100024B88(a3, v9, v10);
  }

  v28[0] = _NSConcreteStackBlock;
  v28[1] = 3221225472;
  v28[2] = sub_100017A00;
  v28[3] = &unk_1000357F0;
  v11 = v8;
  v29 = v11;
  v12 = objc_retainBlock(v28);
  if (!strcmp(a3, "fse"))
  {
    [(CSIndexAgentApp *)self handleFSE:v11 completionBlock:v12];
    goto LABEL_21;
  }

  if (!strcmp(a3, "startQuery"))
  {
    queryQueue = self->_queryQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100017AE0;
    block[3] = &unk_100035690;
    block[4] = self;
    v26 = v11;
    v27 = v12;
    dispatch_async(queryQueue, block);

    v14 = v26;
LABEL_20:

    goto LABEL_21;
  }

  if (!strcmp(a3, "cancelQuery"))
  {
    v15 = self->_queryQueue;
    v22[0] = _NSConcreteStackBlock;
    v22[1] = 3221225472;
    v22[2] = sub_100017AF0;
    v22[3] = &unk_100035690;
    v22[4] = self;
    v23 = v11;
    v24 = v12;
    dispatch_async(v15, v22);

    v14 = v23;
    goto LABEL_20;
  }

  if (!strncmp(a3, "mount", 5uLL))
  {
    [(CSIndexAgentApp *)self handleMount:v11 completionBlock:v12];
    goto LABEL_21;
  }

  if (!strncmp(a3, "scan", 4uLL))
  {
    [(CSIndexAgentApp *)self handleScan:v11 completionBlock:v12];
    goto LABEL_21;
  }

  if (!strcmp(a3, "closeAll"))
  {
    [(CSIndexAgentApp *)self handleCloseAll:v11 completionBlock:v12];
    goto LABEL_21;
  }

  if (!strcmp(a3, "status"))
  {
    [(CSIndexAgentApp *)self handleStatus:v11 completionBlock:v12];
    goto LABEL_21;
  }

  if (!strcmp(a3, "reset"))
  {
    [(CSIndexAgentApp *)self handleReset:v11 completionBlock:v12];
    goto LABEL_21;
  }

  if (!strncmp(a3, "resolve:", 8uLL))
  {
    [(CSIndexAgentApp *)self handleResolvePath:a3 + 8 info:v11 completionBlock:v12];
    goto LABEL_21;
  }

  if (!strncmp(a3, "resolveOIDs:", 0xCuLL))
  {
    [(CSIndexAgentApp *)self handleResolveInfo:a3 completionBlock:v12];
    goto LABEL_21;
  }

  if (!strncmp(a3, "walk:", 5uLL))
  {
    v17 = a3 + 5;
    v18 = self;
    v19 = 0;
LABEL_31:
    [(CSIndexAgentApp *)v18 handleWalkPath:v17 flat:v19 completionBlock:v12];
    goto LABEL_21;
  }

  if (!strncmp(a3, "walkFlat:", 5uLL))
  {
    v17 = a3 + 9;
    v18 = self;
    v19 = 1;
    goto LABEL_31;
  }

  if (!strcmp(a3, "quit"))
  {
    if (v12)
    {
      (v12[2])(v12, 0, 0);
    }

    v20 = logForCSLogCategoryDefault();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      v21 = 0;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "Quiting", &v21, 2u);
    }

    exit(0);
  }

  (v12[2])(v12, 0xFFFFFFFFLL, 0);
LABEL_21:

  return 1;
}

- (BOOL)lostClientConnection:(id)a3 error:(id)a4
{
  v5 = a3;
  indexQueue = self->_indexQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100017BA4;
  block[3] = &unk_1000352E8;
  v10 = v5;
  v7 = v5;
  dispatch_async(indexQueue, block);

  return 0;
}

@end