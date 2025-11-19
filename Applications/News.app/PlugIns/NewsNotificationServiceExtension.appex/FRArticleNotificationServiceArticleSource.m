@interface FRArticleNotificationServiceArticleSource
- (FRArticleNotificationServiceArticleSource)init;
- (void)_cleanupFilesInDirectory:(id)a3;
- (void)_downloadFileURL:(id)a3 toDirectory:(id)a4 withCompletion:(id)a5;
- (void)fetchAssetsWithCachesDirectory:(id)a3 thumbnailURLString:(id)a4 publisherLogoURLString:(id)a5 publisherLogoMaskURLString:(id)a6 publisherLogoCompactURLString:(id)a7 flintDocumentURLString:(id)a8 completion:(id)a9;
@end

@implementation FRArticleNotificationServiceArticleSource

- (FRArticleNotificationServiceArticleSource)init
{
  v3.receiver = self;
  v3.super_class = FRArticleNotificationServiceArticleSource;
  return [(FRArticleNotificationServiceArticleSource *)&v3 init];
}

- (void)fetchAssetsWithCachesDirectory:(id)a3 thumbnailURLString:(id)a4 publisherLogoURLString:(id)a5 publisherLogoMaskURLString:(id)a6 publisherLogoCompactURLString:(id)a7 flintDocumentURLString:(id)a8 completion:(id)a9
{
  v15 = a3;
  v16 = a4;
  v36 = a5;
  v34 = a6;
  v17 = a7;
  v35 = a8;
  v18 = a9;
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    *buf = 138412802;
    *&buf[4] = v16;
    *&buf[12] = 2112;
    *&buf[14] = v36;
    *&buf[22] = 2112;
    v73 = v17;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "ArticleSource: Source URLs to download - %@, %@, %@", buf, 0x20u);
  }

  if (v15)
  {
    if (v18)
    {
LABEL_13:
      v19 = dispatch_group_create();
      dispatch_group_enter(v19);
      *buf = 0;
      *&buf[8] = buf;
      *&buf[16] = 0x3032000000;
      v73 = sub_1000060B0;
      v74 = sub_1000060C0;
      v75 = 0;
      v70[0] = 0;
      v70[1] = v70;
      v70[2] = 0x3032000000;
      v70[3] = sub_1000060B0;
      v70[4] = sub_1000060C0;
      v71 = 0;
      v33 = v16;
      if (v16)
      {
        v20 = [NSURL URLWithString:?];
      }

      else
      {
        v20 = 0;
      }

      dispatch_group_enter(v19);
      v66[0] = _NSConcreteStackBlock;
      v66[1] = 3221225472;
      v66[2] = sub_1000060C8;
      v66[3] = &unk_100024DE8;
      v68 = v70;
      v69 = buf;
      v21 = v19;
      v67 = v21;
      v32 = v20;
      [(FRArticleNotificationServiceArticleSource *)self _downloadFileURL:v20 toDirectory:v15 withCompletion:v66];
      v64[0] = 0;
      v64[1] = v64;
      v64[2] = 0x3032000000;
      v64[3] = sub_1000060B0;
      v64[4] = sub_1000060C0;
      v65 = 0;
      v62[0] = 0;
      v62[1] = v62;
      v62[2] = 0x3032000000;
      v62[3] = sub_1000060B0;
      v62[4] = sub_1000060C0;
      v63 = 0;
      v22 = +[UIScreen mainScreen];
      v23 = [v22 traitCollection];
      v24 = [v23 userInterfaceStyle];

      if (v24 == 2)
      {
        if (v34)
        {
          v25 = [NSURL URLWithString:?];
        }

        else
        {
          v25 = 0;
        }

        dispatch_group_enter(v21);
        v26 = v61;
        v61[0] = _NSConcreteStackBlock;
        v61[1] = 3221225472;
        v61[2] = sub_1000061D4;
        v61[3] = &unk_100024DE8;
        v61[5] = v62;
        v61[6] = buf;
        v61[4] = v21;
        [(FRArticleNotificationServiceArticleSource *)self _downloadFileURL:v25 toDirectory:v15 withCompletion:v61];
      }

      else
      {
        if (v36)
        {
          v25 = [NSURL URLWithString:?];
        }

        else
        {
          v25 = 0;
        }

        dispatch_group_enter(v21);
        v26 = v60;
        v60[0] = _NSConcreteStackBlock;
        v60[1] = 3221225472;
        v60[2] = sub_1000062E0;
        v60[3] = &unk_100024DE8;
        v60[5] = v64;
        v60[6] = buf;
        v60[4] = v21;
        [(FRArticleNotificationServiceArticleSource *)self _downloadFileURL:v25 toDirectory:v15 withCompletion:v60];
      }

      v58[0] = 0;
      v58[1] = v58;
      v58[2] = 0x3032000000;
      v58[3] = sub_1000060B0;
      v58[4] = sub_1000060C0;
      v59 = 0;
      if (v17)
      {
        v27 = [NSURL URLWithString:v17];
      }

      else
      {
        v27 = 0;
      }

      dispatch_group_enter(v21);
      v54[0] = _NSConcreteStackBlock;
      v54[1] = 3221225472;
      v54[2] = sub_1000063EC;
      v54[3] = &unk_100024DE8;
      v56 = v58;
      v57 = buf;
      v28 = v21;
      v55 = v28;
      [(FRArticleNotificationServiceArticleSource *)self _downloadFileURL:v27 toDirectory:v15 withCompletion:v54];
      v52[0] = 0;
      v52[1] = v52;
      v52[2] = 0x3032000000;
      v52[3] = sub_1000060B0;
      v52[4] = sub_1000060C0;
      v53 = 0;
      if (v35)
      {
        v29 = [NSURL URLWithString:?];
      }

      else
      {
        v29 = 0;
      }

      dispatch_group_enter(v28);
      v48[0] = _NSConcreteStackBlock;
      v48[1] = 3221225472;
      v48[2] = sub_1000064F8;
      v48[3] = &unk_100024DE8;
      v50 = v52;
      v51 = buf;
      v30 = v28;
      v49 = v30;
      [(FRArticleNotificationServiceArticleSource *)self _downloadFileURL:v29 toDirectory:v15 withCompletion:v48];
      dispatch_group_enter(v30);
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_100006604;
      block[3] = &unk_100024E10;
      block[4] = self;
      v46 = v15;
      v47 = v30;
      v31 = v30;
      dispatch_async(&_dispatch_main_q, block);
      v37[0] = _NSConcreteStackBlock;
      v37[1] = 3221225472;
      v37[2] = sub_100006644;
      v37[3] = &unk_100024E38;
      v39 = v70;
      v40 = v64;
      v41 = v62;
      v42 = v58;
      v43 = v52;
      v44 = buf;
      v38 = v18;
      dispatch_group_notify(v31, &_dispatch_main_q, v37);

      v16 = v33;
      dispatch_group_leave(v31);

      _Block_object_dispose(v52, 8);
      _Block_object_dispose(v58, 8);

      _Block_object_dispose(v62, 8);
      _Block_object_dispose(v64, 8);

      _Block_object_dispose(v70, 8);
      _Block_object_dispose(buf, 8);

      goto LABEL_32;
    }
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_10001A7DC();
    }

    if (v18)
    {
      (*(v18 + 2))(v18, 0, 0, 0, 0, 0, 0);
      goto LABEL_32;
    }
  }

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_10001A8C0();
  }

  if (v15)
  {
    goto LABEL_13;
  }

LABEL_32:
}

- (void)_cleanupFilesInDirectory:(id)a3
{
  v3 = [a3 path];
  v4 = +[NSFileManager defaultManager];
  v5 = [v4 fileExistsAtPath:v3];

  if (v5)
  {
    v33 = [NSDate dateWithTimeIntervalSinceNow:-86400.0];
    v6 = +[NSFileManager defaultManager];
    v32 = v3;
    v7 = [v6 enumeratorAtPath:v3];

    v8 = +[NSMutableArray array];
    v40 = 0u;
    v41 = 0u;
    v42 = 0u;
    v43 = 0u;
    obj = v7;
    v9 = [obj countByEnumeratingWithState:&v40 objects:v49 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v41;
      while (2)
      {
        for (i = 0; i != v10; i = i + 1)
        {
          if (*v41 != v11)
          {
            objc_enumerationMutation(obj);
          }

          v13 = *(*(&v40 + 1) + 8 * i);
          v14 = [obj fileAttributes];
          v15 = [v14 objectForKey:NSFileCreationDate];
          v16 = [v33 earlierDate:v15];

          if (v16 == v15)
          {
            v17 = [v32 stringByAppendingPathComponent:v13];
            [v8 addObject:v17];
            v18 = [v8 count];

            if (v18 > 9)
            {

              goto LABEL_13;
            }
          }
        }

        v10 = [obj countByEnumeratingWithState:&v40 objects:v49 count:16];
        if (v10)
        {
          continue;
        }

        break;
      }
    }

LABEL_13:

    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
    {
      v19 = [v8 count];
      *buf = 134217984;
      v45 = v19;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "Trying to remove %lu files…", buf, 0xCu);
    }

    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
    v20 = v8;
    v21 = [v20 countByEnumeratingWithState:&v36 objects:v48 count:16];
    if (v21)
    {
      v23 = v21;
      v24 = 0;
      v25 = *v37;
      *&v22 = 138412546;
      v31 = v22;
      do
      {
        for (j = 0; j != v23; j = j + 1)
        {
          if (*v37 != v25)
          {
            objc_enumerationMutation(v20);
          }

          v27 = *(*(&v36 + 1) + 8 * j);
          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
          {
            *buf = 138412290;
            v45 = v27;
            _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "Trying to remove %@…", buf, 0xCu);
          }

          v28 = +[NSFileManager defaultManager];
          v35 = 0;
          v29 = [v28 removeItemAtPath:v27 error:&v35];
          v30 = v35;

          if (v29)
          {
            ++v24;
          }

          else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
          {
            *buf = v31;
            v45 = v27;
            v46 = 2112;
            v47 = v30;
            _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Couldn't remove file at path %@ - %@", buf, 0x16u);
          }
        }

        v23 = [v20 countByEnumeratingWithState:&v36 objects:v48 count:16];
      }

      while (v23);
    }

    else
    {
      v24 = 0;
    }

    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
    {
      *buf = 134217984;
      v45 = v24;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "Removed %lu files", buf, 0xCu);
    }

    v3 = v32;
  }
}

- (void)_downloadFileURL:(id)a3 toDirectory:(id)a4 withCompletion:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = v9;
  if (v7)
  {
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_100006DDC;
    v16[3] = &unk_100024E88;
    v11 = v7;
    v17 = v11;
    v12 = v8;
    v18 = v12;
    v19 = v10;
    v13 = objc_retainBlock(v16);
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
    {
      *buf = 138412546;
      v21 = v11;
      v22 = 2112;
      v23 = v12;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "ArticleSource: Starting download of %@ to %@", buf, 0x16u);
    }

    v14 = +[NSURLSession sharedSession];
    v15 = [v14 downloadTaskWithURL:v11 completionHandler:v13];
    [v15 resume];
  }

  else if (v9)
  {
    (*(v9 + 2))(v9, 0, 0);
  }
}

@end