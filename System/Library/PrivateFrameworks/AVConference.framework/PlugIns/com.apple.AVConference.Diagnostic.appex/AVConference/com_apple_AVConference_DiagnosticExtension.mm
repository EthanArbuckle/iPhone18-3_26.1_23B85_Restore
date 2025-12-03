@interface com_apple_AVConference_DiagnosticExtension
+ (id)realHomeDirectory;
+ (void)realHomeDirectory;
- (BOOL)copyFile:(id)file withPredicate:(id)predicate toSaveDirectory:(id)directory;
- (id)attachmentsForParameters:(id)parameters withProgressHandler:(id)handler;
- (int)copyDirectory:(id)directory withPredicate:(id)predicate toSubDirectory:(id)subDirectory;
- (int)copyDumps;
- (int)copyRTCReporting;
- (int)copySpindumps;
- (int)copyStackshotsAndCrashes;
@end

@implementation com_apple_AVConference_DiagnosticExtension

+ (id)realHomeDirectory
{
  *__error() = 0;
  v2 = getuid();
  v3 = getpwuid(v2);
  if (v3)
  {
    v4 = [NSString stringWithUTF8String:v3->pw_dir];
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      +[com_apple_AVConference_DiagnosticExtension realHomeDirectory];
    }

    v4 = 0;
  }

  return v4;
}

- (int)copyDirectory:(id)directory withPredicate:(id)predicate toSubDirectory:(id)subDirectory
{
  directoryCopy = directory;
  predicateCopy = predicate;
  subDirectoryCopy = subDirectory;
  v10 = +[NSFileManager defaultManager];
  v11 = [(NSString *)self->_temporaryDirectoryURL stringByAppendingString:subDirectoryCopy];
  if ([v10 fileExistsAtPath:v11])
  {
    goto LABEL_23;
  }

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v39 = [v11 cStringUsingEncoding:4];
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "[AVCDiagnosticExtension] creating new save directory %s", buf, 0xCu);
  }

  v31 = 0;
  [v10 createDirectoryAtPath:v11 withIntermediateDirectories:1 attributes:0 error:&v31];
  v12 = v31;
  if (!v12)
  {
LABEL_23:
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
    {
      v15 = [directoryCopy cStringUsingEncoding:4];
      *buf = 136315138;
      v39 = v15;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "[AVCDiagnosticExtension] copying files from %s", buf, 0xCu);
    }

    v28 = subDirectoryCopy;
    v29 = directoryCopy;
    v16 = [NSURL URLWithString:directoryCopy];
    v37[0] = NSURLNameKey;
    v37[1] = NSURLIsDirectoryKey;
    v17 = [NSArray arrayWithObjects:v37 count:2];
    v27 = v10;
    v18 = [v10 enumeratorAtURL:v16 includingPropertiesForKeys:v17 options:4 errorHandler:&__block_literal_global];

    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    v19 = v18;
    v20 = [v19 countByEnumeratingWithState:&v33 objects:v32 count:16];
    if (v20)
    {
      v21 = v20;
      v14 = 0;
      v22 = *v34;
      do
      {
        for (i = 0; i != v21; i = i + 1)
        {
          if (*v34 != v22)
          {
            objc_enumerationMutation(v19);
          }

          v24 = *(*(&v33 + 1) + 8 * i);
          v25 = [v11 stringByAppendingString:@"/"];
          LODWORD(v24) = [(com_apple_AVConference_DiagnosticExtension *)self copyFile:v24 withPredicate:predicateCopy toSaveDirectory:v25];

          v14 += v24;
        }

        v21 = [v19 countByEnumeratingWithState:&v33 objects:v32 count:16];
      }

      while (v21);
    }

    else
    {
      v14 = 0;
    }

    v13 = 0;
    subDirectoryCopy = v28;
    directoryCopy = v29;
    v10 = v27;
  }

  else
  {
    v13 = v12;
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      [com_apple_AVConference_DiagnosticExtension copyDirectory:withPredicate:toSubDirectory:];
    }

    v14 = 0;
  }

  return v14;
}

- (BOOL)copyFile:(id)file withPredicate:(id)predicate toSaveDirectory:(id)directory
{
  fileCopy = file;
  predicateCopy = predicate;
  directoryCopy = directory;
  v28 = 0;
  [fileCopy getResourceValue:&v28 forKey:NSURLIsDirectoryKey error:0];
  v10 = v28;
  if (([v10 BOOLValue] & 1) == 0)
  {
    v12 = [NSDate dateWithTimeIntervalSinceNow:-604800.0];
    v27 = 0;
    [fileCopy getResourceValue:&v27 forKey:NSURLContentModificationDateKey error:0];
    v13 = v27;
    absoluteString = [fileCopy absoluteString];
    v15 = [predicateCopy evaluateWithObject:absoluteString];

    v16 = [v12 earlierDate:v13];

    if (v15 && v16 == v12)
    {
      lastPathComponent = [fileCopy lastPathComponent];
      v18 = [directoryCopy stringByAppendingFormat:@"/%@", lastPathComponent];
      v19 = [NSURL fileURLWithPath:v18];

      v20 = +[NSFileManager defaultManager];
      v26 = 0;
      [v20 copyItemAtURL:fileCopy toURL:v19 error:&v26];
      absoluteString3 = v26;

      if (!absoluteString3)
      {
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
        {
          absoluteString2 = [fileCopy absoluteString];
          *buf = 138412546;
          *v30 = absoluteString2;
          *&v30[8] = 2112;
          *v31 = directoryCopy;
          _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "[AVCDiagnosticExtension] Successfully copied file from %@ to %@", buf, 0x16u);
        }

        v11 = 1;
        goto LABEL_13;
      }

      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        [com_apple_AVConference_DiagnosticExtension copyFile:fileCopy withPredicate:? toSaveDirectory:?];
      }
    }

    else
    {
      if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
      {
LABEL_12:
        v11 = 0;
LABEL_13:

        goto LABEL_14;
      }

      v22 = v16 == v12;
      absoluteString3 = [fileCopy absoluteString];
      v23 = [absoluteString3 cStringUsingEncoding:4];
      *buf = 67109634;
      *v30 = v15;
      *&v30[4] = 1024;
      *&v30[6] = v22;
      *v31 = 2080;
      *&v31[2] = v23;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "[AVCDiagnosticExtension] skipping file copy (predicateMatch=%d, isNotTooOld=%d) for path=%s", buf, 0x18u);
    }

    goto LABEL_12;
  }

  v11 = 0;
LABEL_14:

  return v11;
}

- (int)copyStackshotsAndCrashes
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "[AVCDiagnosticExtension] Beginning stackshot and crash file copy process", buf, 2u);
  }

  v3 = +[com_apple_AVConference_DiagnosticExtension defaultCrashReportPath];
  v4 = [NSPredicate predicateWithFormat:@"SELF MATCHES[c] %@", @".*(audiomxd|captured|mediaserver|avconference|stacks-).*"];
  v5 = [(com_apple_AVConference_DiagnosticExtension *)self copyDirectory:v3 withPredicate:v4 toSubDirectory:@"/CrashesAndSpins"];

  v6 = +[com_apple_AVConference_DiagnosticExtension defaultCrashReportPath];
  v7 = [v6 stringByAppendingString:@"Retired/"];
  v8 = [NSPredicate predicateWithFormat:@"SELF MATCHES[c] %@", @".*(audiomxd|captured|mediaserver|avconference|stacks-).*"];
  v9 = [(com_apple_AVConference_DiagnosticExtension *)self copyDirectory:v7 withPredicate:v8 toSubDirectory:@"/CrashesAndSpins/Retired"];

  return v9 + v5;
}

- (int)copySpindumps
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "[AVCDiagnosticExtension] Beginning Spindump and Tailspin file copy process", buf, 2u);
  }

  v3 = +[com_apple_AVConference_DiagnosticExtension defaultSpindumpPath];
  v4 = [NSPredicate predicateWithFormat:@"SELF MATCHES[c] %@", @".*(audiomxd|captured|mediaserver|avconference).*"];
  v5 = [(com_apple_AVConference_DiagnosticExtension *)self copyDirectory:v3 withPredicate:v4 toSubDirectory:@"/CrashesAndSpins"];

  return v5;
}

- (int)copyDumps
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "[AVCDiagnosticExtension] Beginning dump file copy process", buf, 2u);
  }

  v3 = +[com_apple_AVConference_DiagnosticExtension defaultAVConferenceCachePath];
  v4 = [NSPredicate predicateWithFormat:@"SELF CONTAINS[c] %@", @"dump"];
  v5 = [(com_apple_AVConference_DiagnosticExtension *)self copyDirectory:v3 withPredicate:v4 toSubDirectory:@"/Dumps"];

  return v5;
}

- (int)copyRTCReporting
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "[AVCDiagnosticExtension] Beginning RTCReporting file copy process", buf, 2u);
  }

  v3 = +[com_apple_AVConference_DiagnosticExtension defaultRTCReportingPath];
  v4 = [NSPredicate predicateWithFormat:@"SELF LIKE %@", @"*"];
  v5 = [(com_apple_AVConference_DiagnosticExtension *)self copyDirectory:v3 withPredicate:v4 toSubDirectory:@"/RTCReporting"];

  return v5;
}

- (id)attachmentsForParameters:(id)parameters withProgressHandler:(id)handler
{
  handlerCopy = handler;
  v6 = [[DECollectionProgress alloc] initWithPercentComplete:0.0];
  handlerCopy[2](handlerCopy, v6);

  v7 = objc_opt_new();
  uUIDString = [v7 UUIDString];
  v9 = [NSString stringWithFormat:@"/private/var/tmp/avconference/%@/AVCDiagnosticExtensionLogs", uUIDString];
  temporaryDirectoryURL = self->_temporaryDirectoryURL;
  self->_temporaryDirectoryURL = v9;

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    v11 = [(NSString *)self->_temporaryDirectoryURL cStringUsingEncoding:4];
    *buf = 136315138;
    v23 = v11;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "[AVCDiagnosticExtension] beginning to copy AVConference DiagnosticExtension files to %s", buf, 0xCu);
  }

  v12 = [[NSMutableString alloc] initWithString:@"file copy results - "];
  [v12 appendFormat:@"stackshots/crashes=%d ", -[com_apple_AVConference_DiagnosticExtension copyStackshotsAndCrashes](self, "copyStackshotsAndCrashes")];
  v13 = [[DECollectionProgress alloc] initWithPercentComplete:30.0];
  handlerCopy[2](handlerCopy, v13);

  [v12 appendFormat:@"dumps=%d ", -[com_apple_AVConference_DiagnosticExtension copyDumps](self, "copyDumps")];
  v14 = [[DECollectionProgress alloc] initWithPercentComplete:60.0];
  handlerCopy[2](handlerCopy, v14);

  [v12 appendFormat:@"rtcReports=%d ", -[com_apple_AVConference_DiagnosticExtension copyRTCReporting](self, "copyRTCReporting")];
  v15 = [[DECollectionProgress alloc] initWithPercentComplete:90.0];
  handlerCopy[2](handlerCopy, v15);

  [v12 appendFormat:@"spins=%d ", -[com_apple_AVConference_DiagnosticExtension copySpindumps](self, "copySpindumps")];
  v16 = [DEAttachmentItem attachmentWithPath:self->_temporaryDirectoryURL];
  v17 = [[DECollectionProgress alloc] initWithPercentComplete:100.0];
  handlerCopy[2](handlerCopy, v17);

  [v16 setDisplayName:@"AVCDiagnosticExtensionLogs"];
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    v18 = [v12 cStringUsingEncoding:4];
    *buf = 136315138;
    v23 = v18;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "[AVCDiagnosticExtension] finishing AVConference DiagnosticExtension file copy process -> %s", buf, 0xCu);
  }

  v21 = v16;
  v19 = [NSArray arrayWithObjects:&v21 count:1];

  return v19;
}

+ (void)realHomeDirectory
{
  v5 = *__error();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

- (void)copyFile:(void *)a1 withPredicate:toSaveDirectory:.cold.1(void *a1)
{
  v6 = [a1 absoluteString];
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
}

@end