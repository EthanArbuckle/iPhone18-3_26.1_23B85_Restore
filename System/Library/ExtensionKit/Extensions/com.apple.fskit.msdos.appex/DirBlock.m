@interface DirBlock
- (id)initInDir:(id)a3;
- (id)readDirBlockNum:(unint64_t)a3;
- (id)readRelativeDirBlockNum:(unsigned int)a3;
- (id)setBytes:(id)a3 atOffset:(unint64_t)a4;
- (id)writeToDisk;
- (id)writeToDiskFromOffset:(unint64_t)a3 length:(unint64_t)a4;
- (void)getBytesAtOffset:(unint64_t)a3;
- (void)releaseBlock;
@end

@implementation DirBlock

- (id)initInDir:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = DirBlock;
  v5 = [(DirBlock *)&v11 init];
  v6 = v5;
  if (v5)
  {
    [(DirBlock *)v5 setDir:v4];
    [(DirBlock *)v6 setOffsetInVolume:0];
    -[DirBlock setSize:](v6, "setSize:", [v4 getDirBlockSize]);
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

- (id)readDirBlockNum:(unint64_t)a3
{
  v5 = [(DirBlock *)self dir];
  v6 = [v5 isFat1216RootDir];

  v7 = [(DirBlock *)self dir];
  v8 = [v7 volume];
  v9 = [v8 systemInfo];
  v10 = v9;
  if (v6)
  {
    v11 = [v9 rootSector];
    v12 = [(DirBlock *)self dir];
    v13 = [v12 volume];
    v14 = [v13 systemInfo];
    v15 = [v14 bytesPerSector] * v11;
  }

  else
  {
    v15 = [v9 offsetForDirBlock:a3];
  }

  v16 = [(DirBlock *)self dir];
  v17 = [v16 volume];
  v18 = [v17 resource];
  v19 = [(DirBlock *)self data];
  v20 = +[Utilities syncMetaReadFromDevice:into:startingAt:length:](Utilities, "syncMetaReadFromDevice:into:startingAt:length:", v18, [v19 mutableBytes], v15, -[DirBlock size](self, "size"));

  if (!v20)
  {
    [(DirBlock *)self setOffsetInVolume:v15];
  }

  return v20;
}

- (id)readRelativeDirBlockNum:(unsigned int)a3
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
  v5 = [v4 firstCluster];

  v6 = [(DirBlock *)self dir];
  v7 = [v6 volume];
  v8 = [v7 systemInfo];
  v9 = [v8 dirBlockSize];

  v10 = [(DirBlock *)self dir];
  v11 = [v10 volume];
  v12 = [v11 systemInfo];
  v13 = [v12 bytesPerCluster];

  v14 = [(DirBlock *)self dir];
  LOBYTE(v11) = [v14 isFat1216RootDir];

  if (v11)
  {
    v15 = 0;
LABEL_3:
    v16 = [(DirBlock *)self readDirBlockNum:v15];
  }

  else
  {
    v17 = 0;
    v18 = v13 / v9;
    while (1)
    {
      v19 = [(DirBlock *)self dir];
      v20 = [v19 volume];
      v21 = [v20 systemInfo];
      v22 = [v21 isClusterValid:v5];

      if (!v22)
      {
        goto LABEL_15;
      }

      v23 = [(DirBlock *)self dir];
      v24 = [v23 volume];
      v25 = [v24 fatManager];
      v32[0] = _NSConcreteStackBlock;
      v32[1] = 3221225472;
      v32[2] = sub_100006680;
      v32[3] = &unk_1000505E8;
      v32[4] = &v41;
      v32[5] = &v33;
      v32[6] = &v37;
      [v25 getContigClusterChainLengthStartingAt:v5 replyHandler:v32];

      if (*(v42[0] + 40))
      {
        break;
      }

      if (a3 >= v17)
      {
        v26 = *(v34 + 6);
        if (v18 * v26 + v17 > a3)
        {
          v15 = a3 - v17 + v5 * v18;
          if (v15)
          {
            goto LABEL_3;
          }

LABEL_15:
          v27 = &_os_log_default;
          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_FAULT))
          {
            v28 = [(DirBlock *)self dir];
            sub_10002D3D0(buf, a3, [v28 getDirSize], v28);
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
      v5 = *(v38 + 6);
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

- (void)getBytesAtOffset:(unint64_t)a3
{
  if ([(DirBlock *)self size]<= a3)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_10002D44C(self, a3);
    }

    return 0;
  }

  else
  {
    v5 = [(DirBlock *)self data];
    v6 = [v5 bytes] + a3;
  }

  return v6;
}

- (id)setBytes:(id)a3 atOffset:(unint64_t)a4
{
  v6 = a3;
  v7 = [v6 length] + a4;
  if (v7 <= [(DirBlock *)self size])
  {
    v9 = [(DirBlock *)self data];
    memcpy([v9 mutableBytes] + a4, objc_msgSend(v6, "bytes"), objc_msgSend(v6, "length"));

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
  v4 = [v3 volume];
  v5 = [v4 resource];
  v6 = [(DirBlock *)self data];
  v7 = +[Utilities metaWriteToDevice:from:startingAt:length:forceSyncWrite:](Utilities, "metaWriteToDevice:from:startingAt:length:forceSyncWrite:", v5, [v6 bytes], -[DirBlock offsetInVolume](self, "offsetInVolume"), -[DirBlock size](self, "size"), 0);

  return v7;
}

- (id)writeToDiskFromOffset:(unint64_t)a3 length:(unint64_t)a4
{
  if (a4 + a3 <= [(DirBlock *)self size])
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