@interface FATItem
+ (id)dynamicCast:(id)a3;
- (BOOL)shouldUpdateMTimeInSetAttr:(id)a3;
- (id)flushDirEntryData;
- (id)getAttributes:(id)a3;
- (id)initInVolume:(id)a3 inDir:(id)a4 startingAt:(unsigned int)a5 withData:(id)a6 andName:(id)a7 isRoot:(BOOL)a8;
- (id)reclaim:(BOOL)a3;
- (id)setAttributes:(id)a3;
- (unint64_t)getFileID;
- (void)purgeMetaBlocksFromCache:(id)a3;
- (void)setDeleted;
@end

@implementation FATItem

+ (id)dynamicCast:(id)a3
{
  v3 = a3;
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  return v4;
}

- (id)initInVolume:(id)a3 inDir:(id)a4 startingAt:(unsigned int)a5 withData:(id)a6 andName:(id)a7 isRoot:(BOOL)a8
{
  v14 = a3;
  v24 = a4;
  v23 = a6;
  v15 = a7;
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
    objc_storeStrong(&v16->_volume, a3);
    v17->_firstCluster = a5;
    objc_storeStrong(&v17->_entryData, a6);
    objc_storeStrong(&v17->_name, a7);
    objc_storeStrong(&v17->_parentDir, a4);
    v17->_isDeleted = 0;
    v17->_includedInVolumeOUFiles = 0;
    if (v17->_firstCluster)
    {
      v18 = [(FATVolume *)v17->_volume fatManager:v23];
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
  v3 = [(FATItem *)self volume];
  v4 = [(FATItem *)self entryData];
  v5 = [v3 getFileID:v4];

  return v5;
}

- (void)setDeleted
{
  if (![(FATItem *)self isDeleted])
  {
    v3 = [(FATItem *)self volume];
    [v3 incNumberOfOpenUnlinkedFiles];

    [(FATItem *)self setIsDeleted:1];

    [(FATItem *)self setIncludedInVolumeOUFiles:1];
  }
}

- (id)getAttributes:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(FSItemAttributes);
  v34 = 0;
  v35 = 0;
  if ([v4 isAttributeWanted:1])
  {
    v6 = [(FATItem *)self entryData];
    if (v6)
    {
      v7 = [(FATItem *)self entryData];
      [v5 setType:{objc_msgSend(v7, "type")}];
    }

    else
    {
      [v5 setType:0];
    }
  }

  if ([v4 isAttributeWanted:2])
  {
    [v5 setMode:448];
  }

  if ([v4 isAttributeWanted:4])
  {
    [v5 setLinkCount:1];
  }

  v8 = [(FATItem *)self numberOfClusters];
  v9 = [(FATItem *)self volume];
  v10 = [v9 systemInfo];
  v11 = [v10 bytesPerCluster] * v8;

  if ([v4 isAttributeWanted:128])
  {
    [v5 setAllocSize:v11];
  }

  v12 = [(FATItem *)self entryData];
  if (v12)
  {
    v13 = v12;
    v14 = [v4 isAttributeWanted:64];

    if (v14)
    {
      v15 = [(FATItem *)self entryData];
      v16 = [v15 type];

      if (v16 == 2)
      {
        [v5 setSize:v11];
      }

      else
      {
        v17 = [(FATItem *)self entryData];
        v18 = [v17 type];

        if (v18 == 1)
        {
          v19 = [(FATItem *)self entryData];
          [v5 setSize:{objc_msgSend(v19, "getValidDataLength")}];
        }
      }
    }
  }

  if ([v4 isAttributeWanted:256])
  {
    [v5 setFileID:{-[FATItem getFileID](self, "getFileID")}];
  }

  if ([v4 isAttributeWanted:512])
  {
    v20 = [(FATItem *)self parentDir];

    if (v20)
    {
      v21 = [(FATItem *)self parentDir];
      [v5 setParentID:{objc_msgSend(v21, "getFileID")}];
    }

    else
    {
      v32 = [(FATItem *)DirItem dynamicCast:self];
      v21 = v32;
      if (v32)
      {
        if ([v32 isRoot])
        {
          v33 = [(FATItem *)self volume];
          [v5 setParentID:{objc_msgSend(v33, "getNextAvailableFileID")}];
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

  if ([v4 isAttributeWanted:32])
  {
    v22 = [(FATItem *)self entryData];
    [v5 setFlags:{objc_msgSend(v22, "bsdFlags")}];
  }

  if ([v4 isAttributeWanted:1024])
  {
    v23 = [(FATItem *)self entryData];

    if (v23)
    {
      v24 = [(FATItem *)self entryData];
      [v24 getAccessTime:&v34];

      [v5 setAccessTime:{v34, v35}];
    }
  }

  if ([v4 isAttributeWanted:2048])
  {
    v25 = [(FATItem *)self entryData];

    if (v25)
    {
      v26 = [(FATItem *)self entryData];
      [v26 getModifyTime:&v34];

      [v5 setModifyTime:{v34, v35}];
    }
  }

  if ([v4 isAttributeWanted:4096])
  {
    v27 = [(FATItem *)self entryData];

    if (v27)
    {
      v28 = [(FATItem *)self entryData];
      [v28 getChangeTime:&v34];

      [v5 setChangeTime:{v34, v35}];
    }
  }

  if ([v4 isAttributeWanted:0x2000])
  {
    v29 = [(FATItem *)self entryData];

    if (v29)
    {
      v30 = [(FATItem *)self entryData];
      [v30 getBirthTime:&v34];

      [v5 setBirthTime:{v34, v35}];
    }
  }

  return v5;
}

- (BOOL)shouldUpdateMTimeInSetAttr:(id)a3
{
  v3 = a3;
  if ([v3 isValid:64])
  {
    v4 = [v3 isValid:2048] ^ 1;
  }

  else
  {
    LOBYTE(v4) = 0;
  }

  return v4;
}

- (id)setAttributes:(id)a3
{
  v4 = a3;
  v5 = [(FATItem *)DirItem dynamicCast:self];
  v6 = [(FATItem *)self entryData];
  __tp.tv_sec = 0;
  __tp.tv_nsec = 0;
  if (v5 && [v5 isRoot] && (objc_msgSend(v5, "entryData"), v7 = objc_claimAutoreleasedReturnValue(), v7, !v7))
  {
    v16 = 0;
  }

  else
  {
    [v6 setArchiveBit];
    v8 = [v4 isValid:64];
    if (v8)
    {
      v9 = [(FATItem *)FileItem dynamicCast:self];
      if (!v9)
      {
        v16 = fs_errorForPOSIXError();
LABEL_13:

        goto LABEL_43;
      }

      v10 = [(FATItem *)self numberOfClusters];
      v11 = [(FATItem *)self volume];
      v12 = [v11 systemInfo];
      v13 = [v12 bytesPerCluster] * v10;

      if ([v4 size] > v13 || (v14 = objc_msgSend(v4, "size"), v14 < objc_msgSend(v6, "getSize")))
      {
        v15 = [v9 truncateTo:objc_msgSend(v4 allowPartial:"size") mustBeContig:{0, 0}];
        if (v15)
        {
          v16 = v15;
          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
          {
            sub_100031C2C(v4);
          }

          goto LABEL_13;
        }
      }

      [v6 setSize:{objc_msgSend(v4, "size")}];
      [v6 setValidDataLength:{objc_msgSend(v4, "size")}];
      if ([v9 isPreAllocated])
      {
        v18 = [v6 getSize];
        v41 = [(FATItem *)self volume];
        v40 = [v41 systemInfo];
        v19 = v18 % [v40 bytesPerCluster];
        v20 = [v6 getSize];
        v39 = v19;
        if (v19)
        {
          v38 = [(FATItem *)self volume];
          v37 = [v38 systemInfo];
          v21 = [v37 bytesPerCluster];
          v22 = [v6 getSize];
          v36 = [(FATItem *)self volume];
          v35 = [v36 systemInfo];
          v23 = [v35 bytesPerCluster];
          v20 += v21 + v22 / v23 * v23 - v22;
        }

        v24 = [(FATItem *)self volume];
        v25 = [v24 systemInfo];
        v26 = v20 / [v25 bytesPerCluster];
        v27 = [v9 numberOfClusters];

        if (v39)
        {
        }

        if (v26 == v27)
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

    v28 = [(FATItem *)self isDeleted];
    if (!v5 || (v28 & 1) != 0 || ([v5 isRoot] & 1) != 0 || (objc_msgSend(v4, "isValid:", 1024) & 1) == 0 && (objc_msgSend(v4, "isValid:", 2048) & 1) == 0 && !objc_msgSend(v4, "isValid:", 0x2000) || (objc_msgSend(v5, "updateDotDirEntryTimes:", v4), (v16 = objc_claimAutoreleasedReturnValue()) == 0))
    {
      if ([v4 isValid:1024])
      {
        __tp.tv_sec = [v4 accessTime];
        __tp.tv_nsec = v29;
        [v6 setAccessTime:&__tp];
        v17 |= 0x400uLL;
        v8 = 1;
      }

      if ([v4 isValid:2048])
      {
        __tp.tv_sec = [v4 modifyTime];
        __tp.tv_nsec = v30;
        [v6 setModifyTime:&__tp];
        v17 |= 0x800uLL;
        v8 = 1;
      }

      if ([v4 isValid:0x2000])
      {
        __tp.tv_sec = [v4 birthTime];
        __tp.tv_nsec = v31;
        [v6 setBirthTime:&__tp];
        v17 |= 0x2000uLL;
        v8 = 1;
      }

      if ([v4 isValid:32])
      {
        v16 = [v6 setBsdFlags:{objc_msgSend(v4, "flags")}];
        v8 = 1;
      }

      else
      {
        v16 = 0;
      }

      [v4 setConsumedAttributes:v17];
      v32 = [(FATItem *)self shouldUpdateMTimeInSetAttr:v4];
      if (v8 && v32)
      {
        clock_gettime(_CLOCK_REALTIME, &__tp);
        [v6 setModifyTime:&__tp];
      }

      v33 = [(FATItem *)self flushDirEntryData];
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

  v5 = [(FATItem *)self parentDir];
  v6 = [(FATItem *)DirItem dynamicCast:v5];

  if (v6)
  {
    goto LABEL_6;
  }

  if ([v3 isRoot])
  {
    v6 = v3;
LABEL_6:
    v7 = [(FATItem *)self entryData];
    v4 = [v6 writeDirEntryDataToDisk:v7];

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

- (id)reclaim:(BOOL)a3
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

      v8 = [(FATItem *)self volume];
      v9 = [v8 fatManager];
      [v9 setDirtyBitValue:1 forceWriteToDisk:0 replyHandler:&stru_100051040];

      v10 = [(FATItem *)self volume];
      v11 = [v10 fatManager];
      [v11 freeClusters:-[FATItem numberOfClusters](self ofItem:"numberOfClusters") replyHandler:{self, &stru_100051060}];
    }

    if ([(FATItem *)self includedInVolumeOUFiles])
    {
      v12 = [(FATItem *)self volume];
      v13 = [v12 getNumberOfOpenUnlinkedFiles];

      if (v13)
      {
        v14 = [(FATItem *)self volume];
        [v14 decNumberOfOpenUnlinkedFiles];
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
    v44 = a3;
    v45 = v7;
    v43 = [v16 entryData];
    v17 = [v43 getSize];
    v42 = [(FATItem *)self volume];
    v18 = [v42 systemInfo];
    v19 = v17 % [v18 bytesPerCluster];
    v20 = [v16 entryData];
    v21 = [v20 getSize];
    if (v19)
    {
      v41 = [(FATItem *)self volume];
      v40 = [v41 systemInfo];
      v22 = [v40 bytesPerCluster];
      v39 = [v16 entryData];
      v23 = [v39 getSize];
      v4 = [(FATItem *)self volume];
      v3 = [v4 systemInfo];
      v24 = [v3 bytesPerCluster];
      v21 += v22 + v23 / v24 * v24 - v23;
    }

    v25 = [(FATItem *)self volume];
    v26 = [v25 systemInfo];
    v27 = v21 / [v26 bytesPerCluster];

    if (v19)
    {
    }

    v28 = [v16 numberOfClusters];
    v7 = v45;
    a3 = v44;
    if (v27 < v28)
    {
      v29 = v28;
      v30 = [(FATItem *)self volume];
      v31 = [v30 fatManager];
      [v31 setDirtyBitValue:1 forceWriteToDisk:0 replyHandler:&stru_100051080];

      v32 = [(FATItem *)self volume];
      v33 = [v32 fatManager];
      [v33 freeClusters:v29 - v27 ofItem:v16 replyHandler:&stru_1000510A0];

      [v16 setPreAllocated:0];
    }
  }

  if (!a3)
  {
    v34 = [(FATItem *)DirItem dynamicCast:self];
    if (v34)
    {
      v35 = v34;
      v36 = [(FATItem *)self volume];
      v37 = [v36 nameCachePool];
      [v37 removeNameCacheForDir:v35];
    }
  }

  return 0;
}

- (void)purgeMetaBlocksFromCache:(id)a3
{
  v4 = a3;
  v5 = [(FATItem *)FileItem dynamicCast:self];

  if (v5 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_100031FE8();
  }

  v6 = fs_errorForPOSIXError();
  v4[2](v4, v6);
}

@end