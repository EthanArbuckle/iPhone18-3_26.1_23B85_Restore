@interface FileItem
- (id)completeIOAtOffset:(int64_t)a3 length:(unint64_t)a4 status:(int)a5 flags:(unint64_t)a6 operationID:(unint64_t)a7;
- (id)getAttributes:(id)a3;
- (void)blockmapOffset:(int64_t)a3 length:(unint64_t)a4 flags:(unint64_t)a5 operationID:(unint64_t)a6 packer:(id)a7 replyHandler:(id)a8;
- (void)fetchFileExtentsFrom:(unint64_t)a3 to:(unint64_t)a4 usingBlocks:(id)a5 replyHandler:(id)a6;
- (void)updateModificationTime:(id)a3;
- (void)updatePreallocStatus;
@end

@implementation FileItem

- (void)blockmapOffset:(int64_t)a3 length:(unint64_t)a4 flags:(unint64_t)a5 operationID:(unint64_t)a6 packer:(id)a7 replyHandler:(id)a8
{
  v43 = a7;
  v13 = a8;
  v45 = 0;
  v46[0] = &v45;
  v46[1] = 0x3032000000;
  v46[2] = sub_1000151E4;
  v46[3] = sub_1000151F4;
  v47 = 0;
  v14 = [(FATItem *)self volume];
  v15 = [v14 systemInfo];
  v16 = [v15 bytesPerCluster];

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136316162;
    v49 = "[FileItem blockmapOffset:length:flags:operationID:packer:replyHandler:]";
    v50 = 2048;
    v51 = a3;
    v52 = 2048;
    v53 = a4;
    v54 = 2048;
    v55 = a5;
    v56 = 2048;
    v57 = a6;
    _os_log_debug_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEBUG, "%s: offset: %llu, length: %zu, flags: %lu, operationID: %lu.\n", buf, 0x34u);
    if ((a5 & 0x200) != 0)
    {
      goto LABEL_3;
    }
  }

  else if ((a5 & 0x200) != 0)
  {
    goto LABEL_3;
  }

  if ((a5 & 0x100) == 0 && FSOperationIDUnspecified != a6)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_100031178();
    }

    goto LABEL_29;
  }

LABEL_3:
  if (a4)
  {
    v17 = a4 + a3;
    if (a4 + a3 > [(FileItem *)self maxFileSize])
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        sub_1000314C4();
      }

LABEL_29:
      v25 = fs_errorForPOSIXError();
      v13[2](v13, v25);
LABEL_30:

      goto LABEL_31;
    }

    if ((a5 & 0x200) != 0)
    {
      v18 = [(FATItem *)self volume];
      v19 = [v18 fatManager];
      [v19 setDirtyBitValue:1 forceWriteToDisk:0 replyHandler:&stru_100050FB8];
    }

    v20 = [(FATItem *)self numberOfClusters];
    v21 = [(FATItem *)self entryData];
    v40 = [v21 getSize];

    v22 = v16;
    v23 = v16 * v20;
    v24 = (a5 >> 9) & 1;
    if (v23 > a3)
    {
      LOBYTE(v24) = 1;
    }

    if ((v24 & 1) == 0)
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        sub_1000311FC();
      }

      goto LABEL_29;
    }

    if ((a5 & 0x200) != 0)
    {
      if (v23 < v40)
      {
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          sub_100031438();
        }

        goto LABEL_29;
      }

      if (v17 > v40)
      {
        if (v17 > v23)
        {
          v26 = [(FileItem *)self truncateTo:a4 + a3 allowPartial:1 mustBeContig:0];
          v27 = *(v46[0] + 40);
          *(v46[0] + 40) = v26;

          if (*(v46[0] + 40))
          {
            if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
            {
              sub_100031288(v46);
            }

            goto LABEL_45;
          }

          v23 = v22 * [(FATItem *)self numberOfClusters];
          if (v23 <= a3)
          {
            if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
            {
              sub_100031314();
            }

            v39 = [(FileItem *)self truncateTo:v40 allowPartial:0 mustBeContig:0, v40];
            v25 = fs_errorForPOSIXError();
            v13[2](v13, v25);
            goto LABEL_30;
          }

          if (v23 < v17)
          {
            if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
            {
              sub_100031398(v23, a3, a4);
            }

            v17 = v23;
          }
        }

        v28 = [(FATItem *)self entryData];
        [v28 setSize:v17];
      }
    }

    v44[0] = _NSConcreteStackBlock;
    v44[1] = 3221225472;
    v44[2] = sub_100015A04;
    v44[3] = &unk_100050C58;
    v44[4] = &v45;
    [(FileItem *)self fetchFileExtentsFrom:a3 to:v23 usingBlocks:v43 replyHandler:v44, v40];
    if (!*(v46[0] + 40))
    {
      v31 = 0;
      if ((a5 & 0x200) != 0 && FSOperationIDUnspecified != a6)
      {
        v32 = [(FileItem *)self blockmapRequests];
        v33 = [NSNumber numberWithUnsignedLong:a6];
        v34 = [v32 objectForKeyedSubscript:v33];
        v35 = v34 == 0;

        if (v35)
        {
          v36 = [(FileItem *)self blockmapRequests];
          v37 = [[BlockmapRequest alloc] initWithOriginalSize:v41];
          v38 = [NSNumber numberWithUnsignedLong:a6];
          [v36 setObject:v37 forKey:v38];

          [(FileItem *)self setWriteCounter:[(FileItem *)self writeCounter]+ 1];
        }

        v31 = 0;
      }

      goto LABEL_51;
    }

    v29 = [(FileItem *)self truncateTo:v41 allowPartial:0 mustBeContig:0];
    v30 = [(FATItem *)self entryData];
    [v30 setSize:v41];

LABEL_45:
    v31 = *(v46[0] + 40);
LABEL_51:
    v13[2](v13, v31);
    goto LABEL_31;
  }

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v49 = "[FileItem blockmapOffset:length:flags:operationID:packer:replyHandler:]";
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%s: Requested length = 0. Exit with SUCCESS and numOfExtentsFetched = 0.", buf, 0xCu);
  }

  v13[2](v13, 0);
LABEL_31:
  _Block_object_dispose(&v45, 8);
}

- (id)completeIOAtOffset:(int64_t)a3 length:(unint64_t)a4 status:(int)a5 flags:(unint64_t)a6 operationID:(unint64_t)a7
{
  v13 = [(FATItem *)self volume];
  v14 = [v13 systemInfo];
  v15 = [v14 bytesPerCluster];

  v36 = 0;
  v37 = &v36;
  v38 = 0x2020000000;
  v39 = 0;
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136316418;
    v41 = "[FileItem completeIOAtOffset:length:status:flags:operationID:]";
    v42 = 2048;
    v43 = a3;
    v44 = 2048;
    v45 = a4;
    v46 = 1024;
    v47 = a5;
    v48 = 2048;
    v49 = a6;
    v50 = 2048;
    v51 = a7;
    _os_log_debug_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEBUG, "%s: offset: %lu, length: %lu, status: %d, flags: %lu, operationID: %lu.", buf, 0x3Au);
    if ((a6 & 0x100) == 0)
    {
      goto LABEL_3;
    }

LABEL_38:
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_100031650();
    }

    goto LABEL_40;
  }

  if ((a6 & 0x100) != 0)
  {
    goto LABEL_38;
  }

LABEL_3:
  if (FSOperationIDUnspecified == a7)
  {
    v16 = 0;
LABEL_6:
    v19 = [(FATItem *)self volume];
    v20 = [v19 fatManager];
    [v20 setDirtyBitValue:1 forceWriteToDisk:0 replyHandler:&stru_100050FD8];

    v21 = a4 + a3;
    if (a5)
    {
      goto LABEL_7;
    }

    if (v21 > v15 * [(FATItem *)self numberOfClusters])
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        sub_1000317E0();
      }

      v22 = fs_errorForPOSIXError();
      goto LABEL_22;
    }

    if (v16 && v21 > [v16 originalFileSize])
    {
      *(v37 + 24) = 1;
    }

    v28 = [(FATItem *)self entryData];
    v29 = v21 > [v28 getSize];

    if (v29)
    {
      v30 = [(FATItem *)self entryData];
      [v30 setSize:v21];

      *(v37 + 24) = 1;
    }

    v31 = [(FATItem *)self entryData];
    v32 = v21 > [v31 getValidDataLength];

    if (v32)
    {
      v33 = [(FATItem *)self entryData];
      [v33 setValidDataLength:v21];

      *(v37 + 24) = 1;
    }

    v35[0] = _NSConcreteStackBlock;
    v35[1] = 3221225472;
    v35[2] = sub_100015FD0;
    v35[3] = &unk_100051000;
    v35[4] = &v36;
    [(FileItem *)self updateModificationTime:v35];
    [(FileItem *)self updatePreallocStatus];
    if (*(v37 + 24) != 1 || [(FATItem *)self isDeleted])
    {
LABEL_7:
      v22 = 0;
    }

    else
    {
      v22 = [(FATItem *)self flushDirEntryData];
      if (v22 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        sub_10003175C();
      }
    }

    if (v22)
    {
      v23 = 0;
    }

    else
    {
      v23 = a5 == 0;
    }

    if (v23 || !v16)
    {
      if (!v16)
      {
LABEL_22:

        goto LABEL_41;
      }
    }

    else if (v21 > [v16 originalFileSize] && !-[FileItem writeCounter](self, "writeCounter"))
    {
      v24 = -[FileItem truncateTo:allowPartial:mustBeContig:](self, "truncateTo:allowPartial:mustBeContig:", [v16 originalFileSize], 0, 0);
      v25 = [(FATItem *)self entryData];
      [v25 setSize:{objc_msgSend(v16, "originalFileSize")}];
    }

    v26 = [(FileItem *)self blockmapRequests];
    v27 = [NSNumber numberWithUnsignedLong:a7];
    [v26 removeObjectForKey:v27];

    goto LABEL_22;
  }

  [(FileItem *)self setWriteCounter:[(FileItem *)self writeCounter]- 1];
  v17 = [(FileItem *)self blockmapRequests];
  v18 = [NSNumber numberWithUnsignedLong:a7];
  v16 = [v17 objectForKey:v18];

  if (v16)
  {
    goto LABEL_6;
  }

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_FAULT))
  {
    sub_1000316D4();
  }

LABEL_40:
  v22 = fs_errorForPOSIXError();
LABEL_41:
  _Block_object_dispose(&v36, 8);

  return v22;
}

- (void)fetchFileExtentsFrom:(unint64_t)a3 to:(unint64_t)a4 usingBlocks:(id)a5 replyHandler:(id)a6
{
  v43 = a5;
  v8 = a6;
  v55 = 0;
  v56[0] = &v55;
  v56[1] = 0x3032000000;
  v56[2] = sub_1000151E4;
  v56[3] = sub_1000151F4;
  v57 = 0;
  v51 = 0;
  v52 = &v51;
  v53 = 0x2020000000;
  v54 = 0;
  v47 = 0;
  v48 = &v47;
  v49 = 0x2020000000;
  v50 = 0;
  v9 = [(FATItem *)self volume];
  v10 = [v9 systemInfo];
  v11 = [v10 bytesPerCluster];

  v12 = [(FATItem *)self volume];
  v13 = [v12 systemInfo];
  v14 = [v13 bytesPerSector];

  v44 = v11;
  v15 = a3 / v11;
  if (v15 >= [(FATItem *)self firstClusterIndexInLastAllocation]&& (v16 = [(FATItem *)self firstClusterIndexInLastAllocation]) != 0)
  {
    v17 = [(FATItem *)self firstClusterInLastAllocation];
    v18 = v16;
  }

  else
  {
    v17 = [(FATItem *)self firstCluster];
    v18 = 0;
  }

  v19 = 0;
  v41 = 0xFFFFFFFFuLL / v14;
  v42 = v14;
  while (1)
  {
    v20 = [(FATItem *)self volume];
    v21 = [v20 systemInfo];
    v22 = [v21 isClusterValid:v17];

    if (!v22)
    {
      break;
    }

    v23 = [(FATItem *)self volume];
    v24 = [v23 fatManager];
    v46[0] = _NSConcreteStackBlock;
    v46[1] = 3221225472;
    v46[2] = sub_1000164CC;
    v46[3] = &unk_1000505E8;
    v46[4] = &v55;
    v46[5] = &v47;
    v46[6] = &v51;
    [v24 getContigClusterChainLengthStartingAt:v17 replyHandler:v46];

    if (*(v56[0] + 40))
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        sub_1000318F0(v56);
      }

      break;
    }

    if (v19)
    {
LABEL_13:
      v26 = [(FATItem *)self volume];
      v27 = [v26 systemInfo];
      v28 = [v27 offsetForCluster:v17];

      v29 = [(FATItem *)self volume];
      v30 = a3 % v44;
      LODWORD(v27) = [v29 isOffsetInMetadataZone:&v28[a3 % v44]];

      if (v27)
      {
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          sub_10003197C();
        }

        v39 = fs_errorForPOSIXError();
        v40 = *(v56[0] + 40);
        *(v56[0] + 40) = v39;

        break;
      }

      v31 = *(v48 + 6) * v44 - v30;
      if (v31 % v42)
      {
        v32 = v42 - v31 % v42;
      }

      else
      {
        v32 = 0;
      }

      v33 = v31 + v32;
      if (v33 >= ((0xFFFFFFFF - v41 * v42) ^ 0xFFFFFFFF))
      {
        v34 = (0xFFFFFFFF - v41 * v42) ^ 0xFFFFFFFF;
      }

      else
      {
        v34 = v33;
      }

      v35 = [(FATItem *)self volume];
      v36 = [v35 resource];
      v37 = [v43 packExtentWithResource:v36 type:0 logicalOffset:a3 physicalOffset:&v28[v30] length:v34];

      if (!v37)
      {
        break;
      }

      v38 = (v34 + v30) / v44;
      if (v38 >= *(v48 + 6))
      {
        v17 = *(v52 + 6);
      }

      else
      {
        v17 = (v17 + v38);
      }

      a3 += v34;
      v19 = 1;
    }

    else
    {
      v25 = *(v48 + 6);
      if (v15 >= v18 && v18 + v25 > v15)
      {
        LODWORD(v17) = v17 + v15 - v18;
        *(v48 + 6) = v25 - (v15 - v18);
        goto LABEL_13;
      }

      v19 = 0;
      v17 = *(v52 + 6);
      v18 += v25;
    }
  }

  v8[2](v8);
  _Block_object_dispose(&v47, 8);
  _Block_object_dispose(&v51, 8);
  _Block_object_dispose(&v55, 8);
}

- (void)updateModificationTime:(id)a3
{
  v4 = a3;
  v10[0] = 0;
  v10[1] = 0;
  v9.tv_sec = 0;
  v9.tv_nsec = 0;
  CONV_GetCurrentTime(&v9);
  v5 = [(FATItem *)self entryData];
  [v5 getModifyTime:v10];

  v6 = v10[0];
  tv_sec = v9.tv_sec;
  if (v10[0] != v9.tv_sec)
  {
    v8 = [(FATItem *)self entryData];
    [v8 setModifyTime:&v9];
  }

  v4[2](v4, v6 != tv_sec);
}

- (void)updatePreallocStatus
{
  v3 = [(FATItem *)self volume];
  v4 = [v3 systemInfo];
  v5 = [v4 bytesPerCluster];

  v6 = [(FATItem *)self entryData];
  v7 = [v6 getSize] % v5;
  v8 = [(FATItem *)self entryData];
  v9 = [v8 getSize];
  if (v7)
  {
    v10 = [(FATItem *)self entryData];
    v11 = [v10 getSize];
    v9 += v5 + v11 / v5 * v5 - v11;
  }

  v12 = [(FATItem *)self numberOfClusters]!= (v9 / v5);

  [(FileItem *)self setPreAllocated:v12];
}

- (id)getAttributes:(id)a3
{
  v5.receiver = self;
  v5.super_class = FileItem;
  v3 = [(FATItem *)&v5 getAttributes:a3];

  return v3;
}

@end