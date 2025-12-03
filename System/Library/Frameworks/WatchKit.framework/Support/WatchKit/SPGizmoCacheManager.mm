@interface SPGizmoCacheManager
+ (id)sharedInstance;
- (SPCompanionAppServer)companionAppServer;
- (SPGizmoCacheManager)init;
- (id)assetPath:(id)path cacheIdentifier:(id)identifier cacheType:(unint64_t)type;
- (id)cacheAssets:(id)assets cacheType:(unint64_t)type cacheIdentifier:(id)identifier;
- (id)cacheDirectory;
- (id)cacheDirectoryWithCacheIdentifier:(id)identifier;
- (id)cacheDirectoryWithCacheIdentifier:(id)identifier cacheType:(unint64_t)type;
- (void)addData:(id)data cacheIdentifier:(id)identifier completion:(id)completion;
- (void)clearAllCachedImages:(id)images cacheIdentifier:(id)identifier completion:(id)completion;
- (void)deleteCache:(id)cache;
- (void)deleteData:(id)data cacheIdentifier:(id)identifier completion:(id)completion;
- (void)getData:(id)data cacheIdentifier:(id)identifier completion:(id)completion;
- (void)processCacheDictionary:(id)dictionary connectionIdentifier:(id)identifier completion:(id)completion;
- (void)processCacheMessage:(id)message connectionIdentifier:(id)identifier completion:(id)completion;
- (void)processCacheMessageData:(id)data connectionIdentifier:(id)identifier;
- (void)sendCacheReply:(id)reply cacheIdentifier:(id)identifier;
- (void)setupCacheWithIdentifier:(id)identifier completion:(id)completion;
@end

@implementation SPGizmoCacheManager

- (SPGizmoCacheManager)init
{
  v5.receiver = self;
  v5.super_class = SPGizmoCacheManager;
  v2 = [(SPGizmoCacheManager *)&v5 init];
  v3 = v2;
  if (v2)
  {
    objc_storeWeak(&v2->_companionAppServer, 0);
  }

  return v3;
}

+ (id)sharedInstance
{
  if (qword_100051E40 != -1)
  {
    sub_10002ADF8();
  }

  v3 = qword_100051E48;

  return v3;
}

- (id)cacheDirectory
{
  if (qword_100051E58 != -1)
  {
    sub_10002AE0C();
  }

  v3 = qword_100051E50;

  return v3;
}

- (id)cacheDirectoryWithCacheIdentifier:(id)identifier
{
  identifierCopy = identifier;
  cacheDirectory = [(SPGizmoCacheManager *)self cacheDirectory];
  v9[0] = cacheDirectory;
  v9[1] = identifierCopy;
  v6 = [NSArray arrayWithObjects:v9 count:2];

  v7 = [NSString pathWithComponents:v6];

  return v7;
}

- (id)cacheDirectoryWithCacheIdentifier:(id)identifier cacheType:(unint64_t)type
{
  identifierCopy = identifier;
  cacheDirectory = [(SPGizmoCacheManager *)self cacheDirectory];
  v8 = @"t";
  v12 = cacheDirectory;
  v13 = identifierCopy;
  if (type == 1)
  {
    v8 = @"p";
  }

  v14 = v8;
  v9 = [NSArray arrayWithObjects:&v12 count:3];

  v10 = [NSString pathWithComponents:v9, v12, v13];

  return v10;
}

- (id)assetPath:(id)path cacheIdentifier:(id)identifier cacheType:(unint64_t)type
{
  identifierCopy = identifier;
  pathCopy = path;
  cacheDirectory = [(SPGizmoCacheManager *)self cacheDirectory];
  v11 = @"t";
  v16[0] = cacheDirectory;
  v16[1] = identifierCopy;
  if (type == 1)
  {
    v11 = @"p";
  }

  v16[2] = v11;
  _sp_stringByEncodingIllegalFilenameCharacters = [pathCopy _sp_stringByEncodingIllegalFilenameCharacters];

  v16[3] = _sp_stringByEncodingIllegalFilenameCharacters;
  v13 = [NSArray arrayWithObjects:v16 count:4];

  v14 = [NSString pathWithComponents:v13];

  return v14;
}

- (void)deleteCache:(id)cache
{
  v3 = [(SPGizmoCacheManager *)self cacheDirectoryWithCacheIdentifier:cache];
  v4 = +[NSFileManager defaultManager];
  v5 = [v4 fileExistsAtPath:v3];

  if (v5)
  {
    v6 = +[NSFileManager defaultManager];
    v9 = 0;
    [v6 removeItemAtPath:v3 error:&v9];
    v7 = v9;

    if (v7)
    {
      v8 = wk_default_log();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        sub_10002AEC8();
      }
    }
  }
}

- (void)processCacheMessageData:(id)data connectionIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v7 = [SPProtoSerializer objectWithData:data];
  [(SPGizmoCacheManager *)self processCacheMessage:v7 connectionIdentifier:identifierCopy completion:0];
}

- (void)processCacheDictionary:(id)dictionary connectionIdentifier:(id)identifier completion:(id)completion
{
  completionCopy = completion;
  identifierCopy = identifier;
  dictionaryCopy = dictionary;
  v11 = [[SPCacheMessage alloc] initWithDictionary:dictionaryCopy];

  [(SPGizmoCacheManager *)self processCacheMessage:v11 connectionIdentifier:identifierCopy completion:completionCopy];
}

- (void)processCacheMessage:(id)message connectionIdentifier:(id)identifier completion:(id)completion
{
  messageCopy = message;
  identifierCopy = identifier;
  completionCopy = completion;
  if ([messageCopy messageType] == 11)
  {
    [(SPGizmoCacheManager *)self setupCacheWithIdentifier:identifierCopy completion:completionCopy];
  }

  else if ([messageCopy messageType] == 3)
  {
    [(SPGizmoCacheManager *)self getData:messageCopy cacheIdentifier:identifierCopy completion:completionCopy];
  }

  else if ([messageCopy messageType] == 2)
  {
    [(SPGizmoCacheManager *)self addData:messageCopy cacheIdentifier:identifierCopy completion:completionCopy];
  }

  else if ([messageCopy messageType] == 4)
  {
    [(SPGizmoCacheManager *)self deleteData:messageCopy cacheIdentifier:identifierCopy completion:completionCopy];
  }

  else if ([messageCopy messageType] == 5)
  {
    [(SPGizmoCacheManager *)self clearAllCachedImages:messageCopy cacheIdentifier:identifierCopy completion:completionCopy];
  }
}

- (void)getData:(id)data cacheIdentifier:(id)identifier completion:(id)completion
{
  dataCopy = data;
  identifierCopy = identifier;
  completionCopy = completion;
  assetKey = [dataCopy assetKey];
  v12 = 2;
  v13 = [(SPGizmoCacheManager *)self assetPath:assetKey cacheIdentifier:identifierCopy cacheType:2];

  v14 = [NSData dataWithContentsOfFile:v13];
  if (v14)
  {
    v15 = v14;
  }

  else
  {
    assetKey2 = [dataCopy assetKey];
    v12 = 1;
    v17 = [(SPGizmoCacheManager *)self assetPath:assetKey2 cacheIdentifier:identifierCopy cacheType:1];

    v18 = [NSData dataWithContentsOfFile:v17];
    if (!v18)
    {
      v25 = wk_default_log();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        sub_10002AF4C(identifierCopy, dataCopy, v25);
      }

      if (!completionCopy)
      {
        v15 = 0;
        goto LABEL_11;
      }

      v26 = @"e";
      v27 = &off_10004AC80;
      v24 = [NSDictionary dictionaryWithObjects:&v27 forKeys:&v26 count:1];
      v15 = 0;
      goto LABEL_9;
    }

    v15 = v18;
    v13 = v17;
  }

  v19 = wk_default_log();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    assetKey3 = [dataCopy assetKey];
    *buf = 136447234;
    v31 = "[SPGizmoCacheManager getData:cacheIdentifier:completion:]";
    v32 = 1024;
    v33 = 132;
    v34 = 2114;
    v35 = identifierCopy;
    v36 = 1024;
    v37 = v12;
    v38 = 2114;
    v39 = assetKey3;
    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "%{public}s:%d: cache id: %{public}@, type: %d, asset key: %{public}@", buf, 0x2Cu);
  }

  if (!completionCopy)
  {
    v17 = v13;
    goto LABEL_11;
  }

  v21 = +[NSFileManager defaultManager];
  v22 = +[NSDate date];
  v23 = [NSDictionary dictionaryWithObject:v22 forKey:NSFileModificationDate];
  [v21 setAttributes:v23 ofItemAtPath:v13 error:0];

  v28 = @"d";
  v29 = v15;
  v24 = [NSDictionary dictionaryWithObjects:&v29 forKeys:&v28 count:1];
  v17 = v13;
LABEL_9:
  completionCopy[2](completionCopy, v24);

LABEL_11:
}

- (void)addData:(id)data cacheIdentifier:(id)identifier completion:(id)completion
{
  dataCopy = data;
  identifierCopy = identifier;
  completionCopy = completion;
  v11 = wk_default_log();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    cacheType = [dataCopy cacheType];
    assetKey = [dataCopy assetKey];
    *buf = 136447234;
    v49 = "[SPGizmoCacheManager addData:cacheIdentifier:completion:]";
    v50 = 1024;
    v51 = 151;
    v52 = 2114;
    v53 = identifierCopy;
    v54 = 1024;
    v55 = cacheType;
    v56 = 2114;
    v57 = assetKey;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%{public}s:%d: cache id: %{public}@, type: %d, asset key: %{public}@", buf, 0x2Cu);
  }

  assetData = [dataCopy assetData];
  assetKey2 = [dataCopy assetKey];
  v16 = -[SPGizmoCacheManager assetPath:cacheIdentifier:cacheType:](self, "assetPath:cacheIdentifier:cacheType:", assetKey2, identifierCopy, [dataCopy cacheType]);

  v17 = +[NSFileManager defaultManager];
  v18 = [v17 fileExistsAtPath:v16];

  if (v18)
  {
    v19 = +[NSFileManager defaultManager];
    v37 = 0;
    [v19 removeItemAtPath:v16 error:&v37];
    v20 = v37;

    if (v20)
    {
      v21 = wk_default_log();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        sub_10002B018();
      }

      if (completionCopy)
      {
        v46 = @"e";
        v47 = &off_10004AC80;
        v22 = &v47;
        v23 = &v46;
        goto LABEL_14;
      }

      v45[0] = &off_10004AC98;
      v44[0] = @"cmsg";
      v44[1] = @"a";
      assetKey3 = [dataCopy assetKey];
      v45[1] = assetKey3;
      v44[2] = @"t";
      v29 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [dataCopy cacheType]);
      v44[3] = @"e";
      v45[2] = v29;
      v45[3] = &off_10004AC80;
      v30 = v45;
      v31 = v44;
LABEL_21:
      v32 = [NSDictionary dictionaryWithObjects:v30 forKeys:v31 count:4];
      [(SPGizmoCacheManager *)self sendCacheReply:v32 cacheIdentifier:identifierCopy];

      goto LABEL_23;
    }
  }

  v36 = 0;
  [assetData writeToFile:v16 options:1 error:&v36];
  v24 = v36;
  v20 = v24;
  if (!completionCopy)
  {
    if (!v24)
    {
      v41[0] = &off_10004AC98;
      v40[0] = @"cmsg";
      v40[1] = @"a";
      assetKey4 = [dataCopy assetKey];
      v41[1] = assetKey4;
      v40[2] = @"t";
      v34 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [dataCopy cacheType]);
      v41[2] = v34;
      v35 = [NSDictionary dictionaryWithObjects:v41 forKeys:v40 count:3];
      [(SPGizmoCacheManager *)self sendCacheReply:v35 cacheIdentifier:identifierCopy];

      v20 = 0;
      goto LABEL_23;
    }

    v27 = wk_default_log();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      sub_10002B110();
    }

    v39[0] = &off_10004AC98;
    v38[0] = @"cmsg";
    v38[1] = @"a";
    assetKey3 = [dataCopy assetKey];
    v39[1] = assetKey3;
    v38[2] = @"t";
    v29 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [dataCopy cacheType]);
    v38[3] = @"e";
    v39[2] = v29;
    v39[3] = &off_10004AC80;
    v30 = v39;
    v31 = v38;
    goto LABEL_21;
  }

  if (!v24)
  {
    completionCopy[2](completionCopy, &__NSDictionary0__struct);
    goto LABEL_23;
  }

  v25 = wk_default_log();
  if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
  {
    sub_10002B094();
  }

  v42 = @"e";
  v43 = &off_10004AC80;
  v22 = &v43;
  v23 = &v42;
LABEL_14:
  v26 = [NSDictionary dictionaryWithObjects:v22 forKeys:v23 count:1];
  completionCopy[2](completionCopy, v26);

LABEL_23:
}

- (void)deleteData:(id)data cacheIdentifier:(id)identifier completion:(id)completion
{
  dataCopy = data;
  identifierCopy = identifier;
  completionCopy = completion;
  v11 = wk_default_log();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    cacheType = [dataCopy cacheType];
    assetKey = [dataCopy assetKey];
    *buf = 136447234;
    v35 = "[SPGizmoCacheManager deleteData:cacheIdentifier:completion:]";
    v36 = 1024;
    v37 = 189;
    v38 = 2114;
    v39 = identifierCopy;
    v40 = 1024;
    v41 = cacheType;
    v42 = 2114;
    v43 = assetKey;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%{public}s:%d: cache id: %{public}@, type: %d, asset key: %{public}@", buf, 0x2Cu);
  }

  assetKey2 = [dataCopy assetKey];
  v15 = -[SPGizmoCacheManager assetPath:cacheIdentifier:cacheType:](self, "assetPath:cacheIdentifier:cacheType:", assetKey2, identifierCopy, [dataCopy cacheType]);

  v16 = +[NSFileManager defaultManager];
  v27 = 0;
  [v16 removeItemAtPath:v15 error:&v27];
  v17 = v27;

  if (completionCopy)
  {
    if (v17)
    {
      v18 = wk_default_log();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        sub_10002B18C();
      }

      v32 = @"e";
      v33 = &off_10004AC80;
      v19 = [NSDictionary dictionaryWithObjects:&v33 forKeys:&v32 count:1];
      completionCopy[2](completionCopy, v19);
    }

    else
    {
      completionCopy[2](completionCopy, &__NSDictionary0__struct);
    }
  }

  else
  {
    if (v17)
    {
      v20 = wk_default_log();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        sub_10002B208();
      }

      v29[0] = &off_10004ACB0;
      v28[0] = @"cmsg";
      v28[1] = @"a";
      assetKey3 = [dataCopy assetKey];
      v29[1] = assetKey3;
      v28[2] = @"t";
      v22 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [dataCopy cacheType]);
      v28[3] = @"e";
      v29[2] = v22;
      v29[3] = &off_10004AC80;
      v23 = v29;
      v24 = v28;
      v25 = 4;
    }

    else
    {
      v31[0] = &off_10004ACB0;
      v30[0] = @"cmsg";
      v30[1] = @"a";
      assetKey3 = [dataCopy assetKey];
      v31[1] = assetKey3;
      v30[2] = @"t";
      v22 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [dataCopy cacheType]);
      v31[2] = v22;
      v23 = v31;
      v24 = v30;
      v25 = 3;
    }

    v26 = [NSDictionary dictionaryWithObjects:v23 forKeys:v24 count:v25];
    [(SPGizmoCacheManager *)self sendCacheReply:v26 cacheIdentifier:identifierCopy];
  }
}

- (void)clearAllCachedImages:(id)images cacheIdentifier:(id)identifier completion:(id)completion
{
  imagesCopy = images;
  identifierCopy = identifier;
  completionCopy = completion;
  v10 = wk_default_log();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446978;
    v46 = "[SPGizmoCacheManager clearAllCachedImages:cacheIdentifier:completion:]";
    v47 = 1024;
    v48 = 214;
    v49 = 2114;
    v50 = identifierCopy;
    v51 = 1024;
    LODWORD(v52) = [imagesCopy cacheType];
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%{public}s:%d: cache id: %{public}@, type: %d", buf, 0x22u);
  }

  v11 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [imagesCopy cacheType]);
  selfCopy = self;
  v12 = -[SPGizmoCacheManager cacheDirectoryWithCacheIdentifier:cacheType:](self, "cacheDirectoryWithCacheIdentifier:cacheType:", identifierCopy, [v11 integerValue]);

  v13 = +[NSFileManager defaultManager];
  v14 = [v13 contentsOfDirectoryAtPath:v12 error:0];

  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v15 = v14;
  v16 = [v15 countByEnumeratingWithState:&v35 objects:v53 count:16];
  if (!v16)
  {

    v25 = completionCopy;
    if (completionCopy)
    {
      goto LABEL_18;
    }

LABEL_22:
    v42[0] = &off_10004ACC8;
    v41[0] = @"cmsg";
    v41[1] = @"t";
    v28 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [imagesCopy cacheType]);
    v42[1] = v28;
    v29 = [NSDictionary dictionaryWithObjects:v42 forKeys:v41 count:2];
    [(SPGizmoCacheManager *)selfCopy sendCacheReply:v29 cacheIdentifier:identifierCopy];

    goto LABEL_23;
  }

  v17 = v16;
  v30 = identifierCopy;
  v31 = imagesCopy;
  v18 = 0;
  v19 = *v36;
  do
  {
    v20 = 0;
    v21 = v18;
    do
    {
      if (*v36 != v19)
      {
        objc_enumerationMutation(v15);
      }

      v22 = [v12 stringByAppendingPathComponent:{*(*(&v35 + 1) + 8 * v20), v30}];
      v23 = +[NSFileManager defaultManager];
      v34 = v21;
      [v23 removeItemAtPath:v22 error:&v34];
      v18 = v34;

      if (v18)
      {
        v24 = wk_default_log();
        if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
        {
          *buf = 136446978;
          v46 = "[SPGizmoCacheManager clearAllCachedImages:cacheIdentifier:completion:]";
          v47 = 1024;
          v48 = 224;
          v49 = 2114;
          v50 = v22;
          v51 = 2114;
          v52 = v18;
          _os_log_error_impl(&_mh_execute_header, v24, OS_LOG_TYPE_ERROR, "%{public}s:%d: failed to delete asset at: %{public}@, error: %{public}@", buf, 0x26u);
        }
      }

      v20 = v20 + 1;
      v21 = v18;
    }

    while (v17 != v20);
    v17 = [v15 countByEnumeratingWithState:&v35 objects:v53 count:16];
  }

  while (v17);

  v25 = completionCopy;
  if (!completionCopy)
  {
    identifierCopy = v30;
    imagesCopy = v31;
    if (v18)
    {
      v40[0] = &off_10004ACC8;
      v39[0] = @"cmsg";
      v39[1] = @"t";
      v26 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v31 cacheType]);
      v39[2] = @"e";
      v40[1] = v26;
      v40[2] = &off_10004AC80;
      v27 = [NSDictionary dictionaryWithObjects:v40 forKeys:v39 count:3];
      [(SPGizmoCacheManager *)selfCopy sendCacheReply:v27 cacheIdentifier:v30];

      goto LABEL_21;
    }

    goto LABEL_22;
  }

  identifierCopy = v30;
  imagesCopy = v31;
  if (v18)
  {
    v43 = @"e";
    v44 = &off_10004AC80;
    v26 = [NSDictionary dictionaryWithObjects:&v44 forKeys:&v43 count:1];
    (*(completionCopy + 2))(completionCopy, v26);
LABEL_21:

    goto LABEL_23;
  }

LABEL_18:
  (v25)[2](v25, &__NSDictionary0__struct);
LABEL_23:
}

- (void)setupCacheWithIdentifier:(id)identifier completion:(id)completion
{
  identifierCopy = identifier;
  completionCopy = completion;
  v8 = dispatch_get_global_queue(0, 0);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000260C8;
  block[3] = &unk_100045600;
  v12 = identifierCopy;
  selfCopy = self;
  v14 = completionCopy;
  v9 = completionCopy;
  v10 = identifierCopy;
  dispatch_async(v8, block);
}

- (id)cacheAssets:(id)assets cacheType:(unint64_t)type cacheIdentifier:(id)identifier
{
  assetsCopy = assets;
  v87 = 0;
  v7 = +[NSFileManager defaultManager];
  v8 = [v7 fileExistsAtPath:assetsCopy isDirectory:&v87];

  if ((v8 & 1) != 0 || (+[NSFileManager defaultManager](NSFileManager, "defaultManager"), v9 = objc_claimAutoreleasedReturnValue(), v86 = 0, [v9 createDirectoryAtPath:assetsCopy withIntermediateDirectories:1 attributes:0 error:&v86], v10 = v86, v9, !v10))
  {
    v12 = +[NSFileManager defaultManager];
    v63 = assetsCopy;
    v13 = [[NSURL alloc] initFileURLWithPath:assetsCopy isDirectory:1];
    v14 = NSURLContentModificationDateKey;
    v15 = NSURLFileSizeKey;
    v100[0] = NSURLContentModificationDateKey;
    v100[1] = NSURLFileSizeKey;
    v16 = [NSArray arrayWithObjects:v100 count:2];
    v85 = 0;
    v62 = [v12 contentsOfDirectoryAtURL:v13 includingPropertiesForKeys:v16 options:0 error:&v85];
    v10 = v85;

    if (v10)
    {
      obj = wk_default_log();
      if (!os_log_type_enabled(obj, OS_LOG_TYPE_ERROR))
      {
        v65 = 0;
        goto LABEL_9;
      }

      assetsCopy = v63;
      sub_10002B388();
      v65 = 0;
LABEL_10:
      v11 = v62;
      goto LABEL_11;
    }

    v65 = objc_opt_new();
    if (type == 2)
    {
      v83 = 0uLL;
      v84 = 0uLL;
      v81 = 0uLL;
      v82 = 0uLL;
      v11 = v62;
      obj = v62;
      v66 = [obj countByEnumeratingWithState:&v81 objects:v99 count:16];
      if (v66)
      {
        v10 = 0;
        v19 = *v82;
        *&v18 = 136446978;
        v61 = v18;
        v64 = *v82;
        while (1)
        {
          v20 = 0;
          do
          {
            if (*v82 != v19)
            {
              objc_enumerationMutation(obj);
            }

            v21 = *(*(&v81 + 1) + 8 * v20);
            v79 = 0;
            v80 = 0;
            v22 = [v21 getResourceValue:&v80 forKey:v14 error:{&v79, v61}];
            v23 = v80;
            v24 = v79;

            if (v22)
            {
              v77 = 0;
              v78 = 0;
              v25 = [v21 getResourceValue:&v78 forKey:v15 error:&v77];
              v26 = v78;
              v10 = v77;

              if ((v25 & 1) == 0)
              {
                lastPathComponent = wk_default_log();
                if (os_log_type_enabled(lastPathComponent, OS_LOG_TYPE_ERROR))
                {
                  path = [v21 path];
                  *buf = 136447234;
                  v90 = "[SPGizmoCacheManager cacheAssets:cacheType:cacheIdentifier:]";
                  v91 = 1024;
                  v92 = 312;
                  v93 = 2114;
                  v94 = v63;
                  v95 = 2114;
                  v96 = path;
                  v97 = 2114;
                  v98 = v10;
                  _os_log_error_impl(&_mh_execute_header, lastPathComponent, OS_LOG_TYPE_ERROR, "%{public}s:%d: NSURLFileSizeKey failed at: %{public}@, for: %{public}@, error: %{public}@", buf, 0x30u);
                }

                goto LABEL_35;
              }

              v27 = v14;
              v28 = v15;
              v29 = +[NSDate date];
              [v29 timeIntervalSinceDate:v23];
              v31 = v30;

              if (v31 <= 2592000.0)
              {
                path2 = [v21 path];
                lastPathComponent = [path2 lastPathComponent];

                v38 = [SPCacheAsset alloc];
                stringByRemovingPercentEncoding = [lastPathComponent stringByRemovingPercentEncoding];
                v40 = [(SPCacheAsset *)v38 initWithName:stringByRemovingPercentEncoding size:[v26 unsignedIntegerValue] state:0 accessDate:v23];

                [v65 addAsset:v40];
                goto LABEL_34;
              }

              v32 = +[NSFileManager defaultManager];
              path3 = [v21 path];
              v76 = v10;
              [v32 removeItemAtPath:path3 error:&v76];
              v34 = v76;

              if (v34)
              {
                lastPathComponent = wk_default_log();
                if (os_log_type_enabled(lastPathComponent, OS_LOG_TYPE_ERROR))
                {
                  path4 = [v21 path];
                  *buf = v61;
                  v90 = "[SPGizmoCacheManager cacheAssets:cacheType:cacheIdentifier:]";
                  v91 = 1024;
                  v92 = 317;
                  v93 = 2114;
                  v94 = path4;
                  v95 = 2114;
                  v96 = v34;
                  _os_log_error_impl(&_mh_execute_header, lastPathComponent, OS_LOG_TYPE_ERROR, "%{public}s:%d: removeItemAtPath failed at: %{public}@, error: %{public}@", buf, 0x26u);
                }

                v10 = v34;
LABEL_34:
                v15 = v28;
                v14 = v27;
                v19 = v64;
LABEL_35:

                goto LABEL_36;
              }

              v10 = 0;
              v15 = v28;
              v14 = v27;
              v19 = v64;
            }

            else
            {
              v26 = wk_default_log();
              if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
              {
                path5 = [v21 path];
                *buf = 136447234;
                v90 = "[SPGizmoCacheManager cacheAssets:cacheType:cacheIdentifier:]";
                v91 = 1024;
                v92 = 308;
                v93 = 2114;
                v94 = v63;
                v95 = 2114;
                v96 = path5;
                v97 = 2114;
                v98 = v24;
                _os_log_error_impl(&_mh_execute_header, v26, OS_LOG_TYPE_ERROR, "%{public}s:%d: NSURLContentModificationDateKey failed at: %{public}@, for: %{public}@, error: %{public}@", buf, 0x30u);
              }

              v10 = v24;
            }

LABEL_36:

            v20 = v20 + 1;
          }

          while (v66 != v20);
          v43 = [obj countByEnumeratingWithState:&v81 objects:v99 count:16];
          v66 = v43;
          if (!v43)
          {
            goto LABEL_9;
          }
        }
      }

LABEL_60:
      v10 = 0;
      assetsCopy = v63;
LABEL_11:

      goto LABEL_12;
    }

    v74 = 0uLL;
    v75 = 0uLL;
    v72 = 0uLL;
    v73 = 0uLL;
    v11 = v62;
    obj = v62;
    v44 = [obj countByEnumeratingWithState:&v72 objects:v88 count:16];
    if (!v44)
    {
      goto LABEL_60;
    }

    v45 = v44;
    v10 = 0;
    v46 = *v73;
LABEL_43:
    v47 = 0;
    while (1)
    {
      if (*v73 != v46)
      {
        objc_enumerationMutation(obj);
      }

      v48 = *(*(&v72 + 1) + 8 * v47);
      v70 = 0;
      v71 = 0;
      v49 = [v48 getResourceValue:&v71 forKey:NSURLContentModificationDateKey error:&v70];
      v50 = v71;
      v51 = v70;

      if ((v49 & 1) == 0)
      {
        v53 = wk_default_log();
        if (os_log_type_enabled(v53, OS_LOG_TYPE_ERROR))
        {
          path6 = [v48 path];
          *buf = 136447234;
          v90 = "[SPGizmoCacheManager cacheAssets:cacheType:cacheIdentifier:]";
          v91 = 1024;
          v92 = 331;
          v93 = 2114;
          v94 = v63;
          v95 = 2114;
          v96 = path6;
          v97 = 2114;
          v98 = v51;
          _os_log_error_impl(&_mh_execute_header, v53, OS_LOG_TYPE_ERROR, "%{public}s:%d: NSURLContentModificationDateKey failed at: %{public}@, for: %{public}@, error: %{public}@", buf, 0x30u);
        }

        v10 = v51;
        goto LABEL_55;
      }

      v68 = 0;
      v69 = 0;
      v52 = [v48 getResourceValue:&v69 forKey:NSURLFileSizeKey error:&v68];
      v53 = v69;
      v10 = v68;

      if (v52)
      {
        path7 = [v48 path];
        lastPathComponent2 = [path7 lastPathComponent];

        v56 = [SPCacheAsset alloc];
        stringByRemovingPercentEncoding2 = [lastPathComponent2 stringByRemovingPercentEncoding];
        path8 = [(SPCacheAsset *)v56 initWithName:stringByRemovingPercentEncoding2 size:[v53 unsignedIntegerValue] state:0 accessDate:v50];

        [v65 addAsset:path8];
      }

      else
      {
        lastPathComponent2 = wk_default_log();
        if (!os_log_type_enabled(lastPathComponent2, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_54;
        }

        path8 = [v48 path];
        *buf = 136447234;
        v90 = "[SPGizmoCacheManager cacheAssets:cacheType:cacheIdentifier:]";
        v91 = 1024;
        v92 = 335;
        v93 = 2114;
        v94 = v63;
        v95 = 2114;
        v96 = path8;
        v97 = 2114;
        v98 = v10;
        _os_log_error_impl(&_mh_execute_header, lastPathComponent2, OS_LOG_TYPE_ERROR, "%{public}s:%d: NSURLFileSizeKey failed at: %{public}@, for: %{public}@, error: %{public}@", buf, 0x30u);
      }

LABEL_54:
LABEL_55:

      if (v45 == ++v47)
      {
        v60 = [obj countByEnumeratingWithState:&v72 objects:v88 count:16];
        v45 = v60;
        if (!v60)
        {
LABEL_9:
          assetsCopy = v63;
          goto LABEL_10;
        }

        goto LABEL_43;
      }
    }
  }

  v11 = wk_default_log();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    sub_10002B30C();
  }

  v65 = 0;
LABEL_12:

  return v65;
}

- (void)sendCacheReply:(id)reply cacheIdentifier:(id)identifier
{
  identifierCopy = identifier;
  replyCopy = reply;
  v7 = [[SPCacheMessage alloc] initWithDictionary:replyCopy];

  v8 = [SPProtoSerializer dataWithObject:v7];
  if (v8)
  {
    v9 = [SPIDSProtobuf cacheRequestWithProtoData:v8 identifier:identifierCopy];
    v10 = +[SPTransport sharedInstance];
    [v10 sendProtobuf:v9 sender:identifierCopy timeOut:0 securityType:&stru_100046480 withCompletion:60.0];
  }

  else
  {
    v9 = wk_default_log();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_10002B404();
    }
  }
}

- (SPCompanionAppServer)companionAppServer
{
  WeakRetained = objc_loadWeakRetained(&self->_companionAppServer);

  return WeakRetained;
}

@end