@interface SymLinkItem
+ (id)createSymlinkFromContent:(id)a3 inBuffer:(id)a4;
+ (void)verifyAndGetLink:(id)a3 replyHandler:(id)a4;
- (id)getAttributes:(id)a3;
- (void)purgeMetaBlocksFromCache:(id)a3;
@end

@implementation SymLinkItem

+ (id)createSymlinkFromContent:(id)a3 inBuffer:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [[NSString alloc] initWithData:v6 encoding:4];

  if (v7)
  {
    v8 = [v5 mutableBytes];
    *v8 = 1836667736;
    v8[4] = 10;
    v9 = strlen([v7 UTF8String]);
    snprintf(v8 + 5, 5uLL, "%04u\n", v9);
    v10 = +[Utilities getMD5Digest:forData:length:](Utilities, "getMD5Digest:forData:length:", 32, [v7 UTF8String], v9);
    v11 = [v10 bytes];
    v12 = v11[1];
    *(v8 + 10) = *v11;
    *(v8 + 26) = v12;
    v8[42] = 10;
    v13 = v8 + 43;
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

+ (void)verifyAndGetLink:(id)a3 replyHandler:(id)a4
{
  v14 = a3;
  v5 = a4;
  v6 = v14;
  v7 = [v14 mutableBytes];
  if (!strncmp(v7, "XSym\n", 5uLL))
  {
    LODWORD(v9) = 0;
    v10 = 5;
    while (1)
    {
      v11 = v7[v10];
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

        v8 = [Utilities getMD5Digest:32 forData:v7 + 43 length:v9];
        if (!strncmp([v8 bytes], v7 + 10, 0x20uLL))
        {
          if (v9 == 1024)
          {
            [v14 increaseLengthBy:1];
            v13 = v14;
            v7 = [v14 mutableBytes];
          }

          v7[v9 + 43] = 0;
          v12 = [NSString stringWithUTF8String:?];
          v5[2](v5, 0, v12);
        }

        else
        {
          v12 = fs_errorForPOSIXError();
          (v5)[2](v5, v12, 0);
        }

        goto LABEL_3;
      }
    }
  }

  v8 = fs_errorForPOSIXError();
  (v5)[2](v5, v8, 0);
LABEL_3:
}

- (void)purgeMetaBlocksFromCache:(id)a3
{
  v40 = a3;
  v4 = [(FATItem *)self entryData];
  v5 = [v4 getValidDataLength];
  v6 = [(FATItem *)self volume];
  v7 = [v6 systemInfo];
  v8 = v5 + [v7 bytesPerSector] - 1;
  v9 = [(FATItem *)self volume];
  v10 = [v9 systemInfo];
  v11 = v8 / [v10 bytesPerSector];
  v12 = [(FATItem *)self volume];
  v13 = [v12 systemInfo];
  v14 = [v13 bytesPerSector] * v11;

  v41 = +[NSMutableArray array];
  v15 = [(FATItem *)self firstCluster];
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
    if (v14 && (-[FATItem volume](self, "volume"), v18 = objc_claimAutoreleasedReturnValue(), [v18 systemInfo], v19 = objc_claimAutoreleasedReturnValue(), v20 = objc_msgSend(v19, "isClusterValid:", v15), v19, v18, v20))
    {
      while (1)
      {
        v21 = [(FATItem *)self volume];
        v22 = [v21 systemInfo];
        if (![v22 isClusterValid:v15])
        {

          goto LABEL_14;
        }

        v23 = [v41 count];

        if (v23 > 7)
        {
          goto LABEL_15;
        }

        v24 = [(FATItem *)self volume];
        v25 = [v24 fatManager];
        v42[0] = _NSConcreteStackBlock;
        v42[1] = 3221225472;
        v42[2] = sub_100019FD4;
        v42[3] = &unk_1000507C8;
        v26 = v40;
        v43 = v26;
        v44 = &v50;
        v45 = &v46;
        [v25 getContigClusterChainLengthStartingAt:v15 replyHandler:v42];

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

        v27 = [(FATItem *)self volume];
        v28 = [v27 systemInfo];
        v29 = [v28 bytesPerCluster];
        v30 = *(v51 + 6);

        v31 = [(FATItem *)self volume];
        v32 = [v31 systemInfo];
        v33 = [v32 offsetForCluster:v15];
        v34 = v30 * v29 >= v14 ? v14 : v30 * v29;
        v35 = [FSMetadataRange rangeWithOffset:v33 segmentLength:v34 segmentCount:1];

        v36 = [v35 segmentLength];
        [v41 addObject:v35];
        v14 -= v36;
        if (!v14)
        {
          break;
        }

        v15 = *(v47 + 6);

        v17 = v35;
      }

      v21 = v43;
      v17 = v35;
LABEL_14:

LABEL_15:
      v37 = [(FATItem *)self volume];
      v38 = [v37 resource];
      v39 = [Utilities syncMetaPurgeToDevice:v38 rangesToPurge:v41];

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

  (*(v40 + 2))(v40, v39);
LABEL_24:

  _Block_object_dispose(&v46, 8);
  _Block_object_dispose(&v50, 8);
}

- (id)getAttributes:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = SymLinkItem;
  v5 = [(FATItem *)&v7 getAttributes:v4];
  if ([v4 isAttributeWanted:1])
  {
    [v5 setType:3];
  }

  if ([v4 isAttributeWanted:64])
  {
    [v5 setSize:{-[SymLinkItem symlinkLength](self, "symlinkLength")}];
  }

  return v5;
}

@end