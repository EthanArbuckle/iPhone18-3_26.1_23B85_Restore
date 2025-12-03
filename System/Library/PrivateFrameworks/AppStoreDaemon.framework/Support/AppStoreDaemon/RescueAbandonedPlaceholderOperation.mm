@interface RescueAbandonedPlaceholderOperation
- (void)main;
@end

@implementation RescueAbandonedPlaceholderOperation

- (void)main
{
  v3 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = objc_opt_class();
    bundleID = self->_bundleID;
    *buf = 138543618;
    v48 = v4;
    v49 = 2114;
    v50 = bundleID;
    v6 = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "[%{public}@]: Attempting hydrate bundleID: %{public}@", buf, 0x16u);
  }

  v7 = self->_bundleID;
  if (!v7)
  {
    v16 = ASDErrorWithTitleAndMessage();
    v9 = 0;
    v17 = 0;
    goto LABEL_32;
  }

  v8 = v7;
  v46 = 0;
  v9 = [[LSApplicationRecord alloc] initWithBundleIdentifier:v8 allowPlaceholder:1 error:&v46];
  v10 = v46;
  if (!v9)
  {
    v18 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v40 = objc_opt_class();
      *buf = 138543618;
      v48 = v40;
      v49 = 2112;
      v50 = v8;
      v41 = v40;
      _os_log_error_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "[%{public}@]: Cannot find application with bundleID: %@", buf, 0x16u);
    }

    v14 = ASDErrorWithTitleAndMessage();
    v9 = v10;
    goto LABEL_13;
  }

  if (([v9 isPlaceholder] & 1) == 0)
  {
    v11 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = objc_opt_class();
      *buf = 138543618;
      v48 = v12;
      v49 = 2112;
      v50 = v8;
      v13 = v12;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "[%{public}@]: Application does not need rescue, bundleID: %@ is already installed!", buf, 0x16u);
    }

    v14 = ASDErrorWithTitleAndMessage();

LABEL_13:
    v9 = 0;
    v10 = v14;
  }

  v19 = v10;

  v16 = v10;
  v17 = 0;
  if (!v16 && v9)
  {
    v20 = self->_bundleID;
    v9 = v9;
    installType = [v9 installType];
    iTunesMetadata = [v9 iTunesMetadata];
    storeItemIdentifier = [iTunesMetadata storeItemIdentifier];

    v24 = ASDLogHandleForCategory();
    v25 = v24;
    if (storeItemIdentifier)
    {
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
      {
        v26 = objc_opt_class();
        v27 = v26;
        iTunesMetadata2 = [v9 iTunesMetadata];
        storeItemIdentifier2 = [iTunesMetadata2 storeItemIdentifier];
        *buf = 138544130;
        v48 = v26;
        v49 = 2114;
        v50 = v20;
        v51 = 2048;
        v52 = storeItemIdentifier2;
        v53 = 2048;
        v54 = installType;
        _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "[%{public}@]: Hydrating placeholder for bundleID: %{public}@ itemID: %llu installType: %ld", buf, 0x2Au);
      }

      v30 = 0;
    }

    else
    {
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        v42 = objc_opt_class();
        *buf = 138543874;
        v48 = v42;
        v49 = 2114;
        v50 = v20;
        v51 = 2048;
        v52 = installType;
        v43 = v42;
        _os_log_error_impl(&_mh_execute_header, v25, OS_LOG_TYPE_ERROR, "[%{public}@]: Unable to hydrate placeholder for bundleID: %{public}@ installType: %ld due to lack of store itemID", buf, 0x20u);
      }

      v30 = ASDErrorWithTitleAndMessage();
    }

    v31 = v30;

    v16 = v30;
    v17 = 0;
    if (!v16 && storeItemIdentifier)
    {
      v32 = self->_bundleID;
      v33 = [[NSArray alloc] initWithObjects:{v32, 0}];
      v34 = sub_10027F51C([ImportJobsForDemotedAppsTask alloc], v33);
      v46 = 0;
      v17 = [(Task *)self runSubTask:v34 returningError:&v46];
      if (!v17)
      {
        v35 = ASDLogHandleForCategory();
        if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
        {
          v44 = objc_opt_class();
          *buf = 138543874;
          v48 = v44;
          v49 = 2114;
          v50 = v32;
          v51 = 2114;
          v52 = v46;
          v45 = v44;
          _os_log_error_impl(&_mh_execute_header, v35, OS_LOG_TYPE_ERROR, "[%{public}@]: Failed to hydrate bundleID: %{public}@ error: %{public}@", buf, 0x20u);
        }
      }

      v36 = v46;
      if (v46)
      {
        v37 = v46;
      }

      v16 = v36;
    }
  }

LABEL_32:
  objc_setProperty_atomic_copy(self, v15, v16, 32);
  self->super._success = v17;
  [(Task *)self lock];
  v38 = [self->_outputBlock copy];
  [(Task *)self unlock];
  v39 = objc_retainBlock(v38);

  if (v39)
  {
    v39[2](v39, v17, v16);
    sub_1002AEA94(self, 0);
  }
}

@end