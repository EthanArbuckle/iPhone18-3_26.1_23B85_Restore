@interface MsdosDirItem
- (id)createDotEntriesWithAttrs:(id)a3;
- (id)generateUniqueShortName:(char *)a3 offsetInDir:(unint64_t)a4;
- (id)getAttributes:(id)a3;
- (id)markDirEntriesAsDeleted:(id)a3;
- (id)updateDotDirEntryTimes:(id)a3;
- (id)updateModificationTimeOnCreateRemove;
- (id)verifyCookieOffset:(unsigned int)a3;
- (id)writeDirEntryDataToDisk:(id)a3;
- (unint64_t)getDirBlockSize;
- (unint64_t)getDirSize;
- (unint64_t)getFileID;
- (unsigned)getGenerationNumberOfName:(unistr255 *)a3;
- (void)isShortNameUniqueInDir:(char *)a3 replyHandler:(id)a4;
- (void)iterateFromOffset:(unint64_t)a3 options:(unsigned int)a4 replyHandler:(id)a5;
@end

@implementation MsdosDirItem

- (unint64_t)getDirBlockSize
{
  v3 = [(DirItem *)self isFat1216RootDir];
  v4 = [(FATItem *)self volume];
  v5 = [v4 systemInfo];
  v6 = v5;
  if (v3)
  {
    v7 = [v5 rootDirSize];
    v8 = [(FATItem *)self volume];
    v9 = [v8 systemInfo];
    v10 = [v9 bytesPerSector] * v7;
  }

  else
  {
    v10 = [v5 dirBlockSize];
  }

  return v10;
}

- (unint64_t)getDirSize
{
  if ([(DirItem *)self isFat1216RootDir])
  {
    v3 = [(FATItem *)self volume];
    v4 = [v3 systemInfo];
    v5 = [v4 rootDirSize];
    v6 = [(FATItem *)self volume];
    v7 = [v6 systemInfo];
    v8 = [v7 bytesPerSector] * v5;
  }

  else
  {
    v9 = [(FATItem *)self numberOfClusters];
    v3 = [(FATItem *)self volume];
    v4 = [v3 systemInfo];
    v8 = [v4 bytesPerCluster] * v9;
  }

  return v8;
}

- (id)createDotEntriesWithAttrs:(id)a3
{
  v4 = a3;
  v19 = 0;
  v20[0] = &v19;
  v20[1] = 0x3032000000;
  v20[2] = sub_100023984;
  v20[3] = sub_100023994;
  v21 = 0;
  v5 = [[FSFileName alloc] initWithCString:"."];
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_10002399C;
  v18[3] = &unk_100051350;
  v18[4] = &v19;
  [(DirItem *)self createNewDirEntryNamed:v5 type:2 attributes:v4 firstDataCluster:[(FATItem *)self firstCluster] replyHandler:v18];

  if (*(v20[0] + 40))
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_100032B18(v20);
    }

    v6 = *(v20[0] + 40);
  }

  else
  {
    v7 = [(FATItem *)self volume];
    v8 = [v7 getAttrRequestForNewDirEntry];

    v9 = [(FATItem *)self parentDir];
    v10 = [v9 getAttributes:v8];

    v11 = [(FATItem *)self parentDir];
    v12 = [(FATItem *)DirItem dynamicCast:v11];
    if ([v12 isRoot])
    {
      v13 = 0;
    }

    else
    {
      v14 = [(FATItem *)self parentDir];
      v13 = [v14 firstCluster];
    }

    v15 = [[FSFileName alloc] initWithCString:".."];
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_1000239FC;
    v17[3] = &unk_100051350;
    v17[4] = &v19;
    [(DirItem *)self createNewDirEntryNamed:v15 type:2 attributes:v10 firstDataCluster:v13 replyHandler:v17];

    if (*(v20[0] + 40))
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        sub_100032B9C(v20);
      }

      v6 = *(v20[0] + 40);
    }

    else
    {
      v6 = 0;
    }
  }

  _Block_object_dispose(&v19, 8);

  return v6;
}

- (id)updateModificationTimeOnCreateRemove
{
  v3 = [(FATItem *)self volume];
  v4 = [v3 systemInfo];
  v5 = [v4 bytesPerSector];

  v6 = [[DirBlock alloc] initInDir:self];
  v19[0] = 0;
  v19[1] = 0;
  v18.tv_sec = 0;
  v18.tv_nsec = 0;
  CONV_GetCurrentTime(&v18);
  v7 = [v6 readRelativeDirBlockNum:0];
  if (v7)
  {
    v8 = v7;
    [v6 releaseBlock];
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_100032C20();
    }

    v9 = v8;
  }

  else
  {
    v10 = [MsdosDirEntryData alloc];
    v11 = +[NSData dataWithBytes:length:](NSData, "dataWithBytes:length:", [v6 getBytesAtOffset:0], 32);
    v12 = [(MsdosDirEntryData *)v10 initWithData:v11];

    if ([(DirItem *)self isRoot]&& (([(MsdosDirEntryData *)v12 getAttrFlags]& 0x3F) == 0xF || ([(MsdosDirEntryData *)v12 getAttrFlags]& 8) == 0))
    {
      goto LABEL_13;
    }

    [(MsdosDirEntryData *)v12 getModifyTime:v19];
    if (v19[0] == v18.tv_sec || (-[MsdosDirEntryData setModifyTime:](v12, "setModifyTime:", &v18), -[DirEntryData data](v12, "data"), v13 = objc_claimAutoreleasedReturnValue(), v14 = [v6 setBytes:v13 atOffset:0], v13, objc_msgSend(v6, "writeToDiskFromOffset:length:", 0, v5), (v15 = objc_claimAutoreleasedReturnValue()) == 0))
    {
LABEL_13:
      [v6 releaseBlock];
      v9 = 0;
    }

    else
    {
      v16 = v15;
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        sub_100032CA4();
      }

      [v6 releaseBlock];
      v9 = v16;
    }
  }

  return v9;
}

- (id)updateDotDirEntryTimes:(id)a3
{
  v4 = a3;
  v5 = [[DirBlock alloc] initInDir:self];
  v6 = [v5 readRelativeDirBlockNum:{0, 0, 0}];
  if (v6)
  {
    v7 = v6;
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_100032D28();
    }

    [v5 releaseBlock];
    v8 = v7;
  }

  else
  {
    v9 = [MsdosDirEntryData alloc];
    v10 = +[NSMutableData dataWithBytes:length:](NSMutableData, "dataWithBytes:length:", [v5 getBytesAtOffset:0], 32);
    v11 = [(MsdosDirEntryData *)v9 initWithData:v10];

    if ([v4 isValid:2048])
    {
      v19 = [v4 modifyTime];
      v20 = v12;
      [(MsdosDirEntryData *)v11 setModifyTime:&v19];
    }

    if ([v4 isValid:4096])
    {
      v19 = [v4 changeTime];
      v20 = v13;
      [(MsdosDirEntryData *)v11 setChangeTime:&v19];
    }

    if ([v4 isValid:0x2000])
    {
      v19 = [v4 birthTime];
      v20 = v14;
      [(MsdosDirEntryData *)v11 setBirthTime:&v19];
    }

    v15 = [(DirEntryData *)v11 data];
    v16 = [v5 setBytes:v15 atOffset:0];

    v17 = [v5 writeToDisk];
    [v5 releaseBlock];
    if (v17 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_100032DAC();
    }

    v8 = v17;
  }

  return v8;
}

- (void)iterateFromOffset:(unint64_t)a3 options:(unsigned int)a4 replyHandler:(id)a5
{
  v7 = a5;
  if ([(MsdosDirItem *)self getDirSize]<= a3)
  {
    v16 = fs_errorForPOSIXError();
    (*(v7 + 2))(v7, v16, 4, 0, 0, 0);
  }

  else
  {
    v8 = [[DirBlock alloc] initInDir:self];
    v9 = [(FATItem *)self volume];
    v10 = [v9 systemInfo];
    v11 = [v10 bytesPerCluster];

    v12 = [(MsdosDirItem *)self getDirBlockSize];
    v72[0] = 0;
    v72[1] = v72;
    v72[2] = 0x2020000000;
    v72[3] = 0;
    v71[0] = 0;
    v71[1] = v71;
    v71[2] = 0x2020000000;
    v71[3] = a3;
    v69[0] = 0;
    v69[1] = v69;
    v69[2] = 0x3032000000;
    v69[3] = sub_100023984;
    v69[4] = sub_100023994;
    v70 = objc_alloc_init(MsdosLongNameContext);
    v67[0] = 0;
    v67[1] = v67;
    v67[2] = 0x3032000000;
    v67[3] = sub_100023984;
    v67[4] = sub_100023994;
    v68 = objc_alloc_init(MsdosDirEntryData);
    v34[0] = 0;
    v34[1] = v34;
    v34[2] = 0x22010000000;
    v34[3] = &unk_10004CC8D;
    v35 = 0u;
    v36 = 0u;
    v37 = 0u;
    v38 = 0u;
    v39 = 0u;
    v40 = 0u;
    v41 = 0u;
    v42 = 0u;
    v43 = 0u;
    v44 = 0u;
    v45 = 0u;
    v46 = 0u;
    v47 = 0u;
    v48 = 0u;
    v49 = 0u;
    v50 = 0u;
    v51 = 0u;
    v52 = 0u;
    v53 = 0u;
    v54 = 0u;
    v55 = 0u;
    v56 = 0u;
    v57 = 0u;
    v58 = 0u;
    v59 = 0u;
    v60 = 0u;
    v61 = 0u;
    v62 = 0u;
    v63 = 0u;
    v64 = 0u;
    v65 = 0u;
    v66 = 0u;
    v32[0] = 0;
    v32[1] = v32;
    v32[2] = 0x2020000000;
    v33 = 0;
    v30[0] = 0;
    v30[1] = v30;
    v30[2] = 0x2020000000;
    v31 = [(DirItem *)self isFat1216RootDir];
    v13 = [(FATItem *)self volume];
    v14 = [v13 fatManager];
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_100024280;
    v17[3] = &unk_100051378;
    v20 = v30;
    v21 = v72;
    v19 = v7;
    v17[4] = self;
    v28 = v11;
    v29 = v12;
    v27 = a3 / v11;
    v22 = v71;
    v15 = v8;
    v18 = v15;
    v23 = v69;
    v24 = v32;
    v25 = v67;
    v26 = v34;
    [v14 iterateClusterChainOfItem:self replyHandler:v17];

    [v15 releaseBlock];
    _Block_object_dispose(v30, 8);
    _Block_object_dispose(v32, 8);
    _Block_object_dispose(v34, 8);
    _Block_object_dispose(v67, 8);

    _Block_object_dispose(v69, 8);
    _Block_object_dispose(v71, 8);
    _Block_object_dispose(v72, 8);
  }
}

- (id)generateUniqueShortName:(char *)a3 offsetInDir:(unint64_t)a4
{
  v6 = (a4 >> 5) % 0xF4240;
  v19 = 0;
  v20 = &v19;
  v21 = 0x2020000000;
  v22 = 0;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = sub_100023984;
  v17 = sub_100023994;
  v18 = 0;
  v7 = v6 + 1000000;
  while (1)
  {
    if (msdosfs_apply_generation_to_short_name(a3, v6 % 0xF4240))
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        sub_100032EB8();
      }

      goto LABEL_11;
    }

    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_100024C44;
    v12[3] = &unk_1000513A0;
    v12[4] = &v13;
    v12[5] = &v19;
    [(MsdosDirItem *)self isShortNameUniqueInDir:a3 replyHandler:v12];
    v8 = v14[5];
    if (v8)
    {
      goto LABEL_15;
    }

    if (v20[3])
    {
      break;
    }

    v6 = (v6 + 1);
    if (v6 >= v7)
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        sub_100032F3C();
      }

LABEL_11:
      v9 = fs_errorForPOSIXError();
      goto LABEL_16;
    }
  }

  if (v6 > [(MsdosDirItem *)self maxShortNameIndex])
  {
    [(MsdosDirItem *)self setMaxShortNameIndex:v6];
  }

  v8 = v14[5];
LABEL_15:
  v9 = v8;
LABEL_16:
  v10 = v9;
  _Block_object_dispose(&v13, 8);

  _Block_object_dispose(&v19, 8);

  return v10;
}

- (id)writeDirEntryDataToDisk:(id)a3
{
  v4 = [MsdosDirEntryData dynamicCast:a3];
  v5 = [[DirBlock alloc] initInDir:self];
  if (v5)
  {
    v6 = [v5 readDirBlockNum:{objc_msgSend(v4, "dosDirEntryDirBlockNum")}];
    if (v6)
    {
      v7 = v6;
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        sub_1000331D0(v4);
      }
    }

    else
    {
      v8 = [v5 getBytesAtOffset:{objc_msgSend(v4, "dosDirEntryOffsetInDirBlock")}];
      v9 = [v4 data];
      v10 = [v9 bytes];
      v11 = v10[1];
      *v8 = *v10;
      v8[1] = v11;

      v7 = [v5 writeToDisk];
    }

    [v5 releaseBlock];
  }

  else
  {
    v7 = fs_errorForPOSIXError();
  }

  return v7;
}

- (id)markDirEntriesAsDeleted:(id)a3
{
  v4 = a3;
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = sub_100023984;
  v15 = sub_100023994;
  v16 = 0;
  v5 = [v4 entryData];
  v6 = [v5 firstEntryOffsetInDir];
  v7 = [v4 entryData];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1000255B8;
  v10[3] = &unk_1000513F0;
  v10[4] = &v11;
  -[DirItem iterateDirEntriesAtOffset:numEntries:shouldWriteToDisk:replyHandler:](self, "iterateDirEntriesAtOffset:numEntries:shouldWriteToDisk:replyHandler:", v6, [v7 numberOfDirEntries], 1, v10);

  v8 = v12[5];
  _Block_object_dispose(&v11, 8);

  return v8;
}

- (id)verifyCookieOffset:(unsigned int)a3
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = sub_100023984;
  v11 = sub_100023994;
  v12 = 0;
  if (a3)
  {
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_100025758;
    v5[3] = &unk_100051418;
    v5[4] = &v7;
    v6 = a3;
    [(DirItem *)self iterateDirEntriesAtOffset:a3 numEntries:1 shouldWriteToDisk:0 replyHandler:v5];
    v3 = v8[5];
  }

  else
  {
    v3 = 0;
  }

  _Block_object_dispose(&v7, 8);

  return v3;
}

- (id)getAttributes:(id)a3
{
  v4 = a3;
  v19.receiver = self;
  v19.super_class = MsdosDirItem;
  v5 = [(FATItem *)&v19 getAttributes:v4];
  if ([v4 isAttributeWanted:1])
  {
    [v5 setType:2];
  }

  if ([(DirItem *)self isRoot])
  {
    [v5 setSupportsLimitedXAttrs:1];
  }

  if ([(DirItem *)self isFat1216RootDir])
  {
    if ([v4 isAttributeWanted:128])
    {
      v6 = [(FATItem *)self volume];
      v7 = [v6 systemInfo];
      [v5 setAllocSize:{objc_msgSend(v7, "rootDirBytes")}];
    }

    if ([v4 isAttributeWanted:512])
    {
      [v5 setParentID:{-[MsdosDirItem getFileID](self, "getFileID")}];
    }

    if ([v4 isAttributeWanted:64])
    {
      v8 = [(FATItem *)self volume];
      v9 = [v8 systemInfo];
      [v5 setSize:{objc_msgSend(v9, "rootDirBytes")}];
    }

    if (([v4 isAttributeWanted:1024] & 1) != 0 || (objc_msgSend(v4, "isAttributeWanted:", 2048) & 1) != 0 || (objc_msgSend(v4, "isAttributeWanted:", 4096) & 1) != 0 || objc_msgSend(v4, "isAttributeWanted:", 0x2000))
    {
      v10 = [(FATItem *)self entryData];

      if (!v10)
      {
        v17 = 0;
        v18 = 0;
        msdosfs_dos2unixtime(33, 0, 0, &v17);
        if ([v4 isAttributeWanted:1024])
        {
          [v5 setAccessTime:{v17, v18}];
        }

        if ([v4 isAttributeWanted:2048])
        {
          [v5 setModifyTime:{v17, v18}];
        }

        if ([v4 isAttributeWanted:4096])
        {
          [v5 setChangeTime:{v17, v18}];
        }

        if ([v4 isAttributeWanted:0x2000])
        {
          [v5 setBirthTime:{v17, v18}];
        }
      }
    }
  }

  else if (![(FATItem *)self isDeleted])
  {
    v11 = [[DirBlock alloc] initInDir:self];
    v12 = [v11 readRelativeDirBlockNum:0];
    v13 = [MsdosDirEntryData alloc];
    v14 = +[NSData dataWithBytes:length:](NSData, "dataWithBytes:length:", [v11 getBytesAtOffset:0], 32);
    v15 = [(MsdosDirEntryData *)v13 initWithData:v14];

    v17 = 0;
    v18 = 0;
    if ([v4 isAttributeWanted:1024])
    {
      [(MsdosDirEntryData *)v15 getAccessTime:&v17];
      [v5 setAccessTime:{v17, v18}];
    }

    if ([v4 isAttributeWanted:2048])
    {
      [(MsdosDirEntryData *)v15 getModifyTime:&v17];
      [v5 setModifyTime:{v17, v18}];
    }

    if ([v4 isAttributeWanted:4096])
    {
      [(MsdosDirEntryData *)v15 getChangeTime:&v17];
      [v5 setChangeTime:{v17, v18}];
    }

    if ([v4 isAttributeWanted:0x2000])
    {
      [(MsdosDirEntryData *)v15 getBirthTime:&v17];
      [v5 setBirthTime:{v17, v18}];
    }

    [v11 releaseBlock];
  }

  return v5;
}

- (unint64_t)getFileID
{
  if ([(DirItem *)self isRoot])
  {
    if ([(DirItem *)self isFat1216RootDir])
    {
      return 1;
    }

    else
    {
      return [(FATItem *)self firstCluster];
    }
  }

  else
  {
    v4.receiver = self;
    v4.super_class = MsdosDirItem;
    return [(FATItem *)&v4 getFileID];
  }
}

- (unsigned)getGenerationNumberOfName:(unistr255 *)a3
{
  var0 = a3->var0;
  if (!a3->var0)
  {
    return 0;
  }

  do
  {
    v4 = var0 - 1;
    if (var0 < 2)
    {
      break;
    }

    v5 = *(&a3->var0 + var0--);
  }

  while (v5 != 126);
  if (v4)
  {
    return strtol(a3->var1 + v4, 0, 10);
  }

  else
  {
    return 0;
  }
}

- (void)isShortNameUniqueInDir:(char *)a3 replyHandler:(id)a4
{
  v24 = 0;
  v25[0] = &v24;
  v25[1] = 0x3032000000;
  v25[2] = sub_100023984;
  v25[3] = sub_100023994;
  v26 = 0;
  v20 = 0;
  v21 = &v20;
  v22 = 0x2020000000;
  v23 = 0;
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 0;
  v6 = _NSConcreteStackBlock;
  v7 = 3221225472;
  v8 = sub_100025EB0;
  v9 = &unk_100051440;
  v12 = &v24;
  v13 = &v16;
  v10 = self;
  v14 = &v20;
  v15 = a3;
  v5 = a4;
  v11 = v5;
  [(MsdosDirItem *)v10 iterateFromOffset:0 options:0 replyHandler:&v6];
  if (![(MsdosDirItem *)self maxShortNameIndex:v6])
  {
    [(MsdosDirItem *)self setMaxShortNameIndex:*(v17 + 6)];
  }

  if (*(v25[0] + 40))
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_100033410(v25);
    }

    (*(v5 + 2))(v5, *(v25[0] + 40), 0);
  }

  (*(v5 + 2))(v5, 0, (v21[3] & 1) == 0);

  _Block_object_dispose(&v16, 8);
  _Block_object_dispose(&v20, 8);
  _Block_object_dispose(&v24, 8);
}

@end