@interface VisualLocalizationTraceRecorder
+ (NSURL)traceDirectory;
- (VisualLocalizationTraceRecorder)init;
- (void)_finishOnIsolationQueue;
- (void)_recordAttemptOnIsolationQueue:(id)queue;
- (void)recordAttempt:(id)attempt;
- (void)start;
@end

@implementation VisualLocalizationTraceRecorder

- (void)_finishOnIsolationQueue
{
  dispatch_assert_queue_V2(self->_queue);
  if ((GEOVisualLocalizationCrowdsourcingIsSupported() & 1) == 0)
  {
    v3 = sub_1008CAD3C();
    if (!os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_22;
    }

    *buf = 0;
    v11 = "Not capturing VL Crowdsourcing details because the feature is disabled";
LABEL_21:
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, v11, buf, 2u);
    goto LABEL_22;
  }

  if ((GEOVisualLocalizationCrowdsourcingIsAllowed() & 1) == 0)
  {
    v3 = sub_1008CAD3C();
    if (!os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_22;
    }

    *buf = 0;
    v11 = "Not capturing VL Crowdsourcing details because the feature is not supported for the current device posture";
    goto LABEL_21;
  }

  if ((GEOVisualLocalizationCrowdsourcingIsEnabled() & 1) == 0)
  {
    v3 = sub_1008CAD3C();
    if (!os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_22;
    }

    *buf = 0;
    v11 = "Not capturing VL Crowdsourcing details because the user has not given permission";
    goto LABEL_21;
  }

  lastCrowdsourcingDetails = self->_lastCrowdsourcingDetails;
  v3 = sub_1008CAD3C();
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);
  if (!lastCrowdsourcingDetails)
  {
    if (v4)
    {
      *buf = 0;
      v11 = "Not capturing VL Crowdsourcing details because we did not receive any";
      goto LABEL_21;
    }

LABEL_22:

    goto LABEL_23;
  }

  if (v4)
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Capturing VL Crowdsourcing details", buf, 2u);
  }

  v5 = [GEOVLFCrowdsourcingDetails _vl_createWithVLCrowdsourcingDetails:self->_lastCrowdsourcingDetails];
  if (v5)
  {
    v3 = v5;
    v6 = [(NSURL *)self->_baseDirectory URLByAppendingPathComponent:@"crowdsourcing_details.bin" isDirectory:0];
    data = [v3 data];
    v55 = 0;
    v8 = [data writeToURL:v6 options:0 error:&v55];
    v9 = v55;

    if ((v8 & 1) == 0)
    {
      v10 = sub_1008CAD3C();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        v58 = v9;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "Failed to write crowdsourcing details: %{public}@", buf, 0xCu);
      }
    }

    goto LABEL_22;
  }

LABEL_23:
  v12 = +[NSFileManager defaultManager];
  v13 = +[VisualLocalizationTraceRecorder traceDirectory];
  path = [v13 path];
  v15 = [v12 fileExistsAtPath:path];

  if (v15)
  {
LABEL_26:
    v20 = +[VisualLocalizationTraceRecorder traceDirectory];
    lastPathComponent = [(NSURL *)self->_baseDirectory lastPathComponent];
    v22 = [NSString stringWithFormat:@"VisualLocalization.%@", lastPathComponent];
    v23 = [v20 URLByAppendingPathComponent:v22];
    v24 = [v23 URLByAppendingPathExtension:@"tar.gz"];

    v25 = sub_1008CAD3C();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
    {
      *buf = 138543362;
      v58 = v24;
      _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_INFO, "Writing trace archive to %{public}@", buf, 0xCu);
    }

    archive_write_new();
    archive_write_set_format_v7tar();
    archive_write_add_filter_gzip();
    v45 = v24;
    path2 = [v24 path];
    [path2 UTF8String];
    archive_write_open_filename();

    v27 = +[NSFileManager defaultManager];
    path3 = [(NSURL *)self->_baseDirectory path];
    v29 = [v27 subpathsAtPath:path3];

    v52 = 0u;
    v53 = 0u;
    v50 = 0u;
    v51 = 0u;
    v30 = v29;
    v31 = [v30 countByEnumeratingWithState:&v50 objects:v56 count:16];
    if (v31)
    {
      v32 = v31;
      v33 = *v51;
      obj = v30;
      do
      {
        for (i = 0; i != v32; i = i + 1)
        {
          if (*v51 != v33)
          {
            objc_enumerationMutation(obj);
          }

          v35 = *(*(&v50 + 1) + 8 * i);
          v36 = objc_autoreleasePoolPush();
          v37 = [(NSURL *)self->_baseDirectory URLByAppendingPathComponent:v35];
          v49 = 0;
          v38 = +[NSFileManager defaultManager];
          path4 = [v37 path];
          v40 = [v38 fileExistsAtPath:path4 isDirectory:&v49];
          v41 = v49;

          if (v40 && (v41 & 1) == 0)
          {
            v48 = 0;
            v42 = [NSData dataWithContentsOfURL:v37 options:0 error:&v48];
            v43 = v48;
            if (v42)
            {
              archive_entry_new();
              [v35 UTF8String];
              archive_entry_set_pathname();
              [v42 length];
              archive_entry_set_size();
              archive_entry_set_filetype();
              archive_entry_set_perm();
              archive_write_header();
              archive_entry_free();
              [v42 bytes];
              [v42 length];
              archive_write_data();
            }

            else
            {
              v44 = sub_1008CAD3C();
              if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
              {
                *buf = 138543362;
                v58 = v43;
                _os_log_impl(&_mh_execute_header, v44, OS_LOG_TYPE_ERROR, "Failed to read data during archiving: %{public}@", buf, 0xCu);
              }
            }
          }

          objc_autoreleasePoolPop(v36);
        }

        v30 = obj;
        v32 = [obj countByEnumeratingWithState:&v50 objects:v56 count:16];
      }

      while (v32);
    }

    archive_write_close();
    archive_write_free();
    v19 = v45;
    goto LABEL_44;
  }

  v16 = +[NSFileManager defaultManager];
  v17 = +[VisualLocalizationTraceRecorder traceDirectory];
  v54 = 0;
  v18 = [v16 createDirectoryAtURL:v17 withIntermediateDirectories:1 attributes:0 error:&v54];
  v19 = v54;

  if (v18)
  {

    goto LABEL_26;
  }

  v30 = sub_1008CAD3C();
  if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
  {
    *buf = 138543362;
    v58 = v19;
    _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_ERROR, "Failed to create trace directory: %{public}@", buf, 0xCu);
  }

LABEL_44:
}

- (void)_recordAttemptOnIsolationQueue:(id)queue
{
  queueCopy = queue;
  dispatch_assert_queue_V2(self->_queue);
  [(VisualLocalizationTraceRecorder *)self _beginTraceIfNecessary];
  if (self->_baseDirectory)
  {
    v5 = +[NSUUID UUID];
    uUIDString = [v5 UUIDString];

    pngData = [queueCopy pngData];
    if (pngData)
    {
      v8 = [(NSURL *)self->_imagesDirectory URLByAppendingPathComponent:uUIDString];
      v9 = [v8 URLByAppendingPathExtension:@"png"];

      v39 = 0;
      LOBYTE(v8) = [pngData writeToURL:v9 options:0 error:&v39];
      v10 = v39;
      if ((v8 & 1) == 0)
      {
        v11 = sub_1008CAD3C();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
        {
          *buf = 138543362;
          v41 = v10;
          _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "Failed to write image: %{public}@", buf, 0xCu);
        }
      }
    }

    inputParameters = [queueCopy inputParameters];
    v13 = [inputParameters mutableCopy];

    v14 = &_s10MapsDesign17ListCellViewModelCMa_ptr_0;
    if (v13)
    {
      [v13 setObject:uUIDString forKeyedSubscript:@"uuid"];
      v38 = 0;
      v15 = [NSJSONSerialization dataWithJSONObject:v13 options:0 error:&v38];
      v16 = v38;
      if (v15)
      {
        v17 = [(NSURL *)self->_parametersDirectory URLByAppendingPathComponent:uUIDString];
        v18 = [v17 URLByAppendingPathExtension:@"json"];

        v37 = 0;
        LOBYTE(v17) = [v15 writeToURL:v18 options:0 error:&v37];
        v19 = v37;
        if ((v17 & 1) == 0)
        {
          v20 = pngData;
          v21 = sub_1008CAD3C();
          if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
          {
            *buf = 138543362;
            v41 = v19;
            _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "Failed to write input parameters: %{public}@", buf, 0xCu);
          }

          pngData = v20;
        }

        v14 = &_s10MapsDesign17ListCellViewModelCMa_ptr_0;
      }

      else
      {
        v19 = sub_1008CAD3C();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
        {
          *buf = 138543362;
          v41 = v16;
          _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "Failed to JSON-encode input parameters: %{public}@", buf, 0xCu);
        }
      }
    }

    results = [queueCopy results];
    v23 = [results mutableCopy];

    if (v23)
    {
      [v23 setObject:uUIDString forKeyedSubscript:@"uuid"];
      v24 = v14[430];
      v36 = 0;
      v25 = [v24 dataWithJSONObject:v23 options:0 error:&v36];
      v26 = v36;
      if (v25)
      {
        v34 = pngData;
        v27 = [(NSURL *)self->_resultsDirectory URLByAppendingPathComponent:uUIDString];
        v28 = [v27 URLByAppendingPathExtension:@"json"];

        v35 = 0;
        LOBYTE(v27) = [v25 writeToURL:v28 options:0 error:&v35];
        v29 = v35;
        if ((v27 & 1) == 0)
        {
          v30 = sub_1008CAD3C();
          if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
          {
            *buf = 138543362;
            v41 = v29;
            _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_ERROR, "Failed to write results: %{public}@", buf, 0xCu);
          }
        }

        pngData = v34;
      }

      else
      {
        v29 = sub_1008CAD3C();
        if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
        {
          *buf = 138543362;
          v41 = v26;
          _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_ERROR, "Failed to JSON-encode results: %{public}@", buf, 0xCu);
        }
      }
    }

    crowdsourcingDetails = [queueCopy crowdsourcingDetails];

    if (crowdsourcingDetails)
    {
      crowdsourcingDetails2 = [queueCopy crowdsourcingDetails];
      lastCrowdsourcingDetails = self->_lastCrowdsourcingDetails;
      self->_lastCrowdsourcingDetails = crowdsourcingDetails2;
    }
  }
}

- (void)recordAttempt:(id)attempt
{
  attemptCopy = attempt;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1008CB31C;
  v7[3] = &unk_101661A90;
  v7[4] = self;
  v8 = attemptCopy;
  v6 = attemptCopy;
  dispatch_async(queue, v7);
}

- (void)start
{
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1008CB950;
  block[3] = &unk_101661B18;
  block[4] = self;
  dispatch_async(queue, block);
}

- (VisualLocalizationTraceRecorder)init
{
  v7.receiver = self;
  v7.super_class = VisualLocalizationTraceRecorder;
  v2 = [(VisualLocalizationTraceRecorder *)&v7 init];
  if (v2)
  {
    v3 = geo_dispatch_queue_create_with_qos();
    queue = v2->_queue;
    v2->_queue = v3;

    v2->_began.lock._os_unfair_lock_opaque = 0;
    v2->_began.didRun = 0;
    v2->_finished.lock._os_unfair_lock_opaque = 0;
    v2->_finished.didRun = 0;
    v5 = v2;
  }

  return v2;
}

+ (NSURL)traceDirectory
{
  if (qword_10195DC60 != -1)
  {
    dispatch_once(&qword_10195DC60, &stru_10162D8E0);
  }

  v3 = qword_10195DC68;

  return v3;
}

@end