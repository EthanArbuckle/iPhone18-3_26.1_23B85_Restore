@interface AEAudiobookPersistenceFile
- (void)bookmarkTimeForAudiobook:(id)a3 completion:(id)a4;
- (void)saveBookmarkTime:(double)a3 audiobook:(id)a4 completion:(id)a5;
@end

@implementation AEAudiobookPersistenceFile

- (void)bookmarkTimeForAudiobook:(id)a3 completion:(id)a4
{
  v5 = a4;
  v6 = [a3 assetID];
  v7 = [UIApplication contextDirectoryForAssetWithID:v6];
  if (v7)
  {
    v8 = [NSURL fileURLWithPath:v7];
    v9 = [v8 URLByAppendingPathComponent:@"AEAudiobookBookmarkTimeSnapshot"];

    if (v9)
    {
      v24 = 0;
      v10 = [NSData dataWithContentsOfURL:v9 options:0 error:&v24];
      v11 = v24;
      if (v10)
      {
        v23 = v11;
        v12 = [[NSKeyedUnarchiver alloc] initForReadingFromData:v10 error:&v23];
        v13 = v23;

        if (v13)
        {
          v14 = 0;
        }

        else
        {
          v14 = [[AEAudiobookBookmarkTimeSnapshot alloc] initWithCoder:v12];
          v15 = _AEBookPluginsAudiobookLog();
          if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
          {
            [(AEAudiobookBookmarkTimeSnapshot *)v14 bookmarkTime];
            v17 = v16;
            v18 = [(AEAudiobookBookmarkTimeSnapshot *)v14 bookmarkTimeTimestamp];
            *buf = 134218498;
            v26 = v17;
            v27 = 2112;
            v28 = v6;
            v29 = 2114;
            v30 = v18;
            _os_log_impl(&dword_0, v15, OS_LOG_TYPE_DEFAULT, "Unarchived bookmarkTimeSnapshot:%lf assetID:%@ timestamp:%{public}@", buf, 0x20u);
          }
        }

        v11 = v13;
      }

      else
      {
        v14 = 0;
      }
    }

    else
    {
      v11 = [NSError errorWithDomain:AssetEngineErrorDomain code:2006 userInfo:0];
      v14 = 0;
    }
  }

  else
  {
    v11 = [NSError errorWithDomain:AssetEngineErrorDomain code:2006 userInfo:0];
    v14 = 0;
  }

  v19 = objc_retainBlock(v5);

  if (v19)
  {
    [(AEAudiobookBookmarkTimeSnapshot *)v14 bookmarkTime];
    v21 = v20;
    v22 = [(AEAudiobookBookmarkTimeSnapshot *)v14 bookmarkTimeTimestamp];
    v19[2](v19, v22, v11, v21);
  }
}

- (void)saveBookmarkTime:(double)a3 audiobook:(id)a4 completion:(id)a5
{
  v7 = a5;
  v8 = [a4 assetID];
  v9 = +[NSDate date];
  v10 = [[NSKeyedArchiver alloc] initRequiringSecureCoding:1];
  if (v10)
  {
    v11 = [[AEAudiobookBookmarkTimeSnapshot alloc] initWithBookmarkTime:v9 bookmarkTimeTimestamp:a3];
    [(AEAudiobookBookmarkTimeSnapshot *)v11 encodeWithCoder:v10];
    [v10 finishEncoding];
    v12 = [v10 encodedData];
    v13 = [UIApplication contextDirectoryForAssetWithID:v8];
    if (v13)
    {
      v14 = +[NSFileManager defaultManager];
      v26 = 0;
      [v14 createDirectoryAtPath:v13 withIntermediateDirectories:1 attributes:0 error:&v26];
      v15 = v26;

      if (!v15)
      {
        v16 = [NSURL fileURLWithPath:v13];
        v17 = [v16 URLByAppendingPathComponent:@"AEAudiobookBookmarkTimeSnapshot"];

        if (v17)
        {
          v18 = _AEBookPluginsAudiobookLog();
          if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
          {
            [(AEAudiobookBookmarkTimeSnapshot *)v11 bookmarkTime];
            v20 = v19;
            v21 = [(AEAudiobookBookmarkTimeSnapshot *)v11 bookmarkTimeTimestamp];
            *buf = 134218498;
            v28 = v20;
            v29 = 2112;
            v30 = v8;
            v31 = 2114;
            v32 = v21;
            _os_log_impl(&dword_0, v18, OS_LOG_TYPE_DEFAULT, "Archiving bookmarkTimeSnapshot:%lf assetID:%@ timestamp:%{public}@", buf, 0x20u);
          }

          v25 = 0;
          [v12 writeToURL:v17 options:1 error:&v25];
          v22 = v25;
        }

        else
        {
          v22 = [NSError errorWithDomain:AssetEngineErrorDomain code:2006 userInfo:0];
        }

        v15 = v22;
      }

      v23 = 0;
    }

    else
    {
      v23 = [NSError errorWithDomain:AssetEngineErrorDomain code:2006 userInfo:0];
    }
  }

  else
  {
    v23 = [NSError errorWithDomain:AssetEngineErrorDomain code:2006 userInfo:0];
  }

  v24 = objc_retainBlock(v7);

  if (v24)
  {
    v24[2](v24, v23);
  }
}

@end