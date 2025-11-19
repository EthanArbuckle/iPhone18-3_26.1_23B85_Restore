@interface AfibBurdenDiagnosticExtension
- (id)attachmentList;
- (id)attachmentsForParameters:(id)a3;
@end

@implementation AfibBurdenDiagnosticExtension

- (id)attachmentList
{
  v3 = ab_get_framework_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "attachmentList called: calling attachmentsForParameters with empty dictionary", v6, 2u);
  }

  v4 = [(AfibBurdenDiagnosticExtension *)self attachmentsForParameters:&__NSDictionary0__struct];

  return v4;
}

- (id)attachmentsForParameters:(id)a3
{
  v3 = a3;
  v4 = ab_get_framework_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v46 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "attachmentsForParameters: %{public}@", buf, 0xCu);
  }

  v5 = [v3 objectForKeyedSubscript:@"DEExtensionHostAppKey"];
  if (([v5 isEqualToString:@"com.apple.taptoradard"] & 1) != 0 || objc_msgSend(v5, "isEqualToString:", @"com.apple.TapToRadar"))
  {
    v6 = [v3 objectForKeyedSubscript:@"DEExtensionAttachmentsParamConsentProvidedKey"];
    v7 = [v6 BOOLValue];

    if ((v7 & 1) == 0)
    {
      v30 = ab_get_framework_log();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        v31 = "no consent provided. skipping attachments.";
LABEL_22:
        _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, v31, buf, 2u);
      }

LABEL_23:

      v29 = &__NSArray0__struct;
      goto LABEL_28;
    }
  }

  v8 = +[NSFileManager defaultManager];
  v9 = [v8 fileExistsAtPath:@"/Library/Preferences/Logging/Subsystems/com.apple.Health.AFibBurden.plist"];

  if ((v9 & 1) == 0)
  {
    v30 = ab_get_framework_log();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v31 = "no logging profile installed. skipping force analysis";
      goto LABEL_22;
    }

    goto LABEL_23;
  }

  out_token = -1;
  notify_register_check("com.apple.AfibBurden.ForceAnalysis.WriteToJson", &out_token);
  if (out_token == -1)
  {
    v23 = ab_get_framework_log();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      sub_100002E40(v23);
    }

    v29 = &__NSArray0__struct;
  }

  else
  {
    v10 = dispatch_semaphore_create(0);
    v11 = objc_alloc_init(HKHealthStore);
    v12 = [[HKHRAFibBurdenControl alloc] initWithHealthStore:v11];
    v13 = [[ABFeatureStatusDiagnosticManager alloc] initWithLoggingDirectoryPath:@"/var/mobile/Library/Logs/AfBHIDDiagnostics" healthStore:v11];
    v44[0] = v13;
    v14 = [[ABSampleDiagnosticManager alloc] initWithLoggingDirectoryPath:@"/var/mobile/Library/Logs/AfBHIDDiagnostics" healthStore:v11 numberOfWeeks:10];
    v44[1] = v14;
    v15 = [[ABSevenDayAnalysisBreadcrumbDiagnosticManager alloc] initWithLoggingDirectoryPath:@"/var/mobile/Library/Logs/AfBHIDDiagnostics" control:v12];
    v44[2] = v15;
    v16 = [NSArray arrayWithObjects:v44 count:3];

    v39 = 0u;
    v40 = 0u;
    v37 = 0u;
    v38 = 0u;
    v17 = v16;
    v18 = [v17 countByEnumeratingWithState:&v37 objects:v43 count:16];
    if (v18)
    {
      v19 = v18;
      v20 = *v38;
      do
      {
        for (i = 0; i != v19; i = i + 1)
        {
          if (*v38 != v20)
          {
            objc_enumerationMutation(v17);
          }

          [*(*(&v37 + 1) + 8 * i) performDiagnosticsAndWriteToFile];
        }

        v19 = [v17 countByEnumeratingWithState:&v37 objects:v43 count:16];
      }

      while (v19);
    }

    v33[0] = _NSConcreteStackBlock;
    v33[1] = 3221225472;
    v33[2] = sub_100002A44;
    v33[3] = &unk_100008328;
    v36 = out_token;
    v22 = v12;
    v34 = v22;
    v23 = v10;
    v35 = v23;
    [v22 deleteAllTachogramClassificationsWithCompletion:v33];
    v24 = dispatch_time(0, 60000000000);
    dispatch_semaphore_wait(v23, v24);
    notify_cancel(out_token);
    v25 = +[NSFileManager defaultManager];
    v26 = [v25 contentsOfDirectoryAtPath:@"/var/mobile/Library/Logs/AfBHIDDiagnostics" error:0];

    v27 = ab_get_framework_log();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v46 = v26;
      _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "diagnostics generated files : %{public}@", buf, 0xCu);
    }

    v28 = [DEAttachmentItem attachmentWithPath:@"/var/mobile/Library/Logs/AfBHIDDiagnostics"];
    [v28 setShouldCompress:&__kCFBooleanTrue];
    [v28 setDeleteOnAttach:&__kCFBooleanTrue];
    v42 = v28;
    v29 = [NSArray arrayWithObjects:&v42 count:1];
  }

LABEL_28:

  return v29;
}

@end