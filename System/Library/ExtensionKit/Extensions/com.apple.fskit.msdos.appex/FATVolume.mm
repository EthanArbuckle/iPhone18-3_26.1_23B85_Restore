@interface FATVolume
+ (int)GetGMTDiffOffset;
- (FATVolume)initWithResource:(id)resource volumeID:(id)d volumeName:(id)name;
- (FSStatFSResult)volumeStatistics;
- (FSVolumeSupportedCapabilities)supportedVolumeCapabilities;
- (id)createFATItemWithParent:(id)parent name:(id)name dirEntryData:(id)data;
- (id)getAttrRequestForNewDirEntry;
- (id)writeSymlinkClusters:(unsigned int)clusters withContent:(id)content;
- (unint64_t)getFileID:(id)d;
- (unint64_t)getNextAvailableFileID;
- (void)FatMount:(id)mount replyHandler:(id)handler;
- (void)activateWithOptions:(id)options replyHandler:(id)handler;
- (void)adjustCookieIndex:(unsigned int *)index dirItem:(id)item provideAttributes:(BOOL)attributes;
- (void)blockmapFile:(id)file offset:(int64_t)offset length:(unint64_t)length flags:(unint64_t)flags operationID:(unint64_t)d packer:(id)packer replyHandler:(id)handler;
- (void)calcNumOfDirEntriesForName:(unistr255 *)name replyHandler:(id)handler;
- (void)close:(id)close keepingMode:(int)mode replyHandler:(id)handler;
- (void)completeIOForFile:(id)file offset:(int64_t)offset length:(unint64_t)length status:(id)status flags:(unint64_t)flags operationID:(unint64_t)d replyHandler:(id)handler;
- (void)createFileNamed:(id)named inDirectory:(id)directory attributes:(id)attributes packer:(id)packer replyHandler:(id)handler;
- (void)createItemNamed:(id)named type:(int64_t)type inDirectory:(id)directory attributes:(id)attributes content:(id)content replyHandler:(id)handler;
- (void)createItemNamed:(id)named type:(int64_t)type inDirectory:(id)directory attributes:(id)attributes replyHandler:(id)handler;
- (void)createLinkToItem:(id)item named:(id)named inDirectory:(id)directory replyHandler:(id)handler;
- (void)createSymbolicLinkNamed:(id)named inDirectory:(id)directory attributes:(id)attributes linkContents:(id)contents replyHandler:(id)handler;
- (void)deactivateItem:(id)item replyHandler:(id)handler;
- (void)deactivateWithOptions:(int64_t)options replyHandler:(id)handler;
- (void)enumerateDirectory:(id)directory startingAtCookie:(unint64_t)cookie verifier:(unint64_t)verifier providingAttributes:(id)attributes usingPacker:(id)packer replyHandler:(id)handler;
- (void)getAttributes:(id)attributes ofItem:(id)item replyHandler:(id)handler;
- (void)getFreeClustersStats:(unsigned int *)stats replyHandler:(id)handler;
- (void)isSymLink:(id)link replyHandler:(id)handler;
- (void)lookupItemNamed:(id)named inDirectory:(id)directory packer:(id)packer replyHandler:(id)handler;
- (void)lookupItemNamed:(id)named inDirectory:(id)directory replyHandler:(id)handler;
- (void)nameToUnistr:(id)unistr flags:(unsigned int)flags replyHandler:(id)handler;
- (void)open:(id)open withMode:(int)mode replyHandler:(id)handler;
- (void)preallocateSpaceForFile:(id)file atOffset:(int64_t)offset length:(unint64_t)length flags:(unint64_t)flags packer:(id)packer replyHandler:(id)handler;
- (void)preallocateSpaceForItem:(id)item atOffset:(int64_t)offset length:(unint64_t)length flags:(unint64_t)flags replyHandler:(id)handler;
- (void)readSymbolicLink:(id)link replyHandler:(id)handler;
- (void)reclaimItem:(id)item replyHandler:(id)handler;
- (void)removeItem:(id)item named:(id)named fromDirectory:(id)directory replyHandler:(id)handler;
- (void)renameItem:(id)item inDirectory:(id)directory named:(id)named toNewName:(id)name inDirectory:(id)inDirectory overItem:(id)overItem replyHandler:(id)handler;
- (void)setAttributes:(id)attributes onItem:(id)item replyHandler:(id)handler;
- (void)setVolumeLabel:(id)label rootDir:(id)dir replyHandler:(id)handler;
- (void)setVolumeName:(id)name replyHandler:(id)handler;
- (void)synchronizeWithFlags:(int64_t)flags replyHandler:(id)handler;
- (void)unmountWithReplyHandler:(id)handler;
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

- (FATVolume)initWithResource:(id)resource volumeID:(id)d volumeName:(id)name
{
  resourceCopy = resource;
  nameCopy = name;
  v11 = nameCopy;
  if (nameCopy)
  {
    v12 = nameCopy;
  }

  else
  {
    v12 = &stru_1000515B8;
  }

  dCopy = d;
  v14 = [FSFileName nameWithString:v12];
  v24.receiver = self;
  v24.super_class = FATVolume;
  v15 = [(FATVolume *)&v24 initWithVolumeID:dCopy volumeName:v14];

  if (v15)
  {
    resource = v15->_resource;
    v15->_resource = 0;

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      objc_storeStrong(&v15->_resource, resource);
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

- (unint64_t)getFileID:(id)d
{
  dCopy = d;
  systemInfo = [(FATVolume *)self systemInfo];
  v6 = [dCopy getFirstCluster:systemInfo];

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

- (id)writeSymlinkClusters:(unsigned int)clusters withContent:(id)content
{
  contentCopy = content;
  v43 = 0;
  v44 = &v43;
  v45 = 0x3032000000;
  v46 = sub_10000B740;
  v47 = sub_10000B750;
  v48 = 0;
  systemInfo = [(FATVolume *)self systemInfo];
  bytesPerSector = [systemInfo bytesPerSector];
  systemInfo2 = [(FATVolume *)self systemInfo];
  bytesPerSector2 = [systemInfo2 bytesPerSector];
  systemInfo3 = [(FATVolume *)self systemInfo];
  bytesPerSector3 = [systemInfo3 bytesPerSector];

  v12 = (bytesPerSector + 1066) / bytesPerSector2 * bytesPerSector3;
  v13 = [[NSMutableData alloc] initWithLength:v12];
  if (!v13)
  {
    v17 = fs_errorForPOSIXError();
    goto LABEL_5;
  }

  v14 = [SymLinkItem createSymlinkFromContent:contentCopy inBuffer:v13];
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
  clustersCopy = clusters;
  do
  {
    if (v12 < 1)
    {
      break;
    }

    fatManager = [(FATVolume *)self fatManager];
    v20 = [fatManager isEOFCluster:*(v40 + 6)];

    if (v20)
    {
      break;
    }

    systemInfo4 = [(FATVolume *)self systemInfo];
    v22 = [systemInfo4 offsetForCluster:*(v40 + 6)];

    v35 = 0;
    v36 = &v35;
    v37 = 0x2020000000;
    v38 = 0;
    fatManager2 = [(FATVolume *)self fatManager];
    v24 = *(v40 + 6);
    v34[0] = _NSConcreteStackBlock;
    v34[1] = 3221225472;
    v34[2] = sub_10000B758;
    v34[3] = &unk_1000507F0;
    v34[4] = self;
    v34[5] = &v43;
    v34[6] = &v35;
    v34[7] = &v39;
    [fatManager2 getContigClusterChainLengthStartingAt:v24 replyHandler:v34];

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

      resource = [(FATVolume *)self resource];
      v27 = v13;
      v28 = +[Utilities metaWriteToDevice:from:startingAt:length:forceSyncWrite:](Utilities, "metaWriteToDevice:from:startingAt:length:forceSyncWrite:", resource, [v13 mutableBytes] + v32, v22, v25, 0);
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

- (void)isSymLink:(id)link replyHandler:(id)handler
{
  linkCopy = link;
  handlerCopy = handler;
  v36 = linkCopy;
  if ([linkCopy getValidDataLength] != 1067 || (-[FATVolume systemInfo](self, "systemInfo"), systemInfo3 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend(linkCopy, "getFirstCluster:", systemInfo3), systemInfo3, !v10))
  {
    (*(handlerCopy + 2))(handlerCopy, 0, 0);
    goto LABEL_31;
  }

  systemInfo = [(FATVolume *)self systemInfo];
  v12 = 1067;
  v13 = 0x42B % [systemInfo bytesPerCluster];
  if (v13)
  {
    systemInfo2 = [(FATVolume *)self systemInfo];
    bytesPerCluster = [systemInfo2 bytesPerCluster];
    systemInfo3 = [(FATVolume *)self systemInfo];
    v12 = bytesPerCluster - (0x42B % [systemInfo3 bytesPerCluster]) + 1067;
  }

  v15 = v13 == 0;
  systemInfo4 = [(FATVolume *)self systemInfo];
  bytesPerCluster2 = [systemInfo4 bytesPerCluster];

  if (!v15)
  {
  }

  systemInfo5 = [(FATVolume *)self systemInfo];
  v19 = 1067;
  if (0x42B % [systemInfo5 bytesPerSector])
  {
    systemInfo6 = [(FATVolume *)self systemInfo];
    bytesPerSector = [systemInfo6 bytesPerSector];
    systemInfo7 = [(FATVolume *)self systemInfo];
    v19 = bytesPerSector - (0x42B % [systemInfo7 bytesPerSector]) + 1067;
  }

  v35 = v12 / bytesPerCluster2;

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
    fatManager = [(FATVolume *)self fatManager];
    v24 = [fatManager isEOFCluster:v10];

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
    fatManager2 = [(FATVolume *)self fatManager];
    v46[0] = _NSConcreteStackBlock;
    v46[1] = 3221225472;
    v46[2] = sub_10000BE9C;
    v46[3] = &unk_100050818;
    v46[4] = self;
    v46[5] = &v57;
    v46[6] = &v40;
    v46[7] = &v47;
    v46[8] = &v51;
    [fatManager2 getContigClusterChainLengthStartingAt:v10 replyHandler:v46];

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
      resource = [(FATVolume *)self resource];
      v29 = v37;
      mutableBytes = [v37 mutableBytes];
      systemInfo8 = [(FATVolume *)self systemInfo];
      v32 = +[Utilities syncMetaReadFromDevice:into:startingAt:length:](Utilities, "syncMetaReadFromDevice:into:startingAt:length:", resource, &mutableBytes[v38], [systemInfo8 offsetForCluster:v10], v27);
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

    (*(handlerCopy + 2))(handlerCopy, 0, 0);
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
    (*(handlerCopy + 2))(handlerCopy, v52[5] == 0, v41[5]);
    _Block_object_dispose(&v40, 8);
  }

  else
  {
    (*(handlerCopy + 2))(handlerCopy, 0, 0);
  }

LABEL_30:
  _Block_object_dispose(&v51, 8);

  _Block_object_dispose(&v57, 8);
LABEL_31:
}

- (id)createFATItemWithParent:(id)parent name:(id)name dirEntryData:(id)data
{
  parentCopy = parent;
  nameCopy = name;
  dataCopy = data;
  v21 = 0;
  v22 = &v21;
  v23 = 0x2020000000;
  v24 = 0;
  v17 = 0;
  v18 = &v17;
  v19 = 0x2020000000;
  v20 = 0;
  if ([dataCopy type] == 2)
  {
    systemInfo = [(FATVolume *)self systemInfo];
    v12 = -[FATVolume createDirItemWithParent:firstCluster:dirEntryData:name:isRoot:](self, "createDirItemWithParent:firstCluster:dirEntryData:name:isRoot:", parentCopy, [dataCopy getFirstCluster:systemInfo], dataCopy, nameCopy, 0);
LABEL_3:
    v13 = v12;

    goto LABEL_11;
  }

  if ([dataCopy type] == 1)
  {
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_10000C21C;
    v16[3] = &unk_100050868;
    v16[4] = &v21;
    v16[5] = &v17;
    [(FATVolume *)self isSymLink:dataCopy replyHandler:v16];
    if (*(v22 + 24) == 1)
    {
      systemInfo = [(FATVolume *)self systemInfo];
      v14 = [dataCopy getFirstCluster:systemInfo];
      [(FATVolume *)self createSymlinkItemWithParent:parentCopy firstCluster:v14 dirEntryData:dataCopy name:nameCopy symlinkLength:*(v18 + 12)];
    }

    else
    {
      systemInfo = [(FATVolume *)self systemInfo];
      -[FATVolume createFileItemWithParent:firstCluster:dirEntryData:name:](self, "createFileItemWithParent:firstCluster:dirEntryData:name:", parentCopy, [dataCopy getFirstCluster:systemInfo], dataCopy, nameCopy);
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

- (void)createItemNamed:(id)named type:(int64_t)type inDirectory:(id)directory attributes:(id)attributes replyHandler:(id)handler
{
  namedCopy = named;
  directoryCopy = directory;
  attributesCopy = attributes;
  handlerCopy = handler;
  v16 = [(FATItem *)DirItem dynamicCast:directoryCopy];
  v17 = v16;
  if (v16)
  {
    if ((type - 3) > 0xFFFFFFFFFFFFFFFDLL)
    {
      queue = [v16 queue];
      v20[0] = _NSConcreteStackBlock;
      v20[1] = 3221225472;
      v20[2] = sub_10000C8F0;
      v20[3] = &unk_1000508B8;
      v20[4] = self;
      v21 = namedCopy;
      typeCopy = type;
      v22 = directoryCopy;
      v23 = attributesCopy;
      v24 = handlerCopy;
      dispatch_async(queue, v20);

      goto LABEL_7;
    }

    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_10002EA08();
    }
  }

  v18 = fs_errorForPOSIXError();
  (*(handlerCopy + 2))(handlerCopy, 0, 0, v18);

LABEL_7:
}

- (void)createItemNamed:(id)named type:(int64_t)type inDirectory:(id)directory attributes:(id)attributes content:(id)content replyHandler:(id)handler
{
  namedCopy = named;
  directoryCopy = directory;
  attributesCopy = attributes;
  contentCopy = content;
  handlerCopy = handler;
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
  systemInfo = [(FATVolume *)self systemInfo];
  bytesPerCluster = [systemInfo bytesPerCluster];

  if (!namedCopy)
  {
    goto LABEL_4;
  }

  data = [namedCopy data];
  v19 = [data length];

  if (!v19)
  {
    goto LABEL_4;
  }

  data2 = [namedCopy data];
  bytes = [data2 bytes];
  data3 = [namedCopy data];
  LODWORD(bytes) = +[Utilities isDotOrDotDot:length:](Utilities, "isDotOrDotDot:length:", bytes, [data3 length]);

  if (bytes)
  {
LABEL_4:
    v23 = fs_errorForPOSIXError();
    (*(handlerCopy + 2))(handlerCopy, 0, 0, v23);
    goto LABEL_19;
  }

  v24 = [(FATItem *)DirItem dynamicCast:directoryCopy];
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
    (*(handlerCopy + 2))(handlerCopy, 0, 0, v26);

    goto LABEL_19;
  }

  v71 = type == 1;
  if ((type | 2) == 3 && ([attributesCopy isValid:2] & 1) == 0)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_10002EA8C();
    }

    goto LABEL_18;
  }

  if ([attributesCopy isValid:64])
  {
    v25 = [attributesCopy size];
  }

  else
  {
    v25 = 0;
  }

  if (type == 1)
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

      (*(handlerCopy + 2))(handlerCopy, 0, 0, *(v119[0] + 40));
      goto LABEL_19;
    }
  }

  fatManager = [(FATVolume *)self fatManager];
  [fatManager setDirtyBitValue:1 forceWriteToDisk:0 replyHandler:&stru_1000508F8];

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
  nameCachePool = [(FATVolume *)self nameCachePool];
  v89[0] = _NSConcreteStackBlock;
  v89[1] = 3221225472;
  v89[2] = sub_10000D72C;
  v89[3] = &unk_100050920;
  v89[4] = &v94;
  v89[5] = &v90;
  [nameCachePool getNameCacheForDir:v23 cachedOnly:0 replyHandler:v89];

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
  [v23 lookupDirEntryNamed:namedCopy dirNameCache:v34 lookupOffset:0 replyHandler:v84];
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

    if (type == 2)
    {
      v37 = 1;
      v71 = 1;
    }

    else
    {
      v38 = bytesPerCluster;
      if (type == 1)
      {
        if (v25 % bytesPerCluster)
        {
          v39 = bytesPerCluster - v25 % bytesPerCluster;
        }

        else
        {
          v39 = 0;
        }

        v40 = v39 + v25;
      }

      else
      {
        if (type != 3)
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
          [v23 createNewDirEntryNamed:namedCopy type:type attributes:attributesCopy firstDataCluster:v51 replyHandler:v81];
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
          v54 = namedCopy;
          v78 = v54;
          [v53 lookupDirEntryNamed:v54 dirNameCache:0 lookupOffset:v52 + 3 replyHandler:v76];
          if (*(v119[0] + 40) && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
          {
            sub_10002EEAC(v119);
          }

          v55 = *(v119[0] + 40);
          if (type == 2 && !v55)
          {
            v56 = [(FATItem *)DirItem dynamicCast:v113[5]];
            v57 = [v56 createDotEntriesWithAttrs:attributesCopy];
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
            fatManager2 = [(FATVolume *)self fatManager];
            [fatManager2 freeClusterFrom:*(v109 + 6) numClusters:*(v105 + 6) replyHandler:&stru_1000509B8];
          }

          else
          {
            updateModificationTimeOnCreateRemove = [v53 updateModificationTimeOnCreateRemove];
            v60 = *(v119[0] + 40);
            *(v119[0] + 40) = updateModificationTimeOnCreateRemove;

            if (*(v119[0] + 40) && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
            {
              sub_10002EFB4(v119);
            }

            v61 = v95[5];
            if (v61)
            {
              data4 = [v54 data];
              bytes2 = [data4 bytes];
              data5 = [v54 data];
              v65 = [data5 length];
              v66 = [v61 insertDirEntryNamed:bytes2 ofLength:v65 offsetInDir:v101[3]];
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
        v41 = 0x42B % bytesPerCluster;
        if (v41)
        {
          v40 = bytesPerCluster - v41 + 1067;
        }
      }

      v37 = v40 / bytesPerCluster;
      if (!(v40 / v38))
      {
LABEL_57:
        if (type == 3)
        {
          v45 = *(v109 + 6);
          data6 = [contentCopy data];
          v47 = [(FATVolume *)self writeSymlinkClusters:v45 withContent:data6];
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

    fatManager3 = [(FATVolume *)self fatManager];
    v82[0] = _NSConcreteStackBlock;
    v82[1] = 3221225472;
    v82[2] = sub_10000D860;
    v82[3] = &unk_100050948;
    v83 = v37;
    v82[4] = &v118;
    v82[5] = &v108;
    v82[6] = &v104;
    [fatManager3 allocateClusters:v37 allowPartial:0 zeroFill:v71 mustBeContig:0 replyHandler:v82];

    if (*(v119[0] + 40))
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        sub_10002EC9C(v119);
      }

      goto LABEL_63;
    }

    if (type == 2)
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
    nameCachePool2 = [(FATVolume *)self nameCachePool];
    [nameCachePool2 doneWithNameCacheForDir:v23];
  }

  (*(handlerCopy + 2))(handlerCopy, v113[5], namedCopy, *(v119[0] + 40));
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

- (void)createFileNamed:(id)named inDirectory:(id)directory attributes:(id)attributes packer:(id)packer replyHandler:(id)handler
{
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_10000DBCC;
  v12[3] = &unk_100050890;
  handlerCopy = handler;
  v11 = handlerCopy;
  [(FATVolume *)self createItemNamed:named type:1 inDirectory:directory attributes:attributes replyHandler:v12];
}

- (void)createLinkToItem:(id)item named:(id)named inDirectory:(id)directory replyHandler:(id)handler
{
  handlerCopy = handler;
  v8 = fs_errorForPOSIXError();
  (*(handler + 2))(handlerCopy, 0, v8);
}

- (void)createSymbolicLinkNamed:(id)named inDirectory:(id)directory attributes:(id)attributes linkContents:(id)contents replyHandler:(id)handler
{
  namedCopy = named;
  directoryCopy = directory;
  attributesCopy = attributes;
  contentsCopy = contents;
  handlerCopy = handler;
  v17 = [(FATItem *)DirItem dynamicCast:directoryCopy];
  v18 = v17;
  if (contentsCopy && v17)
  {
    data = [contentsCopy data];
    if ([data length])
    {
      data2 = [contentsCopy data];
      v21 = [data2 length];

      if (v21 < 0x401)
      {
        queue = [v18 queue];
        v24[0] = _NSConcreteStackBlock;
        v24[1] = 3221225472;
        v24[2] = sub_10000DE4C;
        v24[3] = &unk_100050A08;
        v24[4] = self;
        v25 = namedCopy;
        v26 = directoryCopy;
        v27 = attributesCopy;
        v28 = contentsCopy;
        v29 = handlerCopy;
        dispatch_async(queue, v24);

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
  (*(handlerCopy + 2))(handlerCopy, 0, 0, v23);

LABEL_10:
}

- (void)adjustCookieIndex:(unsigned int *)index dirItem:(id)item provideAttributes:(BOOL)attributes
{
  attributesCopy = attributes;
  itemCopy = item;
  if ([itemCopy isRoot] && !attributesCopy && *index >= 2)
  {
    *index -= 2;
  }

  isRoot = [itemCopy isRoot];

  if ((isRoot & 1) == 0 && attributesCopy)
  {
    *index += 2;
  }
}

- (void)enumerateDirectory:(id)directory startingAtCookie:(unint64_t)cookie verifier:(unint64_t)verifier providingAttributes:(id)attributes usingPacker:(id)packer replyHandler:(id)handler
{
  attributesCopy = attributes;
  packerCopy = packer;
  handlerCopy = handler;
  v17 = [(FATItem *)DirItem dynamicCast:directory];
  v18 = v17;
  if (v17)
  {
    if ([v17 isDeleted])
    {
      (*(handlerCopy + 2))(handlerCopy, 0, 0);
    }

    else
    {
      queue = [v18 queue];
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_10000E13C;
      block[3] = &unk_100050AA8;
      cookieCopy = cookie;
      v22 = attributesCopy;
      verifierCopy = verifier;
      v23 = v18;
      selfCopy = self;
      v26 = handlerCopy;
      v25 = packerCopy;
      dispatch_sync(queue, block);
    }
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_10002F474();
    }

    v19 = fs_errorForPOSIXError();
    (*(handlerCopy + 2))(handlerCopy, 0, v19);
  }
}

- (void)getAttributes:(id)attributes ofItem:(id)item replyHandler:(id)handler
{
  attributesCopy = attributes;
  handlerCopy = handler;
  v9 = [FATItem dynamicCast:item];
  v10 = v9;
  if (v9)
  {
    queue = [v9 queue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10000EF5C;
    block[3] = &unk_100050AD0;
    v14 = v10;
    v15 = attributesCopy;
    v16 = handlerCopy;
    dispatch_async(queue, block);

    v12 = v14;
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_10002F6FC();
    }

    v12 = fs_errorForPOSIXError();
    (*(handlerCopy + 2))(handlerCopy, 0, v12);
  }
}

- (void)lookupItemNamed:(id)named inDirectory:(id)directory replyHandler:(id)handler
{
  namedCopy = named;
  directoryCopy = directory;
  handlerCopy = handler;
  v22 = 0;
  v23 = &v22;
  v24 = 0x3032000000;
  v25 = sub_10000B740;
  v26 = sub_10000B750;
  v27 = [(FATItem *)DirItem dynamicCast:directoryCopy];
  v20[0] = 0;
  v20[1] = v20;
  v20[2] = 0x3032000000;
  v20[3] = sub_10000B740;
  v20[4] = sub_10000B750;
  v21 = 0;
  v11 = v23[5];
  if (v11)
  {
    queue = [v11 queue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10000F1E8;
    block[3] = &unk_100050B20;
    v15 = namedCopy;
    selfCopy = self;
    v17 = handlerCopy;
    v18 = &v22;
    v19 = v20;
    dispatch_async(queue, block);

    v13 = v15;
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_10002F780();
    }

    v13 = fs_errorForPOSIXError();
    (*(handlerCopy + 2))(handlerCopy, 0, 0, v13);
  }

  _Block_object_dispose(v20, 8);
  _Block_object_dispose(&v22, 8);
}

- (void)lookupItemNamed:(id)named inDirectory:(id)directory packer:(id)packer replyHandler:(id)handler
{
  namedCopy = named;
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_10000F9A8;
  v14[3] = &unk_100050B70;
  packerCopy = packer;
  v16 = namedCopy;
  handlerCopy = handler;
  v11 = handlerCopy;
  v12 = namedCopy;
  v13 = packerCopy;
  [(FATVolume *)self lookupItemNamed:v12 inDirectory:directory replyHandler:v14];
}

- (FSStatFSResult)volumeStatistics
{
  v3 = [FSStatFSResult alloc];
  systemInfo = [(FATVolume *)self systemInfo];
  fsTypeName = [systemInfo fsTypeName];
  v6 = [v3 initWithFileSystemTypeName:fsTypeName];

  systemInfo2 = [(FATVolume *)self systemInfo];
  [v6 setBlockSize:{objc_msgSend(systemInfo2, "bytesPerCluster")}];

  [v6 setIoSize:0x8000];
  systemInfo3 = [(FATVolume *)self systemInfo];
  [v6 setTotalBlocks:{objc_msgSend(systemInfo3, "maxValidCluster")}];

  systemInfo4 = [(FATVolume *)self systemInfo];
  [v6 setAvailableBlocks:{objc_msgSend(systemInfo4, "freeClusters")}];

  systemInfo5 = [(FATVolume *)self systemInfo];
  [v6 setFreeBlocks:{objc_msgSend(systemInfo5, "freeClusters")}];

  systemInfo6 = [(FATVolume *)self systemInfo];
  maxValidCluster = [systemInfo6 maxValidCluster];
  systemInfo7 = [(FATVolume *)self systemInfo];
  [v6 setUsedBlocks:{maxValidCluster - objc_msgSend(systemInfo7, "freeClusters")}];

  [v6 setTotalFiles:0];
  [v6 setFreeFiles:0];
  systemInfo8 = [(FATVolume *)self systemInfo];
  fsSubTypeNum = [systemInfo8 fsSubTypeNum];
  [v6 setFileSystemSubType:{objc_msgSend(fsSubTypeNum, "intValue")}];

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

- (void)readSymbolicLink:(id)link replyHandler:(id)handler
{
  linkCopy = link;
  handlerCopy = handler;
  v8 = [(FATItem *)SymLinkItem dynamicCast:linkCopy];
  v9 = v8;
  if (v8)
  {
    queue = [v8 queue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10000FEA4;
    block[3] = &unk_100050AD0;
    block[4] = self;
    v13 = linkCopy;
    v14 = handlerCopy;
    dispatch_async(queue, block);
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_10002FA2C();
    }

    v11 = fs_errorForPOSIXError();
    (*(handlerCopy + 2))(handlerCopy, 0, v11);
  }
}

- (void)reclaimItem:(id)item replyHandler:(id)handler
{
  handlerCopy = handler;
  v6 = [FATItem dynamicCast:item];
  v7 = v6;
  if (v6)
  {
    queue = [v6 queue];
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_100010524;
    v10[3] = &unk_100050BC0;
    v12 = handlerCopy;
    v11 = v7;
    dispatch_async(queue, v10);

    v9 = v12;
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_10002FAB0();
    }

    v9 = fs_errorForPOSIXError();
    (*(handlerCopy + 2))(handlerCopy, v9);
  }
}

- (void)removeItem:(id)item named:(id)named fromDirectory:(id)directory replyHandler:(id)handler
{
  itemCopy = item;
  namedCopy = named;
  directoryCopy = directory;
  handlerCopy = handler;
  v14 = [FATItem dynamicCast:itemCopy];
  v15 = [(FATItem *)DirItem dynamicCast:directoryCopy];
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

  if (!namedCopy)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_10002FB34();
    }

    goto LABEL_18;
  }

  data = [namedCopy data];
  bytes = [data bytes];
  data2 = [namedCopy data];
  LODWORD(bytes) = +[Utilities isDotOrDotDot:length:](Utilities, "isDotOrDotDot:length:", bytes, [data2 length]);

  if (bytes)
  {
LABEL_18:
    v20 = fs_errorForPOSIXError();
    handlerCopy[2](handlerCopy, v20);
LABEL_22:

    goto LABEL_23;
  }

  if (![v14 isDeleted])
  {
    queue = [v16 queue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100010980;
    block[3] = &unk_100050C80;
    v23 = v14;
    v28 = v32;
    v29 = v30;
    v27 = handlerCopy;
    selfCopy = self;
    v25 = v16;
    v26 = namedCopy;
    dispatch_async(queue, block);

    v20 = v23;
    goto LABEL_22;
  }

  handlerCopy[2](handlerCopy, 0);
LABEL_23:
  _Block_object_dispose(v30, 8);

  _Block_object_dispose(v32, 8);
}

- (void)renameItem:(id)item inDirectory:(id)directory named:(id)named toNewName:(id)name inDirectory:(id)inDirectory overItem:(id)overItem replyHandler:(id)handler
{
  itemCopy = item;
  directoryCopy = directory;
  namedCopy = named;
  nameCopy = name;
  inDirectoryCopy = inDirectory;
  overItemCopy = overItem;
  handlerCopy = handler;
  v87 = 0;
  v88 = &v87;
  v89 = 0x3032000000;
  v90 = sub_10000B740;
  v91 = sub_10000B750;
  v92 = [FATItem dynamicCast:itemCopy];
  v81 = 0;
  v82 = &v81;
  v83 = 0x3032000000;
  v84 = sub_10000B740;
  v85 = sub_10000B750;
  v86 = 0;
  if (!nameCopy || !namedCopy || !itemCopy || !directoryCopy || !inDirectoryCopy)
  {
    goto LABEL_9;
  }

  queue = self;
  data = [namedCopy data];
  bytes = [data bytes];
  data2 = [namedCopy data];
  if (+[Utilities isDotOrDotDot:length:](Utilities, "isDotOrDotDot:length:", bytes, [data2 length]))
  {

    goto LABEL_9;
  }

  data3 = [nameCopy data];
  bytes2 = [data3 bytes];
  data4 = [nameCopy data];
  LODWORD(bytes2) = +[Utilities isDotOrDotDot:length:](Utilities, "isDotOrDotDot:length:", bytes2, [data4 length]);

  if (bytes2)
  {
LABEL_9:
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_10002FF58();
    }

    goto LABEL_11;
  }

  if (directoryCopy != inDirectoryCopy || ([namedCopy string], v26 = objc_claimAutoreleasedReturnValue(), objc_msgSend(nameCopy, "string"), v27 = objc_claimAutoreleasedReturnValue(), v28 = objc_msgSend(v26, "isEqualToString:", v27), v27, v26, !v28))
  {
    v29 = v88[5];
    if (v29 && ![v29 isDeleted])
    {
      v30 = [(FATItem *)DirItem dynamicCast:directoryCopy];
      v25 = v30;
      if (v30 && ![v30 isDeleted])
      {
        v32 = [(FATItem *)DirItem dynamicCast:inDirectoryCopy];
        v31 = v32;
        if (!v32)
        {
          goto LABEL_27;
        }

        if ([v32 isDeleted])
        {
          goto LABEL_27;
        }

        name = [v88[5] name];
        string = [name string];
        lowercaseString = [string lowercaseString];
        string2 = [namedCopy string];
        lowercaseString2 = [string2 lowercaseString];
        v37 = [lowercaseString isEqualToString:lowercaseString2];

        if ((v37 & 1) == 0)
        {
          goto LABEL_27;
        }

        v38 = overItemCopy;
        if (!overItemCopy || overItemCopy == itemCopy || (+[FATItem dynamicCast:](FATItem, "dynamicCast:", overItemCopy), v39 = objc_claimAutoreleasedReturnValue(), v40 = v82[5], v82[5] = v39, v40, (v41 = v82[5]) != 0) && (v38 = overItemCopy, ![v41 isDeleted]))
        {
          v68[0] = _NSConcreteStackBlock;
          v68[1] = 3221225472;
          v68[2] = sub_1000117A0;
          v68[3] = &unk_100050CF0;
          v79 = &v87;
          v42 = v31;
          v69 = v42;
          v78 = handlerCopy;
          v70 = queue;
          v71 = itemCopy;
          v72 = v38;
          v73 = nameCopy;
          v80 = &v81;
          v43 = v25;
          v74 = v43;
          v75 = namedCopy;
          v76 = directoryCopy;
          v77 = inDirectoryCopy;
          v44 = objc_retainBlock(v68);
          if (v43 == v42)
          {
            queue = [v43 queue];
            v64[0] = _NSConcreteStackBlock;
            v64[1] = 3221225472;
            v64[2] = sub_100012924;
            v64[3] = &unk_100050D68;
            v67 = &v81;
            v65 = v44;
            v66 = &v87;
            v47 = v44;
            dispatch_async(queue, v64);

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
          (*(handlerCopy + 2))(handlerCopy, 0, v33);
        }
      }

      else
      {
        v31 = fs_errorForPOSIXError();
        (*(handlerCopy + 2))(handlerCopy, 0, v31);
      }

      goto LABEL_12;
    }

LABEL_11:
    v25 = fs_errorForPOSIXError();
    (*(handlerCopy + 2))(handlerCopy, 0, v25);
LABEL_12:

    goto LABEL_13;
  }

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
  {
    sub_10002FED4();
  }

  (*(handlerCopy + 2))(handlerCopy, nameCopy, 0);
LABEL_13:
  _Block_object_dispose(&v81, 8);

  _Block_object_dispose(&v87, 8);
}

- (void)setAttributes:(id)attributes onItem:(id)item replyHandler:(id)handler
{
  attributesCopy = attributes;
  handlerCopy = handler;
  v10 = [FATItem dynamicCast:item];
  if (!v10 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_100030690();
  }

  queue = [v10 queue];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100012E38;
  v15[3] = &unk_100050DD8;
  v16 = attributesCopy;
  selfCopy = self;
  v18 = v10;
  v19 = handlerCopy;
  v12 = v10;
  v13 = handlerCopy;
  v14 = attributesCopy;
  dispatch_async(queue, v15);
}

- (void)synchronizeWithFlags:(int64_t)flags replyHandler:(id)handler
{
  handlerCopy = handler;
  globalWorkQueue = self->_globalWorkQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100013048;
  block[3] = &unk_100050E00;
  v10 = handlerCopy;
  flagsCopy = flags;
  block[4] = self;
  v8 = handlerCopy;
  dispatch_sync(globalWorkQueue, block);
}

- (void)activateWithOptions:(id)options replyHandler:(id)handler
{
  optionsCopy = options;
  handlerCopy = handler;
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
  {
    sub_1000308CC();
  }

  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100013360;
  v11[3] = &unk_100050E28;
  v8 = handlerCopy;
  v12 = v8;
  [(FATVolume *)self FatMount:optionsCopy replyHandler:v11];
  v9 = [[ItemCache alloc] initWithVolume:self];
  itemCache = self->_itemCache;
  self->_itemCache = v9;

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
  {
    sub_100030950();
  }
}

- (void)deactivateWithOptions:(int64_t)options replyHandler:(id)handler
{
  handlerCopy = handler;
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

  handlerCopy[2](handlerCopy, 0);
  _Block_object_dispose(&v7, 8);
}

- (void)unmountWithReplyHandler:(id)handler
{
  handlerCopy = handler;
  globalWorkQueue = self->_globalWorkQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000135A0;
  v7[3] = &unk_100050E90;
  v7[4] = self;
  v8 = handlerCopy;
  v6 = handlerCopy;
  dispatch_sync(globalWorkQueue, v7);
}

- (void)close:(id)close keepingMode:(int)mode replyHandler:(id)handler
{
  handlerCopy = handler;
  v7 = fs_errorForPOSIXError();
  (*(handler + 2))(handlerCopy, v7);
}

- (void)open:(id)open withMode:(int)mode replyHandler:(id)handler
{
  handlerCopy = handler;
  v7 = fs_errorForPOSIXError();
  (*(handler + 2))(handlerCopy, v7);
}

- (void)blockmapFile:(id)file offset:(int64_t)offset length:(unint64_t)length flags:(unint64_t)flags operationID:(unint64_t)d packer:(id)packer replyHandler:(id)handler
{
  packerCopy = packer;
  handlerCopy = handler;
  v16 = [(FATItem *)FileItem dynamicCast:file];
  v17 = v16;
  if (v16)
  {
    queue = [v16 queue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100013960;
    block[3] = &unk_100050EB8;
    v21 = v17;
    offsetCopy = offset;
    lengthCopy = length;
    flagsCopy = flags;
    dCopy = d;
    v22 = packerCopy;
    v23 = handlerCopy;
    dispatch_async(queue, block);

    v19 = v21;
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_100030C28();
    }

    v19 = fs_errorForPOSIXError();
    (*(handlerCopy + 2))(handlerCopy, v19);
  }
}

- (void)completeIOForFile:(id)file offset:(int64_t)offset length:(unint64_t)length status:(id)status flags:(unint64_t)flags operationID:(unint64_t)d replyHandler:(id)handler
{
  statusCopy = status;
  handlerCopy = handler;
  v16 = [(FATItem *)FileItem dynamicCast:file];
  v17 = v16;
  if (v16)
  {
    queue = [v16 queue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100013BE8;
    block[3] = &unk_100050EB8;
    v21 = v17;
    offsetCopy = offset;
    lengthCopy = length;
    v22 = statusCopy;
    flagsCopy = flags;
    dCopy = d;
    v23 = handlerCopy;
    dispatch_async(queue, block);

    v19 = v21;
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_100030D30();
    }

    v19 = fs_errorForPOSIXError();
    (*(handlerCopy + 2))(handlerCopy, v19);
  }
}

- (void)FatMount:(id)mount replyHandler:(id)handler
{
  handlerCopy = handler;
  v6 = fs_errorForPOSIXError();
  (*(handler + 2))(handlerCopy, 0, v6);
}

- (void)getFreeClustersStats:(unsigned int *)stats replyHandler:(id)handler
{
  handlerCopy = handler;
  v6 = fs_errorForPOSIXError();
  (*(handler + 2))(handlerCopy, v6);
}

- (void)calcNumOfDirEntriesForName:(unistr255 *)name replyHandler:(id)handler
{
  handlerCopy = handler;
  v6 = fs_errorForPOSIXError();
  (*(handler + 2))(handlerCopy, v6, 0);
}

- (void)nameToUnistr:(id)unistr flags:(unsigned int)flags replyHandler:(id)handler
{
  memset(v8, 0, sizeof(v8));
  handlerCopy = handler;
  v7 = fs_errorForPOSIXError();
  (*(handler + 2))(handlerCopy, v7, v8);
}

- (void)setVolumeLabel:(id)label rootDir:(id)dir replyHandler:(id)handler
{
  handlerCopy = handler;
  v7 = fs_errorForPOSIXError();
  (*(handler + 2))(handlerCopy, 0, v7);
}

- (void)setVolumeName:(id)name replyHandler:(id)handler
{
  nameCopy = name;
  handlerCopy = handler;
  globalWorkQueue = self->_globalWorkQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100013FC8;
  block[3] = &unk_100050AD0;
  block[4] = self;
  v12 = nameCopy;
  v13 = handlerCopy;
  v9 = handlerCopy;
  v10 = nameCopy;
  dispatch_sync(globalWorkQueue, block);
}

- (void)preallocateSpaceForFile:(id)file atOffset:(int64_t)offset length:(unint64_t)length flags:(unint64_t)flags packer:(id)packer replyHandler:(id)handler
{
  fileCopy = file;
  packerCopy = packer;
  handlerCopy = handler;
  v17 = [(FATItem *)FileItem dynamicCast:fileCopy];
  v18 = v17;
  if (v17)
  {
    numberOfClusters = [v17 numberOfClusters];
    systemInfo = [(FATVolume *)self systemInfo];
    v21 = [systemInfo bytesPerCluster] * numberOfClusters;
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
  v27 = packerCopy;
  v28 = handlerCopy;
  v29 = v21;
  v22 = handlerCopy;
  v23 = packerCopy;
  v24 = v18;
  [(FATVolume *)self preallocateSpaceForItem:fileCopy atOffset:offset length:length flags:flags replyHandler:v25];
}

- (void)preallocateSpaceForItem:(id)item atOffset:(int64_t)offset length:(unint64_t)length flags:(unint64_t)flags replyHandler:(id)handler
{
  handlerCopy = handler;
  v13 = [(FATItem *)FileItem dynamicCast:item];
  v14 = v13;
  if (v13)
  {
    if (!offset)
    {
      queue = [v13 queue];
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_1000145F8;
      block[3] = &unk_100050F70;
      block[4] = self;
      v18 = v14;
      lengthCopy = length;
      flagsCopy = flags;
      v19 = handlerCopy;
      dispatch_async(queue, block);

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
  (*(handlerCopy + 2))(handlerCopy, 0, v15);

LABEL_10:
}

- (void)deactivateItem:(id)item replyHandler:(id)handler
{
  handlerCopy = handler;
  v6 = [FATItem dynamicCast:item];
  v7 = v6;
  if (v6)
  {
    queue = [v6 queue];
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_10001493C;
    v10[3] = &unk_100050BC0;
    v12 = handlerCopy;
    v11 = v7;
    dispatch_async(queue, v10);

    v9 = v12;
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_100030FEC();
    }

    v9 = fs_errorForPOSIXError();
    (*(handlerCopy + 2))(handlerCopy, v9);
  }
}

@end