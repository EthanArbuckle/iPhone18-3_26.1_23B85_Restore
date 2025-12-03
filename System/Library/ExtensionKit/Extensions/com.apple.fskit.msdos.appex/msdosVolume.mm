@interface msdosVolume
- (BOOL)isOffsetInMetadataZone:(unint64_t)zone;
- (id)createRootDirItem;
- (id)supportedXattrNamesForItem:(id)item;
- (id)sync;
- (id)updateLabelInBootSector:(char)sector[11] toName:(char)name[11];
- (id)verifyFileSize:(unint64_t)size;
- (int)ScanBootSector;
- (msdosVolume)initWithResource:(id)resource volumeID:(id)d volumeName:(id)name;
- (void)FatMount:(id)mount replyHandler:(id)handler;
- (void)calcNumOfDirEntriesForName:(unistr255 *)name replyHandler:(id)handler;
- (void)getXattrNamed:(id)named ofItem:(id)item replyHandler:(id)handler;
- (void)listXattrsOfItem:(id)item replyHandler:(id)handler;
- (void)nameToUnistr:(id)unistr flags:(unsigned int)flags replyHandler:(id)handler;
- (void)setVolumeLabel:(id)label rootDir:(id)dir replyHandler:(id)handler;
- (void)setXattrNamed:(id)named toData:(id)data onItem:(id)item policy:(unint64_t)policy replyHandler:(id)handler;
@end

@implementation msdosVolume

- (msdosVolume)initWithResource:(id)resource volumeID:(id)d volumeName:(id)name
{
  v8.receiver = self;
  v8.super_class = msdosVolume;
  v5 = [(FATVolume *)&v8 initWithResource:resource volumeID:d volumeName:name];
  if (v5 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "Hello MSDOS volume", v7, 2u);
  }

  return v5;
}

- (int)ScanBootSector
{
  resource = [(FATVolume *)self resource];
  blockSize = [resource blockSize];

  v5 = [[NSMutableData alloc] initWithLength:blockSize];
  resource2 = [(FATVolume *)self resource];
  v7 = +[Utilities syncMetaReadFromDevice:into:startingAt:length:](Utilities, "syncMetaReadFromDevice:into:startingAt:length:", resource2, [v5 mutableBytes], 0, blockSize);

  if (!v7)
  {
    bytes = [v5 bytes];
    v10 = bytes;
    if ((*bytes | 2) != 0xEB)
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        sub_100034BA8(v10);
      }

      goto LABEL_26;
    }

    if ((bytes[510] != 85 || bytes[511] != 170) && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_100033E00(v10 + 510);
    }

    v11 = *(v10 + 11);
    systemInfo = [(FATVolume *)self systemInfo];
    [systemInfo setBytesPerSector:v11];

    systemInfo2 = [(FATVolume *)self systemInfo];
    v146 = v10;
    v14 = [systemInfo2 bytesPerSector] * v10[13];
    systemInfo3 = [(FATVolume *)self systemInfo];
    [systemInfo3 setBytesPerCluster:v14];

    systemInfo4 = [(FATVolume *)self systemInfo];
    bytesPerSector = [systemInfo4 bytesPerSector];
    systemInfo5 = [(FATVolume *)self systemInfo];
    [systemInfo5 setDirBlockSize:bytesPerSector];

    v19 = v10 + 13;
    v20 = *(v10 + 7);
    v21 = *(v19 + 2);
    systemInfo6 = [(FATVolume *)self systemInfo];
    LODWORD(bytesPerSector) = [systemInfo6 bytesPerSector];

    if (bytesPerSector != blockSize)
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        sub_100033E9C(self);
      }

      goto LABEL_26;
    }

    if ((*v19 ^ (*v19 - 1)) <= (*v19 - 1))
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        sub_100033F54(v19);
      }

      goto LABEL_26;
    }

    v23 = *(v146 + 19);
    if (!*(v146 + 19))
    {
      v23 = *(v146 + 8);
      if (!v23)
      {
        if (v146[66] == 66 && *(v146 + 82) && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          sub_100034AA0();
        }

        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          sub_100034B24();
        }

        goto LABEL_26;
      }
    }

    v24 = *(v146 + 11);
    if (!*(v146 + 11))
    {
      v24 = *(v146 + 9);
      if (!v24)
      {
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          sub_100034A1C();
        }

        goto LABEL_26;
      }
    }

    v145 = v24;
    v143 = v19;
    v25 = v20 + v24 * v146[16];
    [(FATVolume *)self systemInfo];
    v26 = v144 = v23;
    [v26 setRootSector:v25];

    v142 = v21;
    systemInfo7 = [(FATVolume *)self systemInfo];
    [systemInfo7 setRootDirSize:(blockSize + 32 * v21 - 1) / blockSize];

    systemInfo8 = [(FATVolume *)self systemInfo];
    LODWORD(systemInfo7) = [systemInfo8 rootSector];
    systemInfo9 = [(FATVolume *)self systemInfo];
    rootDirSize = [systemInfo9 rootDirSize];
    systemInfo10 = [(FATVolume *)self systemInfo];
    [systemInfo10 setFirstClusterOffset:rootDirSize + systemInfo7];

    systemInfo11 = [(FATVolume *)self systemInfo];
    LODWORD(systemInfo9) = [systemInfo11 rootSector];
    systemInfo12 = [(FATVolume *)self systemInfo];
    v34 = [systemInfo12 bytesPerSector] * systemInfo9;
    systemInfo13 = [(FATVolume *)self systemInfo];
    [systemInfo13 setMetaDataZoneSize:v34];

    systemInfo14 = [(FATVolume *)self systemInfo];
    bytesPerCluster = [systemInfo14 bytesPerCluster];
    systemInfo15 = [(FATVolume *)self systemInfo];
    v39 = 2 * (bytesPerCluster / [systemInfo15 dirBlockSize]);
    systemInfo16 = [(FATVolume *)self systemInfo];
    [systemInfo16 setFirstDirBlockNum:v39];

    if (v145 > v144)
    {
      goto LABEL_24;
    }

    systemInfo17 = [(FATVolume *)self systemInfo];
    if ([systemInfo17 rootSector] < v145)
    {

      goto LABEL_24;
    }

    systemInfo18 = [(FATVolume *)self systemInfo];
    v43 = [systemInfo18 firstClusterOffset] + *v143;

    if (v43 > v144)
    {
LABEL_24:
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        sub_100034998();
      }

LABEL_26:
      code = 22;
      goto LABEL_27;
    }

    systemInfo19 = [(FATVolume *)self systemInfo];
    v46 = (v144 - [systemInfo19 firstClusterOffset]) / *v143 + 1;
    systemInfo20 = [(FATVolume *)self systemInfo];
    [systemInfo20 setMaxValidCluster:v46];

    v48 = v145 * blockSize;
    systemInfo21 = [(FATVolume *)self systemInfo];
    [systemInfo21 setFsInfoSectorNumber:0];

    systemInfo22 = [(FATVolume *)self systemInfo];
    maxValidCluster = [systemInfo22 maxValidCluster];

    systemInfo23 = [(FATVolume *)self systemInfo];
    v53 = systemInfo23;
    if (maxValidCluster > 0xFF5)
    {
      maxValidCluster2 = [systemInfo23 maxValidCluster];

      systemInfo24 = [(FATVolume *)self systemInfo];
      v62 = systemInfo24;
      v59 = v142;
      if (maxValidCluster2 > 0xFFF5)
      {
        maxValidCluster3 = [systemInfo24 maxValidCluster];

        if (maxValidCluster3 > 0xFFFFFF5)
        {
          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
          {
            sub_100033FD8(self);
          }

          goto LABEL_26;
        }

        systemInfo25 = [(FATVolume *)self systemInfo];
        [systemInfo25 setFATMask:0xFFFFFFFLL];

        systemInfo26 = [(FATVolume *)self systemInfo];
        [systemInfo26 setType:2];

        systemInfo27 = [(FATVolume *)self systemInfo];
        [systemInfo27 setFsSubTypeName:@"fat32"];

        v71 = [NSNumber numberWithInt:2];
        systemInfo28 = [(FATVolume *)self systemInfo];
        [systemInfo28 setFsSubTypeNum:v71];

        v58 = v48 >> 2;
        v73 = *(v146 + 11);
        systemInfo29 = [(FATVolume *)self systemInfo];
        [systemInfo29 setRootFirstCluster:v73];

        v75 = *(v146 + 24);
        v59 = v142;
        systemInfo30 = [(FATVolume *)self systemInfo];
        [systemInfo30 setFsInfoSectorNumber:v75];
      }

      else
      {
        [systemInfo24 setFATMask:0xFFFFLL];

        systemInfo31 = [(FATVolume *)self systemInfo];
        [systemInfo31 setType:1];

        systemInfo32 = [(FATVolume *)self systemInfo];
        [systemInfo32 setFsSubTypeName:@"fat16"];

        v65 = [NSNumber numberWithInt:1];
        systemInfo33 = [(FATVolume *)self systemInfo];
        [systemInfo33 setFsSubTypeNum:v65];

        v58 = v48 >> 1;
      }
    }

    else
    {
      [systemInfo23 setFATMask:4095];

      systemInfo34 = [(FATVolume *)self systemInfo];
      [systemInfo34 setType:0];

      systemInfo35 = [(FATVolume *)self systemInfo];
      [systemInfo35 setFsSubTypeName:@"fat12"];

      v56 = [NSNumber numberWithInt:0];
      systemInfo36 = [(FATVolume *)self systemInfo];
      [systemInfo36 setFsSubTypeNum:v56];

      v58 = 2 * v48 / 3u;
      v59 = v142;
    }

    systemInfo37 = [(FATVolume *)self systemInfo];
    maxValidCluster4 = [systemInfo37 maxValidCluster];

    if (maxValidCluster4 >= v58)
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
      {
        sub_100034088(self);
      }

      systemInfo38 = [(FATVolume *)self systemInfo];
      [systemInfo38 setMaxValidCluster:v58 - 1];
    }

    resource3 = [(FATVolume *)self resource];
    blockCount = [resource3 blockCount];

    if (blockCount < v144)
    {
      systemInfo39 = [(FATVolume *)self systemInfo];
      v83 = [systemInfo39 firstClusterOffset] + *v143;
      resource4 = [(FATVolume *)self resource];
      blockCount2 = [resource4 blockCount];

      if (blockCount2 < v83)
      {
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          sub_1000348F4(self);
        }

        goto LABEL_26;
      }

      resource5 = [(FATVolume *)self resource];
      blockCount3 = [resource5 blockCount];
      systemInfo40 = [(FATVolume *)self systemInfo];
      v89 = ((blockCount3 - [systemInfo40 firstClusterOffset]) / *v143) + 1;

      systemInfo41 = [(FATVolume *)self systemInfo];
      maxValidCluster5 = [systemInfo41 maxValidCluster];

      v92 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG);
      if (maxValidCluster5 <= v89)
      {
        v59 = v142;
        if (v92)
        {
          sub_100034130(self);
        }
      }

      else
      {
        if (v92)
        {
          sub_1000341D8(self);
        }

        systemInfo42 = [(FATVolume *)self systemInfo];
        [systemInfo42 setMaxValidCluster:v89];

        v59 = v142;
      }
    }

    v94 = v146;
    v95 = blockSize * *(v146 + 7);
    systemInfo43 = [(FATVolume *)self systemInfo];
    [systemInfo43 setFatOffset:v95];

    systemInfo44 = [(FATVolume *)self systemInfo];
    [systemInfo44 setFatSize:v48];

    v98 = v146[16];
    systemInfo45 = [(FATVolume *)self systemInfo];
    [systemInfo45 setNumOfFATs:v98];

    systemInfo46 = [(FATVolume *)self systemInfo];
    LODWORD(systemInfo45) = [systemInfo46 FATMask];

    v101 = 36;
    if (systemInfo45 == 0xFFFFFFF)
    {
      v101 = 64;
    }

    v102 = &v146[v101];
    if (v102[2] == 41)
    {
      v103 = *(v102 + 3);
      systemInfo47 = [(FATVolume *)self systemInfo];
      [systemInfo47 setSerialNumber:v103];

      systemInfo48 = [(FATVolume *)self systemInfo];
      [systemInfo48 setSerialNumberExists:1];

      systemInfo49 = [(FATVolume *)self systemInfo];
      LODWORD(systemInfo47) = [systemInfo49 serialNumber];

      if (systemInfo47)
      {
        v147[0] = 0;
        v147[1] = 0;
        v107 = [FSVolumeIdentifier alloc];
        v108 = [[NSUUID alloc] initWithUUIDBytes:v147];
        v109 = [v107 initWithUUID:v108];
        systemInfo50 = [(FATVolume *)self systemInfo];
        [systemInfo50 setUuid:v109];

        v59 = v142;
        systemInfo51 = [(FATVolume *)self systemInfo];
        [systemInfo51 setUuidExists:1];
      }
    }

    systemInfo52 = [(FATVolume *)self systemInfo];
    fsInfoSectorNumber = [systemInfo52 fsInfoSectorNumber];

    if (!fsInfoSectorNumber)
    {
LABEL_75:
      systemInfo53 = [(FATVolume *)self systemInfo];
      type = [systemInfo53 type];

      if (type == 2)
      {
        v129 = *(v94 + 11);
        systemInfo54 = [(FATVolume *)self systemInfo];
        [systemInfo54 setRootFirstCluster:v129];

        systemInfo55 = [(FATVolume *)self systemInfo];
        systemInfo56 = [(FATVolume *)self systemInfo];
        v133 = [systemInfo55 isClusterValid:{objc_msgSend(systemInfo56, "rootFirstCluster")}];

        if ((v133 & 1) == 0 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          sub_1000345F8(self);
          if (v59)
          {
LABEL_79:
            if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
            {
              sub_1000346E4();
            }

            goto LABEL_26;
          }
        }

        else if (v59)
        {
          goto LABEL_79;
        }

        if (*(v94 + 21))
        {
          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
          {
            sub_100034768();
          }

          goto LABEL_26;
        }

        if (*(v94 + 19))
        {
          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
          {
            sub_1000347EC();
          }

          goto LABEL_26;
        }

        if (*(v94 + 11))
        {
          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
          {
            sub_100034870();
          }

          goto LABEL_26;
        }
      }

      else
      {
        if (!v59)
        {
          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
          {
            sub_100034548(self);
          }

          goto LABEL_26;
        }

        if (!HIWORD(v144) && !*(v94 + 19) && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
        {
          sub_1000343D8(self);
        }

        if (!*(v94 + 11) && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
        {
          sub_10003449C(self);
        }
      }

      code = 0;
      goto LABEL_27;
    }

    v114 = [[NSMutableData alloc] initWithLength:blockSize];
    systemInfo57 = [(FATVolume *)self systemInfo];
    [systemInfo57 setFsInfoSector:v114];

    resource6 = [(FATVolume *)self resource];
    systemInfo58 = [(FATVolume *)self systemInfo];
    fsInfoSector = [systemInfo58 fsInfoSector];
    mutableBytes = [fsInfoSector mutableBytes];
    systemInfo59 = [(FATVolume *)self systemInfo];
    v121 = +[Utilities syncMetaReadFromDevice:into:startingAt:length:](Utilities, "syncMetaReadFromDevice:into:startingAt:length:", resource6, mutableBytes, [systemInfo59 fsInfoSectorNumber] * blockSize, blockSize);

    if (v121)
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        sub_1000342D0();
      }

      systemInfo60 = [(FATVolume *)self systemInfo];
      [systemInfo60 setFsInfoSectorNumber:0];
    }

    systemInfo61 = [(FATVolume *)self systemInfo];
    fsInfoSector2 = [systemInfo61 fsInfoSector];
    mutableBytes2 = [fsInfoSector2 mutableBytes];

    if (*mutableBytes2 == 1096897106 && mutableBytes2[121] == 1631679090 && mutableBytes2[127] == -1437270016)
    {
      v134 = mutableBytes2[122];
      systemInfo62 = [(FATVolume *)self systemInfo];
      [systemInfo62 setFreeClusters:v134];

      v136 = mutableBytes2[123];
      systemInfo63 = [(FATVolume *)self systemInfo];
      [systemInfo63 setFirstFreeCluster:v136];

      systemInfo64 = [(FATVolume *)self systemInfo];
      freeClusters = [systemInfo64 freeClusters];
      systemInfo65 = [(FATVolume *)self systemInfo];
      v141 = [systemInfo65 maxValidCluster] - 1;

      v94 = v146;
      if (freeClusters <= v141)
      {
        goto LABEL_74;
      }
    }

    else
    {
      v94 = v146;
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        sub_100034354();
      }
    }

    systemInfo66 = [(FATVolume *)self systemInfo];
    [systemInfo66 setFsInfoSectorNumber:0];

LABEL_74:
    v59 = v142;
    goto LABEL_75;
  }

  code = [v7 code];
LABEL_27:

  return code;
}

- (id)createRootDirItem
{
  v3 = [MsdosDirItem alloc];
  systemInfo = [(FATVolume *)self systemInfo];
  rootFirstCluster = [systemInfo rootFirstCluster];
  v6 = [[FSFileName alloc] initWithCString:""];
  v7 = [(MsdosDirItem *)v3 initInVolume:self inDir:0 startingAt:rootFirstCluster withData:0 andName:v6 isRoot:1];

  if (v7)
  {
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_10002A0C0;
    v9[3] = &unk_100051508;
    v10 = v7;
    [v10 iterateFromOffset:0 options:0 replyHandler:v9];
  }

  return v7;
}

- (id)supportedXattrNamesForItem:(id)item
{
  v3 = [(FATItem *)DirItem dynamicCast:item];
  v4 = v3;
  if (v3 && [v3 isRoot])
  {
    v5 = [FSFileName nameWithString:@"com.apple.filesystems.msdosfs.volume_id"];
    v8 = v5;
    v6 = [NSArray arrayWithObjects:&v8 count:1];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)getXattrNamed:(id)named ofItem:(id)item replyHandler:(id)handler
{
  namedCopy = named;
  handlerCopy = handler;
  v10 = [(FATItem *)DirItem dynamicCast:item];
  v11 = v10;
  if (!v10 || ![v10 isRoot])
  {
    goto LABEL_7;
  }

  data = [namedCopy data];
  if ([data length] != 39)
  {

    goto LABEL_7;
  }

  data2 = [namedCopy data];
  v14 = memcmp([data2 bytes], "com.apple.filesystems.msdosfs.volume_id", 0x27uLL);

  if (v14)
  {
LABEL_7:
    v16 = fs_errorForPOSIXError();
    handlerCopy[2](handlerCopy, 0, v16);

    goto LABEL_8;
  }

  queue = [v11 queue];
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_10002A3B4;
  v17[3] = &unk_100050E90;
  v17[4] = self;
  v18 = handlerCopy;
  dispatch_async(queue, v17);

LABEL_8:
}

- (void)setXattrNamed:(id)named toData:(id)data onItem:(id)item policy:(unint64_t)policy replyHandler:(id)handler
{
  namedCopy = named;
  handlerCopy = handler;
  v10 = [(FATItem *)DirItem dynamicCast:item];
  v11 = v10;
  if (v10 && [v10 isRoot])
  {
    data = [namedCopy data];
    if ([data length] == 39)
    {
      data2 = [namedCopy data];
      memcmp([data2 bytes], "com.apple.filesystems.msdosfs.volume_id", 0x27uLL);
    }
  }

  v14 = fs_errorForPOSIXError();
  handlerCopy[2](handlerCopy, v14);
}

- (void)listXattrsOfItem:(id)item replyHandler:(id)handler
{
  handlerCopy = handler;
  v7 = [(FATItem *)DirItem dynamicCast:item];
  v8 = v7;
  if (v7 && [v7 isRoot] && (-[FATVolume systemInfo](self, "systemInfo"), v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend(v9, "serialNumberExists"), v9, v10))
  {
    v11 = [FSFileName nameWithString:@"com.apple.filesystems.msdosfs.volume_id"];
    v13 = v11;
    v12 = [NSArray arrayWithObjects:&v13 count:1];
    handlerCopy[2](handlerCopy, v12, 0);
  }

  else
  {
    v11 = fs_errorForPOSIXError();
    (handlerCopy)[2](handlerCopy, 0, v11);
  }
}

- (void)FatMount:(id)mount replyHandler:(id)handler
{
  mountCopy = mount;
  handlerCopy = handler;
  v69 = 0;
  v70 = &v69;
  v71 = 0x3032000000;
  v72 = sub_10002AF48;
  v73 = sub_10002AF58;
  v74 = 0;
  if (!malloc_type_calloc(1uLL, 0x28uLL, 0x100004077774924uLL))
  {
    rootItem2 = fs_errorForPOSIXError();
    handlerCopy[2](handlerCopy, 0, rootItem2);
    goto LABEL_12;
  }

  v67 = 0u;
  v68 = 0u;
  v65 = 0u;
  v66 = 0u;
  taskOptions = [mountCopy taskOptions];
  v9 = 0;
  v10 = [taskOptions countByEnumeratingWithState:&v65 objects:v75 count:16];
  if (v10)
  {
    v11 = *v66;
    do
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v66 != v11)
        {
          objc_enumerationMutation(taskOptions);
        }

        v9 |= [*(*(&v65 + 1) + 8 * i) containsString:@"rdonly"];
      }

      v10 = [taskOptions countByEnumeratingWithState:&v65 objects:v75 count:16];
    }

    while (v10);
  }

  +[Utilities setGMTDiffOffset];
  v13 = objc_alloc_init(FileSystemInfo);
  [(FATVolume *)self setSystemInfo:v13];

  systemInfo = [(FATVolume *)self systemInfo];
  [systemInfo setFsTypeName:@"msdos"];

  if (![(msdosVolume *)self ScanBootSector])
  {
    v17 = [FSOperations alloc];
    systemInfo2 = [(FATVolume *)self systemInfo];
    v19 = -[FSOperations initWithType:](v17, "initWithType:", [systemInfo2 type]);
    [(msdosVolume *)self setFsOps:v19];

    v20 = [FATManager alloc];
    resource = [(FATVolume *)self resource];
    systemInfo3 = [(FATVolume *)self systemInfo];
    fsOps = [(msdosVolume *)self fsOps];
    v24 = [(FATManager *)v20 initWithDevice:resource info:systemInfo3 ops:fsOps usingCache:0];
    [(FATVolume *)self setFatManager:v24];

    fatManager = [(FATVolume *)self fatManager];
    LODWORD(resource) = fatManager == 0;

    if (resource)
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        sub_100034D38();
      }

      goto LABEL_10;
    }

    systemInfo4 = [(FATVolume *)self systemInfo];
    v27 = [systemInfo4 type] == 0;

    if (!v27)
    {
      fatManager2 = [(FATVolume *)self fatManager];
      v63[0] = _NSConcreteStackBlock;
      v63[1] = 3221225472;
      v63[2] = sub_10002AF60;
      v63[3] = &unk_100051530;
      v63[4] = self;
      v63[5] = &v69;
      v64 = v9 & 1;
      [fatManager2 getDirtyBitValue:v63];
    }

    if (v70[5])
    {
      goto LABEL_22;
    }

    systemInfo5 = [(FATVolume *)self systemInfo];
    v30 = [systemInfo5 type] == 2;

    if (v30)
    {
      fatManager3 = [(FATVolume *)self fatManager];
      systemInfo6 = [(FATVolume *)self systemInfo];
      v62[0] = _NSConcreteStackBlock;
      v62[1] = 3221225472;
      v62[2] = sub_10002B060;
      v62[3] = &unk_100051558;
      v62[4] = self;
      v62[5] = &v69;
      [fatManager3 getContigClusterChainLengthStartingAt:objc_msgSend(systemInfo6 replyHandler:{"rootFirstCluster"), v62}];
    }

    if (v70[5])
    {
LABEL_22:
      (handlerCopy[2])(handlerCopy, 0);
      v16 = 0;
      goto LABEL_14;
    }

    createRootDirItem = [(msdosVolume *)self createRootDirItem];
    [(FATVolume *)self setRootItem:createRootDirItem];

    rootItem = [(FATVolume *)self rootItem];
    LODWORD(createRootDirItem) = rootItem == 0;

    if (createRootDirItem)
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_FAULT))
      {
        sub_100034CB0();
      }

      rootItem2 = fs_errorForPOSIXError();
      handlerCopy[2](handlerCopy, 0, rootItem2);
      goto LABEL_12;
    }

    v35 = [NSMutableData alloc];
    systemInfo7 = [(FATVolume *)self systemInfo];
    v16 = [v35 initWithLength:{objc_msgSend(systemInfo7, "bytesPerSector")}];

    resource2 = [(FATVolume *)self resource];
    v38 = v16;
    mutableBytes = [v16 mutableBytes];
    systemInfo8 = [(FATVolume *)self systemInfo];
    v41 = +[Utilities syncMetaReadFromDevice:into:startingAt:length:](Utilities, "syncMetaReadFromDevice:into:startingAt:length:", resource2, mutableBytes, 0, [systemInfo8 bytesPerSector]);
    v42 = v70[5];
    v70[5] = v41;

    if (v70[5])
    {
      (handlerCopy[2])(handlerCopy, 0);
      goto LABEL_14;
    }

    resource3 = [(FATVolume *)self resource];
    systemInfo9 = [(FATVolume *)self systemInfo];
    bytesPerSector = [systemInfo9 bytesPerSector];
    systemInfo10 = [(FATVolume *)self systemInfo];
    bytesPerCluster = [systemInfo10 bytesPerCluster];
    systemInfo11 = [(FATVolume *)self systemInfo];
    bytesPerSector2 = [systemInfo11 bytesPerSector];
    v48 = v16;
    v49 = +[Utilities getVolumeName:bps:spc:bootsector:flags:](Utilities, "getVolumeName:bps:spc:bootsector:flags:", resource3, bytesPerSector, (bytesPerCluster / bytesPerSector2), [v16 mutableBytes], 3);
    systemInfo12 = [(FATVolume *)self systemInfo];
    [systemInfo12 setVolumeLabel:v49];

    systemInfo13 = [(FATVolume *)self systemInfo];
    volumeLabel = [systemInfo13 volumeLabel];
    if (volumeLabel)
    {
      systemInfo14 = [(FATVolume *)self systemInfo];
      volumeLabel2 = [systemInfo14 volumeLabel];
      v54 = volumeLabel2;
      if ([volumeLabel2 UTF8String])
      {
        systemInfo15 = [(FATVolume *)self systemInfo];
        volumeLabel3 = [systemInfo15 volumeLabel];
        v57 = volumeLabel3;
        v59 = *[volumeLabel3 UTF8String] == 0;

        if (v59)
        {
LABEL_38:
          +[Utilities enableMetaRW];
          rootItem2 = [(FATVolume *)self rootItem];
          (handlerCopy)[2](handlerCopy, rootItem2, 0);
          goto LABEL_13;
        }

        systemInfo13 = [(FATVolume *)self systemInfo];
        [systemInfo13 setVolumeLabelExists:1];
      }

      else
      {
      }
    }

    goto LABEL_38;
  }

LABEL_10:
  rootItem2 = fs_errorForPOSIXError();
  handlerCopy[2](handlerCopy, 0, rootItem2);
LABEL_12:
  v16 = 0;
LABEL_13:

LABEL_14:
  _Block_object_dispose(&v69, 8);
}

- (void)calcNumOfDirEntriesForName:(unistr255 *)name replyHandler:(id)handler
{
  handlerCopy = handler;
  v9 = 0;
  v6 = msdosfs_unicode_to_dos_name(name->var1, name->var0, v10, &v9);
  if ((v6 - 2) < 2)
  {
    v7 = msdosfs_winSlotCnt(name->var1, name->var0);
    (*(handlerCopy + 2))(handlerCopy, 0, (v7 + 1));
  }

  else if (v6 == 1)
  {
    (*(handlerCopy + 2))(handlerCopy, 0, 1);
  }

  else
  {
    if (!v6 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_100034EEC();
    }

    v8 = fs_errorForPOSIXError();
    (*(handlerCopy + 2))(handlerCopy, v8, 0);
  }
}

- (void)nameToUnistr:(id)unistr flags:(unsigned int)flags replyHandler:(id)handler
{
  handlerCopy = handler;
  memset(__src, 0, sizeof(__src));
  unistrCopy = unistr;
  data = [unistrCopy data];
  bytes = [data bytes];
  data2 = [unistrCopy data];

  v12 = CONV_UTF8ToUnistr255(bytes, [data2 length], __src, flags);
  if (v12)
  {
    v13 = fs_errorForPOSIXError();
  }

  else
  {
    v13 = 0;
  }

  v14 = handlerCopy[2];
  memcpy(v15, __src, sizeof(v15));
  v14(handlerCopy, v13, v15);
  if (v12)
  {
  }
}

- (id)verifyFileSize:(unint64_t)size
{
  if (HIDWORD(size))
  {
    v4 = fs_errorForPOSIXError();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (BOOL)isOffsetInMetadataZone:(unint64_t)zone
{
  systemInfo = [(FATVolume *)self systemInfo];
  LOBYTE(zone) = [systemInfo metaDataZoneSize] > zone;

  return zone;
}

- (id)sync
{
  systemInfo = [(FATVolume *)self systemInfo];
  fsInfoSector = [systemInfo fsInfoSector];
  if (!fsInfoSector)
  {

    goto LABEL_7;
  }

  v5 = fsInfoSector;
  systemInfo2 = [(FATVolume *)self systemInfo];
  fsInfoSectorNumber = [systemInfo2 fsInfoSectorNumber];

  if (!fsInfoSectorNumber)
  {
LABEL_7:
    v15 = 0;
    goto LABEL_8;
  }

  systemInfo3 = [(FATVolume *)self systemInfo];
  fsInfoSector2 = [systemInfo3 fsInfoSector];
  mutableBytes = [fsInfoSector2 mutableBytes];

  v11 = mutableBytes[122];
  LODWORD(fsInfoSector2) = mutableBytes[123];
  systemInfo4 = [(FATVolume *)self systemInfo];
  if ([systemInfo4 firstFreeCluster] == fsInfoSector2)
  {
    systemInfo5 = [(FATVolume *)self systemInfo];
    freeClusters = [systemInfo5 freeClusters];

    if (freeClusters != v11)
    {
      goto LABEL_12;
    }

    goto LABEL_7;
  }

LABEL_12:
  systemInfo6 = [(FATVolume *)self systemInfo];
  mutableBytes[122] = [systemInfo6 freeClusters];

  systemInfo7 = [(FATVolume *)self systemInfo];
  mutableBytes[123] = [systemInfo7 firstFreeCluster];

  resource = [(FATVolume *)self resource];
  systemInfo8 = [(FATVolume *)self systemInfo];
  fsInfoSector3 = [systemInfo8 fsInfoSector];
  mutableBytes2 = [fsInfoSector3 mutableBytes];
  systemInfo9 = [(FATVolume *)self systemInfo];
  fsInfoSectorNumber2 = [systemInfo9 fsInfoSectorNumber];
  systemInfo10 = [(FATVolume *)self systemInfo];
  v26 = [systemInfo10 bytesPerSector] * fsInfoSectorNumber2;
  systemInfo11 = [(FATVolume *)self systemInfo];
  v15 = +[Utilities metaWriteToDevice:from:startingAt:length:forceSyncWrite:](Utilities, "metaWriteToDevice:from:startingAt:length:forceSyncWrite:", resource, mutableBytes2, v26, [systemInfo11 bytesPerSector], 0);

  if (v15 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_100034F70();
  }

LABEL_8:

  return v15;
}

- (void)setVolumeLabel:(id)label rootDir:(id)dir replyHandler:(id)handler
{
  dirCopy = dir;
  handlerCopy = handler;
  if (CONV_LabelUTF8ToUTF16LocalEncoding([label bytes], v17))
  {
    v10 = fs_errorForPOSIXError();
LABEL_4:
    v12 = v10;
    goto LABEL_5;
  }

  fatManager = [(FATVolume *)self fatManager];
  [fatManager setDirtyBitValue:1 forceWriteToDisk:0 replyHandler:&stru_100051578];

  v10 = [(msdosVolume *)self updateLabelInBootSector:v18 toName:v17];
  if (v10)
  {
    goto LABEL_4;
  }

  entryData = [dirCopy entryData];

  if (!entryData || ([dirCopy entryData], v14 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v14, "setName:", v17), v14, objc_msgSend(dirCopy, "flushDirEntryData"), (v15 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v12 = [Utilities getVolumeLabelFromBootSector:v17];
    handlerCopy[2](handlerCopy, v12, 0);
    goto LABEL_6;
  }

  v12 = v15;
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_100034FF4();
  }

  v16 = [(msdosVolume *)self updateLabelInBootSector:v17 toName:v18];
LABEL_5:
  (handlerCopy)[2](handlerCopy, 0, v12);
LABEL_6:
}

- (id)updateLabelInBootSector:(char)sector[11] toName:(char)name[11]
{
  systemInfo = [(FATVolume *)self systemInfo];
  bytesPerSector = [systemInfo bytesPerSector];

  v9 = [[NSMutableData alloc] initWithLength:bytesPerSector];
  resource = [(FATVolume *)self resource];
  v11 = +[Utilities syncMetaReadFromDevice:into:startingAt:length:](Utilities, "syncMetaReadFromDevice:into:startingAt:length:", resource, [v9 mutableBytes], 0, bytesPerSector);

  if (!v11)
  {
    mutableBytes = [v9 mutableBytes];
    v13 = mutableBytes;
    if ((*mutableBytes | 2) == 0xEB)
    {
      if ((mutableBytes[510] != 85 || mutableBytes[511] != 170) && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        sub_1000350FC(v13 + 510);
      }

      systemInfo2 = [(FATVolume *)self systemInfo];
      type = [systemInfo2 type];

      v16 = 36;
      if (type == 2)
      {
        v16 = 64;
      }

      v17 = &v13[v16];
      if (v17[2] == 41)
      {
        v18 = *(v17 + 7);
        *(sector + 7) = *(v17 + 14);
        *sector = v18;
        v19 = *name;
        *(v17 + 14) = *(name + 7);
        *(v17 + 7) = v19;
      }

      resource2 = [(FATVolume *)self resource];
      v11 = +[Utilities metaWriteToDevice:from:startingAt:length:forceSyncWrite:](Utilities, "metaWriteToDevice:from:startingAt:length:forceSyncWrite:", resource2, [v9 bytes], 0, bytesPerSector, 0);
    }

    else
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        sub_100035188(v13);
      }

      v11 = fs_errorForPOSIXError();
    }
  }

  return v11;
}

@end