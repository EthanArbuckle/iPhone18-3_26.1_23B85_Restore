@interface ValidateAppleIDsTask
- (void)main;
@end

@implementation ValidateAppleIDsTask

- (void)main
{
  v2 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "[Validation] Scanning installed applications for outdated metadata", buf, 2u);
  }

  v3 = objc_alloc_init(NSMutableDictionary);
  v56 = 0u;
  v57 = 0u;
  v58 = 0u;
  v59 = 0u;
  v4 = +[ACAccountStore ams_sharedAccountStore];
  ams_iTunesAccounts = [v4 ams_iTunesAccounts];
  v6 = [ams_iTunesAccounts copy];

  v7 = [v6 countByEnumeratingWithState:&v56 objects:v67 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v57;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v57 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v56 + 1) + 8 * i);
        ams_DSID = [v11 ams_DSID];
        if (ams_DSID)
        {
          username = [v11 username];
          if (username)
          {
            v14 = username;
            ams_altDSID = [v11 ams_altDSID];

            if (ams_altDSID)
            {
              [v3 setObject:v11 forKeyedSubscript:ams_DSID];
            }
          }
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v56 objects:v67 count:16];
    }

    while (v8);
  }

  v54 = 0u;
  v55 = 0u;
  v52 = 0u;
  v53 = 0u;
  obj = sub_10040C708(LSApplicationRecord, 0, 0);
  v48 = [obj countByEnumeratingWithState:&v52 objects:v66 count:16];
  if (v48)
  {
    v16 = *v53;
LABEL_16:
    v17 = 0;
    while (1)
    {
      if (*v53 != v16)
      {
        objc_enumerationMutation(obj);
      }

      v18 = *(*(&v52 + 1) + 8 * v17);
      context = objc_autoreleasePoolPush();
      Property = sub_10040CB88(v18);
      v21 = Property;
      if (Property)
      {
        Property = objc_getProperty(Property, v20, 16, 1);
      }

      v22 = Property;

      if (!v22)
      {
        v22 = ASDLogHandleForCategory();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
        {
          bundleIdentifier = [v18 bundleIdentifier];
          *buf = 138543362;
          v61 = bundleIdentifier;
          _os_log_error_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, "[Validation] Skipping validation for %{public}@: No owner available or unowned application", buf, 0xCu);
        }

        goto LABEL_51;
      }

      v23 = [v3 objectForKeyedSubscript:v22];
      if (!v23)
      {
        v40 = ASDLogHandleForCategory();
        if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
        {
          bundleIdentifier2 = [v18 bundleIdentifier];
          *buf = 138543618;
          v61 = bundleIdentifier2;
          v62 = 2114;
          v63 = v22;
          _os_log_error_impl(&_mh_execute_header, v40, OS_LOG_TYPE_ERROR, "[Validation] Skipping validation for %{public}@: No account available for %{public}@", buf, 0x16u);
        }

        goto LABEL_51;
      }

      v24 = v23;
      v25 = sub_10040CF04(v18);
      if (!v25)
      {
        v41 = ASDLogHandleForCategory();
        if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
        {
          bundleIdentifier3 = [v18 bundleIdentifier];
          *buf = 138543362;
          v61 = bundleIdentifier3;
          _os_log_error_impl(&_mh_execute_header, v41, OS_LOG_TYPE_ERROR, "[Validation] Skipping validation for %{public}@: Could not read existing metadata", buf, 0xCu);
        }

LABEL_50:
LABEL_51:

        objc_autoreleasePoolPop(context);
        goto LABEL_52;
      }

      v26 = v25;
      appleID = [v25 appleID];
      if (appleID)
      {
        username2 = [v24 username];
        v29 = [appleID isEqualToString:username2];

        if (v29)
        {
          v42 = ASDLogHandleForCategory();
          if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
          {
            bundleIdentifier4 = [v18 bundleIdentifier];
            *buf = 138543362;
            v61 = bundleIdentifier4;
            _os_log_impl(&_mh_execute_header, v42, OS_LOG_TYPE_DEFAULT, "[Validation] Completed validation for %{public}@: Metadata already up to date", buf, 0xCu);
          }

          goto LABEL_50;
        }
      }

      v50 = appleID;
      v30 = ASDLogHandleForCategory();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
      {
        bundleIdentifier5 = [v18 bundleIdentifier];
        username3 = [v24 username];
        *buf = 138543875;
        v61 = bundleIdentifier5;
        v62 = 2113;
        v63 = v50;
        v64 = 2113;
        v65 = username3;
        _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "[Validation] Updating metadata for: %{public}@, current Apple ID: '%{private}@' updated Apple ID: '%{private}@'", buf, 0x20u);
      }

      sub_1003E38F0(v26, v24);
      bundleIdentifier6 = [v18 bundleIdentifier];
      v51 = 0;
      sub_1003E3BE4(v26, bundleIdentifier6, 0, &v51);
      v34 = v51;

      v35 = ASDLogHandleForCategory();
      v36 = v35;
      if (v34)
      {
        if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
        {
          bundleIdentifier7 = [v18 bundleIdentifier];
          *buf = 138543618;
          v61 = bundleIdentifier7;
          v62 = 2114;
          v63 = v34;
          _os_log_error_impl(&_mh_execute_header, v36, OS_LOG_TYPE_ERROR, "[Validation] Failed to update metadata for: %{public}@, error occurred: %{public}@", buf, 0x16u);
LABEL_33:
        }
      }

      else if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
      {
        bundleIdentifier7 = [v18 bundleIdentifier];
        *buf = 138543362;
        v61 = bundleIdentifier7;
        _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEFAULT, "[Validation] Completed validation for %{public}@: Metadata successfully updated", buf, 0xCu);
        goto LABEL_33;
      }

      objc_autoreleasePoolPop(context);
      if (v48 == ++v17)
      {
        v48 = [obj countByEnumeratingWithState:&v52 objects:v66 count:16];
        if (v48)
        {
          goto LABEL_16;
        }

        break;
      }
    }
  }

  v38 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_DEFAULT, "[Validation] Completed scan for installed applications with outdated metadata", buf, 2u);
  }

  [(Task *)self completeWithSuccess];
LABEL_52:
}

@end