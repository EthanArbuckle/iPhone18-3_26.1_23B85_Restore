@interface HFSFileSystem
- (void)getVolumeName:(int)name masterBlock:(HFSMasterDirectoryBlock *)block reply:(id)reply;
- (void)loadResource:(id)resource options:(id)options replyHandler:(id)handler;
- (void)probeResource:(id)resource replyHandler:(id)handler;
@end

@implementation HFSFileSystem

- (void)getVolumeName:(int)name masterBlock:(HFSMasterDirectoryBlock *)block reply:(id)reply
{
  replyCopy = reply;
  v8 = 0;
  drSigWord = block->drSigWord;
  if (drSigWord != 11080 && drSigWord != 22600)
  {
    if (drSigWord != 17474)
    {
      v12 = 0;
      v13 = 0;
      goto LABEL_14;
    }

    if (block->drEmbedSigWord != 11080)
    {
      v12 = 0;
      v13 = 1;
      goto LABEL_14;
    }

    v8 = ((bswap32(block->drAlBlSt) >> 16) << 9) + (bswap32(block->drEmbedExtent.startBlock) >> 16) * bswap32(block->drAlBlkSiz);
  }

  NameFromHFSPlusVolumeStartingAt = hfs_GetNameFromHFSPlusVolumeStartingAt(name, v8, v14, bswap32(*&block->drVN[4]));
  if (NameFromHFSPlusVolumeStartingAt == -3)
  {
    v12 = [NSString stringWithUTF8String:v14];
    v13 = 3;
  }

  else
  {
    v13 = NameFromHFSPlusVolumeStartingAt;
    v12 = 0;
  }

LABEL_14:
  replyCopy[2](replyCopy, v13, v12);
}

- (void)probeResource:(id)resource replyHandler:(id)handler
{
  resourceCopy = resource;
  handlerCopy = handler;
  v52 = 0;
  v53 = &v52;
  v54 = 0x3032000000;
  v55 = sub_1000014A8;
  v56 = sub_1000014B8;
  v57 = 0;
  v46 = 0;
  v47 = &v46;
  v48 = 0x3032000000;
  v49 = sub_1000014A8;
  v50 = sub_1000014B8;
  v51 = 0;
  v42 = 0;
  v43 = &v42;
  v44 = 0x2020000000;
  v45 = 1;
  v8 = [FSBlockDeviceResource dynamicCast:resourceCopy];
  if (v8)
  {
    v9 = malloc_type_malloc(0x200uLL, 0xEEAEF00uLL);
    if (!v9)
    {
      v20 = fs_errorForPOSIXError();
      v21 = v53[5];
      v53[5] = v20;

      v22 = fskit_std_log();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315138;
        v60 = "[HFSFileSystem probeResource:replyHandler:]";
        _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "%s: Failed to allocate masterBlock", buf, 0xCu);
      }

      v23 = 0;
      v18 = 0;
      goto LABEL_28;
    }

    blockSize = [v8 blockSize];
    v11 = blockSize;
    if ((blockSize - 16385) <= 0xFFFFFFFFFFFFBFFFLL)
    {
      v12 = fs_errorForPOSIXError();
      v13 = v53[5];
      v53[5] = v12;

      v14 = fskit_std_log();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        v60 = "[HFSFileSystem probeResource:replyHandler:]";
        v61 = 2048;
        v62 = v11;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "%s: Invalid block size (%lu)", buf, 0x16u);
      }

      v15 = 0;
      goto LABEL_7;
    }

    v15 = v9;
    if (blockSize >= 0x201)
    {
      v15 = malloc_type_malloc(blockSize, 0xF8440A5CuLL);
      if (!v15)
      {
        v33 = fs_errorForPOSIXError();
        v34 = v53[5];
        v53[5] = v33;

        v35 = fskit_std_log();
        if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315138;
          v60 = "[HFSFileSystem probeResource:replyHandler:]";
          _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEFAULT, "%s: Failed to allocate masterBlockBuffer", buf, 0xCu);
        }

        v15 = 0;
        v18 = 0;
        v23 = 0;
        goto LABEL_26;
      }
    }

    v39 = 0x400u % v11;
    v24 = (v53 + 5);
    obj = v53[5];
    v25 = [v8 readInto:v15 startingAt:1024 - v39 length:v11 error:&obj];
    objc_storeStrong(v24, obj);
    if (v53[5])
    {
      v26 = fskit_std_log();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
      {
        code = [v53[5] code];
        *buf = 136315394;
        v60 = "[HFSFileSystem probeResource:replyHandler:]";
        v61 = 2048;
        v62 = code;
        _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "%s: Falied to read Master Directory Block, error (%ld)", buf, 0x16u);
      }
    }

    else
    {
      v38 = v39 + 512;
      if (v25 >= v39 + 512)
      {
        goto LABEL_23;
      }

      v28 = fs_errorForPOSIXError();
      v29 = v53[5];
      v53[5] = v28;

      v26 = fskit_std_log();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        sub_100002134(v38, v25, v26);
      }
    }

LABEL_23:
    if (v53[5])
    {
      goto LABEL_24;
    }

    if (v11 >= 0x201)
    {
      memcpy(v9, &v15[v39], 0x200uLL);
    }

    v32 = bswap32(*v9) >> 16;
    if (v32 == 18475 || v32 == 18520)
    {
      v58[0] = 0;
      v58[1] = 0;
      if (hfs_GetVolumeUUIDRaw([v8 fileDescriptor], v58, objc_msgSend(v8, "blockSize")) == -3)
      {
        v40[0] = _NSConcreteStackBlock;
        v40[1] = 3221225472;
        v40[2] = sub_1000014C0;
        v40[3] = &unk_1000041A0;
        v40[4] = &v46;
        v40[5] = &v42;
        v40[6] = &v52;
        -[HFSFileSystem getVolumeName:masterBlock:reply:](self, "getVolumeName:masterBlock:reply:", [v8 fileDescriptor], v9, v40);
        if (*(v43 + 24) == 1)
        {
          v18 = [0 initWithUUIDBytes:v58];
          v23 = 3;
LABEL_25:
          if (v11 < 0x201)
          {
LABEL_27:
            free(v9);
LABEL_28:
            v30 = v47[5];
            fs_containerIdentifier = [v18 fs_containerIdentifier];
            v19 = [FSProbeResult resultWithResult:v23 name:v30 containerID:fs_containerIdentifier];

            handlerCopy[2](handlerCopy, v19, v53[5]);
            goto LABEL_29;
          }

LABEL_26:
          free(v15);
          goto LABEL_27;
        }

LABEL_24:
        v23 = 0;
        v18 = 0;
        goto LABEL_25;
      }

      v36 = fs_errorForPOSIXError();
      v37 = v53[5];
      v53[5] = v36;

      v14 = fskit_std_log();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        sub_1000021CC(v14);
      }
    }

    else
    {
      v14 = fskit_std_log();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315138;
        v60 = "[HFSFileSystem probeResource:replyHandler:]";
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "%s: Invalid volume signature", buf, 0xCu);
      }
    }

LABEL_7:

    goto LABEL_24;
  }

  v16 = fskit_std_log();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
  {
    sub_100002250(v16);
  }

  v17 = [FSProbeResult resultWithResult:0 name:0 containerID:0];
  handlerCopy[2](handlerCopy, v17, 0);

  v18 = 0;
  v19 = 0;
LABEL_29:

  _Block_object_dispose(&v42, 8);
  _Block_object_dispose(&v46, 8);

  _Block_object_dispose(&v52, 8);
}

- (void)loadResource:(id)resource options:(id)options replyHandler:(id)handler
{
  handlerCopy = handler;
  v7 = fs_errorForPOSIXError();
  (*(handler + 2))(handlerCopy, 0, v7);
}

@end