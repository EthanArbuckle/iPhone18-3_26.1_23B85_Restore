@interface SymLinkItem
+ (id)createSymlinkFromContent:(id)content inBuffer:(id)buffer;
+ (void)verifyAndGetLink:(id)link replyHandler:(id)handler;
- (id)getAttributes:(id)attributes;
- (void)purgeMetaBlocksFromCache:(id)cache;
@end

@implementation SymLinkItem

+ (id)createSymlinkFromContent:(id)content inBuffer:(id)buffer
{
  bufferCopy = buffer;
  contentCopy = content;
  v7 = [[NSString alloc] initWithData:contentCopy encoding:4];

  if (v7)
  {
    mutableBytes = [bufferCopy mutableBytes];
    *mutableBytes = 1836667736;
    mutableBytes[4] = 10;
    v9 = strlen([v7 UTF8String]);
    snprintf(mutableBytes + 5, 5uLL, "%04u\n", v9);
    v10 = +[Utilities getMD5Digest:forData:length:](Utilities, "getMD5Digest:forData:length:", 32, [v7 UTF8String], v9);
    bytes = [v10 bytes];
    v12 = bytes[1];
    *(mutableBytes + 10) = *bytes;
    *(mutableBytes + 26) = v12;
    mutableBytes[42] = 10;
    v13 = mutableBytes + 43;
    memcpy(v13, [v7 UTF8String], v9);
    if (v9 <= 0x3FF)
    {
      v13[v9] = 10;
    }

    if ((v9 + 1) <= 0x3FF)
    {
      memset(&v13[(v9 + 1)], 32, (1023 - v9));
    }

    v14 = 0;
  }

  else
  {
    v14 = fs_errorForPOSIXError();
  }

  return v14;
}

+ (void)verifyAndGetLink:(id)link replyHandler:(id)handler
{
  linkCopy = link;
  handlerCopy = handler;
  v6 = linkCopy;
  mutableBytes = [linkCopy mutableBytes];
  if (!strncmp(mutableBytes, "XSym\n", 5uLL))
  {
    LODWORD(v9) = 0;
    v10 = 5;
    while (1)
    {
      v11 = mutableBytes[v10];
      if ((v11 - 48) > 9)
      {
        break;
      }

      ++v10;
      v9 = (v11 + 10 * v9 - 48);
      if (v10 == 9)
      {
        if (v9 >= 0x401)
        {
          break;
        }

        v8 = [Utilities getMD5Digest:32 forData:mutableBytes + 43 length:v9];
        if (!strncmp([v8 bytes], mutableBytes + 10, 0x20uLL))
        {
          if (v9 == 1024)
          {
            [linkCopy increaseLengthBy:1];
            v13 = linkCopy;
            mutableBytes = [linkCopy mutableBytes];
          }

          mutableBytes[v9 + 43] = 0;
          v12 = [NSString stringWithUTF8String:?];
          handlerCopy[2](handlerCopy, 0, v12);
        }

        else
        {
          v12 = fs_errorForPOSIXError();
          (handlerCopy)[2](handlerCopy, v12, 0);
        }

        goto LABEL_3;
      }
    }
  }

  v8 = fs_errorForPOSIXError();
  (handlerCopy)[2](handlerCopy, v8, 0);
LABEL_3:
}

- (void)purgeMetaBlocksFromCache:(id)cache
{
  cacheCopy = cache;
  entryData = [(FATItem *)self entryData];
  getValidDataLength = [entryData getValidDataLength];
  volume = [(FATItem *)self volume];
  systemInfo = [volume systemInfo];
  v8 = getValidDataLength + [systemInfo bytesPerSector] - 1;
  volume2 = [(FATItem *)self volume];
  systemInfo2 = [volume2 systemInfo];
  v11 = v8 / [systemInfo2 bytesPerSector];
  volume3 = [(FATItem *)self volume];
  systemInfo3 = [volume3 systemInfo];
  v14 = [systemInfo3 bytesPerSector] * v11;

  v41 = +[NSMutableArray array];
  firstCluster = [(FATItem *)self firstCluster];
  v16 = 0;
  v17 = 0;
  v50 = 0;
  v51 = &v50;
  v52 = 0x2020000000;
  v53 = 0;
  v46 = 0;
  v47 = &v46;
  v48 = 0x2020000000;
  v49 = 0;
  while (2)
  {
    if (v14 && (-[FATItem volume](self, "volume"), v18 = objc_claimAutoreleasedReturnValue(), [v18 systemInfo], v19 = objc_claimAutoreleasedReturnValue(), v20 = objc_msgSend(v19, "isClusterValid:", firstCluster), v19, v18, v20))
    {
      while (1)
      {
        volume4 = [(FATItem *)self volume];
        systemInfo4 = [volume4 systemInfo];
        if (![systemInfo4 isClusterValid:firstCluster])
        {

          goto LABEL_14;
        }

        v23 = [v41 count];

        if (v23 > 7)
        {
          goto LABEL_15;
        }

        volume5 = [(FATItem *)self volume];
        fatManager = [volume5 fatManager];
        v42[0] = _NSConcreteStackBlock;
        v42[1] = 3221225472;
        v42[2] = sub_100019FD4;
        v42[3] = &unk_1000507C8;
        v26 = cacheCopy;
        v43 = v26;
        v44 = &v50;
        v45 = &v46;
        [fatManager getContigClusterChainLengthStartingAt:firstCluster replyHandler:v42];

        v16 += *(v51 + 6);
        if (v16 > [(FATItem *)self numberOfClusters])
        {
          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
          {
            sub_1000320F0();
          }

          (*(v26 + 2))(v26, 0);

          v39 = 0;
          goto LABEL_24;
        }

        volume6 = [(FATItem *)self volume];
        systemInfo5 = [volume6 systemInfo];
        bytesPerCluster = [systemInfo5 bytesPerCluster];
        v30 = *(v51 + 6);

        volume7 = [(FATItem *)self volume];
        systemInfo6 = [volume7 systemInfo];
        v33 = [systemInfo6 offsetForCluster:firstCluster];
        v34 = v30 * bytesPerCluster >= v14 ? v14 : v30 * bytesPerCluster;
        v35 = [FSMetadataRange rangeWithOffset:v33 segmentLength:v34 segmentCount:1];

        segmentLength = [v35 segmentLength];
        [v41 addObject:v35];
        v14 -= segmentLength;
        if (!v14)
        {
          break;
        }

        firstCluster = *(v47 + 6);

        v17 = v35;
      }

      volume4 = v43;
      v17 = v35;
LABEL_14:

LABEL_15:
      volume8 = [(FATItem *)self volume];
      resource = [volume8 resource];
      v39 = [Utilities syncMetaPurgeToDevice:resource rangesToPurge:v41];

      if (!v39)
      {
        [v41 removeAllObjects];
        continue;
      }

      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        sub_10003206C();
      }
    }

    else
    {
      v39 = 0;
    }

    break;
  }

  (*(cacheCopy + 2))(cacheCopy, v39);
LABEL_24:

  _Block_object_dispose(&v46, 8);
  _Block_object_dispose(&v50, 8);
}

- (id)getAttributes:(id)attributes
{
  attributesCopy = attributes;
  v7.receiver = self;
  v7.super_class = SymLinkItem;
  v5 = [(FATItem *)&v7 getAttributes:attributesCopy];
  if ([attributesCopy isAttributeWanted:1])
  {
    [v5 setType:3];
  }

  if ([attributesCopy isAttributeWanted:64])
  {
    [v5 setSize:{-[SymLinkItem symlinkLength](self, "symlinkLength")}];
  }

  return v5;
}

@end