@interface SmsFilterTrialManager
- (SmsFilterTrialManager)initWithNamespace:(id)namespace;
- (double)loadTrialPromoThreshold;
- (double)loadTrialTransThreshold;
- (id)getRegexFileNameWithPath;
- (id)getThresholdMapFilePath;
- (id)loadModelFromPath:(id)path deleteExistingFiles:(BOOL)files;
- (id)loadTrialModelByDeletingExistingModel:(id)model;
- (int64_t)loadTrialModelTransitionTimer;
- (void)loadTrialUpdates;
@end

@implementation SmsFilterTrialManager

- (SmsFilterTrialManager)initWithNamespace:(id)namespace
{
  namespaceCopy = namespace;
  v20.receiver = self;
  v20.super_class = SmsFilterTrialManager;
  v5 = [(SmsFilterTrialManager *)&v20 init];
  if (!v5)
  {
    [SmsFilterTrialManager initWithNamespace:];
  }

  v6 = v5;
  v5->_lock._os_unfair_lock_opaque = 0;
  v7 = trialLogHandle();
  log = v6->_log;
  v6->_log = v7;

  v9 = +[TRIClient client];
  trialClient = v6->_trialClient;
  v6->_trialClient = v9;

  if (!v6->_trialClient)
  {
    [SmsFilterTrialManager initWithNamespace:];
  }

  v11 = v6->_log;
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = v6->_trialClient;
    *buf = 138412290;
    v23 = v12;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Trial Client %@", buf, 0xCu);
  }

  namespaceCopy = [[NSString alloc] initWithFormat:@"%@", namespaceCopy];
  v21[0] = @"/var/mobile/Library/SmsFilter";
  v21[1] = namespaceCopy;
  v14 = [NSArray arrayWithObjects:v21 count:2];
  v15 = [NSURL fileURLWithPathComponents:v14];
  path = [v15 path];
  smsFilterDirectory = v6->_smsFilterDirectory;
  v6->_smsFilterDirectory = path;

  trialNamespaceName = v6->_trialNamespaceName;
  v6->_trialNamespaceName = namespaceCopy;

  [(SmsFilterTrialManager *)v6 loadTrialUpdates];
  return v6;
}

- (void)loadTrialUpdates
{
  os_unfair_lock_lock(&self->_lock);
  [(TRIClient *)self->_trialClient refresh];
  v3 = [(TRIClient *)self->_trialClient treatmentIdWithNamespaceName:self->_trialNamespaceName];
  treatmentID = self->_treatmentID;
  self->_treatmentID = v3;

  v5 = [(TRIClient *)self->_trialClient experimentIdWithNamespaceName:self->_trialNamespaceName];
  experimentID = self->_experimentID;
  self->_experimentID = v5;

  os_unfair_lock_unlock(&self->_lock);
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
  {
    trialClient = self->_trialClient;
    v9 = log;
    trackingId = [(TRIClient *)trialClient trackingId];
    v12 = self->_experimentID;
    trialNamespaceName = self->_trialNamespaceName;
    v13 = 138412802;
    v14 = trackingId;
    v15 = 2112;
    v16 = trialNamespaceName;
    v17 = 2112;
    v18 = v12;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "loadTrialUpdates: _trialTrackingID = %@, _trialNamespaceName=%@, _experimentID=%@ \n", &v13, 0x20u);
  }
}

- (id)loadTrialModelByDeletingExistingModel:(id)model
{
  modelCopy = model;
  if (modelCopy)
  {
    log = self->_log;
    if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 138412290;
      v9 = modelCopy;
      _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEFAULT, "Loading model from : %@", &v8, 0xCu);
    }

    v6 = [(SmsFilterTrialManager *)self loadModelFromPath:modelCopy deleteExistingFiles:1];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)getRegexFileNameWithPath
{
  v3 = [(SmsFilterTrialManager *)self trialFactor:@"trialRegexFile"];
  v4 = v3;
  if (!v3)
  {
    log = self->_log;
    if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v16) = 0;
      v14 = log;
LABEL_15:
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Failed to get file from null path", &v16, 2u);
    }

LABEL_16:
    path = 0;
    goto LABEL_17;
  }

  fileValue = [v3 fileValue];
  path = [fileValue path];

  v7 = self->_log;
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
  if (!path)
  {
    if (v8)
    {
      LOWORD(v16) = 0;
      v14 = v7;
      goto LABEL_15;
    }

    goto LABEL_16;
  }

  if (v8)
  {
    v16 = 138412546;
    v17 = v4;
    v18 = 2112;
    v19 = path;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "regex file name: %@, %@", &v16, 0x16u);
  }

  if (([path isAbsolutePath] & 1) == 0)
  {
    v9 = [NSBundle bundleForClass:objc_opt_class()];
    v10 = [v9 pathForResource:path ofType:0];

    v11 = self->_log;
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v16 = 138412290;
      v17 = v10;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Not an absolute path, loading absolute path...Path is %@", &v16, 0xCu);
    }

    if (v10)
    {
      v12 = v10;

      path = v12;
    }
  }

LABEL_17:

  return path;
}

- (id)getThresholdMapFilePath
{
  v3 = [(SmsFilterTrialManager *)self trialFactor:@"trialThresholdFile"];
  v4 = v3;
  if (!v3)
  {
    log = self->_log;
    if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v16) = 0;
      v14 = log;
LABEL_15:
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Failed to get file from null path", &v16, 2u);
    }

LABEL_16:
    path = 0;
    goto LABEL_17;
  }

  fileValue = [v3 fileValue];
  path = [fileValue path];

  v7 = self->_log;
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
  if (!path)
  {
    if (v8)
    {
      LOWORD(v16) = 0;
      v14 = v7;
      goto LABEL_15;
    }

    goto LABEL_16;
  }

  if (v8)
  {
    v16 = 138412546;
    v17 = v4;
    v18 = 2112;
    v19 = path;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "threshold file name: %@, %@", &v16, 0x16u);
  }

  if (([path isAbsolutePath] & 1) == 0)
  {
    v9 = [NSBundle bundleForClass:objc_opt_class()];
    v10 = [v9 pathForResource:path ofType:0];

    v11 = self->_log;
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v16 = 138412290;
      v17 = v10;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Not an absolute path, loading absolute path...Path is %@", &v16, 0xCu);
    }

    if (v10)
    {
      v12 = v10;

      path = v12;
    }
  }

LABEL_17:

  return path;
}

- (double)loadTrialTransThreshold
{
  v3 = [(SmsFilterTrialManager *)self trialFactor:@"transThreshold"];
  if (v3)
  {
    log = self->_log;
    if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
    {
      v5 = log;
      [v3 doubleValue];
      v10 = 134217984;
      v11 = v6;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Trans Threshold value is %lf", &v10, 0xCu);
    }

    [v3 doubleValue];
    v8 = v7;
  }

  else
  {
    v8 = 0.0;
  }

  return v8;
}

- (double)loadTrialPromoThreshold
{
  v3 = [(SmsFilterTrialManager *)self trialFactor:@"promoThreshold"];
  if (v3)
  {
    log = self->_log;
    if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
    {
      v5 = log;
      [v3 doubleValue];
      v10 = 134217984;
      v11 = v6;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Promo Threshold value is %lf", &v10, 0xCu);
    }

    [v3 doubleValue];
    v8 = v7;
  }

  else
  {
    v8 = 0.0;
  }

  return v8;
}

- (int64_t)loadTrialModelTransitionTimer
{
  v3 = [(SmsFilterTrialManager *)self trialFactor:@"transitionTimer"];
  if (v3)
  {
    log = self->_log;
    if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
    {
      v5 = log;
      v8 = 134217984;
      longValue = [v3 longValue];
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Minimum retry timer for model transition %lld", &v8, 0xCu);
    }

    longValue2 = [v3 longValue];
  }

  else
  {
    longValue2 = 0;
  }

  return longValue2;
}

- (id)loadModelFromPath:(id)path deleteExistingFiles:(BOOL)files
{
  filesCopy = files;
  pathCopy = path;
  v7 = os_transaction_create();
  if (pathCopy)
  {
    v77 = v7;
    if (([pathCopy isAbsolutePath] & 1) == 0)
    {
      v8 = [NSBundle bundleForClass:objc_opt_class()];
      v9 = [v8 pathForResource:pathCopy ofType:0];

      log = self->_log;
      if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v89 = v9;
        _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEFAULT, "Not an absolute path, loading absolute path...Path is %@", buf, 0xCu);
      }

      if (v9)
      {
        v11 = v9;

        pathCopy = v11;
      }
    }

    v12 = +[NSFileManager defaultManager];
    lastPathComponent = [pathCopy lastPathComponent];
    v14 = [NSString stringWithFormat:@"%@%@", lastPathComponent, @"c"];

    v86 = 0;
    v96[0] = self->_smsFilterDirectory;
    v96[1] = v14;
    v15 = [NSArray arrayWithObjects:v96 count:2];
    v16 = [NSURL fileURLWithPathComponents:v15];

    if (filesCopy)
    {
      path = [v16 path];
      v18 = self->_log;
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v89 = path;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Removing existing files from %@", buf, 0xCu);
      }

      v85 = 0;
      v19 = [v12 removeItemAtPath:path error:&v85];
      v20 = v85;
      if ((v19 & 1) == 0)
      {
        v21 = self->_log;
        if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412546;
          v89 = path;
          v90 = 2112;
          v91 = v20;
          _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "Failed to clean up path: %@ -- %@", buf, 0x16u);
        }
      }
    }

    else
    {
      v20 = 0;
    }

    path2 = [v16 path];
    v25 = [v12 fileExistsAtPath:path2 isDirectory:&v86];

    if (v25)
    {
      v84 = v20;
      v26 = [MLModel modelWithContentsOfURL:v16 error:&v84];
      v27 = v84;

      if (v27)
      {
        v28 = self->_log;
        if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412546;
          v89 = v16;
          v90 = 2112;
          v91 = v27;
          _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "Failed to load model: %@ -- %@", buf, 0x16u);
        }

        v23 = 0;
      }

      else
      {
        v26 = v26;
        v23 = v26;
      }

      goto LABEL_57;
    }

    v75 = v14;
    temporaryDirectory = [v12 temporaryDirectory];
    path3 = [temporaryDirectory path];
    v95[0] = path3;
    v31 = +[NSUUID UUID];
    uUIDString = [v31 UUIDString];
    v95[1] = uUIDString;
    [NSArray arrayWithObjects:v95 count:2];
    v33 = v76 = v12;
    v26 = [NSString pathWithComponents:v33];

    v12 = v76;
    v83 = v20;
    LOBYTE(v31) = [v76 createDirectoryAtPath:v26 withIntermediateDirectories:1 attributes:0 error:&v83];
    v27 = v83;

    if ((v31 & 1) == 0)
    {
      v41 = self->_log;
      if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        v89 = v26;
        v90 = 2112;
        v91 = v27;
        _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_DEFAULT, "Failed to create directory at path %@ -- %@", buf, 0x16u);
      }

      v23 = 0;
      v7 = v77;
      v14 = v75;
      goto LABEL_57;
    }

    v94[0] = v26;
    lastPathComponent2 = [pathCopy lastPathComponent];
    v94[1] = lastPathComponent2;
    v35 = [NSArray arrayWithObjects:v94 count:2];
    v36 = [NSURL fileURLWithPathComponents:v35];

    v37 = v36;
    path4 = [v36 path];
    v82 = v27;
    LOBYTE(lastPathComponent2) = [v76 copyItemAtPath:pathCopy toPath:path4 error:&v82];
    v39 = v82;

    if ((lastPathComponent2 & 1) == 0)
    {
      v42 = v39;
      v43 = self->_log;
      v7 = v77;
      v14 = v75;
      if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412802;
        v89 = pathCopy;
        v90 = 2112;
        v44 = v37;
        v91 = v37;
        v92 = 2112;
        v45 = v42;
        v93 = v42;
        _os_log_impl(&_mh_execute_header, v43, OS_LOG_TYPE_DEFAULT, "Failed to copy model from %@ to %@ -- %@", buf, 0x20u);
        v23 = 0;
        v12 = v76;
      }

      else
      {
        v23 = 0;
        v12 = v76;
        v44 = v37;
        v45 = v42;
      }

      goto LABEL_56;
    }

    v14 = v75;
    v74 = v37;
    if ([v76 fileExistsAtPath:self->_smsFilterDirectory isDirectory:&v86])
    {
      v40 = 0;
    }

    else
    {
      v12 = v76;
      smsFilterDirectory = self->_smsFilterDirectory;
      v81 = 0;
      v47 = [v76 createDirectoryAtPath:smsFilterDirectory withIntermediateDirectories:1 attributes:0 error:&v81];
      v40 = v81;
      if ((v47 & 1) == 0)
      {
        v61 = self->_log;
        if (os_log_type_enabled(v61, OS_LOG_TYPE_DEFAULT))
        {
          v62 = self->_smsFilterDirectory;
          *buf = 138412546;
          v89 = v62;
          v90 = 2112;
          v45 = v40;
          v91 = v40;
          _os_log_impl(&_mh_execute_header, v61, OS_LOG_TYPE_DEFAULT, "Failed to create directory at path %@ -- %@", buf, 0x16u);
          v23 = 0;
          v7 = v77;
        }

        else
        {
          v23 = 0;
          v7 = v77;
          v45 = v40;
        }

LABEL_55:
        v44 = v74;
LABEL_56:

        v27 = v45;
LABEL_57:

        goto LABEL_58;
      }
    }

    v48 = v37;

    v87 = self->_smsFilterDirectory;
    v49 = [NSArray arrayWithObjects:&v87 count:1];
    v50 = [NSURL fileURLWithPathComponents:v49];

    v51 = +[MLCompilerOptions defaultOptions];
    v80 = 0;
    v73 = [MLCompiler compileSpecificationAtURL:v37 toURL:v50 options:v51 error:&v80];
    v45 = v80;

    if (v45)
    {
      v52 = self->_log;
      if (os_log_type_enabled(v52, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        v89 = v48;
        v90 = 2112;
        v91 = v45;
        _os_log_impl(&_mh_execute_header, v52, OS_LOG_TYPE_DEFAULT, "Failed to compile model: %@ -- %@", buf, 0x16u);
      }

      v23 = 0;
      v53 = v16;
      v12 = v76;
      v7 = v77;
    }

    else
    {
      v54 = v50;
      path5 = [v48 path];
      lastPathComponent3 = [path5 lastPathComponent];
      stringByDeletingPathExtension = [lastPathComponent3 stringByDeletingPathExtension];

      v72 = stringByDeletingPathExtension;
      [stringByDeletingPathExtension stringByAppendingPathExtension:@"mlmodelc"];
      v71 = v50 = v54;
      v53 = [v54 URLByAppendingPathComponent:?];

      v79 = 0;
      v58 = [MLModel modelWithContentsOfURL:v53 error:&v79];
      v59 = v79;
      if (v59)
      {
        v45 = v59;
        v60 = self->_log;
        v12 = v76;
        v7 = v77;
        if (os_log_type_enabled(v60, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412546;
          v89 = v53;
          v90 = 2112;
          v91 = v45;
          _os_log_impl(&_mh_execute_header, v60, OS_LOG_TYPE_DEFAULT, "Failed to load model: %@ -- %@", buf, 0x16u);
        }

        v23 = 0;
      }

      else
      {
        v78 = 0;
        v12 = v76;
        v63 = [v76 removeItemAtPath:v26 error:&v78];
        v45 = v78;
        if ((v63 & 1) == 0)
        {
          v64 = self->_log;
          if (os_log_type_enabled(v64, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412546;
            v89 = v26;
            v90 = 2112;
            v91 = v45;
            _os_log_impl(&_mh_execute_header, v64, OS_LOG_TYPE_DEFAULT, "Failed to clean up path: %@ -- %@", buf, 0x16u);
          }
        }

        v65 = self->_log;
        if (os_log_type_enabled(v65, OS_LOG_TYPE_DEFAULT))
        {
          v66 = v65;
          modelDescription = [v58 modelDescription];
          metadata = [modelDescription metadata];
          v69 = [metadata objectForKeyedSubscript:MLModelVersionStringKey];
          *buf = 138412546;
          v89 = v58;
          v90 = 2112;
          v91 = v69;
          _os_log_impl(&_mh_execute_header, v66, OS_LOG_TYPE_DEFAULT, "trial_model = %@ with version:%@\n", buf, 0x16u);

          v14 = v75;
          v12 = v76;
        }

        v23 = v58;
        v7 = v77;
      }
    }

    v16 = v53;
    goto LABEL_55;
  }

  v22 = self->_log;
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "Failed to load model from null path", buf, 2u);
  }

  v23 = 0;
LABEL_58:

  return v23;
}

@end