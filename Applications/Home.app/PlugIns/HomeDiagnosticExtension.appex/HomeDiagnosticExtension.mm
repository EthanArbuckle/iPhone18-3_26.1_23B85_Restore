void sub_100001164(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Unable to find contents in directory: %@.", &v2, 0xCu);
}

void sub_1000011DC(os_log_t log)
{
  v1 = 138412290;
  v2 = 0;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "Unable to find directory: %@.", &v1, 0xCu);
}

ForTimeInterval:60.0];

  return [(HomeDiagnosticExtension *)self _attachments];
}

- (id)_attachments
{
  v3 = +[NSFileManager defaultManager];
  v4 = [NSURL fileURLWithPath:@"/var/mobile/Library/Caches/com.apple.home" isDirectory:1 relativeToURL:0];
  log = self->_log;
  if (v4)
  {
    if (os_log_type_enabled(self->_log, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v50 = v4;
      _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_INFO, "Looking for contents in %@.", buf, 0xCu);
    }

    v47 = 0;
    v6 = [v3 contentsOfDirectoryAtURL:v4 includingPropertiesForKeys:&__NSArray0__struct options:0 error:&v47];
    v7 = v47;
    if (v6)
    {
      if ([v6 count])
      {
        v36 = v7;
        v37 = v4;
        v38 = v3;
        v8 = objc_alloc_init(NSDateFormatter);
        [v8 setDateFormat:@"MM-dd-yyyy_HH:mm:ss"];
        v41 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v6 count]);
        v43 = 0u;
        v44 = 0u;
        v45 = 0u;
        v46 = 0u;
        v35 = v6;
        obj = v6;
        v9 = [obj countByEnumeratingWithState:&v43 objects:v48 count:16];
        if (!v9)
        {
          goto LABEL_26;
        }

        v10 = v9;
        v42 = *v44;
        v39 = v8;
        while (1)
        {
          for (i = 0; i != v10; i = i + 1)
          {
            if (*v44 != v42)
            {
              objc_enumerationMutation(obj);
            }

            v12 = [*(*(&v43 + 1) + 8 * i) path];
            if ([v12 containsString:@"home_state_dump"])
            {
              v13 = [v12 lastPathComponent];
              v14 = [v13 stringByReplacingOccurrencesOfString:@".plist" withString:&stru_1000041A8];

              v15 = [v14 componentsSeparatedByString:@"_"];
              v16 = [v15 objectAtIndexedSubscript:{objc_msgSend(v15, "count") - 2}];
              v17 = [v15 lastObject];
              v18 = [NSString stringWithFormat:@"%@_%@", v16, v17];
              v19 = [v8 dateFromString:v18];
              [v19 timeIntervalSinceNow];
              if (v20 > -18000.0)
              {
                v21 = [DEAttachmentItem attachmentWithPath:v12];
                [v41 addObject:v21];

                v8 = v39;
              }
            }

            if ([v12 containsString:@"Snapshots_"])
            {
              v22 = [v12 lastPathComponent];
              v23 = [v22 componentsSeparatedByString:@"_"];
              if ([v23 count] < 4)
              {

                goto LABEL_23;
              }

              v24 = [v23 objectAtIndexedSubscript:{objc_msgSend(v23, "count") - 2}];
              v25 = [v23 lastObject];
              v26 = [NSString stringWithFormat:@"%@_%@", v24, v25];
              v27 = [v8 dateFromString:v26];
              [v27 timeIntervalSinceNow];
              if (v28 > -18000.0)
              {
                v29 = [DEAttachmentItem attachmentWithPath:v12];
                [v29 setShouldCompress:&__kCFBooleanTrue];
                [v41 addObject:v29];

                v8 = v39;
              }
            }

            v30 = [v12 lastPathComponent];
            v31 = [v30 hasPrefix:@"CameraEventDebugLogger"];

            if (!v31)
            {
              goto LABEL_24;
            }

            v22 = [DEAttachmentItem attachmentWithPath:v12];
            [v22 setShouldCompress:&__kCFBooleanTrue];
            [v41 addObject:v22];
LABEL_23:

LABEL_24:
          }

          v10 = [obj countByEnumeratingWithState:&v43 objects:v48 count:16];
          if (!v10)
          {
LABEL_26:

            v32 = [v41 copy];
            v4 = v37;
            v3 = v38;
            v6 = v35;
            v7 = v36;
            goto LABEL_33;
          }
        }
      }
    }

    else
    {
      v33 = self->_log;
      if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
      {
        sub_100001164(v7, v33);
      }
    }

    v32 = &__NSArray0__struct;
LABEL_33:
  }

  else
  {
    if (os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
    {
      sub_1000011DC(log);
    }

    v7 = 0;
    v32 = &__NSArray0__struct;
  }

  return v32;
}

- (void)_notifyHomeApps
{
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEFAULT, "Posting kHomeDiagnosticExtensionAttachmentRequestNotification", v4, 2u);
  }

  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterPostNotification(DarwinNotifyCenter, @"HomeDiagnosticExtensionAttachmentRequestNotification", 0, 0, 1u);
}

@end