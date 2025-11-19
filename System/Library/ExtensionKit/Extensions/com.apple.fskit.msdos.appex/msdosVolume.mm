@interface msdosVolume
- (BOOL)isOffsetInMetadataZone:(unint64_t)a3;
- (id)createRootDirItem;
- (id)supportedXattrNamesForItem:(id)a3;
- (id)sync;
- (id)updateLabelInBootSector:(char)a3[11] toName:(char)a4[11];
- (id)verifyFileSize:(unint64_t)a3;
- (int)ScanBootSector;
- (msdosVolume)initWithResource:(id)a3 volumeID:(id)a4 volumeName:(id)a5;
- (void)FatMount:(id)a3 replyHandler:(id)a4;
- (void)calcNumOfDirEntriesForName:(unistr255 *)a3 replyHandler:(id)a4;
- (void)getXattrNamed:(id)a3 ofItem:(id)a4 replyHandler:(id)a5;
- (void)listXattrsOfItem:(id)a3 replyHandler:(id)a4;
- (void)nameToUnistr:(id)a3 flags:(unsigned int)a4 replyHandler:(id)a5;
- (void)setVolumeLabel:(id)a3 rootDir:(id)a4 replyHandler:(id)a5;
- (void)setXattrNamed:(id)a3 toData:(id)a4 onItem:(id)a5 policy:(unint64_t)a6 replyHandler:(id)a7;
@end

@implementation msdosVolume

- (msdosVolume)initWithResource:(id)a3 volumeID:(id)a4 volumeName:(id)a5
{
  v8.receiver = self;
  v8.super_class = msdosVolume;
  v5 = [(FATVolume *)&v8 initWithResource:a3 volumeID:a4 volumeName:a5];
  if (v5 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "Hello MSDOS volume", v7, 2u);
  }

  return v5;
}

- (int)ScanBootSector
{
  v3 = [(FATVolume *)self resource];
  v4 = [v3 blockSize];

  v5 = [[NSMutableData alloc] initWithLength:v4];
  v6 = [(FATVolume *)self resource];
  v7 = +[Utilities syncMetaReadFromDevice:into:startingAt:length:](Utilities, "syncMetaReadFromDevice:into:startingAt:length:", v6, [v5 mutableBytes], 0, v4);

  if (!v7)
  {
    v9 = [v5 bytes];
    v10 = v9;
    if ((*v9 | 2) != 0xEB)
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        sub_100034BA8(v10);
      }

      goto LABEL_26;
    }

    if ((v9[510] != 85 || v9[511] != 170) && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_100033E00(v10 + 510);
    }

    v11 = *(v10 + 11);
    v12 = [(FATVolume *)self systemInfo];
    [v12 setBytesPerSector:v11];

    v13 = [(FATVolume *)self systemInfo];
    v146 = v10;
    v14 = [v13 bytesPerSector] * v10[13];
    v15 = [(FATVolume *)self systemInfo];
    [v15 setBytesPerCluster:v14];

    v16 = [(FATVolume *)self systemInfo];
    v17 = [v16 bytesPerSector];
    v18 = [(FATVolume *)self systemInfo];
    [v18 setDirBlockSize:v17];

    v19 = v10 + 13;
    v20 = *(v10 + 7);
    v21 = *(v19 + 2);
    v22 = [(FATVolume *)self systemInfo];
    LODWORD(v17) = [v22 bytesPerSector];

    if (v17 != v4)
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
    v27 = [(FATVolume *)self systemInfo];
    [v27 setRootDirSize:(v4 + 32 * v21 - 1) / v4];

    v28 = [(FATVolume *)self systemInfo];
    LODWORD(v27) = [v28 rootSector];
    v29 = [(FATVolume *)self systemInfo];
    v30 = [v29 rootDirSize];
    v31 = [(FATVolume *)self systemInfo];
    [v31 setFirstClusterOffset:v30 + v27];

    v32 = [(FATVolume *)self systemInfo];
    LODWORD(v29) = [v32 rootSector];
    v33 = [(FATVolume *)self systemInfo];
    v34 = [v33 bytesPerSector] * v29;
    v35 = [(FATVolume *)self systemInfo];
    [v35 setMetaDataZoneSize:v34];

    v36 = [(FATVolume *)self systemInfo];
    v37 = [v36 bytesPerCluster];
    v38 = [(FATVolume *)self systemInfo];
    v39 = 2 * (v37 / [v38 dirBlockSize]);
    v40 = [(FATVolume *)self systemInfo];
    [v40 setFirstDirBlockNum:v39];

    if (v145 > v144)
    {
      goto LABEL_24;
    }

    v41 = [(FATVolume *)self systemInfo];
    if ([v41 rootSector] < v145)
    {

      goto LABEL_24;
    }

    v42 = [(FATVolume *)self systemInfo];
    v43 = [v42 firstClusterOffset] + *v143;

    if (v43 > v144)
    {
LABEL_24:
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        sub_100034998();
      }

LABEL_26:
      v8 = 22;
      goto LABEL_27;
    }

    v45 = [(FATVolume *)self systemInfo];
    v46 = (v144 - [v45 firstClusterOffset]) / *v143 + 1;
    v47 = [(FATVolume *)self systemInfo];
    [v47 setMaxValidCluster:v46];

    v48 = v145 * v4;
    v49 = [(FATVolume *)self systemInfo];
    [v49 setFsInfoSectorNumber:0];

    v50 = [(FATVolume *)self systemInfo];
    v51 = [v50 maxValidCluster];

    v52 = [(FATVolume *)self systemInfo];
    v53 = v52;
    if (v51 > 0xFF5)
    {
      v60 = [v52 maxValidCluster];

      v61 = [(FATVolume *)self systemInfo];
      v62 = v61;
      v59 = v142;
      if (v60 > 0xFFF5)
      {
        v67 = [v61 maxValidCluster];

        if (v67 > 0xFFFFFF5)
        {
          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
          {
            sub_100033FD8(self);
          }

          goto LABEL_26;
        }

        v68 = [(FATVolume *)self systemInfo];
        [v68 setFATMask:0xFFFFFFFLL];

        v69 = [(FATVolume *)self systemInfo];
        [v69 setType:2];

        v70 = [(FATVolume *)self systemInfo];
        [v70 setFsSubTypeName:@"fat32"];

        v71 = [NSNumber numberWithInt:2];
        v72 = [(FATVolume *)self systemInfo];
        [v72 setFsSubTypeNum:v71];

        v58 = v48 >> 2;
        v73 = *(v146 + 11);
        v74 = [(FATVolume *)self systemInfo];
        [v74 setRootFirstCluster:v73];

        v75 = *(v146 + 24);
        v59 = v142;
        v76 = [(FATVolume *)self systemInfo];
        [v76 setFsInfoSectorNumber:v75];
      }

      else
      {
        [v61 setFATMask:0xFFFFLL];

        v63 = [(FATVolume *)self systemInfo];
        [v63 setType:1];

        v64 = [(FATVolume *)self systemInfo];
        [v64 setFsSubTypeName:@"fat16"];

        v65 = [NSNumber numberWithInt:1];
        v66 = [(FATVolume *)self systemInfo];
        [v66 setFsSubTypeNum:v65];

        v58 = v48 >> 1;
      }
    }

    else
    {
      [v52 setFATMask:4095];

      v54 = [(FATVolume *)self systemInfo];
      [v54 setType:0];

      v55 = [(FATVolume *)self systemInfo];
      [v55 setFsSubTypeName:@"fat12"];

      v56 = [NSNumber numberWithInt:0];
      v57 = [(FATVolume *)self systemInfo];
      [v57 setFsSubTypeNum:v56];

      v58 = 2 * v48 / 3u;
      v59 = v142;
    }

    v77 = [(FATVolume *)self systemInfo];
    v78 = [v77 maxValidCluster];

    if (v78 >= v58)
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
      {
        sub_100034088(self);
      }

      v79 = [(FATVolume *)self systemInfo];
      [v79 setMaxValidCluster:v58 - 1];
    }

    v80 = [(FATVolume *)self resource];
    v81 = [v80 blockCount];

    if (v81 < v144)
    {
      v82 = [(FATVolume *)self systemInfo];
      v83 = [v82 firstClusterOffset] + *v143;
      v84 = [(FATVolume *)self resource];
      v85 = [v84 blockCount];

      if (v85 < v83)
      {
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          sub_1000348F4(self);
        }

        goto LABEL_26;
      }

      v86 = [(FATVolume *)self resource];
      v87 = [v86 blockCount];
      v88 = [(FATVolume *)self systemInfo];
      v89 = ((v87 - [v88 firstClusterOffset]) / *v143) + 1;

      v90 = [(FATVolume *)self systemInfo];
      v91 = [v90 maxValidCluster];

      v92 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG);
      if (v91 <= v89)
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

        v93 = [(FATVolume *)self systemInfo];
        [v93 setMaxValidCluster:v89];

        v59 = v142;
      }
    }

    v94 = v146;
    v95 = v4 * *(v146 + 7);
    v96 = [(FATVolume *)self systemInfo];
    [v96 setFatOffset:v95];

    v97 = [(FATVolume *)self systemInfo];
    [v97 setFatSize:v48];

    v98 = v146[16];
    v99 = [(FATVolume *)self systemInfo];
    [v99 setNumOfFATs:v98];

    v100 = [(FATVolume *)self systemInfo];
    LODWORD(v99) = [v100 FATMask];

    v101 = 36;
    if (v99 == 0xFFFFFFF)
    {
      v101 = 64;
    }

    v102 = &v146[v101];
    if (v102[2] == 41)
    {
      v103 = *(v102 + 3);
      v104 = [(FATVolume *)self systemInfo];
      [v104 setSerialNumber:v103];

      v105 = [(FATVolume *)self systemInfo];
      [v105 setSerialNumberExists:1];

      v106 = [(FATVolume *)self systemInfo];
      LODWORD(v104) = [v106 serialNumber];

      if (v104)
      {
        v147[0] = 0;
        v147[1] = 0;
        v107 = [FSVolumeIdentifier alloc];
        v108 = [[NSUUID alloc] initWithUUIDBytes:v147];
        v109 = [v107 initWithUUID:v108];
        v110 = [(FATVolume *)self systemInfo];
        [v110 setUuid:v109];

        v59 = v142;
        v111 = [(FATVolume *)self systemInfo];
        [v111 setUuidExists:1];
      }
    }

    v112 = [(FATVolume *)self systemInfo];
    v113 = [v112 fsInfoSectorNumber];

    if (!v113)
    {
LABEL_75:
      v127 = [(FATVolume *)self systemInfo];
      v128 = [v127 type];

      if (v128 == 2)
      {
        v129 = *(v94 + 11);
        v130 = [(FATVolume *)self systemInfo];
        [v130 setRootFirstCluster:v129];

        v131 = [(FATVolume *)self systemInfo];
        v132 = [(FATVolume *)self systemInfo];
        v133 = [v131 isClusterValid:{objc_msgSend(v132, "rootFirstCluster")}];

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

      v8 = 0;
      goto LABEL_27;
    }

    v114 = [[NSMutableData alloc] initWithLength:v4];
    v115 = [(FATVolume *)self systemInfo];
    [v115 setFsInfoSector:v114];

    v116 = [(FATVolume *)self resource];
    v117 = [(FATVolume *)self systemInfo];
    v118 = [v117 fsInfoSector];
    v119 = [v118 mutableBytes];
    v120 = [(FATVolume *)self systemInfo];
    v121 = +[Utilities syncMetaReadFromDevice:into:startingAt:length:](Utilities, "syncMetaReadFromDevice:into:startingAt:length:", v116, v119, [v120 fsInfoSectorNumber] * v4, v4);

    if (v121)
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        sub_1000342D0();
      }

      v122 = [(FATVolume *)self systemInfo];
      [v122 setFsInfoSectorNumber:0];
    }

    v123 = [(FATVolume *)self systemInfo];
    v124 = [v123 fsInfoSector];
    v125 = [v124 mutableBytes];

    if (*v125 == 1096897106 && v125[121] == 1631679090 && v125[127] == -1437270016)
    {
      v134 = v125[122];
      v135 = [(FATVolume *)self systemInfo];
      [v135 setFreeClusters:v134];

      v136 = v125[123];
      v137 = [(FATVolume *)self systemInfo];
      [v137 setFirstFreeCluster:v136];

      v138 = [(FATVolume *)self systemInfo];
      v139 = [v138 freeClusters];
      v140 = [(FATVolume *)self systemInfo];
      v141 = [v140 maxValidCluster] - 1;

      v94 = v146;
      if (v139 <= v141)
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

    v126 = [(FATVolume *)self systemInfo];
    [v126 setFsInfoSectorNumber:0];

LABEL_74:
    v59 = v142;
    goto LABEL_75;
  }

  v8 = [v7 code];
LABEL_27:

  return v8;
}

- (id)createRootDirItem
{
  v3 = [MsdosDirItem alloc];
  v4 = [(FATVolume *)self systemInfo];
  v5 = [v4 rootFirstCluster];
  v6 = [[FSFileName alloc] initWithCString:""];
  v7 = [(MsdosDirItem *)v3 initInVolume:self inDir:0 startingAt:v5 withData:0 andName:v6 isRoot:1];

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

- (id)supportedXattrNamesForItem:(id)a3
{
  v3 = [(FATItem *)DirItem dynamicCast:a3];
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

- (void)getXattrNamed:(id)a3 ofItem:(id)a4 replyHandler:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = [(FATItem *)DirItem dynamicCast:a4];
  v11 = v10;
  if (!v10 || ![v10 isRoot])
  {
    goto LABEL_7;
  }

  v12 = [v8 data];
  if ([v12 length] != 39)
  {

    goto LABEL_7;
  }

  v13 = [v8 data];
  v14 = memcmp([v13 bytes], "com.apple.filesystems.msdosfs.volume_id", 0x27uLL);

  if (v14)
  {
LABEL_7:
    v16 = fs_errorForPOSIXError();
    v9[2](v9, 0, v16);

    goto LABEL_8;
  }

  v15 = [v11 queue];
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_10002A3B4;
  v17[3] = &unk_100050E90;
  v17[4] = self;
  v18 = v9;
  dispatch_async(v15, v17);

LABEL_8:
}

- (void)setXattrNamed:(id)a3 toData:(id)a4 onItem:(id)a5 policy:(unint64_t)a6 replyHandler:(id)a7
{
  v15 = a3;
  v9 = a7;
  v10 = [(FATItem *)DirItem dynamicCast:a5];
  v11 = v10;
  if (v10 && [v10 isRoot])
  {
    v12 = [v15 data];
    if ([v12 length] == 39)
    {
      v13 = [v15 data];
      memcmp([v13 bytes], "com.apple.filesystems.msdosfs.volume_id", 0x27uLL);
    }
  }

  v14 = fs_errorForPOSIXError();
  v9[2](v9, v14);
}

- (void)listXattrsOfItem:(id)a3 replyHandler:(id)a4
{
  v6 = a4;
  v7 = [(FATItem *)DirItem dynamicCast:a3];
  v8 = v7;
  if (v7 && [v7 isRoot] && (-[FATVolume systemInfo](self, "systemInfo"), v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend(v9, "serialNumberExists"), v9, v10))
  {
    v11 = [FSFileName nameWithString:@"com.apple.filesystems.msdosfs.volume_id"];
    v13 = v11;
    v12 = [NSArray arrayWithObjects:&v13 count:1];
    v6[2](v6, v12, 0);
  }

  else
  {
    v11 = fs_errorForPOSIXError();
    (v6)[2](v6, 0, v11);
  }
}

- (void)FatMount:(id)a3 replyHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v69 = 0;
  v70 = &v69;
  v71 = 0x3032000000;
  v72 = sub_10002AF48;
  v73 = sub_10002AF58;
  v74 = 0;
  if (!malloc_type_calloc(1uLL, 0x28uLL, 0x100004077774924uLL))
  {
    v15 = fs_errorForPOSIXError();
    v7[2](v7, 0, v15);
    goto LABEL_12;
  }

  v67 = 0u;
  v68 = 0u;
  v65 = 0u;
  v66 = 0u;
  v8 = [v6 taskOptions];
  v9 = 0;
  v10 = [v8 countByEnumeratingWithState:&v65 objects:v75 count:16];
  if (v10)
  {
    v11 = *v66;
    do
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v66 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v9 |= [*(*(&v65 + 1) + 8 * i) containsString:@"rdonly"];
      }

      v10 = [v8 countByEnumeratingWithState:&v65 objects:v75 count:16];
    }

    while (v10);
  }

  +[Utilities setGMTDiffOffset];
  v13 = objc_alloc_init(FileSystemInfo);
  [(FATVolume *)self setSystemInfo:v13];

  v14 = [(FATVolume *)self systemInfo];
  [v14 setFsTypeName:@"msdos"];

  if (![(msdosVolume *)self ScanBootSector])
  {
    v17 = [FSOperations alloc];
    v18 = [(FATVolume *)self systemInfo];
    v19 = -[FSOperations initWithType:](v17, "initWithType:", [v18 type]);
    [(msdosVolume *)self setFsOps:v19];

    v20 = [FATManager alloc];
    v21 = [(FATVolume *)self resource];
    v22 = [(FATVolume *)self systemInfo];
    v23 = [(msdosVolume *)self fsOps];
    v24 = [(FATManager *)v20 initWithDevice:v21 info:v22 ops:v23 usingCache:0];
    [(FATVolume *)self setFatManager:v24];

    v25 = [(FATVolume *)self fatManager];
    LODWORD(v21) = v25 == 0;

    if (v21)
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        sub_100034D38();
      }

      goto LABEL_10;
    }

    v26 = [(FATVolume *)self systemInfo];
    v27 = [v26 type] == 0;

    if (!v27)
    {
      v28 = [(FATVolume *)self fatManager];
      v63[0] = _NSConcreteStackBlock;
      v63[1] = 3221225472;
      v63[2] = sub_10002AF60;
      v63[3] = &unk_100051530;
      v63[4] = self;
      v63[5] = &v69;
      v64 = v9 & 1;
      [v28 getDirtyBitValue:v63];
    }

    if (v70[5])
    {
      goto LABEL_22;
    }

    v29 = [(FATVolume *)self systemInfo];
    v30 = [v29 type] == 2;

    if (v30)
    {
      v31 = [(FATVolume *)self fatManager];
      v32 = [(FATVolume *)self systemInfo];
      v62[0] = _NSConcreteStackBlock;
      v62[1] = 3221225472;
      v62[2] = sub_10002B060;
      v62[3] = &unk_100051558;
      v62[4] = self;
      v62[5] = &v69;
      [v31 getContigClusterChainLengthStartingAt:objc_msgSend(v32 replyHandler:{"rootFirstCluster"), v62}];
    }

    if (v70[5])
    {
LABEL_22:
      (v7[2])(v7, 0);
      v16 = 0;
      goto LABEL_14;
    }

    v33 = [(msdosVolume *)self createRootDirItem];
    [(FATVolume *)self setRootItem:v33];

    v34 = [(FATVolume *)self rootItem];
    LODWORD(v33) = v34 == 0;

    if (v33)
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_FAULT))
      {
        sub_100034CB0();
      }

      v15 = fs_errorForPOSIXError();
      v7[2](v7, 0, v15);
      goto LABEL_12;
    }

    v35 = [NSMutableData alloc];
    v36 = [(FATVolume *)self systemInfo];
    v16 = [v35 initWithLength:{objc_msgSend(v36, "bytesPerSector")}];

    v37 = [(FATVolume *)self resource];
    v38 = v16;
    v39 = [v16 mutableBytes];
    v40 = [(FATVolume *)self systemInfo];
    v41 = +[Utilities syncMetaReadFromDevice:into:startingAt:length:](Utilities, "syncMetaReadFromDevice:into:startingAt:length:", v37, v39, 0, [v40 bytesPerSector]);
    v42 = v70[5];
    v70[5] = v41;

    if (v70[5])
    {
      (v7[2])(v7, 0);
      goto LABEL_14;
    }

    v58 = [(FATVolume *)self resource];
    v60 = [(FATVolume *)self systemInfo];
    v43 = [v60 bytesPerSector];
    v44 = [(FATVolume *)self systemInfo];
    v45 = [v44 bytesPerCluster];
    v46 = [(FATVolume *)self systemInfo];
    v47 = [v46 bytesPerSector];
    v48 = v16;
    v49 = +[Utilities getVolumeName:bps:spc:bootsector:flags:](Utilities, "getVolumeName:bps:spc:bootsector:flags:", v58, v43, (v45 / v47), [v16 mutableBytes], 3);
    v50 = [(FATVolume *)self systemInfo];
    [v50 setVolumeLabel:v49];

    v51 = [(FATVolume *)self systemInfo];
    v52 = [v51 volumeLabel];
    if (v52)
    {
      v61 = [(FATVolume *)self systemInfo];
      v53 = [v61 volumeLabel];
      v54 = v53;
      if ([v53 UTF8String])
      {
        v55 = [(FATVolume *)self systemInfo];
        v56 = [v55 volumeLabel];
        v57 = v56;
        v59 = *[v56 UTF8String] == 0;

        if (v59)
        {
LABEL_38:
          +[Utilities enableMetaRW];
          v15 = [(FATVolume *)self rootItem];
          (v7)[2](v7, v15, 0);
          goto LABEL_13;
        }

        v51 = [(FATVolume *)self systemInfo];
        [v51 setVolumeLabelExists:1];
      }

      else
      {
      }
    }

    goto LABEL_38;
  }

LABEL_10:
  v15 = fs_errorForPOSIXError();
  v7[2](v7, 0, v15);
LABEL_12:
  v16 = 0;
LABEL_13:

LABEL_14:
  _Block_object_dispose(&v69, 8);
}

- (void)calcNumOfDirEntriesForName:(unistr255 *)a3 replyHandler:(id)a4
{
  v5 = a4;
  v9 = 0;
  v6 = msdosfs_unicode_to_dos_name(a3->var1, a3->var0, v10, &v9);
  if ((v6 - 2) < 2)
  {
    v7 = msdosfs_winSlotCnt(a3->var1, a3->var0);
    (*(v5 + 2))(v5, 0, (v7 + 1));
  }

  else if (v6 == 1)
  {
    (*(v5 + 2))(v5, 0, 1);
  }

  else
  {
    if (!v6 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_100034EEC();
    }

    v8 = fs_errorForPOSIXError();
    (*(v5 + 2))(v5, v8, 0);
  }
}

- (void)nameToUnistr:(id)a3 flags:(unsigned int)a4 replyHandler:(id)a5
{
  v7 = a5;
  memset(__src, 0, sizeof(__src));
  v8 = a3;
  v9 = [v8 data];
  v10 = [v9 bytes];
  v11 = [v8 data];

  v12 = CONV_UTF8ToUnistr255(v10, [v11 length], __src, a4);
  if (v12)
  {
    v13 = fs_errorForPOSIXError();
  }

  else
  {
    v13 = 0;
  }

  v14 = v7[2];
  memcpy(v15, __src, sizeof(v15));
  v14(v7, v13, v15);
  if (v12)
  {
  }
}

- (id)verifyFileSize:(unint64_t)a3
{
  if (HIDWORD(a3))
  {
    v4 = fs_errorForPOSIXError();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (BOOL)isOffsetInMetadataZone:(unint64_t)a3
{
  v4 = [(FATVolume *)self systemInfo];
  LOBYTE(a3) = [v4 metaDataZoneSize] > a3;

  return a3;
}

- (id)sync
{
  v3 = [(FATVolume *)self systemInfo];
  v4 = [v3 fsInfoSector];
  if (!v4)
  {

    goto LABEL_7;
  }

  v5 = v4;
  v6 = [(FATVolume *)self systemInfo];
  v7 = [v6 fsInfoSectorNumber];

  if (!v7)
  {
LABEL_7:
    v15 = 0;
    goto LABEL_8;
  }

  v8 = [(FATVolume *)self systemInfo];
  v9 = [v8 fsInfoSector];
  v10 = [v9 mutableBytes];

  v11 = v10[122];
  LODWORD(v9) = v10[123];
  v12 = [(FATVolume *)self systemInfo];
  if ([v12 firstFreeCluster] == v9)
  {
    v13 = [(FATVolume *)self systemInfo];
    v14 = [v13 freeClusters];

    if (v14 != v11)
    {
      goto LABEL_12;
    }

    goto LABEL_7;
  }

LABEL_12:
  v17 = [(FATVolume *)self systemInfo];
  v10[122] = [v17 freeClusters];

  v18 = [(FATVolume *)self systemInfo];
  v10[123] = [v18 firstFreeCluster];

  v19 = [(FATVolume *)self resource];
  v20 = [(FATVolume *)self systemInfo];
  v21 = [v20 fsInfoSector];
  v22 = [v21 mutableBytes];
  v23 = [(FATVolume *)self systemInfo];
  v24 = [v23 fsInfoSectorNumber];
  v25 = [(FATVolume *)self systemInfo];
  v26 = [v25 bytesPerSector] * v24;
  v27 = [(FATVolume *)self systemInfo];
  v15 = +[Utilities metaWriteToDevice:from:startingAt:length:forceSyncWrite:](Utilities, "metaWriteToDevice:from:startingAt:length:forceSyncWrite:", v19, v22, v26, [v27 bytesPerSector], 0);

  if (v15 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_100034F70();
  }

LABEL_8:

  return v15;
}

- (void)setVolumeLabel:(id)a3 rootDir:(id)a4 replyHandler:(id)a5
{
  v8 = a4;
  v9 = a5;
  if (CONV_LabelUTF8ToUTF16LocalEncoding([a3 bytes], v17))
  {
    v10 = fs_errorForPOSIXError();
LABEL_4:
    v12 = v10;
    goto LABEL_5;
  }

  v11 = [(FATVolume *)self fatManager];
  [v11 setDirtyBitValue:1 forceWriteToDisk:0 replyHandler:&stru_100051578];

  v10 = [(msdosVolume *)self updateLabelInBootSector:v18 toName:v17];
  if (v10)
  {
    goto LABEL_4;
  }

  v13 = [v8 entryData];

  if (!v13 || ([v8 entryData], v14 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v14, "setName:", v17), v14, objc_msgSend(v8, "flushDirEntryData"), (v15 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v12 = [Utilities getVolumeLabelFromBootSector:v17];
    v9[2](v9, v12, 0);
    goto LABEL_6;
  }

  v12 = v15;
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_100034FF4();
  }

  v16 = [(msdosVolume *)self updateLabelInBootSector:v17 toName:v18];
LABEL_5:
  (v9)[2](v9, 0, v12);
LABEL_6:
}

- (id)updateLabelInBootSector:(char)a3[11] toName:(char)a4[11]
{
  v7 = [(FATVolume *)self systemInfo];
  v8 = [v7 bytesPerSector];

  v9 = [[NSMutableData alloc] initWithLength:v8];
  v10 = [(FATVolume *)self resource];
  v11 = +[Utilities syncMetaReadFromDevice:into:startingAt:length:](Utilities, "syncMetaReadFromDevice:into:startingAt:length:", v10, [v9 mutableBytes], 0, v8);

  if (!v11)
  {
    v12 = [v9 mutableBytes];
    v13 = v12;
    if ((*v12 | 2) == 0xEB)
    {
      if ((v12[510] != 85 || v12[511] != 170) && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        sub_1000350FC(v13 + 510);
      }

      v14 = [(FATVolume *)self systemInfo];
      v15 = [v14 type];

      v16 = 36;
      if (v15 == 2)
      {
        v16 = 64;
      }

      v17 = &v13[v16];
      if (v17[2] == 41)
      {
        v18 = *(v17 + 7);
        *(a3 + 7) = *(v17 + 14);
        *a3 = v18;
        v19 = *a4;
        *(v17 + 14) = *(a4 + 7);
        *(v17 + 7) = v19;
      }

      v20 = [(FATVolume *)self resource];
      v11 = +[Utilities metaWriteToDevice:from:startingAt:length:forceSyncWrite:](Utilities, "metaWriteToDevice:from:startingAt:length:forceSyncWrite:", v20, [v9 bytes], 0, v8, 0);
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