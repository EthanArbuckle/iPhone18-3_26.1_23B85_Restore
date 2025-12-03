@interface HealthResearchLogsDiagnosticExtension
- (id)attachmentList;
- (id)attachmentsForParameters:(id)parameters withProgressHandler:(id)handler;
- (id)createErrorFile:(id)file;
@end

@implementation HealthResearchLogsDiagnosticExtension

- (id)attachmentList
{
  v3 = sub_100001368();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "attachmentList called: calling attachmentsForParameters with empty dictionary", v6, 2u);
  }

  v4 = [(HealthResearchLogsDiagnosticExtension *)self attachmentsForParameters:&__NSDictionary0__struct];

  return v4;
}

- (id)attachmentsForParameters:(id)parameters withProgressHandler:(id)handler
{
  parametersCopy = parameters;
  handlerCopy = handler;
  v7 = sub_100001368();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v66 = parametersCopy;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "attachments for parameters: %{public}@", buf, 0xCu);
  }

  v55 = parametersCopy;

  v8 = +[NSDate now];
  v9 = [v8 dateByAddingTimeInterval:-86400.0];

  v10 = objc_opt_new();
  uUIDString = [v10 UUIDString];
  v12 = [NSString stringWithFormat:@"%@-research", uUIDString];

  v13 = NSTemporaryDirectory();
  v14 = [v13 stringByAppendingPathComponent:v12];
  v15 = [NSURL fileURLWithPath:v14];
  v16 = [v15 URLByAppendingPathExtension:@"logs"];

  v17 = NSTemporaryDirectory();
  v18 = [v17 stringByAppendingPathComponent:v12];
  v19 = [NSURL fileURLWithPath:v18];
  v20 = [v19 URLByAppendingPathExtension:@"logarchive"];

  v21 = sub_100001368();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v66 = 0x40BC200000000000;
    _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "logWindowSize (chunk): %.2f", buf, 0xCu);
  }

  v22 = sub_100001368();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v66 = 0x40F5180000000000;
    _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "logArchiveIntervalSize (window): %.2f", buf, 0xCu);
  }

  v23 = sub_100001368();
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
  {
    path = [v16 path];
    *buf = 138412290;
    v66 = path;
    _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "researchLogsURL: %@", buf, 0xCu);
  }

  v25 = sub_100001368();
  if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
  {
    path2 = [v20 path];
    *buf = 138412290;
    v66 = path2;
    _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "logArchiveURL: %@", buf, 0xCu);
  }

  path3 = [v20 path];
  [path3 UTF8String];
  [v9 timeIntervalSince1970];
  Archive = OSLogCreateArchive();

  v29 = sub_100001368();
  v30 = v29;
  v54 = v9;
  if (Archive)
  {
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      sub_1000073FC(Archive, v30);
    }

    archive = [NSString stringWithFormat:@"Error: Couldn't create OSLogArchive with status: %d", Archive];
    v32 = [archive dataUsingEncoding:4];
    [v32 writeToURL:v16 atomically:1];
    name = [DEAttachmentItem attachmentWithPathURL:v16];
    v64 = name;
    v34 = [NSArray arrayWithObjects:&v64 count:1];
  }

  else
  {
    selfCopy = self;
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "Successfully triggered logArchive", buf, 2u);
    }

    v32 = [&off_10000CBA0 mutableCopy];
    v36 = +[UIDevice currentDevice];
    name = [v36 name];

    [v32 addObjectsFromArray:&off_10000CBB8];
    v60 = 0;
    v37 = [[HRLDLogArchiveProcessor alloc] initWithArchiveStartDate:v9 deviceName:name logArchiveURL:v20 outputFileURL:v16 redactedToken:@"<REDACTED>" windowSize:&v60 error:7200.0];
    v38 = v60;
    v53 = v37;
    if (v38)
    {
      archive = v38;
      v39 = sub_100001368();
      if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
      {
        sub_100007474(archive);
      }

      localizedDescription = [archive localizedDescription];
      v41 = [NSString stringWithFormat:@"Encountered error creating Log Processor: %@", localizedDescription, v53, v54];
      v42 = [(HealthResearchLogsDiagnosticExtension *)selfCopy createErrorFile:v41];

      v43 = [DEAttachmentItem attachmentWithPathURL:v42];
      v63[0] = v43;
      v44 = [DEAttachmentItem attachmentWithPathURL:v16];
      v63[1] = v44;
      v34 = [NSArray arrayWithObjects:v63 count:2];

      parametersCopy = v55;
    }

    else
    {
      v59 = 0;
      v57[0] = _NSConcreteStackBlock;
      v57[1] = 3221225472;
      v57[2] = sub_100001C1C;
      v57[3] = &unk_10000C700;
      v58 = handlerCopy;
      [(HRLDLogArchiveProcessor *)v37 writeLogsToDiskFrom:v32 error:&v59 progressHandler:v57];
      archive = v59;
      v45 = sub_100001368();
      v46 = v45;
      if (archive)
      {
        if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
        {
          sub_1000074FC(archive);
        }

        localizedDescription2 = [archive localizedDescription];
        v48 = [NSString stringWithFormat:@"Encountered error writing logs to disk: %@", localizedDescription2, v53, v54];
        v49 = [(HealthResearchLogsDiagnosticExtension *)selfCopy createErrorFile:v48];

        v50 = [DEAttachmentItem attachmentWithPathURL:v49];
        v62[0] = v50;
        v51 = [DEAttachmentItem attachmentWithPathURL:v16];
        v62[1] = v51;
        v34 = [NSArray arrayWithObjects:v62 count:2];
      }

      else
      {
        if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v46, OS_LOG_TYPE_DEFAULT, "Successfully finished Research Logging Session.", buf, 2u);
        }

        v49 = [DEAttachmentItem attachmentWithPathURL:v16];
        v61 = v49;
        v34 = [NSArray arrayWithObjects:&v61 count:1];
      }

      parametersCopy = v55;

      v42 = v58;
    }
  }

  return v34;
}

- (id)createErrorFile:(id)file
{
  fileCopy = file;
  v4 = NSTemporaryDirectory();
  v5 = [v4 stringByAppendingPathComponent:@"session-error"];
  v6 = [NSURL fileURLWithPath:v5];

  v7 = [fileCopy dataUsingEncoding:4];

  [v7 writeToURL:v6 atomically:1];

  return v6;
}

@end