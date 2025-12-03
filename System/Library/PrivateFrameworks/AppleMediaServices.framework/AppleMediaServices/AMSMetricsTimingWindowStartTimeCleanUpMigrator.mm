@interface AMSMetricsTimingWindowStartTimeCleanUpMigrator
+ (void)cleanUpMetricsTimingWindowStartTimeUserDefaultWithOptions:(id)options;
@end

@implementation AMSMetricsTimingWindowStartTimeCleanUpMigrator

+ (void)cleanUpMetricsTimingWindowStartTimeUserDefaultWithOptions:(id)options
{
  v17 = *MEMORY[0x1E69E9840];
  if ([options scenario] == 4)
  {
    if (CFPreferencesCopyAppValue(@"AMSMetricsTimingWindowStartTime", @"com.apple.AppleMediaServices"))
    {
      CFPreferencesSetAppValue(@"AMSMetricsTimingWindowStartTime", 0, @"com.apple.AppleMediaServices");
      v5 = +[AMSLogConfig sharedDataMigrationConfig];
      if (!v5)
      {
        v5 = +[AMSLogConfig sharedConfig];
      }

      oSLogObject = [v5 OSLogObject];
      if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
      {
        v7 = AMSLogKey();
        v11 = 138543618;
        selfCopy3 = self;
        v13 = 2114;
        v14 = v7;
        _os_log_impl(&dword_192869000, oSLogObject, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Deleted value for key AMSMetricsTimingWindowStartTime from user defaults.", &v11, 0x16u);
      }

      goto LABEL_16;
    }

    v5 = +[AMSLogConfig sharedDataMigrationConfig];
    if (!v5)
    {
      v5 = +[AMSLogConfig sharedConfig];
    }

    oSLogObject = [v5 OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_INFO))
    {
      v8 = AMSLogKey();
      v9 = NSStringFromSelector(a2);
      v11 = 138543874;
      selfCopy3 = self;
      v13 = 2114;
      v14 = v8;
      v15 = 2114;
      v16 = v9;
      v10 = "%{public}@: [%{public}@] %{public}@ skipping. User default to be removed is not present.";
      goto LABEL_15;
    }
  }

  else
  {
    v5 = +[AMSLogConfig sharedDataMigrationConfig];
    if (!v5)
    {
      v5 = +[AMSLogConfig sharedConfig];
    }

    oSLogObject = [v5 OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_INFO))
    {
      v8 = AMSLogKey();
      v9 = NSStringFromSelector(a2);
      v11 = 138543874;
      selfCopy3 = self;
      v13 = 2114;
      v14 = v8;
      v15 = 2114;
      v16 = v9;
      v10 = "%{public}@: [%{public}@] %{public}@ skipping. Not valid for erase installs.";
LABEL_15:
      _os_log_impl(&dword_192869000, oSLogObject, OS_LOG_TYPE_INFO, v10, &v11, 0x20u);
    }
  }

LABEL_16:
}

@end