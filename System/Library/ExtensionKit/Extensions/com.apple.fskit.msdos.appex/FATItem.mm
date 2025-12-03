@interface FATItem
+ (id)dynamicCast:(id)cast;
- (BOOL)shouldUpdateMTimeInSetAttr:(id)attr;
- (id)flushDirEntryData;
- (id)getAttributes:(id)attributes;
- (id)initInVolume:(id)volume inDir:(id)dir startingAt:(unsigned int)at withData:(id)data andName:(id)name isRoot:(BOOL)root;
- (id)reclaim:(BOOL)reclaim;
- (id)setAttributes:(id)attributes;
- (unint64_t)getFileID;
- (void)purgeMetaBlocksFromCache:(id)cache;
- (void)setDeleted;
@end

@implementation FATItem

+ (id)dynamicCast:(id)cast
{
  castCopy = cast;
  if (objc_opt_isKindOfClass())
  {
    v4 = castCopy;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  return v4;
}

- (id)initInVolume:(id)volume inDir:(id)dir startingAt:(unsigned int)at withData:(id)data andName:(id)name isRoot:(BOOL)root
{
  volumeCopy = volume;
  dirCopy = dir;
  dataCopy = data;
  nameCopy = name;
  v35 = 0;
  v36[0] = &v35;
  v36[1] = 0x3032000000;
  v36[2] = sub_100018340;
  v36[3] = sub_100018350;
  v37 = 0;
  v31 = 0;
  v32 = &v31;
  v33 = 0x2020000000;
  v34 = 0;
  v27 = 0;
  v28 = &v27;
  v29 = 0x2020000000;
  v30 = 0;
  v26.receiver = self;
  v26.super_class = FATItem;
  v16 = [(FATItem *)&v26 init];
  v17 = v16;
  if (v16)
  {
    objc_storeStrong(&v16->_volume, volume);
    v17->_firstCluster = at;
    objc_storeStrong(&v17->_entryData, data);
    objc_storeStrong(&v17->_name, name);
    objc_storeStrong(&v17->_parentDir, dir);
    v17->_isDeleted = 0;
    v17->_includedInVolumeOUFiles = 0;
    if (v17->_firstCluster)
    {
      v18 = [(FATVolume *)v17->_volume fatManager:dataCopy];
      v25[0] = _NSConcreteStackBlock;
      v25[1] = 3221225472;
      v25[2] = sub_100018358;
      v25[3] = &unk_1000505E8;
      v25[4] = &v35;
      v25[5] = &v31;
      v25[6] = &v27;
      [v18 clusterChainLength:v17 replyHandler:v25];

      if (*(v36[0] + 40))
      {
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          sub_100031A84(v36);
        }

        goto LABEL_9;
      }

      v17->_numberOfClusters = *(v32 + 6);
      v17->_lastCluster = *(v28 + 6);
    }

    v19 = dispatch_queue_create("com.apple.fskit.msdos.itemQueue", 0);
    queue = v17->_queue;
    v17->_queue = v19;

    if (!v17->_queue)
    {
LABEL_9:
      v21 = 0;
      goto LABEL_10;
    }
  }

  v21 = v17;
LABEL_10:
  _Block_object_dispose(&v27, 8);
  _Block_object_dispose(&v31, 8);
  _Block_object_dispose(&v35, 8);

  return v21;
}

- (unint64_t)getFileID
{
  volume = [(FATItem *)self volume];
  entryData = [(FATItem *)self entryData];
  v5 = [volume getFileID:entryData];

  return v5;
}

- (void)setDeleted
{
  if (![(FATItem *)self isDeleted])
  {
    volume = [(FATItem *)self volume];
    [volume incNumberOfOpenUnlinkedFiles];

    [(FATItem *)self setIsDeleted:1];

    [(FATItem *)self setIncludedInVolumeOUFiles:1];
  }
}

- (id)getAttributes:(id)attributes
{
  attributesCopy = attributes;
  v5 = objc_alloc_init(FSItemAttributes);
  v34 = 0;
  v35 = 0;
  if ([attributesCopy isAttributeWanted:1])
  {
    entryData = [(FATItem *)self entryData];
    if (entryData)
    {
      entryData2 = [(FATItem *)self entryData];
      [v5 setType:{objc_msgSend(entryData2, "type")}];
    }

    else
    {
      [v5 setType:0];
    }
  }

  if ([attributesCopy isAttributeWanted:2])
  {
    [v5 setMode:448];
  }

  if ([attributesCopy isAttributeWanted:4])
  {
    [v5 setLinkCount:1];
  }

  numberOfClusters = [(FATItem *)self numberOfClusters];
  volume = [(FATItem *)self volume];
  systemInfo = [volume systemInfo];
  v11 = [systemInfo bytesPerCluster] * numberOfClusters;

  if ([attributesCopy isAttributeWanted:128])
  {
    [v5 setAllocSize:v11];
  }

  entryData3 = [(FATItem *)self entryData];
  if (entryData3)
  {
    v13 = entryData3;
    v14 = [attributesCopy isAttributeWanted:64];

    if (v14)
    {
      entryData4 = [(FATItem *)self entryData];
      type = [entryData4 type];

      if (type == 2)
      {
        [v5 setSize:v11];
      }

      else
      {
        entryData5 = [(FATItem *)self entryData];
        type2 = [entryData5 type];

        if (type2 == 1)
        {
          entryData6 = [(FATItem *)self entryData];
          [v5 setSize:{objc_msgSend(entryData6, "getValidDataLength")}];
        }
      }
    }
  }

  if ([attributesCopy isAttributeWanted:256])
  {
    [v5 setFileID:{-[FATItem getFileID](self, "getFileID")}];
  }

  if ([attributesCopy isAttributeWanted:512])
  {
    parentDir = [(FATItem *)self parentDir];

    if (parentDir)
    {
      parentDir2 = [(FATItem *)self parentDir];
      [v5 setParentID:{objc_msgSend(parentDir2, "getFileID")}];
    }

    else
    {
      v32 = [(FATItem *)DirItem dynamicCast:self];
      parentDir2 = v32;
      if (v32)
      {
        if ([v32 isRoot])
        {
          volume2 = [(FATItem *)self volume];
          [v5 setParentID:{objc_msgSend(volume2, "getNextAvailableFileID")}];
        }

        else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_FAULT))
        {
          sub_100031B1C();
        }
      }

      else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_FAULT))
      {
        sub_100031BA4();
      }
    }
  }

  if ([attributesCopy isAttributeWanted:32])
  {
    entryData7 = [(FATItem *)self entryData];
    [v5 setFlags:{objc_msgSend(entryData7, "bsdFlags")}];
  }

  if ([attributesCopy isAttributeWanted:1024])
  {
    entryData8 = [(FATItem *)self entryData];

    if (entryData8)
    {
      entryData9 = [(FATItem *)self entryData];
      [entryData9 getAccessTime:&v34];

      [v5 setAccessTime:{v34, v35}];
    }
  }

  if ([attributesCopy isAttributeWanted:2048])
  {
    entryData10 = [(FATItem *)self entryData];

    if (entryData10)
    {
      entryData11 = [(FATItem *)self entryData];
      [entryData11 getModifyTime:&v34];

      [v5 setModifyTime:{v34, v35}];
    }
  }

  if ([attributesCopy isAttributeWanted:4096])
  {
    entryData12 = [(FATItem *)self entryData];

    if (entryData12)
    {
      entryData13 = [(FATItem *)self entryData];
      [entryData13 getChangeTime:&v34];

      [v5 setChangeTime:{v34, v35}];
    }
  }

  if ([attributesCopy isAttributeWanted:0x2000])
  {
    entryData14 = [(FATItem *)self entryData];

    if (entryData14)
    {
      entryData15 = [(FATItem *)self entryData];
      [entryData15 getBirthTime:&v34];

      [v5 setBirthTime:{v34, v35}];
    }
  }

  return v5;
}

- (BOOL)shouldUpdateMTimeInSetAttr:(id)attr
{
  attrCopy = attr;
  if ([attrCopy isValid:64])
  {
    v4 = [attrCopy isValid:2048] ^ 1;
  }

  else
  {
    LOBYTE(v4) = 0;
  }

  return v4;
}

- (id)setAttributes:(id)attributes
{
  attributesCopy = attributes;
  v5 = [(FATItem *)DirItem dynamicCast:self];
  entryData = [(FATItem *)self entryData];
  __tp.tv_sec = 0;
  __tp.tv_nsec = 0;
  if (v5 && [v5 isRoot] && (objc_msgSend(v5, "entryData"), v7 = objc_claimAutoreleasedReturnValue(), v7, !v7))
  {
    v16 = 0;
  }

  else
  {
    [entryData setArchiveBit];
    v8 = [attributesCopy isValid:64];
    if (v8)
    {
      v9 = [(FATItem *)FileItem dynamicCast:self];
      if (!v9)
      {
        v16 = fs_errorForPOSIXError();
LABEL_13:

        goto LABEL_43;
      }

      numberOfClusters = [(FATItem *)self numberOfClusters];
      volume = [(FATItem *)self volume];
      systemInfo = [volume systemInfo];
      v13 = [systemInfo bytesPerCluster] * numberOfClusters;

      if ([attributesCopy size] > v13 || (v14 = objc_msgSend(attributesCopy, "size"), v14 < objc_msgSend(entryData, "getSize")))
      {
        v15 = [v9 truncateTo:objc_msgSend(attributesCopy allowPartial:"size") mustBeContig:{0, 0}];
        if (v15)
        {
          v16 = v15;
          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
          {
            sub_100031C2C(attributesCopy);
          }

          goto LABEL_13;
        }
      }

      [entryData setSize:{objc_msgSend(attributesCopy, "size")}];
      [entryData setValidDataLength:{objc_msgSend(attributesCopy, "size")}];
      if ([v9 isPreAllocated])
      {
        getSize = [entryData getSize];
        volume2 = [(FATItem *)self volume];
        systemInfo2 = [volume2 systemInfo];
        v19 = getSize % [systemInfo2 bytesPerCluster];
        getSize2 = [entryData getSize];
        v39 = v19;
        if (v19)
        {
          volume3 = [(FATItem *)self volume];
          systemInfo3 = [volume3 systemInfo];
          bytesPerCluster = [systemInfo3 bytesPerCluster];
          getSize3 = [entryData getSize];
          volume4 = [(FATItem *)self volume];
          systemInfo4 = [volume4 systemInfo];
          bytesPerCluster2 = [systemInfo4 bytesPerCluster];
          getSize2 += bytesPerCluster + getSize3 / bytesPerCluster2 * bytesPerCluster2 - getSize3;
        }

        volume5 = [(FATItem *)self volume];
        systemInfo5 = [volume5 systemInfo];
        v26 = getSize2 / [systemInfo5 bytesPerCluster];
        numberOfClusters2 = [v9 numberOfClusters];

        if (v39)
        {
        }

        if (v26 == numberOfClusters2)
        {
          [v9 setPreAllocated:0];
        }
      }

      v17 = 64;
    }

    else
    {
      v17 = 0;
    }

    isDeleted = [(FATItem *)self isDeleted];
    if (!v5 || (isDeleted & 1) != 0 || ([v5 isRoot] & 1) != 0 || (objc_msgSend(attributesCopy, "isValid:", 1024) & 1) == 0 && (objc_msgSend(attributesCopy, "isValid:", 2048) & 1) == 0 && !objc_msgSend(attributesCopy, "isValid:", 0x2000) || (objc_msgSend(v5, "updateDotDirEntryTimes:", attributesCopy), (v16 = objc_claimAutoreleasedReturnValue()) == 0))
    {
      if ([attributesCopy isValid:1024])
      {
        __tp.tv_sec = [attributesCopy accessTime];
        __tp.tv_nsec = v29;
        [entryData setAccessTime:&__tp];
        v17 |= 0x400uLL;
        v8 = 1;
      }

      if ([attributesCopy isValid:2048])
      {
        __tp.tv_sec = [attributesCopy modifyTime];
        __tp.tv_nsec = v30;
        [entryData setModifyTime:&__tp];
        v17 |= 0x800uLL;
        v8 = 1;
      }

      if ([attributesCopy isValid:0x2000])
      {
        __tp.tv_sec = [attributesCopy birthTime];
        __tp.tv_nsec = v31;
        [entryData setBirthTime:&__tp];
        v17 |= 0x2000uLL;
        v8 = 1;
      }

      if ([attributesCopy isValid:32])
      {
        v16 = [entryData setBsdFlags:{objc_msgSend(attributesCopy, "flags")}];
        v8 = 1;
      }

      else
      {
        v16 = 0;
      }

      [attributesCopy setConsumedAttributes:v17];
      v32 = [(FATItem *)self shouldUpdateMTimeInSetAttr:attributesCopy];
      if (v8 && v32)
      {
        clock_gettime(_CLOCK_REALTIME, &__tp);
        [entryData setModifyTime:&__tp];
      }

      flushDirEntryData = [(FATItem *)self flushDirEntryData];
    }
  }

LABEL_43:

  return v16;
}

- (id)flushDirEntryData
{
  v3 = [(FATItem *)DirItem dynamicCast:self];
  if ([(FATItem *)self isDeleted])
  {
    v4 = 0;
    goto LABEL_7;
  }

  parentDir = [(FATItem *)self parentDir];
  v6 = [(FATItem *)DirItem dynamicCast:parentDir];

  if (v6)
  {
    goto LABEL_6;
  }

  if ([v3 isRoot])
  {
    v6 = v3;
LABEL_6:
    entryData = [(FATItem *)self entryData];
    v4 = [v6 writeDirEntryDataToDisk:entryData];

    goto LABEL_7;
  }

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_100031CC0();
  }

  v4 = fs_errorForPOSIXError();
LABEL_7:

  return v4;
}

- (id)reclaim:(BOOL)reclaim
{
  v7 = [(FATItem *)SymLinkItem dynamicCast:self];
  if ([(FATItem *)self isDeleted])
  {
    if (self->_numberOfClusters)
    {
      if (v7)
      {
        [v7 purgeMetaBlocksFromCache:&stru_100051020];
      }

      volume = [(FATItem *)self volume];
      fatManager = [volume fatManager];
      [fatManager setDirtyBitValue:1 forceWriteToDisk:0 replyHandler:&stru_100051040];

      volume2 = [(FATItem *)self volume];
      fatManager2 = [volume2 fatManager];
      [fatManager2 freeClusters:-[FATItem numberOfClusters](self ofItem:"numberOfClusters") replyHandler:{self, &stru_100051060}];
    }

    if ([(FATItem *)self includedInVolumeOUFiles])
    {
      volume3 = [(FATItem *)self volume];
      getNumberOfOpenUnlinkedFiles = [volume3 getNumberOfOpenUnlinkedFiles];

      if (getNumberOfOpenUnlinkedFiles)
      {
        volume4 = [(FATItem *)self volume];
        [volume4 decNumberOfOpenUnlinkedFiles];
      }

      else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        sub_100031D44();
      }

      [(FATItem *)self setIncludedInVolumeOUFiles:0];
    }
  }

  v15 = [(FATItem *)FileItem dynamicCast:self];
  v16 = v15;
  if (v15 && [v15 isPreAllocated])
  {
    reclaimCopy = reclaim;
    v45 = v7;
    entryData = [v16 entryData];
    getSize = [entryData getSize];
    volume5 = [(FATItem *)self volume];
    systemInfo = [volume5 systemInfo];
    v19 = getSize % [systemInfo bytesPerCluster];
    entryData2 = [v16 entryData];
    getSize2 = [entryData2 getSize];
    if (v19)
    {
      volume6 = [(FATItem *)self volume];
      systemInfo2 = [volume6 systemInfo];
      bytesPerCluster = [systemInfo2 bytesPerCluster];
      entryData3 = [v16 entryData];
      getSize3 = [entryData3 getSize];
      volume7 = [(FATItem *)self volume];
      systemInfo3 = [volume7 systemInfo];
      bytesPerCluster2 = [systemInfo3 bytesPerCluster];
      getSize2 += bytesPerCluster + getSize3 / bytesPerCluster2 * bytesPerCluster2 - getSize3;
    }

    volume8 = [(FATItem *)self volume];
    systemInfo4 = [volume8 systemInfo];
    v27 = getSize2 / [systemInfo4 bytesPerCluster];

    if (v19)
    {
    }

    numberOfClusters = [v16 numberOfClusters];
    v7 = v45;
    reclaim = reclaimCopy;
    if (v27 < numberOfClusters)
    {
      v29 = numberOfClusters;
      volume9 = [(FATItem *)self volume];
      fatManager3 = [volume9 fatManager];
      [fatManager3 setDirtyBitValue:1 forceWriteToDisk:0 replyHandler:&stru_100051080];

      volume10 = [(FATItem *)self volume];
      fatManager4 = [volume10 fatManager];
      [fatManager4 freeClusters:v29 - v27 ofItem:v16 replyHandler:&stru_1000510A0];

      [v16 setPreAllocated:0];
    }
  }

  if (!reclaim)
  {
    v34 = [(FATItem *)DirItem dynamicCast:self];
    if (v34)
    {
      v35 = v34;
      volume11 = [(FATItem *)self volume];
      nameCachePool = [volume11 nameCachePool];
      [nameCachePool removeNameCacheForDir:v35];
    }
  }

  return 0;
}

- (void)purgeMetaBlocksFromCache:(id)cache
{
  cacheCopy = cache;
  v5 = [(FATItem *)FileItem dynamicCast:self];

  if (v5 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_100031FE8();
  }

  v6 = fs_errorForPOSIXError();
  cacheCopy[2](cacheCopy, v6);
}

@end