@interface FileItem
- (id)completeIOAtOffset:(int64_t)offset length:(unint64_t)length status:(int)status flags:(unint64_t)flags operationID:(unint64_t)d;
- (id)getAttributes:(id)attributes;
- (void)blockmapOffset:(int64_t)offset length:(unint64_t)length flags:(unint64_t)flags operationID:(unint64_t)d packer:(id)packer replyHandler:(id)handler;
- (void)fetchFileExtentsFrom:(unint64_t)from to:(unint64_t)to usingBlocks:(id)blocks replyHandler:(id)handler;
- (void)updateModificationTime:(id)time;
- (void)updatePreallocStatus;
@end

@implementation FileItem

- (void)blockmapOffset:(int64_t)offset length:(unint64_t)length flags:(unint64_t)flags operationID:(unint64_t)d packer:(id)packer replyHandler:(id)handler
{
  packerCopy = packer;
  handlerCopy = handler;
  v45 = 0;
  v46[0] = &v45;
  v46[1] = 0x3032000000;
  v46[2] = sub_1000151E4;
  v46[3] = sub_1000151F4;
  v47 = 0;
  volume = [(FATItem *)self volume];
  systemInfo = [volume systemInfo];
  bytesPerCluster = [systemInfo bytesPerCluster];

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136316162;
    v49 = "[FileItem blockmapOffset:length:flags:operationID:packer:replyHandler:]";
    v50 = 2048;
    offsetCopy = offset;
    v52 = 2048;
    lengthCopy = length;
    v54 = 2048;
    flagsCopy = flags;
    v56 = 2048;
    dCopy = d;
    _os_log_debug_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEBUG, "%s: offset: %llu, length: %zu, flags: %lu, operationID: %lu.\n", buf, 0x34u);
    if ((flags & 0x200) != 0)
    {
      goto LABEL_3;
    }
  }

  else if ((flags & 0x200) != 0)
  {
    goto LABEL_3;
  }

  if ((flags & 0x100) == 0 && FSOperationIDUnspecified != d)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_100031178();
    }

    goto LABEL_29;
  }

LABEL_3:
  if (length)
  {
    v17 = length + offset;
    if (length + offset > [(FileItem *)self maxFileSize])
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        sub_1000314C4();
      }

LABEL_29:
      v25 = fs_errorForPOSIXError();
      handlerCopy[2](handlerCopy, v25);
LABEL_30:

      goto LABEL_31;
    }

    if ((flags & 0x200) != 0)
    {
      volume2 = [(FATItem *)self volume];
      fatManager = [volume2 fatManager];
      [fatManager setDirtyBitValue:1 forceWriteToDisk:0 replyHandler:&stru_100050FB8];
    }

    numberOfClusters = [(FATItem *)self numberOfClusters];
    entryData = [(FATItem *)self entryData];
    getSize = [entryData getSize];

    v22 = bytesPerCluster;
    v23 = bytesPerCluster * numberOfClusters;
    v24 = (flags >> 9) & 1;
    if (v23 > offset)
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

    if ((flags & 0x200) != 0)
    {
      if (v23 < getSize)
      {
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          sub_100031438();
        }

        goto LABEL_29;
      }

      if (v17 > getSize)
      {
        if (v17 > v23)
        {
          v26 = [(FileItem *)self truncateTo:length + offset allowPartial:1 mustBeContig:0];
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
          if (v23 <= offset)
          {
            if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
            {
              sub_100031314();
            }

            v39 = [(FileItem *)self truncateTo:getSize allowPartial:0 mustBeContig:0, getSize];
            v25 = fs_errorForPOSIXError();
            handlerCopy[2](handlerCopy, v25);
            goto LABEL_30;
          }

          if (v23 < v17)
          {
            if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
            {
              sub_100031398(v23, offset, length);
            }

            v17 = v23;
          }
        }

        entryData2 = [(FATItem *)self entryData];
        [entryData2 setSize:v17];
      }
    }

    v44[0] = _NSConcreteStackBlock;
    v44[1] = 3221225472;
    v44[2] = sub_100015A04;
    v44[3] = &unk_100050C58;
    v44[4] = &v45;
    [(FileItem *)self fetchFileExtentsFrom:offset to:v23 usingBlocks:packerCopy replyHandler:v44, getSize];
    if (!*(v46[0] + 40))
    {
      v31 = 0;
      if ((flags & 0x200) != 0 && FSOperationIDUnspecified != d)
      {
        blockmapRequests = [(FileItem *)self blockmapRequests];
        v33 = [NSNumber numberWithUnsignedLong:d];
        v34 = [blockmapRequests objectForKeyedSubscript:v33];
        v35 = v34 == 0;

        if (v35)
        {
          blockmapRequests2 = [(FileItem *)self blockmapRequests];
          v37 = [[BlockmapRequest alloc] initWithOriginalSize:v41];
          v38 = [NSNumber numberWithUnsignedLong:d];
          [blockmapRequests2 setObject:v37 forKey:v38];

          [(FileItem *)self setWriteCounter:[(FileItem *)self writeCounter]+ 1];
        }

        v31 = 0;
      }

      goto LABEL_51;
    }

    v29 = [(FileItem *)self truncateTo:v41 allowPartial:0 mustBeContig:0];
    entryData3 = [(FATItem *)self entryData];
    [entryData3 setSize:v41];

LABEL_45:
    v31 = *(v46[0] + 40);
LABEL_51:
    handlerCopy[2](handlerCopy, v31);
    goto LABEL_31;
  }

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v49 = "[FileItem blockmapOffset:length:flags:operationID:packer:replyHandler:]";
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%s: Requested length = 0. Exit with SUCCESS and numOfExtentsFetched = 0.", buf, 0xCu);
  }

  handlerCopy[2](handlerCopy, 0);
LABEL_31:
  _Block_object_dispose(&v45, 8);
}

- (id)completeIOAtOffset:(int64_t)offset length:(unint64_t)length status:(int)status flags:(unint64_t)flags operationID:(unint64_t)d
{
  volume = [(FATItem *)self volume];
  systemInfo = [volume systemInfo];
  bytesPerCluster = [systemInfo bytesPerCluster];

  v36 = 0;
  v37 = &v36;
  v38 = 0x2020000000;
  v39 = 0;
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136316418;
    v41 = "[FileItem completeIOAtOffset:length:status:flags:operationID:]";
    v42 = 2048;
    offsetCopy = offset;
    v44 = 2048;
    lengthCopy = length;
    v46 = 1024;
    statusCopy = status;
    v48 = 2048;
    flagsCopy = flags;
    v50 = 2048;
    dCopy = d;
    _os_log_debug_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEBUG, "%s: offset: %lu, length: %lu, status: %d, flags: %lu, operationID: %lu.", buf, 0x3Au);
    if ((flags & 0x100) == 0)
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

  if ((flags & 0x100) != 0)
  {
    goto LABEL_38;
  }

LABEL_3:
  if (FSOperationIDUnspecified == d)
  {
    v16 = 0;
LABEL_6:
    volume2 = [(FATItem *)self volume];
    fatManager = [volume2 fatManager];
    [fatManager setDirtyBitValue:1 forceWriteToDisk:0 replyHandler:&stru_100050FD8];

    v21 = length + offset;
    if (status)
    {
      goto LABEL_7;
    }

    if (v21 > bytesPerCluster * [(FATItem *)self numberOfClusters])
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        sub_1000317E0();
      }

      flushDirEntryData = fs_errorForPOSIXError();
      goto LABEL_22;
    }

    if (v16 && v21 > [v16 originalFileSize])
    {
      *(v37 + 24) = 1;
    }

    entryData = [(FATItem *)self entryData];
    v29 = v21 > [entryData getSize];

    if (v29)
    {
      entryData2 = [(FATItem *)self entryData];
      [entryData2 setSize:v21];

      *(v37 + 24) = 1;
    }

    entryData3 = [(FATItem *)self entryData];
    v32 = v21 > [entryData3 getValidDataLength];

    if (v32)
    {
      entryData4 = [(FATItem *)self entryData];
      [entryData4 setValidDataLength:v21];

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
      flushDirEntryData = 0;
    }

    else
    {
      flushDirEntryData = [(FATItem *)self flushDirEntryData];
      if (flushDirEntryData && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        sub_10003175C();
      }
    }

    if (flushDirEntryData)
    {
      v23 = 0;
    }

    else
    {
      v23 = status == 0;
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
      entryData5 = [(FATItem *)self entryData];
      [entryData5 setSize:{objc_msgSend(v16, "originalFileSize")}];
    }

    blockmapRequests = [(FileItem *)self blockmapRequests];
    v27 = [NSNumber numberWithUnsignedLong:d];
    [blockmapRequests removeObjectForKey:v27];

    goto LABEL_22;
  }

  [(FileItem *)self setWriteCounter:[(FileItem *)self writeCounter]- 1];
  blockmapRequests2 = [(FileItem *)self blockmapRequests];
  v18 = [NSNumber numberWithUnsignedLong:d];
  v16 = [blockmapRequests2 objectForKey:v18];

  if (v16)
  {
    goto LABEL_6;
  }

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_FAULT))
  {
    sub_1000316D4();
  }

LABEL_40:
  flushDirEntryData = fs_errorForPOSIXError();
LABEL_41:
  _Block_object_dispose(&v36, 8);

  return flushDirEntryData;
}

- (void)fetchFileExtentsFrom:(unint64_t)from to:(unint64_t)to usingBlocks:(id)blocks replyHandler:(id)handler
{
  blocksCopy = blocks;
  handlerCopy = handler;
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
  volume = [(FATItem *)self volume];
  systemInfo = [volume systemInfo];
  bytesPerCluster = [systemInfo bytesPerCluster];

  volume2 = [(FATItem *)self volume];
  systemInfo2 = [volume2 systemInfo];
  bytesPerSector = [systemInfo2 bytesPerSector];

  v44 = bytesPerCluster;
  v15 = from / bytesPerCluster;
  if (v15 >= [(FATItem *)self firstClusterIndexInLastAllocation]&& (v16 = [(FATItem *)self firstClusterIndexInLastAllocation]) != 0)
  {
    firstClusterInLastAllocation = [(FATItem *)self firstClusterInLastAllocation];
    v18 = v16;
  }

  else
  {
    firstClusterInLastAllocation = [(FATItem *)self firstCluster];
    v18 = 0;
  }

  v19 = 0;
  v41 = 0xFFFFFFFFuLL / bytesPerSector;
  v42 = bytesPerSector;
  while (1)
  {
    volume3 = [(FATItem *)self volume];
    systemInfo3 = [volume3 systemInfo];
    v22 = [systemInfo3 isClusterValid:firstClusterInLastAllocation];

    if (!v22)
    {
      break;
    }

    volume4 = [(FATItem *)self volume];
    fatManager = [volume4 fatManager];
    v46[0] = _NSConcreteStackBlock;
    v46[1] = 3221225472;
    v46[2] = sub_1000164CC;
    v46[3] = &unk_1000505E8;
    v46[4] = &v55;
    v46[5] = &v47;
    v46[6] = &v51;
    [fatManager getContigClusterChainLengthStartingAt:firstClusterInLastAllocation replyHandler:v46];

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
      volume5 = [(FATItem *)self volume];
      systemInfo4 = [volume5 systemInfo];
      v28 = [systemInfo4 offsetForCluster:firstClusterInLastAllocation];

      volume6 = [(FATItem *)self volume];
      v30 = from % v44;
      LODWORD(systemInfo4) = [volume6 isOffsetInMetadataZone:&v28[from % v44]];

      if (systemInfo4)
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

      volume7 = [(FATItem *)self volume];
      resource = [volume7 resource];
      v37 = [blocksCopy packExtentWithResource:resource type:0 logicalOffset:from physicalOffset:&v28[v30] length:v34];

      if (!v37)
      {
        break;
      }

      v38 = (v34 + v30) / v44;
      if (v38 >= *(v48 + 6))
      {
        firstClusterInLastAllocation = *(v52 + 6);
      }

      else
      {
        firstClusterInLastAllocation = (firstClusterInLastAllocation + v38);
      }

      from += v34;
      v19 = 1;
    }

    else
    {
      v25 = *(v48 + 6);
      if (v15 >= v18 && v18 + v25 > v15)
      {
        LODWORD(firstClusterInLastAllocation) = firstClusterInLastAllocation + v15 - v18;
        *(v48 + 6) = v25 - (v15 - v18);
        goto LABEL_13;
      }

      v19 = 0;
      firstClusterInLastAllocation = *(v52 + 6);
      v18 += v25;
    }
  }

  handlerCopy[2](handlerCopy);
  _Block_object_dispose(&v47, 8);
  _Block_object_dispose(&v51, 8);
  _Block_object_dispose(&v55, 8);
}

- (void)updateModificationTime:(id)time
{
  timeCopy = time;
  v10[0] = 0;
  v10[1] = 0;
  v9.tv_sec = 0;
  v9.tv_nsec = 0;
  CONV_GetCurrentTime(&v9);
  entryData = [(FATItem *)self entryData];
  [entryData getModifyTime:v10];

  v6 = v10[0];
  tv_sec = v9.tv_sec;
  if (v10[0] != v9.tv_sec)
  {
    entryData2 = [(FATItem *)self entryData];
    [entryData2 setModifyTime:&v9];
  }

  timeCopy[2](timeCopy, v6 != tv_sec);
}

- (void)updatePreallocStatus
{
  volume = [(FATItem *)self volume];
  systemInfo = [volume systemInfo];
  bytesPerCluster = [systemInfo bytesPerCluster];

  entryData = [(FATItem *)self entryData];
  v7 = [entryData getSize] % bytesPerCluster;
  entryData2 = [(FATItem *)self entryData];
  getSize = [entryData2 getSize];
  if (v7)
  {
    entryData3 = [(FATItem *)self entryData];
    getSize2 = [entryData3 getSize];
    getSize += bytesPerCluster + getSize2 / bytesPerCluster * bytesPerCluster - getSize2;
  }

  v12 = [(FATItem *)self numberOfClusters]!= (getSize / bytesPerCluster);

  [(FileItem *)self setPreAllocated:v12];
}

- (id)getAttributes:(id)attributes
{
  v5.receiver = self;
  v5.super_class = FileItem;
  v3 = [(FATItem *)&v5 getAttributes:attributes];

  return v3;
}

@end