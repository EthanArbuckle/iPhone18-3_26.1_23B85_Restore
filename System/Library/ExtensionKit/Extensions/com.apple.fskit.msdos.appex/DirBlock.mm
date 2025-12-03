@interface DirBlock
- (id)initInDir:(id)dir;
- (id)readDirBlockNum:(unint64_t)num;
- (id)readRelativeDirBlockNum:(unsigned int)num;
- (id)setBytes:(id)bytes atOffset:(unint64_t)offset;
- (id)writeToDisk;
- (id)writeToDiskFromOffset:(unint64_t)offset length:(unint64_t)length;
- (void)getBytesAtOffset:(unint64_t)offset;
- (void)releaseBlock;
@end

@implementation DirBlock

- (id)initInDir:(id)dir
{
  dirCopy = dir;
  v11.receiver = self;
  v11.super_class = DirBlock;
  v5 = [(DirBlock *)&v11 init];
  v6 = v5;
  if (v5)
  {
    [(DirBlock *)v5 setDir:dirCopy];
    [(DirBlock *)v6 setOffsetInVolume:0];
    -[DirBlock setSize:](v6, "setSize:", [dirCopy getDirBlockSize]);
    v7 = [NSMutableData dataWithLength:[(DirBlock *)v6 size]];
    [(DirBlock *)v6 setData:v7];

    v8 = [(DirBlock *)v6 dir];
    v9 = [v8 sem];
    dispatch_semaphore_wait(v9, 0xFFFFFFFFFFFFFFFFLL);
  }

  return v6;
}

- (void)releaseBlock
{
  v3 = [(DirBlock *)self dir];
  v2 = [v3 sem];
  dispatch_semaphore_signal(v2);
}

- (id)readDirBlockNum:(unint64_t)num
{
  v5 = [(DirBlock *)self dir];
  isFat1216RootDir = [v5 isFat1216RootDir];

  v7 = [(DirBlock *)self dir];
  volume = [v7 volume];
  systemInfo = [volume systemInfo];
  v10 = systemInfo;
  if (isFat1216RootDir)
  {
    rootSector = [systemInfo rootSector];
    v12 = [(DirBlock *)self dir];
    volume2 = [v12 volume];
    systemInfo2 = [volume2 systemInfo];
    v15 = [systemInfo2 bytesPerSector] * rootSector;
  }

  else
  {
    v15 = [systemInfo offsetForDirBlock:num];
  }

  v16 = [(DirBlock *)self dir];
  volume3 = [v16 volume];
  resource = [volume3 resource];
  data = [(DirBlock *)self data];
  v20 = +[Utilities syncMetaReadFromDevice:into:startingAt:length:](Utilities, "syncMetaReadFromDevice:into:startingAt:length:", resource, [data mutableBytes], v15, -[DirBlock size](self, "size"));

  if (!v20)
  {
    [(DirBlock *)self setOffsetInVolume:v15];
  }

  return v20;
}

- (id)readRelativeDirBlockNum:(unsigned int)num
{
  v41 = 0;
  v42[0] = &v41;
  v42[1] = 0x3032000000;
  v42[2] = sub_100006668;
  v42[3] = sub_100006678;
  v43 = 0;
  v37 = 0;
  v38 = &v37;
  v39 = 0x2020000000;
  v40 = 0;
  v33 = 0;
  v34 = &v33;
  v35 = 0x2020000000;
  v36 = 0;
  v4 = [(DirBlock *)self dir];
  firstCluster = [v4 firstCluster];

  v6 = [(DirBlock *)self dir];
  volume = [v6 volume];
  systemInfo = [volume systemInfo];
  dirBlockSize = [systemInfo dirBlockSize];

  v10 = [(DirBlock *)self dir];
  volume2 = [v10 volume];
  systemInfo2 = [volume2 systemInfo];
  bytesPerCluster = [systemInfo2 bytesPerCluster];

  v14 = [(DirBlock *)self dir];
  LOBYTE(volume2) = [v14 isFat1216RootDir];

  if (volume2)
  {
    v15 = 0;
LABEL_3:
    v16 = [(DirBlock *)self readDirBlockNum:v15];
  }

  else
  {
    v17 = 0;
    v18 = bytesPerCluster / dirBlockSize;
    while (1)
    {
      v19 = [(DirBlock *)self dir];
      volume3 = [v19 volume];
      systemInfo3 = [volume3 systemInfo];
      v22 = [systemInfo3 isClusterValid:firstCluster];

      if (!v22)
      {
        goto LABEL_15;
      }

      v23 = [(DirBlock *)self dir];
      volume4 = [v23 volume];
      fatManager = [volume4 fatManager];
      v32[0] = _NSConcreteStackBlock;
      v32[1] = 3221225472;
      v32[2] = sub_100006680;
      v32[3] = &unk_1000505E8;
      v32[4] = &v41;
      v32[5] = &v33;
      v32[6] = &v37;
      [fatManager getContigClusterChainLengthStartingAt:firstCluster replyHandler:v32];

      if (*(v42[0] + 40))
      {
        break;
      }

      if (num >= v17)
      {
        v26 = *(v34 + 6);
        if (v18 * v26 + v17 > num)
        {
          v15 = num - v17 + firstCluster * v18;
          if (v15)
          {
            goto LABEL_3;
          }

LABEL_15:
          v27 = &_os_log_default;
          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_FAULT))
          {
            v28 = [(DirBlock *)self dir];
            sub_10002D3D0(buf, num, [v28 getDirSize], v28);
          }

          v16 = fs_errorForPOSIXError();
          goto LABEL_18;
        }
      }

      else
      {
        v26 = *(v34 + 6);
      }

      v17 += v26 * v18;
      firstCluster = *(v38 + 6);
    }

    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_10002D334(v42);
    }

    v16 = *(v42[0] + 40);
  }

LABEL_18:
  v29 = v16;
  _Block_object_dispose(&v33, 8);
  _Block_object_dispose(&v37, 8);
  _Block_object_dispose(&v41, 8);

  return v29;
}

- (void)getBytesAtOffset:(unint64_t)offset
{
  if ([(DirBlock *)self size]<= offset)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_10002D44C(self, offset);
    }

    return 0;
  }

  else
  {
    data = [(DirBlock *)self data];
    v6 = [data bytes] + offset;
  }

  return v6;
}

- (id)setBytes:(id)bytes atOffset:(unint64_t)offset
{
  bytesCopy = bytes;
  v7 = [bytesCopy length] + offset;
  if (v7 <= [(DirBlock *)self size])
  {
    data = [(DirBlock *)self data];
    memcpy([data mutableBytes] + offset, objc_msgSend(bytesCopy, "bytes"), objc_msgSend(bytesCopy, "length"));

    v8 = 0;
  }

  else
  {
    v8 = fs_errorForPOSIXError();
  }

  return v8;
}

- (id)writeToDisk
{
  v3 = [(DirBlock *)self dir];
  volume = [v3 volume];
  resource = [volume resource];
  data = [(DirBlock *)self data];
  v7 = +[Utilities metaWriteToDevice:from:startingAt:length:forceSyncWrite:](Utilities, "metaWriteToDevice:from:startingAt:length:forceSyncWrite:", resource, [data bytes], -[DirBlock offsetInVolume](self, "offsetInVolume"), -[DirBlock size](self, "size"), 0);

  return v7;
}

- (id)writeToDiskFromOffset:(unint64_t)offset length:(unint64_t)length
{
  if (length + offset <= [(DirBlock *)self size])
  {
    [(DirBlock *)self writeToDisk];
  }

  else
  {
    fs_errorForPOSIXError();
  }
  v5 = ;

  return v5;
}

@end