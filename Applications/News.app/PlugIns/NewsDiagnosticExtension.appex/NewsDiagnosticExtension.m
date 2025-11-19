id FRDiagnosticFileListURL()
{
  v0 = +[NSFileManager defaultManager];
  v1 = [v0 containerURLForSecurityApplicationGroupIdentifier:@"group.com.apple.news"];
  v2 = [v1 URLByAppendingPathComponent:@"news-diagnostic-file-list.txt"];

  return v2;
}

id FRDiagnosticFileTempDirURL()
{
  v0 = +[NSFileManager defaultManager];
  v1 = [v0 containerURLForSecurityApplicationGroupIdentifier:@"group.com.apple.news"];
  v2 = [v1 URLByAppendingPathComponent:@"Library/Caches/Diagnostics" isDirectory:1];

  return v2;
}

>_diagnosticDumpNotifier;
    v2->_diagnosticDumpNotifier = v7;
  }

  return v2;
}

- (id)attachmentsForParameters:(id)a3
{
  v4 = a3;
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
  {
    LOWORD(v18[0]) = 0;
    _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_INFO, "Notifying News apps to create diagnostic attachments", v18, 2u);
  }

  v6 = [TFInterprocessDiagnosticFileReceiver alloc];
  v7 = FRDiagnosticFileListURL();
  v8 = [(NewsDiagnosticExtension *)self log];
  v9 = [v6 initWithNotificationName:@"FRDiagnosticFileNotificationName" diagnosticFileListURL:v7 log:v8];

  v10 = [(NewsDiagnosticExtension *)self diagnosticDumpNotifier];
  [v10 triggerDiagnosticFileDump];

  [NSThread sleepForTimeInterval:60.0];
  v11 = self->_log;
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    LOWORD(v18[0]) = 0;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "Done waiting for attachments. Attaching to radar.", v18, 2u);
  }

  v12 = [v9 diagnosticFileURLs];
  v13 = self->_log;
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    v14 = v13;
    v15 = [v12 count];
    v18[0] = 67109120;
    v18[1] = v15;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "Found %u files for diagnostics", v18, 8u);
  }

  v16 = [(NewsDiagnosticExtension *)self attachmentsFromDiagnosticFiles:v12];

  return v16;
}

- (id)attachmentsFromDiagnosticFiles:(id)a3
{
  v3 = a3;
  v4 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v3 count]);
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [DEAttachmentItem attachmentWithPathURL:*(*(&v13 + 1) + 8 * i), v13];
        [v4 addObject:v10];
      }

      v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  v11 = [v4 copy];

  return v11;
}

@end