@interface DirItem
- (BOOL)isFat1216RootDir;
- (id)checkIfEmpty;
- (id)fillNameCache:(id)a3;
- (id)markDirEntriesAsDeletedAndUpdateMtime:(id)a3;
- (void)createEntrySetForName:(unistr255 *)a3 itemType:(int64_t)a4 firstCluster:(unsigned int)a5 attrs:(id)a6 offsetInDir:(unint64_t)a7 hidden:(BOOL)a8 replyHandler:(id)a9;
- (void)findFreeSlots:(unsigned int)a3 useOffsetHint:(BOOL)a4 offsetHint:(unint64_t)a5 replyHandler:(id)a6;
- (void)getDirEntryOffsetByIndex:(unsigned int)a3 replyHandler:(id)a4;
- (void)iterateDirEntriesAtOffset:(unint64_t)a3 numEntries:(unsigned int)a4 shouldWriteToDisk:(BOOL)a5 replyHandler:(id)a6;
- (void)iterateFromOffset:(unint64_t)a3 options:(unsigned int)a4 replyHandler:(id)a5;
- (void)lookupDirEntryNamed:(id)a3 dirNameCache:(id)a4 lookupOffset:(unint64_t *)a5 replyHandler:(id)a6;
- (void)purgeMetaBlocksFromCache:(id)a3;
@end

@implementation DirItem

- (void)iterateFromOffset:(unint64_t)a3 options:(unsigned int)a4 replyHandler:(id)a5
{
  v6 = a5;
  v7 = fs_errorForPOSIXError();
  (*(a5 + 2))(v6, v7, 4, 0, 0, 0);
}

- (void)createEntrySetForName:(unistr255 *)a3 itemType:(int64_t)a4 firstCluster:(unsigned int)a5 attrs:(id)a6 offsetInDir:(unint64_t)a7 hidden:(BOOL)a8 replyHandler:(id)a9
{
  v9 = a9;
  v10 = fs_errorForPOSIXError();
  (*(a9 + 2))(v9, v10, 0);
}

- (BOOL)isFat1216RootDir
{
  v3 = [(DirItem *)self isRoot];
  if (v3)
  {
    v4 = [(FATItem *)self volume];
    v5 = [v4 systemInfo];
    v6 = [v5 isFAT12Or16];

    LOBYTE(v3) = v6;
  }

  return v3;
}

- (void)lookupDirEntryNamed:(id)a3 dirNameCache:(id)a4 lookupOffset:(unint64_t *)a5 replyHandler:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a6;
  v90 = 0;
  v91 = &v90;
  v92 = 0x2020000000;
  v93 = 0;
  v86 = 0;
  v87 = &v86;
  v88 = 0x2020000000;
  v89 = 0;
  v82 = 0;
  v83 = &v82;
  v84 = 0x2020000000;
  v85 = 0;
  v76 = 0;
  v77 = &v76;
  v78 = 0x3032000000;
  v79 = sub_100007260;
  v80 = sub_100007270;
  v81 = 0;
  v70 = 0;
  v71 = &v70;
  v72 = 0x3032000000;
  v73 = sub_100007260;
  v74 = sub_100007270;
  v75 = 0;
  v34 = 0;
  v35 = &v34;
  v36 = 0x22010000000;
  v37 = &unk_10004CC8D;
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
  v67 = 0u;
  v68 = 0u;
  v69 = 0u;
  if (v10)
  {
    v13 = [(FATItem *)self volume];
    v14 = [v10 data];
    v15 = [v14 bytes];
    v16 = [v10 data];
    if (+[Utilities isDotOrDotDot:length:](Utilities, "isDotOrDotDot:length:", v15, [v16 length]))
    {
      v17 = 0;
    }

    else
    {
      v17 = 32;
    }

    v33[0] = _NSConcreteStackBlock;
    v33[1] = 3221225472;
    v33[2] = sub_100007278;
    v33[3] = &unk_100050610;
    v33[4] = &v76;
    v33[5] = &v34;
    [v13 nameToUnistr:v10 flags:v17 replyHandler:v33];

    v18 = v77[5];
    if (v18)
    {
      goto LABEL_13;
    }

    CONV_Unistr255ToLowerCase(v35 + 16);
    if (a5)
    {
      v19 = *a5;
    }

    else
    {
      if (v11)
      {
        v21 = v35;
        v28[0] = _NSConcreteStackBlock;
        v28[1] = 3221225472;
        v28[2] = sub_100007300;
        v28[3] = &unk_100050638;
        v30 = &v90;
        v31 = &v86;
        v29 = v11;
        v32 = &v76;
        [v29 lookupDirEntryNamedUtf16:v21 + 4 replyHandler:v28];
      }

      v19 = 0;
    }

    v18 = v77[5];
    if (v18)
    {
LABEL_13:
      v12[2](v12, v18, 0);
      goto LABEL_14;
    }

    if (*(v87 + 24) == 1)
    {
      v22 = v91[3];
      v27[0] = _NSConcreteStackBlock;
      v27[1] = 3221225472;
      v27[2] = sub_1000073B0;
      v27[3] = &unk_100050660;
      v27[4] = &v34;
      v27[5] = &v82;
      v27[6] = &v70;
      [(DirItem *)self iterateFromOffset:v22 options:0 replyHandler:v27];
    }

    if (*(v83 + 24) != 1)
    {
      v26[0] = _NSConcreteStackBlock;
      v26[1] = 3221225472;
      v26[2] = sub_100007498;
      v26[3] = &unk_100050688;
      v26[4] = &v76;
      v26[5] = &v34;
      v26[6] = &v82;
      v26[7] = &v70;
      v26[8] = a5;
      [(DirItem *)self iterateFromOffset:v19 options:0 replyHandler:v26];
      v23 = v77;
      if ((v83[3] & 1) != 0 || v77[5])
      {
        goto LABEL_21;
      }

      v24 = fs_errorForPOSIXError();
      v25 = v77[5];
      v77[5] = v24;
    }

    v23 = v77;
LABEL_21:
    v12[2](v12, v23[5], v71[5]);
    goto LABEL_14;
  }

  v20 = fs_errorForPOSIXError();
  v12[2](v12, v20, 0);

LABEL_14:
  _Block_object_dispose(&v34, 8);
  _Block_object_dispose(&v70, 8);

  _Block_object_dispose(&v76, 8);
  _Block_object_dispose(&v82, 8);
  _Block_object_dispose(&v86, 8);
  _Block_object_dispose(&v90, 8);
}

- (id)fillNameCache:(id)a3
{
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = sub_100007260;
  v18 = sub_100007270;
  v19 = 0;
  v8 = _NSConcreteStackBlock;
  v9 = 3221225472;
  v10 = sub_100007748;
  v11 = &unk_1000506B0;
  v13 = &v14;
  v4 = a3;
  v12 = v4;
  [(DirItem *)self iterateFromOffset:0 options:0 replyHandler:&v8];
  v5 = v15[5];
  if (v5)
  {
    [v4 setIsIncomplete:{1, v8, v9, v10, v11}];
    v5 = v15[5];
  }

  v6 = v5;

  _Block_object_dispose(&v14, 8);

  return v6;
}

- (void)findFreeSlots:(unsigned int)a3 useOffsetHint:(BOOL)a4 offsetHint:(unint64_t)a5 replyHandler:(id)a6
{
  v7 = a4;
  v10 = a6;
  v11 = 0;
  v58 = 0;
  v59[0] = &v58;
  v59[1] = 0x3032000000;
  v59[2] = sub_100007260;
  v59[3] = sub_100007270;
  v60 = 0;
  v54 = 0;
  v55 = &v54;
  v56 = 0x2020000000;
  v57 = 0;
  v50 = 0;
  v51 = &v50;
  v52 = 0x2020000000;
  v53 = 0;
  v46 = 0;
  v47 = &v46;
  v48 = 0x2020000000;
  v49 = 0;
  if (!v7 || (v12 = [(DirItem *)self getDirSize], v11 = a5, v12 > a5))
  {
    v44[0] = _NSConcreteStackBlock;
    v44[1] = 3221225472;
    v44[2] = sub_100007D94;
    v44[3] = &unk_1000506D8;
    v44[4] = &v58;
    v44[5] = &v46;
    v44[6] = &v54;
    v44[7] = &v50;
    v45 = a3;
    [(DirItem *)self iterateFromOffset:v11 options:0 replyHandler:v44];
    if (*(v59[0] + 40))
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        sub_10002D790(v59);
      }

      v13 = 0;
      v14 = *(v59[0] + 40);
      v15 = 1;
      goto LABEL_9;
    }
  }

  if (*(v55 + 6) == a3)
  {
    v14 = 0;
    v13 = v51[3];
    v15 = *(v47 + 24);
LABEL_9:
    v10[2](v10, v14, v13, v15 & 1);
    goto LABEL_10;
  }

  v16 = [(FATItem *)self volume];
  v17 = [v16 systemInfo];
  v18 = [v17 bytesPerCluster];

  v19 = [(DirItem *)self getDirSize];
  if (*(v55 + 6))
  {
    v20 = v51[3];
    v21 = (v19 - v20) / [(DirItem *)self dirEntrySize];
    if (v21 >= a3)
    {
      v10[2](v10, 0, v51[3], *(v47 + 24));
      goto LABEL_10;
    }
  }

  else
  {
    LODWORD(v21) = 0;
  }

  if (![(DirItem *)self isFat1216RootDir])
  {
    v23 = v18;
    v24 = [(DirItem *)self dirEntrySize]* (a3 - v21);
    v40 = 0;
    v41 = &v40;
    v42 = 0x2020000000;
    v43 = 0;
    v25 = v24 % v18;
    v36 = 0;
    v37 = &v36;
    if (v25)
    {
      v26 = v18 - v25;
    }

    else
    {
      v26 = 0;
    }

    v38 = 0x2020000000;
    v39 = 0;
    v27 = [(FATItem *)self volume];
    v28 = [v27 fatManager];
    v35[0] = _NSConcreteStackBlock;
    v35[1] = 3221225472;
    v35[2] = sub_100007EE8;
    v35[3] = &unk_100050700;
    v35[4] = &v58;
    v35[5] = &v54;
    v35[6] = &v50;
    v35[7] = &v40;
    v35[8] = &v36;
    v35[9] = v19;
    [v28 allocateClusters:(v26 + v24) / v23 forItem:self allowPartial:0 mustBeContig:0 zeroFill:0 replyHandler:v35];

    if (*(v59[0] + 40))
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        sub_10002D80C(v59);
      }
    }

    else
    {
      v29 = [(FATItem *)self volume];
      v30 = [v29 clearNewDirClustersFrom:*(v41 + 6) amount:*(v37 + 6)];
      v31 = *(v59[0] + 40);
      *(v59[0] + 40) = v30;

      if (!*(v59[0] + 40))
      {
        v33 = 0;
        v32 = v51[3];
        v34 = *(v47 + 24);
        goto LABEL_29;
      }

      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        sub_10002D888(v59);
      }
    }

    v32 = 0;
    v33 = *(v59[0] + 40);
    v34 = 1;
LABEL_29:
    v10[2](v10, v33, v32, v34 & 1);
    _Block_object_dispose(&v36, 8);
    _Block_object_dispose(&v40, 8);
    goto LABEL_10;
  }

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_10002D904();
  }

  v22 = fs_errorForPOSIXError();
  v10[2](v10, v22, 0, 1);

LABEL_10:
  _Block_object_dispose(&v46, 8);
  _Block_object_dispose(&v50, 8);
  _Block_object_dispose(&v54, 8);
  _Block_object_dispose(&v58, 8);
}

- (void)iterateDirEntriesAtOffset:(unint64_t)a3 numEntries:(unsigned int)a4 shouldWriteToDisk:(BOOL)a5 replyHandler:(id)a6
{
  v9 = a6;
  v10 = [(DirItem *)self getDirBlockSize];
  v11 = [[DirBlock alloc] initInDir:self];
  v12 = v11;
  if (!v11)
  {
    goto LABEL_6;
  }

  v13 = [v11 readRelativeDirBlockNum:a3 / v10];
  if (v13)
  {
    v14 = v13;
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_10002DD0C();
    }

LABEL_5:
    [v12 releaseBlock];
    v9[2](v9, v14, 0);

    goto LABEL_17;
  }

  v21 = a3 / v10;
  if (!a4)
  {
LABEL_16:
    [v12 releaseBlock];
    goto LABEL_17;
  }

  while (1)
  {
    (v9)[2](v9, 0, [v12 getBytesAtOffset:a3 % v10]);
    a3 += [(DirItem *)self dirEntrySize];
    v16 = a3 % v10;
    if (a4 != 1 && v16)
    {
      goto LABEL_15;
    }

    v17 = [(FATItem *)self volume];
    v18 = [v17 isOffsetInMetadataZone:{objc_msgSend(v12, "offsetInVolume")}];

    if (v18)
    {
      break;
    }

    v19 = [v12 writeToDisk];
    if (v19)
    {
      v14 = v19;
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        sub_10002DD94();
      }

      goto LABEL_5;
    }

    if (a4 != 1 && !v16)
    {
      LODWORD(v21) = v21 + 1;
      v20 = [v12 readRelativeDirBlockNum:?];
      if (v20)
      {
        v14 = v20;
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          sub_10002DE10();
        }

        goto LABEL_5;
      }
    }

LABEL_15:
    if (!--a4)
    {
      goto LABEL_16;
    }
  }

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_10002DE98(v12);
  }

LABEL_6:
  v15 = fs_errorForPOSIXError();
  v9[2](v9, v15, 0);

LABEL_17:
}

- (id)markDirEntriesAsDeletedAndUpdateMtime:(id)a3
{
  v4 = [(DirItem *)self markDirEntriesAsDeleted:a3];
  if (v4)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_10002DF24();
    }

    v5 = v4;
  }

  else
  {
    [(DirItem *)self setOffsetForNewEntry:0];
    v6 = [(DirItem *)self updateModificationTimeOnCreateRemove];
    if (v6)
    {
      v7 = v6;
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        sub_10002DFA8();
      }
    }
  }

  return v4;
}

- (id)checkIfEmpty
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = sub_100007260;
  v9 = sub_100007270;
  v10 = 0;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100008D58;
  v4[3] = &unk_1000507A0;
  v4[4] = &v5;
  [(DirItem *)self iterateFromOffset:0 options:0 replyHandler:v4];
  v2 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v2;
}

- (void)getDirEntryOffsetByIndex:(unsigned int)a3 replyHandler:(id)a4
{
  v6 = a4;
  v24 = 0;
  v25 = &v24;
  v26 = 0x2020000000;
  v27 = 0;
  v20 = 0;
  v21 = &v20;
  v22 = 0x2020000000;
  v23 = 0;
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = sub_100007260;
  v18 = sub_100007270;
  v19 = 0;
  v12[0] = 0;
  v12[1] = v12;
  v12[2] = 0x2020000000;
  v13 = 0;
  if (a3)
  {
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_10000907C;
    v10[3] = &unk_1000506D8;
    v10[4] = &v14;
    v10[5] = v12;
    v11 = a3;
    v10[6] = &v20;
    v10[7] = &v24;
    [(DirItem *)self iterateFromOffset:0 options:0 replyHandler:v10];
    v7 = v15[5];
    v8 = v21[3];
    v9 = *(v25 + 24);
  }

  else
  {
    v9 = 0;
    v8 = 0;
    v7 = 0;
  }

  v6[2](v6, v7, v8, v9 & 1);
  _Block_object_dispose(v12, 8);
  _Block_object_dispose(&v14, 8);

  _Block_object_dispose(&v20, 8);
  _Block_object_dispose(&v24, 8);
}

- (void)purgeMetaBlocksFromCache:(id)a3
{
  v31 = a3;
  v4 = +[NSMutableArray array];
  v5 = [(FATItem *)self volume];
  v6 = [v5 systemInfo];
  v7 = [v6 bytesPerCluster];

  v8 = [(FATItem *)self volume];
  v9 = [v8 systemInfo];
  v10 = [v9 dirBlockSize];

  v11 = v7 / v10;
  v12 = [(FATItem *)self firstCluster];
  v13 = 0;
  v40 = 0;
  v41 = &v40;
  v42 = 0x2020000000;
  v43 = 0;
  v36 = 0;
  v37 = &v36;
  v38 = 0x2020000000;
  v39 = 0;
  v14 = v10;
  while (2)
  {
    v15 = [(FATItem *)self volume];
    v16 = [v15 systemInfo];
    v17 = [v16 isClusterValid:v12];

    if (v17)
    {
      while (1)
      {
        v18 = [(FATItem *)self volume];
        v19 = [v18 systemInfo];
        if (![v19 isClusterValid:v12])
        {
          break;
        }

        v20 = [v4 count];

        if (v20 > 7)
        {
          goto LABEL_8;
        }

        v21 = [(FATItem *)self volume];
        v22 = [v21 fatManager];
        v32[0] = _NSConcreteStackBlock;
        v32[1] = 3221225472;
        v32[2] = sub_100009540;
        v32[3] = &unk_1000507C8;
        v23 = v31;
        v33 = v23;
        v34 = &v40;
        v35 = &v36;
        [v22 getContigClusterChainLengthStartingAt:v12 replyHandler:v32];

        v13 += *(v41 + 6);
        if (v13 > [(FATItem *)self numberOfClusters])
        {
          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
          {
            sub_10002E1A8();
          }

          (*(v23 + 2))(v23, 0);

          v30 = 0;
          goto LABEL_13;
        }

        v24 = [(FATItem *)self volume];
        v25 = [v24 systemInfo];
        v26 = [v25 offsetForCluster:v12];
        v27 = [FSMetadataRange rangeWithOffset:v26 segmentLength:v14 segmentCount:(*(v41 + 6) * v11)];
        [v4 addObject:v27];

        v12 = *(v37 + 6);
      }

LABEL_8:
      v28 = [(FATItem *)self volume];
      v29 = [v28 resource];
      v30 = [Utilities syncMetaPurgeToDevice:v29 rangesToPurge:v4];

      if (!v30)
      {
        [v4 removeAllObjects];
        continue;
      }

      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        sub_10002E12C();
      }
    }

    else
    {
      v30 = 0;
    }

    break;
  }

  (*(v31 + 2))(v31, v30);
LABEL_13:

  _Block_object_dispose(&v36, 8);
  _Block_object_dispose(&v40, 8);
}

@end