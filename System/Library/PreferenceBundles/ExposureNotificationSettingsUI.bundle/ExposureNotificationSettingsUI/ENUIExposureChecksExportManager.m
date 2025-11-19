@interface ENUIExposureChecksExportManager
- (ENUIExposureChecksExportManager)initWithJSONSerializedExposureChecks:(id)a3;
- (void)createExportFileWithCompletion:(id)a3;
- (void)removeExportFile;
@end

@implementation ENUIExposureChecksExportManager

- (ENUIExposureChecksExportManager)initWithJSONSerializedExposureChecks:(id)a3
{
  v5 = a3;
  v17.receiver = self;
  v17.super_class = ENUIExposureChecksExportManager;
  v6 = [(ENUIExposureChecksExportManager *)&v17 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_jsonSerializedExposureChecks, a3);
    v8 = objc_alloc_init(NSDateFormatter);
    v9 = [NSLocale localeWithLocaleIdentifier:@"en_US_POSIX"];
    [v8 setLocale:v9];

    [v8 setDateFormat:@"yyyy-MM-dd"];
    v10 = +[NSDate date];
    v11 = [v8 stringFromDate:v10];

    v12 = [NSString stringWithFormat:@"ExposureChecks-%@.json", v11];
    v13 = NSTemporaryDirectory();
    v14 = [v13 stringByAppendingPathComponent:v12];
    filePath = v7->_filePath;
    v7->_filePath = v14;
  }

  return v7;
}

- (void)createExportFileWithCompletion:(id)a3
{
  v4 = a3;
  v5 = ENUILogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = objc_opt_class();
    jsonSerializedExposureChecks = self->_jsonSerializedExposureChecks;
    v8 = v6;
    v9 = [NSNumber numberWithUnsignedInteger:[(NSArray *)jsonSerializedExposureChecks count]];
    *buf = 138543618;
    v51 = v6;
    v52 = 2112;
    v53 = v9;
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "[%{public}@] Export requested for %@ exposure checks", buf, 0x16u);
  }

  if (self->_jsonSerializedExposureChecks)
  {
    v10 = +[NSFileManager defaultManager];
    p_filePath = &self->_filePath;
    if ([v10 fileExistsAtPath:self->_filePath])
    {
      v12 = ENUILogForCategory();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        sub_1BC64(self, &self->_filePath);
      }

      v13 = *p_filePath;
      v49 = 0;
      [v10 removeItemAtPath:v13 error:&v49];
      v14 = v49;
    }

    else
    {
      v14 = 0;
    }

    v16 = *p_filePath;
    v58 = NSFileProtectionKey;
    v59 = NSFileProtectionCompleteUnlessOpen;
    v17 = [NSDictionary dictionaryWithObjects:&v59 forKeys:&v58 count:1];
    [v10 createFileAtPath:v16 contents:0 attributes:v17];

    if ([v10 fileExistsAtPath:*p_filePath])
    {
      v57[0] = &off_2EEA0;
      v56[0] = @"ExportVersion";
      v56[1] = @"DeviceProductType";
      v18 = MGCopyAnswer();
      v57[1] = v18;
      v56[2] = @"Build";
      v19 = MGCopyAnswer();
      v56[3] = @"ExposureChecks";
      v20 = self->_jsonSerializedExposureChecks;
      v57[2] = v19;
      v57[3] = v20;
      v21 = [NSDictionary dictionaryWithObjects:v57 forKeys:v56 count:4];

      v48 = v14;
      v22 = [NSJSONSerialization dataWithJSONObject:v21 options:1 error:&v48];
      v23 = v48;

      if (v22)
      {
        v24 = [[NSString alloc] initWithData:v22 encoding:4];
        v25 = ENUILogForCategory();
        if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
        {
          v26 = objc_opt_class();
          *buf = 138543618;
          v51 = v26;
          v52 = 2114;
          v53 = v24;
          v27 = v26;
          _os_log_impl(&dword_0, v25, OS_LOG_TYPE_DEFAULT, "[%{public}@] Created JSON data: %{public}@", buf, 0x16u);
        }

        v28 = [NSFileHandle fileHandleForWritingAtPath:*p_filePath];
        v47 = 0;
        v29 = [v28 writeData:v22 error:&v47];
        v30 = v47;

        v31 = ENUILogForCategory();
        v32 = v31;
        if (v29)
        {
          if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
          {
            v33 = objc_opt_class();
            *buf = 138543362;
            v51 = v33;
            v34 = v33;
            _os_log_impl(&dword_0, v32, OS_LOG_TYPE_DEFAULT, "[%{public}@] Wrote JSON data", buf, 0xCu);
          }

          v35 = [NSURL fileURLWithPath:*p_filePath];
          v36 = ENUILogForCategory();
          if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
          {
            v37 = objc_opt_class();
            *buf = 138543618;
            v51 = v37;
            v52 = 2114;
            v53 = v35;
            v38 = v37;
            _os_log_impl(&dword_0, v36, OS_LOG_TYPE_DEFAULT, "[%{public}@] Completing with URL: %{public}@", buf, 0x16u);
          }

          v4[2](v4, v35, 0);
        }

        else
        {
          if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
          {
            v44 = objc_opt_class();
            filePath = self->_filePath;
            *buf = 138543874;
            v51 = v44;
            v52 = 2114;
            v53 = filePath;
            v54 = 2114;
            v55 = v30;
            v46 = v44;
            _os_log_error_impl(&dword_0, v32, OS_LOG_TYPE_ERROR, "[%{public}@] Failed to write to file: %{public}@, error: %{public}@", buf, 0x20u);
          }

          (v4)[2](v4, 0, v30);
        }

        v23 = v30;
      }

      else
      {
        v40 = ENUILogForCategory();
        if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
        {
          v41 = objc_opt_class();
          v42 = self->_filePath;
          *buf = 138543874;
          v51 = v41;
          v52 = 2114;
          v53 = v42;
          v54 = 2114;
          v55 = v23;
          v43 = v41;
          _os_log_error_impl(&dword_0, v40, OS_LOG_TYPE_ERROR, "[%{public}@] Failed to create JSON data: %{public}@, error: %{public}@", buf, 0x20u);
        }

        (v4)[2](v4, 0, v23);
      }

      v14 = v23;
    }

    else
    {
      v39 = ENUILogForCategory();
      if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
      {
        sub_1BCEC(self, &self->_filePath);
      }

      v21 = ENErrorF();
      (v4)[2](v4, 0, v21);
    }
  }

  else
  {
    v15 = ENUILogForCategory();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      sub_1BD74(self, &self->_jsonSerializedExposureChecks);
    }

    v14 = ENErrorF();
    (v4)[2](v4, 0, v14);
  }
}

- (void)removeExportFile
{
  v3 = +[NSFileManager defaultManager];
  if ([v3 fileExistsAtPath:self->_filePath])
  {
    v4 = ENUILogForCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = objc_opt_class();
      filePath = self->_filePath;
      v8 = 138543618;
      v9 = v5;
      v10 = 2114;
      v11 = filePath;
      v7 = v5;
      _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEFAULT, "[%{public}@] Removing export file: %{public}@", &v8, 0x16u);
    }

    [v3 removeItemAtPath:self->_filePath error:0];
  }
}

@end