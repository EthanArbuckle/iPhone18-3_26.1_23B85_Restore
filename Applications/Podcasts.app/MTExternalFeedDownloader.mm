@interface MTExternalFeedDownloader
- (BOOL)createPrivateTempDirIfNeeded;
- (BOOL)isFileExpired:(id)a3 inDirectory:(id)a4;
- (MTExternalFeedDownloader)initWithDelegate:(id)a3;
- (MTExternalFeedDownloaderDelegate)delegate;
- (id)backgroundSessionConfigurationIdentifier;
- (id)privatePathForDownload;
- (id)temporaryDirectory;
- (void)_enqueueTempFilesDeletion;
- (void)_removeTempFiles;
- (void)configureSession:(id)a3;
- (void)restoreBackgroundDownloadTasksWithCompletion:(id)a3;
- (void)setDelegate:(id)a3;
- (void)startDownloadTaskForFeedURL:(id)a3 userInitiated:(BOOL)a4 useBackgroundFetch:(BOOL)a5;
- (void)task:(id)a3 didCompleteWithDownloadedContentUrl:(id)a4;
- (void)task:(id)a3 didFailWithError:(id)a4 orStatusCode:(int64_t)a5;
@end

@implementation MTExternalFeedDownloader

- (void)_enqueueTempFilesDeletion
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100016064;
  block[3] = &unk_1004D8358;
  block[4] = self;
  if (qword_100583C78 != -1)
  {
    dispatch_once(&qword_100583C78, block);
  }
}

- (void)_removeTempFiles
{
  v3 = dispatch_get_global_queue(-32768, 0);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10001607C;
  block[3] = &unk_1004D8358;
  block[4] = self;
  dispatch_async(v3, block);
}

- (id)temporaryDirectory
{
  v3 = NSTemporaryDirectory();
  v4 = [(MTExternalFeedDownloader *)self configuration];
  v5 = [v4 keepsFeedFileInTempDirAfterDownload];

  if (v5)
  {
    v6 = [v3 stringByAppendingPathComponent:@"FeedUpdateDownloads"];

    v3 = v6;
  }

  return v3;
}

- (id)backgroundSessionConfigurationIdentifier
{
  v3 = [(MTExternalFeedDownloader *)self delegate];

  if (v3)
  {
    v4 = [(MTExternalFeedDownloader *)self delegate];
    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
  }

  else
  {
    v8.receiver = self;
    v8.super_class = MTExternalFeedDownloader;
    v6 = [(MTExternalFeedDownloader *)&v8 backgroundSessionConfigurationIdentifier];
  }

  return v6;
}

- (MTExternalFeedDownloaderDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (id)privatePathForDownload
{
  v3 = [(MTExternalFeedDownloader *)self configuration];
  v4 = [v3 keepsFeedFileInTempDirAfterDownload];

  if (v4)
  {
    v5 = +[NSProcessInfo processInfo];
    v6 = [v5 globallyUniqueString];
    v7 = [NSString stringWithFormat:@"%@%@", v6, @"_feed"];

    v8 = [(MTExternalFeedDownloader *)self temporaryDirectory];
    v9 = [NSURL fileURLWithPath:v8];
    v10 = [v9 URLByAppendingPathComponent:v7];

    v11 = +[NSString stringWithCString:encoding:](NSString, "stringWithCString:encoding:", [v10 fileSystemRepresentation], 4);
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (MTExternalFeedDownloader)initWithDelegate:(id)a3
{
  v4 = a3;
  v17.receiver = self;
  v17.super_class = MTExternalFeedDownloader;
  v5 = [(MTExternalFeedDownloader *)&v17 init];
  if (v5)
  {
    v6 = _MTLogCategoryFeedUpdate();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v19 = v5;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "MTExternalFeedDownloader allocated: %@", buf, 0xCu);
    }

    v7 = +[_TtC18PodcastsFoundation29FeedManagerLocalConfiguration platformSpecificConfiguration];
    [(MTExternalFeedDownloader *)v5 setConfiguration:v7];

    if (v4)
    {
      [(MTExternalFeedDownloader *)v5 setDelegate:v4];
    }

    [(MTExternalFeedDownloader *)v5 _enqueueTempFilesDeletion];
    v8 = [(MTExternalFeedDownloader *)v5 configuration];
    v9 = [v8 workQueueConcurrent];
    v10 = &_dispatch_queue_attr_concurrent;
    if (!v9)
    {
      v10 = 0;
    }

    v11 = v10;

    v12 = objc_opt_class();
    v13 = NSStringFromClass(v12);
    v14 = [NSString stringWithFormat:@"%@-worker", v13];
    v15 = dispatch_queue_create([v14 UTF8String], v11);

    [(MTExternalFeedDownloader *)v5 setWorkQueue:v15];
  }

  return v5;
}

- (void)setDelegate:(id)a3
{
  obj = a3;
  objc_opt_class();
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    objc_opt_class();
    objc_opt_isKindOfClass();
  }

  objc_storeWeak(&self->_delegate, obj);
}

- (void)configureSession:(id)a3
{
  v4 = a3;
  [v4 setTimeoutIntervalForRequest:60.0];
  v5 = [(MTExternalFeedDownloader *)self configuration];
  [v5 timeoutIntervalForResource];
  [v4 setTimeoutIntervalForResource:?];
}

- (void)startDownloadTaskForFeedURL:(id)a3 userInitiated:(BOOL)a4 useBackgroundFetch:(BOOL)a5
{
  v5 = a5;
  v6 = a4;
  v8 = a3;
  v9 = [(MTExternalFeedDownloader *)self delegate];

  if (v9)
  {
    v10 = [(MTExternalFeedDownloader *)self configuration];
    if ([v10 keepsFeedFileInTempDirAfterDownload])
    {
      v11 = [(MTExternalFeedDownloader *)self createPrivateTempDirIfNeeded];

      if ((v11 & 1) == 0)
      {
        goto LABEL_10;
      }
    }

    else
    {
    }

    v12 = [(MTExternalFeedDownloader *)self privatePathForDownload];
    v14.receiver = self;
    v14.super_class = MTExternalFeedDownloader;
    [(MTExternalFeedDownloader *)&v14 startDownloadTaskForURL:v8 userInitiated:v6 useBackgroundFetch:v5 usePrivatePath:v12 downloadStartedBlock:0];
  }

  else
  {
    v12 = _MTLogCategoryFeedUpdate();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = [v8 urlRawString];
      *buf = 138412290;
      v16 = v13;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "%@ - Could not start download task for external feedUrl - external feed downloader has no delegate.", buf, 0xCu);
    }
  }

LABEL_10:
}

- (void)task:(id)a3 didCompleteWithDownloadedContentUrl:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [objc_opt_class() statusCodeForTask:v6];
  v10 = v8 == 200 || v8 == 206;
  if (v7 && v10)
  {
    v48 = [objc_opt_class() originalURLForTask:v6];
    v47 = [v6 useBackgroundFetch];
    v11 = [(MTExternalFeedDownloader *)self configuration];
    v12 = [v11 keepsFeedFileInTempDirAfterDownload];

    if (v12)
    {
      v13 = v7;
    }

    else
    {
      v14 = +[NSProcessInfo processInfo];
      v15 = [v14 globallyUniqueString];
      v16 = [NSString stringWithFormat:@"%@%@", v15, @"_feed"];

      v17 = NSTemporaryDirectory();
      v18 = [NSURL fileURLWithPath:v17];
      v13 = [v18 URLByAppendingPathComponent:v16];

      v19 = _MTLogCategoryFeedUpdate();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
      {
        v20 = [v7 absoluteString];
        v21 = [v13 absoluteString];
        *buf = 138543618;
        v60 = v20;
        v61 = 2114;
        v62 = v21;
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEBUG, "Moving downloaded feed from %{public}@ to %{public}@", buf, 0x16u);
      }

      v22 = +[NSFileManager defaultManager];
      v52 = 0;
      v23 = [v22 moveItemAtURL:v7 toURL:v13 error:&v52];
      v24 = v52;

      if (!v23)
      {
        v57[0] = NSLocalizedDescriptionKey;
        v57[1] = NSUnderlyingErrorKey;
        v58[0] = @"Failed to move downloaded file to tmp folder";
        v58[1] = v24;
        v41 = [NSDictionary dictionaryWithObjects:v58 forKeys:v57 count:2];
        v42 = [NSError errorWithDomain:@"com.apple.podcasts.externalfeeddownloader" code:-1 userInfo:v41];

        v43 = [(MTExternalFeedDownloader *)self delegate];
        [v43 didDownloadFeedWithError:v42 data:0 task:v6 requestedUrl:v48 useBackgroundFetch:v47];

LABEL_34:
        goto LABEL_35;
      }

      v25 = _MTLogCategoryFeedUpdate();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
      {
        v26 = [v48 absoluteString];
        *buf = 138412290;
        v60 = v26;
        _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "Downloaded feed: %@", buf, 0xCu);
      }
    }

    v27 = objc_initWeak(&location, self);
    v28 = _MTLogCategoryFeedUpdate();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
    {
      v29 = [v48 absoluteString];
      *buf = 138412290;
      v60 = v29;
      _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "Started processing feed: %@", buf, 0xCu);
    }

    v30 = [v13 path];
    v50 = 0;
    v31 = [NSData dataWithContentsOfFile:v30 options:9 error:&v50];
    v32 = v50;

    if (v31)
    {
      v33 = +[NSFileManager defaultManager];
      v49 = 0;
      v34 = [v33 removeItemAtURL:v13 error:&v49];
      v35 = v49;

      if (v34)
      {
        v36 = _MTLogCategoryFeedUpdate();
        if (os_log_type_enabled(v36, OS_LOG_TYPE_DEBUG))
        {
          v37 = [v13 path];
          *buf = 138412290;
          v60 = v37;
          _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEBUG, "Temporary feed file has been removed:%@", buf, 0xCu);
        }

        v38 = 0;
      }

      else
      {
        v53[0] = NSLocalizedDescriptionKey;
        v53[1] = NSUnderlyingErrorKey;
        v54[0] = @"Failed to remove temporary feed file";
        v54[1] = v35;
        v36 = [NSDictionary dictionaryWithObjects:v54 forKeys:v53 count:2];
        v38 = [NSError errorWithDomain:@"com.apple.podcasts.externalfeeddownloader" code:-1 userInfo:v36];
      }

      v44 = _MTLogCategoryFeedUpdate();
      if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
      {
        v45 = [v48 absoluteString];
        *buf = 138412290;
        v60 = v45;
        _os_log_impl(&_mh_execute_header, v44, OS_LOG_TYPE_DEFAULT, "Finished processing feed: %@", buf, 0xCu);
      }

      v46 = [(MTExternalFeedDownloader *)self delegate];
      [v46 didDownloadFeedWithError:v38 data:v31 task:v6 requestedUrl:v48 useBackgroundFetch:v47];
    }

    else
    {
      v55[0] = NSLocalizedDescriptionKey;
      v55[1] = NSUnderlyingErrorKey;
      v39 = @"[no error]";
      if (v32)
      {
        v39 = v32;
      }

      v56[0] = @"Failed to read feed data from file";
      v56[1] = v39;
      v40 = [NSDictionary dictionaryWithObjects:v56 forKeys:v55 count:2];
      v38 = [NSError errorWithDomain:@"com.apple.podcasts.externalfeeddownloader" code:-1 userInfo:v40];

      v35 = [(MTExternalFeedDownloader *)self delegate];
      [v35 didDownloadFeedWithError:v38 data:0 task:v6 requestedUrl:v48 useBackgroundFetch:v47];
    }

    objc_destroyWeak(&location);
    goto LABEL_34;
  }

  [(MTExternalFeedDownloader *)self task:v6 didFailWithError:0 orStatusCode:v8];
LABEL_35:
}

- (void)task:(id)a3 didFailWithError:(id)a4 orStatusCode:(int64_t)a5
{
  v8 = a3;
  v9 = a4;
  v10 = [objc_opt_class() originalURLForTask:v8];
  v11 = _MTLogCategoryFeedUpdate();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412802;
    *&buf[4] = v10;
    *&buf[12] = 2112;
    *&buf[14] = v9;
    *&buf[22] = 2048;
    v43 = a5;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "didFailWithError: %@, error: %@, status: %ld", buf, 0x20u);
  }

  v12 = [v9 code];
  v13 = +[MTDB sharedInstance];
  v14 = [v13 importContext];

  if (a5 == 401 || v12 + 1013 <= 1)
  {
    v37[0] = _NSConcreteStackBlock;
    v37[1] = 3221225472;
    v37[2] = sub_1000E7B80;
    v37[3] = &unk_1004D8798;
    v38 = v14;
    v39 = v10;
    [v38 performBlock:v37];

    v16 = v38;
LABEL_13:

    goto LABEL_14;
  }

  if (v9 || a5 >= 1)
  {
    v15 = [v8 currentRequest];
    v16 = [v15 URL];

    if (a5 >= 400)
    {
      v33[0] = _NSConcreteStackBlock;
      v33[1] = 3221225472;
      v33[2] = sub_1000E7C08;
      v33[3] = &unk_1004D86D8;
      v34 = v14;
      v35 = v10;
      v36 = a5;
      [v34 performBlock:v33];
    }

    v17 = [v16 absoluteString];
    v22 = [MTPodcast isRedirectURL:v17];

    if (v22)
    {
      *buf = 0;
      *&buf[8] = buf;
      *&buf[16] = 0x3032000000;
      v43 = sub_100008AAC;
      v44 = sub_10003B52C;
      v45 = 0;
      v29[0] = _NSConcreteStackBlock;
      v29[1] = 3221225472;
      v29[2] = sub_1000E7D24;
      v29[3] = &unk_1004D87E8;
      v30 = v14;
      v31 = v10;
      v32 = buf;
      [v30 performBlockAndWait:v29];
      v18 = +[MTFeedUpdateManager sharedInstance];
      [v18 _updatePodcastWithUUID:*(*&buf[8] + 40) userInitiated:objc_msgSend(v8 useBackgroundFetch:"isInteractive") source:objc_msgSend(v8 tryRedirectURL:{"useBackgroundFetch"), 15, 0}];

      _Block_object_dispose(buf, 8);
    }

    v23[0] = _NSConcreteStackBlock;
    v23[1] = 3221225472;
    v23[2] = sub_1000E7DB0;
    v23[3] = &unk_1004DBF90;
    v24 = v14;
    v25 = v10;
    v27 = a5;
    v26 = v9;
    v28 = v22;
    [v24 performBlock:v23];

    goto LABEL_13;
  }

LABEL_14:

  v40[0] = NSLocalizedDescriptionKey;
  v40[1] = NSUnderlyingErrorKey;
  v41[0] = @"Feed download failed";
  v41[1] = @"[no error]";
  v19 = [NSDictionary dictionaryWithObjects:v41 forKeys:v40 count:2];
  v20 = [NSError errorWithDomain:@"com.apple.podcasts.externalfeeddownloader" code:-1 userInfo:v19];

  v21 = [(MTExternalFeedDownloader *)self delegate];
  [v21 didDownloadFeedWithError:v20 data:0 task:v8 requestedUrl:v10 useBackgroundFetch:{objc_msgSend(v8, "useBackgroundFetch")}];
}

- (void)restoreBackgroundDownloadTasksWithCompletion:(id)a3
{
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  v6 = [(MTExternalFeedDownloader *)v5 sessionTaskStateReloaded];
  [(MTExternalFeedDownloader *)v5 setSessionTaskStateReloaded:1];
  objc_sync_exit(v5);

  if ((v6 & 1) == 0)
  {
    [(MTExternalFeedDownloader *)v5 loadSessionsIfNeeded];
    v7 = [(MTExternalFeedDownloader *)v5 sessionForBackgroundDownloads];

    if (v7)
    {
      v8 = [(MTExternalFeedDownloader *)v5 workQueue];
      dispatch_suspend(v8);

      v9 = _MTLogCategoryFeedUpdate();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v10 = [(MTExternalFeedDownloader *)v5 workQueue];
        *buf = 138412290;
        v15 = v10;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Rebuild pending network tasks - SUSPENDING workQueue: %@.", buf, 0xCu);
      }

      v11 = [(MTExternalFeedDownloader *)v5 sessionForBackgroundDownloads];
      v13[0] = _NSConcreteStackBlock;
      v13[1] = 3221225472;
      v13[2] = sub_1000E812C;
      v13[3] = &unk_1004DAFB0;
      v13[4] = v5;
      [v11 getAllTasksWithCompletionHandler:v13];
    }
  }

  v12 = [(MTExternalFeedDownloader *)v5 workQueue];
  dispatch_async(v12, v4);
}

- (BOOL)createPrivateTempDirIfNeeded
{
  v2 = [(MTExternalFeedDownloader *)self temporaryDirectory];
  v3 = +[NSFileManager defaultManager];
  v4 = [v3 fileExistsAtPath:v2];

  if (v4)
  {
    v5 = 1;
  }

  else
  {
    v6 = +[NSFileManager defaultManager];
    v10 = 0;
    v5 = [v6 createDirectoryAtPath:v2 withIntermediateDirectories:0 attributes:0 error:&v10];
    v7 = v10;

    if ((v5 & 1) == 0)
    {
      v8 = _MTLogCategoryFeedUpdate();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v12 = v7;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "Failed to create feed-update response download directory. Error=%@ ", buf, 0xCu);
      }
    }
  }

  return v5;
}

- (BOOL)isFileExpired:(id)a3 inDirectory:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = +[NSFileManager defaultManager];
  v8 = [v6 stringByAppendingPathComponent:v5];

  v20 = 0;
  v9 = [v7 attributesOfItemAtPath:v8 error:&v20];
  v10 = v20;

  if (v9)
  {
    v11 = [v9 objectForKey:NSFileModificationDate];
    v12 = v11;
    if (v11)
    {
      v13 = v11;
    }

    else
    {
      v13 = [v9 objectForKey:NSFileCreationDate];
    }

    v15 = v13;
    [v13 timeIntervalSinceReferenceDate];
    v17 = v16;
    +[NSDate timeIntervalSinceReferenceDate];
    v14 = v17 + 10800.0 <= v18;
  }

  else
  {
    v12 = _MTLogCategoryFeedUpdate();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v22 = v5;
      v23 = 2112;
      v24 = v10;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "Failed to obtain attributes for file:%@, error:%@", buf, 0x16u);
    }

    v14 = 1;
  }

  return v14;
}

@end