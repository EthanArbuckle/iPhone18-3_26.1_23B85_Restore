@interface FATVolume
+ (int)GetGMTDiffOffset;
- (FATVolume)initWithResource:(id)a3 volumeID:(id)a4 volumeName:(id)a5;
- (FSStatFSResult)volumeStatistics;
- (FSVolumeSupportedCapabilities)supportedVolumeCapabilities;
- (id)createFATItemWithParent:(id)a3 name:(id)a4 dirEntryData:(id)a5;
- (id)getAttrRequestForNewDirEntry;
- (id)writeSymlinkClusters:(unsigned int)a3 withContent:(id)a4;
- (unint64_t)getFileID:(id)a3;
- (unint64_t)getNextAvailableFileID;
- (void)FatMount:(id)a3 replyHandler:(id)a4;
- (void)activateWithOptions:(id)a3 replyHandler:(id)a4;
- (void)adjustCookieIndex:(unsigned int *)a3 dirItem:(id)a4 provideAttributes:(BOOL)a5;
- (void)blockmapFile:(id)a3 offset:(int64_t)a4 length:(unint64_t)a5 flags:(unint64_t)a6 operationID:(unint64_t)a7 packer:(id)a8 replyHandler:(id)a9;
- (void)calcNumOfDirEntriesForName:(unistr255 *)a3 replyHandler:(id)a4;
- (void)close:(id)a3 keepingMode:(int)a4 replyHandler:(id)a5;
- (void)completeIOForFile:(id)a3 offset:(int64_t)a4 length:(unint64_t)a5 status:(id)a6 flags:(unint64_t)a7 operationID:(unint64_t)a8 replyHandler:(id)a9;
- (void)createFileNamed:(id)a3 inDirectory:(id)a4 attributes:(id)a5 packer:(id)a6 replyHandler:(id)a7;
- (void)createItemNamed:(id)a3 type:(int64_t)a4 inDirectory:(id)a5 attributes:(id)a6 content:(id)a7 replyHandler:(id)a8;
- (void)createItemNamed:(id)a3 type:(int64_t)a4 inDirectory:(id)a5 attributes:(id)a6 replyHandler:(id)a7;
- (void)createLinkToItem:(id)a3 named:(id)a4 inDirectory:(id)a5 replyHandler:(id)a6;
- (void)createSymbolicLinkNamed:(id)a3 inDirectory:(id)a4 attributes:(id)a5 linkContents:(id)a6 replyHandler:(id)a7;
- (void)deactivateItem:(id)a3 replyHandler:(id)a4;
- (void)deactivateWithOptions:(int64_t)a3 replyHandler:(id)a4;
- (void)enumerateDirectory:(id)a3 startingAtCookie:(unint64_t)a4 verifier:(unint64_t)a5 providingAttributes:(id)a6 usingPacker:(id)a7 replyHandler:(id)a8;
- (void)getAttributes:(id)a3 ofItem:(id)a4 replyHandler:(id)a5;
- (void)getFreeClustersStats:(unsigned int *)a3 replyHandler:(id)a4;
- (void)isSymLink:(id)a3 replyHandler:(id)a4;
- (void)lookupItemNamed:(id)a3 inDirectory:(id)a4 packer:(id)a5 replyHandler:(id)a6;
- (void)lookupItemNamed:(id)a3 inDirectory:(id)a4 replyHandler:(id)a5;
- (void)nameToUnistr:(id)a3 flags:(unsigned int)a4 replyHandler:(id)a5;
- (void)open:(id)a3 withMode:(int)a4 replyHandler:(id)a5;
- (void)preallocateSpaceForFile:(id)a3 atOffset:(int64_t)a4 length:(unint64_t)a5 flags:(unint64_t)a6 packer:(id)a7 replyHandler:(id)a8;
- (void)preallocateSpaceForItem:(id)a3 atOffset:(int64_t)a4 length:(unint64_t)a5 flags:(unint64_t)a6 replyHandler:(id)a7;
- (void)readSymbolicLink:(id)a3 replyHandler:(id)a4;
- (void)reclaimItem:(id)a3 replyHandler:(id)a4;
- (void)removeItem:(id)a3 named:(id)a4 fromDirectory:(id)a5 replyHandler:(id)a6;
- (void)renameItem:(id)a3 inDirectory:(id)a4 named:(id)a5 toNewName:(id)a6 inDirectory:(id)a7 overItem:(id)a8 replyHandler:(id)a9;
- (void)setAttributes:(id)a3 onItem:(id)a4 replyHandler:(id)a5;
- (void)setVolumeLabel:(id)a3 rootDir:(id)a4 replyHandler:(id)a5;
- (void)setVolumeName:(id)a3 replyHandler:(id)a4;
- (void)synchronizeWithFlags:(int64_t)a3 replyHandler:(id)a4;
- (void)unmountWithReplyHandler:(id)a3;
@end

@implementation FATVolume

+ (int)GetGMTDiffOffset
{
  if (calculatedOffset == 1)
  {
    return gmtOffset;
  }

  v5 = time(0);
  time(0);
  v3 = gmtime(&v5);
  v3->tm_isdst = -1;
  v4 = mktime(v3);
  calculatedOffset = 1;
  return difftime(v5, v4);
}

- (FATVolume)initWithResource:(id)a3 volumeID:(id)a4 volumeName:(id)a5
{
  v9 = a3;
  v10 = a5;
  v11 = v10;
  if (v10)
  {
    v12 = v10;
  }

  else
  {
    v12 = &stru_1000515B8;
  }

  v13 = a4;
  v14 = [FSFileName nameWithString:v12];
  v24.receiver = self;
  v24.super_class = FATVolume;
  v15 = [(FATVolume *)&v24 initWithVolumeID:v13 volumeName:v14];

  if (v15)
  {
    resource = v15->_resource;
    v15->_resource = 0;

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      objc_storeStrong(&v15->_resource, a3);
    }

    v17 = objc_opt_new();
    nameCachePool = v15->_nameCachePool;
    v15->_nameCachePool = v17;

    v15->_nextAvailableFileID = -1;
    atomic_store(0, &v15->_preAllocatedOpenFiles);
    atomic_store(0, &v15->_openUnlinkedFiles);
    v19 = dispatch_get_global_queue(2, 0);
    globalWorkQueue = v15->_globalWorkQueue;
    v15->_globalWorkQueue = v19;

    v21 = [NSNumber numberWithInt:42];
    fileIDSyncObject = v15->_fileIDSyncObject;
    v15->_fileIDSyncObject = v21;

    [(FATVolume *)v15 setItemDeactivationPolicy:3];
  }

  return v15;
}

- (unint64_t)getFileID:(id)a3
{
  v4 = a3;
  v5 = [(FATVolume *)self systemInfo];
  v6 = [v4 getFirstCluster:v5];

  if (v6)
  {
    return v6;
  }

  return [(FATVolume *)self getNextAvailableFileID];
}

- (unint64_t)getNextAvailableFileID
{
  v3 = self->_fileIDSyncObject;
  objc_sync_enter(v3);
  nextAvailableFileID = self->_nextAvailableFileID;
  v5 = nextAvailableFileID - 1;
  if (nextAvailableFileID == 0xFFFFFFFF00000000)
  {
    v5 = -1;
  }

  self->_nextAvailableFileID = v5;
  objc_sync_exit(v3);

  return nextAvailableFileID;
}

- (id)writeSymlinkClusters:(unsigned int)a3 withContent:(id)a4
{
  v33 = a4;
  v43 = 0;
  v44 = &v43;
  v45 = 0x3032000000;
  v46 = sub_10000B740;
  v47 = sub_10000B750;
  v48 = 0;
  v6 = [(FATVolume *)self systemInfo];
  v7 = [v6 bytesPerSector];
  v8 = [(FATVolume *)self systemInfo];
  v9 = [v8 bytesPerSector];
  v10 = [(FATVolume *)self systemInfo];
  v11 = [v10 bytesPerSector];

  v12 = (v7 + 1066) / v9 * v11;
  v13 = [[NSMutableData alloc] initWithLength:v12];
  if (!v13)
  {
    v17 = fs_errorForPOSIXError();
    goto LABEL_5;
  }

  v14 = [SymLinkItem createSymlinkFromContent:v33 inBuffer:v13];
  v15 = v44[5];
  v44[5] = v14;

  v16 = v44[5];
  if (v16)
  {
    v17 = v16;
LABEL_5:
    v18 = v17;
    goto LABEL_23;
  }

  v32 = 0;
  v39 = 0;
  v40 = &v39;
  v41 = 0x2020000000;
  v42 = a3;
  do
  {
    if (v12 < 1)
    {
      break;
    }

    v19 = [(FATVolume *)self fatManager];
    v20 = [v19 isEOFCluster:*(v40 + 6)];

    if (v20)
    {
      break;
    }

    v21 = [(FATVolume *)self systemInfo];
    v22 = [v21 offsetForCluster:*(v40 + 6)];

    v35 = 0;
    v36 = &v35;
    v37 = 0x2020000000;
    v38 = 0;
    v23 = [(FATVolume *)self fatManager];
    v24 = *(v40 + 6);
    v34[0] = _NSConcreteStackBlock;
    v34[1] = 3221225472;
    v34[2] = sub_10000B758;
    v34[3] = &unk_1000507F0;
    v34[4] = self;
    v34[5] = &v43;
    v34[6] = &v35;
    v34[7] = &v39;
    [v23 getContigClusterChainLengthStartingAt:v24 replyHandler:v34];

    if (v44[5])
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        sub_10002E6FC(buf, &v52);
      }
    }

    else
    {
      if (v36[3] >= v12)
      {
        v25 = v12;
      }

      else
      {
        v25 = v36[3];
      }

      v26 = [(FATVolume *)self resource];
      v27 = v13;
      v28 = +[Utilities metaWriteToDevice:from:startingAt:length:forceSyncWrite:](Utilities, "metaWriteToDevice:from:startingAt:length:forceSyncWrite:", v26, [v13 mutableBytes] + v32, v22, v25, 0);
      v29 = v44[5];
      v44[5] = v28;

      if (!v44[5])
      {
        v32 += v25;
        v12 -= v25;
        v30 = 1;
        goto LABEL_19;
      }

      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        sub_10002E750(v49, &v50);
      }
    }

    v30 = 0;
LABEL_19:
    _Block_object_dispose(&v35, 8);
  }

  while ((v30 & 1) != 0);
  v18 = v44[5];
  _Block_object_dispose(&v39, 8);
LABEL_23:

  _Block_object_dispose(&v43, 8);

  return v18;
}

- (void)isSymLink:(id)a3 replyHandler:(id)a4
{
  v7 = a3;
  v8 = a4;
  v36 = v7;
  if ([v7 getValidDataLength] != 1067 || (-[FATVolume systemInfo](self, "systemInfo"), v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend(v7, "getFirstCluster:", v9), v9, !v10))
  {
    (*(v8 + 2))(v8, 0, 0);
    goto LABEL_31;
  }

  v11 = [(FATVolume *)self systemInfo];
  v12 = 1067;
  v13 = 0x42B % [v11 bytesPerCluster];
  if (v13)
  {
    v4 = [(FATVolume *)self systemInfo];
    v14 = [v4 bytesPerCluster];
    v9 = [(FATVolume *)self systemInfo];
    v12 = v14 - (0x42B % [v9 bytesPerCluster]) + 1067;
  }

  v15 = v13 == 0;
  v16 = [(FATVolume *)self systemInfo];
  v17 = [v16 bytesPerCluster];

  if (!v15)
  {
  }

  v18 = [(FATVolume *)self systemInfo];
  v19 = 1067;
  if (0x42B % [v18 bytesPerSector])
  {
    v20 = [(FATVolume *)self systemInfo];
    v21 = [v20 bytesPerSector];
    v22 = [(FATVolume *)self systemInfo];
    v19 = v21 - (0x42B % [v22 bytesPerSector]) + 1067;
  }

  v35 = v12 / v17;

  v37 = [[NSMutableData alloc] initWithLength:v19];
  v38 = 0;
  v57 = 0;
  v58 = &v57;
  v59 = 0x2020000000;
  v60 = 0;
  v51 = 0;
  v52 = &v51;
  v53 = 0x3032000000;
  v54 = sub_10000B740;
  v55 = sub_10000B750;
  v56 = 0;
  while (1)
  {
    v23 = [(FATVolume *)self fatManager];
    v24 = [v23 isEOFCluster:v10];

    if (v24)
    {
      break;
    }

    v40 = 0;
    v41 = &v40;
    v42 = 0x2020000000;
    v43 = 0;
    v47 = 0;
    v48 = &v47;
    v49 = 0x2020000000;
    v50 = 0;
    v25 = [(FATVolume *)self fatManager];
    v46[0] = _NSConcreteStackBlock;
    v46[1] = 3221225472;
    v46[2] = sub_10000BE9C;
    v46[3] = &unk_100050818;
    v46[4] = self;
    v46[5] = &v57;
    v46[6] = &v40;
    v46[7] = &v47;
    v46[8] = &v51;
    [v25 getContigClusterChainLengthStartingAt:v10 replyHandler:v46];

    if (v52[5])
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        v34 = v52[5];
        *buf = 136315394;
        v64 = "[FATVolume isSymLink:replyHandler:]";
        v65 = 2112;
        v66 = v34;
        _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "%s: Failed to get the item's cluster chain. Error = %@.", buf, 0x16u);
      }
    }

    else
    {
      if (v19 < 1)
      {
        goto LABEL_24;
      }

      v27 = v41[3] >= v19 ? v19 : v41[3];
      v28 = [(FATVolume *)self resource];
      v29 = v37;
      v30 = [v37 mutableBytes];
      v31 = [(FATVolume *)self systemInfo];
      v32 = +[Utilities syncMetaReadFromDevice:into:startingAt:length:](Utilities, "syncMetaReadFromDevice:into:startingAt:length:", v28, &v30[v38], [v31 offsetForCluster:v10], v27);
      v33 = v52[5];
      v52[5] = v32;

      v38 += v27;
      LODWORD(v19) = v19 - v27;
      if (!v52[5])
      {
LABEL_24:
        v10 = *(v48 + 6);
        v26 = 1;
        goto LABEL_25;
      }

      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        sub_10002E7A4(v61, &v62);
      }
    }

    (*(v8 + 2))(v8, 0, 0);
    v26 = 0;
LABEL_25:
    _Block_object_dispose(&v47, 8);
    _Block_object_dispose(&v40, 8);
    if ((v26 & 1) == 0)
    {
      goto LABEL_30;
    }
  }

  if (v35 == *(v58 + 6))
  {
    v40 = 0;
    v41 = &v40;
    v42 = 0x3032000000;
    v43 = sub_10000B740;
    v44 = sub_10000B750;
    v45 = 0;
    v39[0] = _NSConcreteStackBlock;
    v39[1] = 3221225472;
    v39[2] = sub_10000BF44;
    v39[3] = &unk_100050840;
    v39[4] = &v51;
    v39[5] = &v40;
    [SymLinkItem verifyAndGetLink:v37 replyHandler:v39];
    (*(v8 + 2))(v8, v52[5] == 0, v41[5]);
    _Block_object_dispose(&v40, 8);
  }

  else
  {
    (*(v8 + 2))(v8, 0, 0);
  }

LABEL_30:
  _Block_object_dispose(&v51, 8);

  _Block_object_dispose(&v57, 8);
LABEL_31:
}

- (id)createFATItemWithParent:(id)a3 name:(id)a4 dirEntryData:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v21 = 0;
  v22 = &v21;
  v23 = 0x2020000000;
  v24 = 0;
  v17 = 0;
  v18 = &v17;
  v19 = 0x2020000000;
  v20 = 0;
  if ([v10 type] == 2)
  {
    v11 = [(FATVolume *)self systemInfo];
    v12 = -[FATVolume createDirItemWithParent:firstCluster:dirEntryData:name:isRoot:](self, "createDirItemWithParent:firstCluster:dirEntryData:name:isRoot:", v8, [v10 getFirstCluster:v11], v10, v9, 0);
LABEL_3:
    v13 = v12;

    goto LABEL_11;
  }

  if ([v10 type] == 1)
  {
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_10000C21C;
    v16[3] = &unk_100050868;
    v16[4] = &v21;
    v16[5] = &v17;
    [(FATVolume *)self isSymLink:v10 replyHandler:v16];
    if (*(v22 + 24) == 1)
    {
      v11 = [(FATVolume *)self systemInfo];
      v14 = [v10 getFirstCluster:v11];
      [(FATVolume *)self createSymlinkItemWithParent:v8 firstCluster:v14 dirEntryData:v10 name:v9 symlinkLength:*(v18 + 12)];
    }

    else
    {
      v11 = [(FATVolume *)self systemInfo];
      -[FATVolume createFileItemWithParent:firstCluster:dirEntryData:name:](self, "createFileItemWithParent:firstCluster:dirEntryData:name:", v8, [v10 getFirstCluster:v11], v10, v9);
    }
    v12 = ;
    goto LABEL_3;
  }

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_10002E7F8();
  }

  v13 = 0;
LABEL_11:
  _Block_object_dispose(&v17, 8);
  _Block_object_dispose(&v21, 8);

  return v13;
}

- (id)getAttrRequestForNewDirEntry
{
  v2 = objc_alloc_init(FSItemGetAttributesRequest);
  [v2 setWantedAttributes:11330];

  return v2;
}

- (void)createItemNamed:(id)a3 type:(int64_t)a4 inDirectory:(id)a5 attributes:(id)a6 replyHandler:(id)a7
{
  v12 = a3;
  v13 = a5;
  v14 = a6;
  v15 = a7;
  v16 = [(FATItem *)DirItem dynamicCast:v13];
  v17 = v16;
  if (v16)
  {
    if ((a4 - 3) > 0xFFFFFFFFFFFFFFFDLL)
    {
      v19 = [v16 queue];
      v20[0] = _NSConcreteStackBlock;
      v20[1] = 3221225472;
      v20[2] = sub_10000C8F0;
      v20[3] = &unk_1000508B8;
      v20[4] = self;
      v21 = v12;
      v25 = a4;
      v22 = v13;
      v23 = v14;
      v24 = v15;
      dispatch_async(v19, v20);

      goto LABEL_7;
    }

    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_10002EA08();
    }
  }

  v18 = fs_errorForPOSIXError();
  (*(v15 + 2))(v15, 0, 0, v18);

LABEL_7:
}

- (void)createItemNamed:(id)a3 type:(int64_t)a4 inDirectory:(id)a5 attributes:(id)a6 content:(id)a7 replyHandler:(id)a8
{
  v13 = a3;
  v14 = a5;
  v74 = a6;
  v73 = a7;
  v15 = a8;
  v118 = 0;
  v119[0] = &v118;
  v119[1] = 0x3032000000;
  v119[2] = sub_10000B740;
  v119[3] = sub_10000B750;
  v120 = 0;
  v112 = 0;
  v113 = &v112;
  v114 = 0x3032000000;
  v115 = sub_10000B740;
  v116 = sub_10000B750;
  v117 = 0;
  v108 = 0;
  v109 = &v108;
  v110 = 0x2020000000;
  v111 = 0;
  v104 = 0;
  v105 = &v104;
  v106 = 0x2020000000;
  v107 = 0;
  v100 = 0;
  v101 = &v100;
  v102 = 0x2020000000;
  v103 = 0;
  v16 = [(FATVolume *)self systemInfo];
  v17 = [v16 bytesPerCluster];

  if (!v13)
  {
    goto LABEL_4;
  }

  v18 = [v13 data];
  v19 = [v18 length];

  if (!v19)
  {
    goto LABEL_4;
  }

  v20 = [v13 data];
  v21 = [v20 bytes];
  v22 = [v13 data];
  LODWORD(v21) = +[Utilities isDotOrDotDot:length:](Utilities, "isDotOrDotDot:length:", v21, [v22 length]);

  if (v21)
  {
LABEL_4:
    v23 = fs_errorForPOSIXError();
    (*(v15 + 2))(v15, 0, 0, v23);
    goto LABEL_19;
  }

  v24 = [(FATItem *)DirItem dynamicCast:v14];
  v23 = v24;
  if (!v24)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_10002F140();
    }

    goto LABEL_18;
  }

  if ([v24 isDeleted])
  {
LABEL_18:
    v26 = fs_errorForPOSIXError();
    (*(v15 + 2))(v15, 0, 0, v26);

    goto LABEL_19;
  }

  v71 = a4 == 1;
  if ((a4 | 2) == 3 && ([v74 isValid:2] & 1) == 0)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_10002EA8C();
    }

    goto LABEL_18;
  }

  if ([v74 isValid:64])
  {
    v25 = [v74 size];
  }

  else
  {
    v25 = 0;
  }

  if (a4 == 1)
  {
    v27 = [(FATVolume *)self verifyFileSize:v25];
    v28 = *(v119[0] + 40);
    *(v119[0] + 40) = v27;

    if (*(v119[0] + 40))
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        sub_10002EB10(v119);
      }

      (*(v15 + 2))(v15, 0, 0, *(v119[0] + 40));
      goto LABEL_19;
    }
  }

  v29 = [(FATVolume *)self fatManager];
  [v29 setDirtyBitValue:1 forceWriteToDisk:0 replyHandler:&stru_1000508F8];

  v94 = 0;
  v95 = &v94;
  v96 = 0x3032000000;
  v97 = sub_10000B740;
  v98 = sub_10000B750;
  v99 = 0;
  v90 = 0;
  v91 = &v90;
  v92 = 0x2020000000;
  v93 = 0;
  v30 = [(FATVolume *)self nameCachePool];
  v89[0] = _NSConcreteStackBlock;
  v89[1] = 3221225472;
  v89[2] = sub_10000D72C;
  v89[3] = &unk_100050920;
  v89[4] = &v94;
  v89[5] = &v90;
  [v30 getNameCacheForDir:v23 cachedOnly:0 replyHandler:v89];

  if (v95[5])
  {
    if (*(v91 + 24) == 1)
    {
      v31 = [v23 fillNameCache:?];
      v32 = *(v119[0] + 40);
      *(v119[0] + 40) = v31;

      if (*(v119[0] + 40))
      {
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          sub_10002EB94(v119);
        }

        v33 = *(v119[0] + 40);
        *(v119[0] + 40) = 0;
      }
    }
  }

  v85 = 0;
  v86 = &v85;
  v87 = 0x2020000000;
  v88 = 0;
  v34 = v95[5];
  v84[0] = _NSConcreteStackBlock;
  v84[1] = 3221225472;
  v84[2] = sub_10000D7C4;
  v84[3] = &unk_100050778;
  v84[4] = &v85;
  v84[5] = &v118;
  [v23 lookupDirEntryNamed:v13 dirNameCache:v34 lookupOffset:0 replyHandler:v84];
  if (*(v86 + 24) != 1)
  {
    if (*(v119[0] + 40))
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        sub_10002EC18(v119);
      }

      goto LABEL_63;
    }

    if (a4 == 2)
    {
      v37 = 1;
      v71 = 1;
    }

    else
    {
      v38 = v17;
      if (a4 == 1)
      {
        if (v25 % v17)
        {
          v39 = v17 - v25 % v17;
        }

        else
        {
          v39 = 0;
        }

        v40 = v39 + v25;
      }

      else
      {
        if (a4 != 3)
        {
LABEL_61:
          if (*(v119[0] + 40))
          {
            goto LABEL_62;
          }

          v51 = *(v109 + 6);
          v81[0] = _NSConcreteStackBlock;
          v81[1] = 3221225472;
          v81[2] = sub_10000D934;
          v81[3] = &unk_100050970;
          v81[4] = &v118;
          v81[5] = &v100;
          [v23 createNewDirEntryNamed:v13 type:a4 attributes:v74 firstDataCluster:v51 replyHandler:v81];
          if (*(v119[0] + 40))
          {
            if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
            {
              sub_10002EE28(v119);
            }

            if (*(v119[0] + 40))
            {
              goto LABEL_62;
            }
          }

          v52 = v101;
          v76[0] = _NSConcreteStackBlock;
          v76[1] = 3221225472;
          v76[2] = sub_10000D9B0;
          v76[3] = &unk_100050998;
          v79 = &v118;
          v80 = &v112;
          v76[4] = self;
          v53 = v23;
          v77 = v53;
          v54 = v13;
          v78 = v54;
          [v53 lookupDirEntryNamed:v54 dirNameCache:0 lookupOffset:v52 + 3 replyHandler:v76];
          if (*(v119[0] + 40) && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
          {
            sub_10002EEAC(v119);
          }

          v55 = *(v119[0] + 40);
          if (a4 == 2 && !v55)
          {
            v56 = [(FATItem *)DirItem dynamicCast:v113[5]];
            v57 = [v56 createDotEntriesWithAttrs:v74];
            v58 = *(v119[0] + 40);
            *(v119[0] + 40) = v57;

            if (*(v119[0] + 40) && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
            {
              sub_10002EF30(v119);
            }

            v55 = *(v119[0] + 40);
          }

          if (v55)
          {
LABEL_62:
            v49 = [(FATVolume *)self fatManager];
            [v49 freeClusterFrom:*(v109 + 6) numClusters:*(v105 + 6) replyHandler:&stru_1000509B8];
          }

          else
          {
            v59 = [v53 updateModificationTimeOnCreateRemove];
            v60 = *(v119[0] + 40);
            *(v119[0] + 40) = v59;

            if (*(v119[0] + 40) && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
            {
              sub_10002EFB4(v119);
            }

            v61 = v95[5];
            if (v61)
            {
              v62 = [v54 data];
              v63 = [v62 bytes];
              v64 = [v54 data];
              v65 = [v64 length];
              v66 = [v61 insertDirEntryNamed:v63 ofLength:v65 offsetInDir:v101[3]];
              v67 = *(v119[0] + 40);
              *(v119[0] + 40) = v66;

              if (*(v119[0] + 40))
              {
                if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
                {
                  sub_10002F038(v119);
                }

                [v95[5] setIsIncomplete:1];
                v68 = *(v119[0] + 40);
                *(v119[0] + 40) = 0;
              }
            }

            v69 = v113[5];
            if (v69)
            {
              itemCache = self->_itemCache;
              v75[0] = _NSConcreteStackBlock;
              v75[1] = 3221225472;
              v75[2] = sub_10000DA88;
              v75[3] = &unk_1000509E0;
              v75[4] = &v118;
              v75[5] = &v112;
              [(ItemCache *)itemCache insertItem:v69 replyHandler:v75];
            }
          }

          goto LABEL_63;
        }

        v40 = 1067;
        v41 = 0x42B % v17;
        if (v41)
        {
          v40 = v17 - v41 + 1067;
        }
      }

      v37 = v40 / v17;
      if (!(v40 / v38))
      {
LABEL_57:
        if (a4 == 3)
        {
          v45 = *(v109 + 6);
          v46 = [v73 data];
          v47 = [(FATVolume *)self writeSymlinkClusters:v45 withContent:v46];
          v48 = *(v119[0] + 40);
          *(v119[0] + 40) = v47;

          if (*(v119[0] + 40))
          {
            if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
            {
              sub_10002ED20(v119);
            }
          }
        }

        goto LABEL_61;
      }
    }

    v42 = [(FATVolume *)self fatManager];
    v82[0] = _NSConcreteStackBlock;
    v82[1] = 3221225472;
    v82[2] = sub_10000D860;
    v82[3] = &unk_100050948;
    v83 = v37;
    v82[4] = &v118;
    v82[5] = &v108;
    v82[6] = &v104;
    [v42 allocateClusters:v37 allowPartial:0 zeroFill:v71 mustBeContig:0 replyHandler:v82];

    if (*(v119[0] + 40))
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        sub_10002EC9C(v119);
      }

      goto LABEL_63;
    }

    if (a4 == 2)
    {
      v43 = [(FATVolume *)self clearNewDirClustersFrom:*(v109 + 6) amount:*(v105 + 6)];
      v44 = *(v119[0] + 40);
      *(v119[0] + 40) = v43;

      if (*(v119[0] + 40) && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        sub_10002EDA4(v119);
      }

      goto LABEL_61;
    }

    goto LABEL_57;
  }

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
  {
    sub_10002F0BC();
  }

  v35 = fs_errorForPOSIXError();
  v36 = *(v119[0] + 40);
  *(v119[0] + 40) = v35;

LABEL_63:
  if (v95[5])
  {
    v50 = [(FATVolume *)self nameCachePool];
    [v50 doneWithNameCacheForDir:v23];
  }

  (*(v15 + 2))(v15, v113[5], v13, *(v119[0] + 40));
  _Block_object_dispose(&v85, 8);
  _Block_object_dispose(&v90, 8);
  _Block_object_dispose(&v94, 8);

LABEL_19:
  _Block_object_dispose(&v100, 8);
  _Block_object_dispose(&v104, 8);
  _Block_object_dispose(&v108, 8);
  _Block_object_dispose(&v112, 8);

  _Block_object_dispose(&v118, 8);
}

- (void)createFileNamed:(id)a3 inDirectory:(id)a4 attributes:(id)a5 packer:(id)a6 replyHandler:(id)a7
{
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_10000DBCC;
  v12[3] = &unk_100050890;
  v13 = a7;
  v11 = v13;
  [(FATVolume *)self createItemNamed:a3 type:1 inDirectory:a4 attributes:a5 replyHandler:v12];
}

- (void)createLinkToItem:(id)a3 named:(id)a4 inDirectory:(id)a5 replyHandler:(id)a6
{
  v7 = a6;
  v8 = fs_errorForPOSIXError();
  (*(a6 + 2))(v7, 0, v8);
}

- (void)createSymbolicLinkNamed:(id)a3 inDirectory:(id)a4 attributes:(id)a5 linkContents:(id)a6 replyHandler:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v17 = [(FATItem *)DirItem dynamicCast:v13];
  v18 = v17;
  if (v15 && v17)
  {
    v19 = [v15 data];
    if ([v19 length])
    {
      v20 = [v15 data];
      v21 = [v20 length];

      if (v21 < 0x401)
      {
        v22 = [v18 queue];
        v24[0] = _NSConcreteStackBlock;
        v24[1] = 3221225472;
        v24[2] = sub_10000DE4C;
        v24[3] = &unk_100050A08;
        v24[4] = self;
        v25 = v12;
        v26 = v13;
        v27 = v14;
        v28 = v15;
        v29 = v16;
        dispatch_async(v22, v24);

        goto LABEL_10;
      }
    }

    else
    {
    }
  }

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_10002F3F0();
  }

  v23 = fs_errorForPOSIXError();
  (*(v16 + 2))(v16, 0, 0, v23);

LABEL_10:
}

- (void)adjustCookieIndex:(unsigned int *)a3 dirItem:(id)a4 provideAttributes:(BOOL)a5
{
  v5 = a5;
  v7 = a4;
  if ([v7 isRoot] && !v5 && *a3 >= 2)
  {
    *a3 -= 2;
  }

  v8 = [v7 isRoot];

  if ((v8 & 1) == 0 && v5)
  {
    *a3 += 2;
  }
}

- (void)enumerateDirectory:(id)a3 startingAtCookie:(unint64_t)a4 verifier:(unint64_t)a5 providingAttributes:(id)a6 usingPacker:(id)a7 replyHandler:(id)a8
{
  v14 = a6;
  v15 = a7;
  v16 = a8;
  v17 = [(FATItem *)DirItem dynamicCast:a3];
  v18 = v17;
  if (v17)
  {
    if ([v17 isDeleted])
    {
      (*(v16 + 2))(v16, 0, 0);
    }

    else
    {
      v20 = [v18 queue];
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_10000E13C;
      block[3] = &unk_100050AA8;
      v27 = a4;
      v22 = v14;
      v28 = a5;
      v23 = v18;
      v24 = self;
      v26 = v16;
      v25 = v15;
      dispatch_sync(v20, block);
    }
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_10002F474();
    }

    v19 = fs_errorForPOSIXError();
    (*(v16 + 2))(v16, 0, v19);
  }
}

- (void)getAttributes:(id)a3 ofItem:(id)a4 replyHandler:(id)a5
{
  v7 = a3;
  v8 = a5;
  v9 = [FATItem dynamicCast:a4];
  v10 = v9;
  if (v9)
  {
    v11 = [v9 queue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10000EF5C;
    block[3] = &unk_100050AD0;
    v14 = v10;
    v15 = v7;
    v16 = v8;
    dispatch_async(v11, block);

    v12 = v14;
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_10002F6FC();
    }

    v12 = fs_errorForPOSIXError();
    (*(v8 + 2))(v8, 0, v12);
  }
}

- (void)lookupItemNamed:(id)a3 inDirectory:(id)a4 replyHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v22 = 0;
  v23 = &v22;
  v24 = 0x3032000000;
  v25 = sub_10000B740;
  v26 = sub_10000B750;
  v27 = [(FATItem *)DirItem dynamicCast:v9];
  v20[0] = 0;
  v20[1] = v20;
  v20[2] = 0x3032000000;
  v20[3] = sub_10000B740;
  v20[4] = sub_10000B750;
  v21 = 0;
  v11 = v23[5];
  if (v11)
  {
    v12 = [v11 queue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10000F1E8;
    block[3] = &unk_100050B20;
    v15 = v8;
    v16 = self;
    v17 = v10;
    v18 = &v22;
    v19 = v20;
    dispatch_async(v12, block);

    v13 = v15;
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_10002F780();
    }

    v13 = fs_errorForPOSIXError();
    (*(v10 + 2))(v10, 0, 0, v13);
  }

  _Block_object_dispose(v20, 8);
  _Block_object_dispose(&v22, 8);
}

- (void)lookupItemNamed:(id)a3 inDirectory:(id)a4 packer:(id)a5 replyHandler:(id)a6
{
  v10 = a3;
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_10000F9A8;
  v14[3] = &unk_100050B70;
  v15 = a5;
  v16 = v10;
  v17 = a6;
  v11 = v17;
  v12 = v10;
  v13 = v15;
  [(FATVolume *)self lookupItemNamed:v12 inDirectory:a4 replyHandler:v14];
}

- (FSStatFSResult)volumeStatistics
{
  v3 = [FSStatFSResult alloc];
  v4 = [(FATVolume *)self systemInfo];
  v5 = [v4 fsTypeName];
  v6 = [v3 initWithFileSystemTypeName:v5];

  v7 = [(FATVolume *)self systemInfo];
  [v6 setBlockSize:{objc_msgSend(v7, "bytesPerCluster")}];

  [v6 setIoSize:0x8000];
  v8 = [(FATVolume *)self systemInfo];
  [v6 setTotalBlocks:{objc_msgSend(v8, "maxValidCluster")}];

  v9 = [(FATVolume *)self systemInfo];
  [v6 setAvailableBlocks:{objc_msgSend(v9, "freeClusters")}];

  v10 = [(FATVolume *)self systemInfo];
  [v6 setFreeBlocks:{objc_msgSend(v10, "freeClusters")}];

  v11 = [(FATVolume *)self systemInfo];
  v12 = [v11 maxValidCluster];
  v13 = [(FATVolume *)self systemInfo];
  [v6 setUsedBlocks:{v12 - objc_msgSend(v13, "freeClusters")}];

  [v6 setTotalFiles:0];
  [v6 setFreeFiles:0];
  v14 = [(FATVolume *)self systemInfo];
  v15 = [v14 fsSubTypeNum];
  [v6 setFileSystemSubType:{objc_msgSend(v15, "intValue")}];

  return v6;
}

- (FSVolumeSupportedCapabilities)supportedVolumeCapabilities
{
  v2 = objc_opt_new();
  [v2 setSupportsSymbolicLinks:1];
  [v2 setCaseFormat:2];
  [v2 setSupportsHiddenFiles:1];
  [v2 setDoesNotSupportRootTimes:1];
  [v2 setDoesNotSupportSettingFilePermissions:1];

  return v2;
}

- (void)readSymbolicLink:(id)a3 replyHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(FATItem *)SymLinkItem dynamicCast:v6];
  v9 = v8;
  if (v8)
  {
    v10 = [v8 queue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10000FEA4;
    block[3] = &unk_100050AD0;
    block[4] = self;
    v13 = v6;
    v14 = v7;
    dispatch_async(v10, block);
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_10002FA2C();
    }

    v11 = fs_errorForPOSIXError();
    (*(v7 + 2))(v7, 0, v11);
  }
}

- (void)reclaimItem:(id)a3 replyHandler:(id)a4
{
  v5 = a4;
  v6 = [FATItem dynamicCast:a3];
  v7 = v6;
  if (v6)
  {
    v8 = [v6 queue];
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_100010524;
    v10[3] = &unk_100050BC0;
    v12 = v5;
    v11 = v7;
    dispatch_async(v8, v10);

    v9 = v12;
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_10002FAB0();
    }

    v9 = fs_errorForPOSIXError();
    (*(v5 + 2))(v5, v9);
  }
}

- (void)removeItem:(id)a3 named:(id)a4 fromDirectory:(id)a5 replyHandler:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = [FATItem dynamicCast:v10];
  v15 = [(FATItem *)DirItem dynamicCast:v12];
  v16 = v15;
  v32[0] = 0;
  v32[1] = v32;
  v32[2] = 0x3032000000;
  v32[3] = sub_10000B740;
  v32[4] = sub_10000B750;
  v33 = 0;
  v30[0] = 0;
  v30[1] = v30;
  v30[2] = 0x3032000000;
  v30[3] = sub_10000B740;
  v30[4] = sub_10000B750;
  v31 = 0;
  if (!v14)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_10002FCC0();
    }

    goto LABEL_18;
  }

  if (!v15)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_10002FC3C();
    }

    goto LABEL_18;
  }

  if (v15 == v14)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_10002FBB8();
    }

    goto LABEL_18;
  }

  if (!v11)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_10002FB34();
    }

    goto LABEL_18;
  }

  v17 = [v11 data];
  v18 = [v17 bytes];
  v19 = [v11 data];
  LODWORD(v18) = +[Utilities isDotOrDotDot:length:](Utilities, "isDotOrDotDot:length:", v18, [v19 length]);

  if (v18)
  {
LABEL_18:
    v20 = fs_errorForPOSIXError();
    v13[2](v13, v20);
LABEL_22:

    goto LABEL_23;
  }

  if (![v14 isDeleted])
  {
    v21 = [v16 queue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100010980;
    block[3] = &unk_100050C80;
    v23 = v14;
    v28 = v32;
    v29 = v30;
    v27 = v13;
    v24 = self;
    v25 = v16;
    v26 = v11;
    dispatch_async(v21, block);

    v20 = v23;
    goto LABEL_22;
  }

  v13[2](v13, 0);
LABEL_23:
  _Block_object_dispose(v30, 8);

  _Block_object_dispose(v32, 8);
}

- (void)renameItem:(id)a3 inDirectory:(id)a4 named:(id)a5 toNewName:(id)a6 inDirectory:(id)a7 overItem:(id)a8 replyHandler:(id)a9
{
  v15 = a3;
  v58 = a4;
  v16 = a5;
  v17 = a6;
  v57 = a7;
  v56 = a8;
  v18 = a9;
  v87 = 0;
  v88 = &v87;
  v89 = 0x3032000000;
  v90 = sub_10000B740;
  v91 = sub_10000B750;
  v92 = [FATItem dynamicCast:v15];
  v81 = 0;
  v82 = &v81;
  v83 = 0x3032000000;
  v84 = sub_10000B740;
  v85 = sub_10000B750;
  v86 = 0;
  if (!v17 || !v16 || !v15 || !v58 || !v57)
  {
    goto LABEL_9;
  }

  queue = self;
  v19 = [v16 data];
  v20 = [v19 bytes];
  v21 = [v16 data];
  if (+[Utilities isDotOrDotDot:length:](Utilities, "isDotOrDotDot:length:", v20, [v21 length]))
  {

    goto LABEL_9;
  }

  v22 = [v17 data];
  v23 = [v22 bytes];
  v24 = [v17 data];
  LODWORD(v23) = +[Utilities isDotOrDotDot:length:](Utilities, "isDotOrDotDot:length:", v23, [v24 length]);

  if (v23)
  {
LABEL_9:
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_10002FF58();
    }

    goto LABEL_11;
  }

  if (v58 != v57 || ([v16 string], v26 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v17, "string"), v27 = objc_claimAutoreleasedReturnValue(), v28 = objc_msgSend(v26, "isEqualToString:", v27), v27, v26, !v28))
  {
    v29 = v88[5];
    if (v29 && ![v29 isDeleted])
    {
      v30 = [(FATItem *)DirItem dynamicCast:v58];
      v25 = v30;
      if (v30 && ![v30 isDeleted])
      {
        v32 = [(FATItem *)DirItem dynamicCast:v57];
        v31 = v32;
        if (!v32)
        {
          goto LABEL_27;
        }

        if ([v32 isDeleted])
        {
          goto LABEL_27;
        }

        v53 = [v88[5] name];
        v52 = [v53 string];
        v34 = [v52 lowercaseString];
        v35 = [v16 string];
        v36 = [v35 lowercaseString];
        v37 = [v34 isEqualToString:v36];

        if ((v37 & 1) == 0)
        {
          goto LABEL_27;
        }

        v38 = v56;
        if (!v56 || v56 == v15 || (+[FATItem dynamicCast:](FATItem, "dynamicCast:", v56), v39 = objc_claimAutoreleasedReturnValue(), v40 = v82[5], v82[5] = v39, v40, (v41 = v82[5]) != 0) && (v38 = v56, ![v41 isDeleted]))
        {
          v68[0] = _NSConcreteStackBlock;
          v68[1] = 3221225472;
          v68[2] = sub_1000117A0;
          v68[3] = &unk_100050CF0;
          v79 = &v87;
          v42 = v31;
          v69 = v42;
          v78 = v18;
          v70 = queue;
          v71 = v15;
          v72 = v38;
          v73 = v17;
          v80 = &v81;
          v43 = v25;
          v74 = v43;
          v75 = v16;
          v76 = v58;
          v77 = v57;
          v44 = objc_retainBlock(v68);
          if (v43 == v42)
          {
            v51 = [v43 queue];
            v64[0] = _NSConcreteStackBlock;
            v64[1] = 3221225472;
            v64[2] = sub_100012924;
            v64[3] = &unk_100050D68;
            v67 = &v81;
            v65 = v44;
            v66 = &v87;
            v47 = v44;
            dispatch_async(v51, v64);

            v50 = v65;
          }

          else
          {
            if (v43 >= v42)
            {
              v45 = v42;
            }

            else
            {
              v45 = v43;
            }

            if (v43 >= v42)
            {
              v46 = v43;
            }

            else
            {
              v46 = v42;
            }

            v47 = v45;
            v48 = v46;
            queuea = [v47 queue];
            block[0] = _NSConcreteStackBlock;
            block[1] = 3221225472;
            block[2] = sub_100012ABC;
            block[3] = &unk_100050D90;
            v62 = &v87;
            v63 = &v81;
            v60 = v48;
            v61 = v44;
            v49 = v44;
            v50 = v48;
            dispatch_async(queuea, block);
          }

          v33 = v69;
        }

        else
        {
LABEL_27:
          v33 = fs_errorForPOSIXError();
          (*(v18 + 2))(v18, 0, v33);
        }
      }

      else
      {
        v31 = fs_errorForPOSIXError();
        (*(v18 + 2))(v18, 0, v31);
      }

      goto LABEL_12;
    }

LABEL_11:
    v25 = fs_errorForPOSIXError();
    (*(v18 + 2))(v18, 0, v25);
LABEL_12:

    goto LABEL_13;
  }

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
  {
    sub_10002FED4();
  }

  (*(v18 + 2))(v18, v17, 0);
LABEL_13:
  _Block_object_dispose(&v81, 8);

  _Block_object_dispose(&v87, 8);
}

- (void)setAttributes:(id)a3 onItem:(id)a4 replyHandler:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = [FATItem dynamicCast:a4];
  if (!v10 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_100030690();
  }

  v11 = [v10 queue];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100012E38;
  v15[3] = &unk_100050DD8;
  v16 = v8;
  v17 = self;
  v18 = v10;
  v19 = v9;
  v12 = v10;
  v13 = v9;
  v14 = v8;
  dispatch_async(v11, v15);
}

- (void)synchronizeWithFlags:(int64_t)a3 replyHandler:(id)a4
{
  v6 = a4;
  globalWorkQueue = self->_globalWorkQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100013048;
  block[3] = &unk_100050E00;
  v10 = v6;
  v11 = a3;
  block[4] = self;
  v8 = v6;
  dispatch_sync(globalWorkQueue, block);
}

- (void)activateWithOptions:(id)a3 replyHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
  {
    sub_1000308CC();
  }

  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100013360;
  v11[3] = &unk_100050E28;
  v8 = v7;
  v12 = v8;
  [(FATVolume *)self FatMount:v6 replyHandler:v11];
  v9 = [[ItemCache alloc] initWithVolume:self];
  itemCache = self->_itemCache;
  self->_itemCache = v9;

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
  {
    sub_100030950();
  }
}

- (void)deactivateWithOptions:(int64_t)a3 replyHandler:(id)a4
{
  v5 = a4;
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
  {
    sub_1000309D4();
  }

  v7 = 0;
  v8[0] = &v7;
  v8[1] = 0x3032000000;
  v8[2] = sub_10000B740;
  v8[3] = sub_10000B750;
  v9 = 0;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1000134D8;
  v6[3] = &unk_100050C58;
  v6[4] = &v7;
  [(FATVolume *)self synchronizeWithFlags:1 replyHandler:v6];
  if (!*(v8[0] + 40))
  {
    [(FATVolume *)self unmountWithReplyHandler:&stru_100050E68];
  }

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
  {
    sub_100030A58(v8);
  }

  v5[2](v5, 0);
  _Block_object_dispose(&v7, 8);
}

- (void)unmountWithReplyHandler:(id)a3
{
  v4 = a3;
  globalWorkQueue = self->_globalWorkQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000135A0;
  v7[3] = &unk_100050E90;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_sync(globalWorkQueue, v7);
}

- (void)close:(id)a3 keepingMode:(int)a4 replyHandler:(id)a5
{
  v6 = a5;
  v7 = fs_errorForPOSIXError();
  (*(a5 + 2))(v6, v7);
}

- (void)open:(id)a3 withMode:(int)a4 replyHandler:(id)a5
{
  v6 = a5;
  v7 = fs_errorForPOSIXError();
  (*(a5 + 2))(v6, v7);
}

- (void)blockmapFile:(id)a3 offset:(int64_t)a4 length:(unint64_t)a5 flags:(unint64_t)a6 operationID:(unint64_t)a7 packer:(id)a8 replyHandler:(id)a9
{
  v14 = a8;
  v15 = a9;
  v16 = [(FATItem *)FileItem dynamicCast:a3];
  v17 = v16;
  if (v16)
  {
    v18 = [v16 queue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100013960;
    block[3] = &unk_100050EB8;
    v21 = v17;
    v24 = a4;
    v25 = a5;
    v26 = a6;
    v27 = a7;
    v22 = v14;
    v23 = v15;
    dispatch_async(v18, block);

    v19 = v21;
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_100030C28();
    }

    v19 = fs_errorForPOSIXError();
    (*(v15 + 2))(v15, v19);
  }
}

- (void)completeIOForFile:(id)a3 offset:(int64_t)a4 length:(unint64_t)a5 status:(id)a6 flags:(unint64_t)a7 operationID:(unint64_t)a8 replyHandler:(id)a9
{
  v14 = a6;
  v15 = a9;
  v16 = [(FATItem *)FileItem dynamicCast:a3];
  v17 = v16;
  if (v16)
  {
    v18 = [v16 queue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100013BE8;
    block[3] = &unk_100050EB8;
    v21 = v17;
    v24 = a4;
    v25 = a5;
    v22 = v14;
    v26 = a7;
    v27 = a8;
    v23 = v15;
    dispatch_async(v18, block);

    v19 = v21;
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_100030D30();
    }

    v19 = fs_errorForPOSIXError();
    (*(v15 + 2))(v15, v19);
  }
}

- (void)FatMount:(id)a3 replyHandler:(id)a4
{
  v5 = a4;
  v6 = fs_errorForPOSIXError();
  (*(a4 + 2))(v5, 0, v6);
}

- (void)getFreeClustersStats:(unsigned int *)a3 replyHandler:(id)a4
{
  v5 = a4;
  v6 = fs_errorForPOSIXError();
  (*(a4 + 2))(v5, v6);
}

- (void)calcNumOfDirEntriesForName:(unistr255 *)a3 replyHandler:(id)a4
{
  v5 = a4;
  v6 = fs_errorForPOSIXError();
  (*(a4 + 2))(v5, v6, 0);
}

- (void)nameToUnistr:(id)a3 flags:(unsigned int)a4 replyHandler:(id)a5
{
  memset(v8, 0, sizeof(v8));
  v6 = a5;
  v7 = fs_errorForPOSIXError();
  (*(a5 + 2))(v6, v7, v8);
}

- (void)setVolumeLabel:(id)a3 rootDir:(id)a4 replyHandler:(id)a5
{
  v6 = a5;
  v7 = fs_errorForPOSIXError();
  (*(a5 + 2))(v6, 0, v7);
}

- (void)setVolumeName:(id)a3 replyHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  globalWorkQueue = self->_globalWorkQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100013FC8;
  block[3] = &unk_100050AD0;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_sync(globalWorkQueue, block);
}

- (void)preallocateSpaceForFile:(id)a3 atOffset:(int64_t)a4 length:(unint64_t)a5 flags:(unint64_t)a6 packer:(id)a7 replyHandler:(id)a8
{
  v14 = a3;
  v15 = a7;
  v16 = a8;
  v17 = [(FATItem *)FileItem dynamicCast:v14];
  v18 = v17;
  if (v17)
  {
    v19 = [v17 numberOfClusters];
    v20 = [(FATVolume *)self systemInfo];
    v21 = [v20 bytesPerCluster] * v19;
  }

  else
  {
    v21 = 0;
  }

  v25[0] = _NSConcreteStackBlock;
  v25[1] = 3221225472;
  v25[2] = sub_100014374;
  v25[3] = &unk_100050F28;
  v26 = v18;
  v27 = v15;
  v28 = v16;
  v29 = v21;
  v22 = v16;
  v23 = v15;
  v24 = v18;
  [(FATVolume *)self preallocateSpaceForItem:v14 atOffset:a4 length:a5 flags:a6 replyHandler:v25];
}

- (void)preallocateSpaceForItem:(id)a3 atOffset:(int64_t)a4 length:(unint64_t)a5 flags:(unint64_t)a6 replyHandler:(id)a7
{
  v12 = a7;
  v13 = [(FATItem *)FileItem dynamicCast:a3];
  v14 = v13;
  if (v13)
  {
    if (!a4)
    {
      v16 = [v13 queue];
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_1000145F8;
      block[3] = &unk_100050F70;
      block[4] = self;
      v18 = v14;
      v20 = a5;
      v21 = a6;
      v19 = v12;
      dispatch_async(v16, block);

      goto LABEL_10;
    }

    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_100030E60();
    }
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_100030EE4();
  }

  v15 = fs_errorForPOSIXError();
  (*(v12 + 2))(v12, 0, v15);

LABEL_10:
}

- (void)deactivateItem:(id)a3 replyHandler:(id)a4
{
  v5 = a4;
  v6 = [FATItem dynamicCast:a3];
  v7 = v6;
  if (v6)
  {
    v8 = [v6 queue];
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_10001493C;
    v10[3] = &unk_100050BC0;
    v12 = v5;
    v11 = v7;
    dispatch_async(v8, v10);

    v9 = v12;
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_100030FEC();
    }

    v9 = fs_errorForPOSIXError();
    (*(v5 + 2))(v5, v9);
  }
}

@end