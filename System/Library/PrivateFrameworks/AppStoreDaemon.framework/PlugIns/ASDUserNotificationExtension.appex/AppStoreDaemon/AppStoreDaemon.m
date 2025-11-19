id ASDLogHandleForCategory(uint64_t a1)
{
  if (qword_100008910 != -1)
  {
    dispatch_once(&qword_100008910, &stru_1000041C8);
  }

  v2 = qword_1000087B8[a1];

  return v2;
}

void sub_10000101C(id a1)
{
  v1 = os_log_create("com.apple.appstored", "Activity");
  v2 = qword_1000087B8;
  qword_1000087B8 = v1;

  v3 = os_log_create("com.apple.appstored", "AppCapabilities");
  v4 = qword_1000087C0;
  qword_1000087C0 = v3;

  v5 = os_log_create("com.apple.appstored", "AppInstall");
  v6 = qword_1000087C8;
  qword_1000087C8 = v5;

  v7 = os_log_create("com.apple.appstored", "AppUsage");
  v8 = qword_1000087D0;
  qword_1000087D0 = v7;

  v9 = os_log_create("com.apple.appstored", "Arcade");
  v10 = qword_1000087D8;
  qword_1000087D8 = v9;

  v11 = os_log_create("com.apple.appstored", "Bag");
  v12 = qword_1000087E0;
  qword_1000087E0 = v11;

  v13 = os_log_create("com.apple.appstored", "Cleanup");
  v14 = qword_1000087E8;
  qword_1000087E8 = v13;

  v15 = os_log_create("com.apple.appstored", "Clips");
  v16 = qword_1000087F0;
  qword_1000087F0 = v15;

  v17 = os_log_create("com.apple.appstored", "DAAP");
  v18 = qword_1000087F8;
  qword_1000087F8 = v17;

  v19 = os_log_create("com.apple.appstored", "Daemon");
  v20 = qword_100008800;
  qword_100008800 = v19;

  v21 = os_log_create("com.apple.appstored", "Download");
  v22 = qword_100008808;
  qword_100008808 = v21;

  v23 = os_log_create("com.apple.appstored", "EventsExtension");
  v24 = qword_100008810;
  qword_100008810 = v23;

  v25 = os_log_create("com.apple.appstored", "Extension");
  v26 = qword_100008818;
  qword_100008818 = v25;

  v27 = os_log_create("com.apple.appstored", "Framework");
  v28 = qword_100008820;
  qword_100008820 = v27;

  v29 = os_log_create("com.apple.appstored", "General");
  v30 = qword_100008828;
  qword_100008828 = v29;

  v31 = os_log_create("com.apple.appstored", "Library");
  v32 = qword_100008830;
  qword_100008830 = v31;

  v33 = os_log_create("com.apple.appstored", "Metrics");
  v34 = qword_100008838;
  qword_100008838 = v33;

  v35 = os_log_create("com.apple.appstored", "Migrate");
  v36 = qword_100008840;
  qword_100008840 = v35;

  v37 = os_log_create("com.apple.appstored", "StoreKitInXcode");
  v38 = qword_100008848;
  qword_100008848 = v37;

  v39 = os_log_create("com.apple.appstored", "ODR");
  v40 = qword_100008850;
  qword_100008850 = v39;

  v41 = os_log_create("com.apple.appstored", "Offloading");
  v42 = qword_100008858;
  qword_100008858 = v41;

  v43 = os_log_create("com.apple.appstored", "Daemon-Oversize");
  v44 = qword_100008860;
  qword_100008860 = v43;

  v45 = os_log_create("com.apple.appstored", "Performance");
  v46 = qword_100008868;
  qword_100008868 = v45;

  v47 = os_log_create("com.apple.appstored", "PrivilegedTask");
  v48 = qword_100008870;
  qword_100008870 = v47;

  v49 = os_log_create("com.apple.appstored", "Progress");
  v50 = qword_100008878;
  qword_100008878 = v49;

  v51 = os_log_create("com.apple.appstored", "Purchase");
  v52 = qword_100008880;
  qword_100008880 = v51;

  v53 = os_log_create("com.apple.appstored", "Push");
  v54 = qword_100008888;
  qword_100008888 = v53;

  v55 = os_log_create("com.apple.appstored", "QA");
  v56 = qword_100008890;
  qword_100008890 = v55;

  v57 = os_log_create("com.apple.appstored", "Repair");
  v58 = qword_100008898;
  qword_100008898 = v57;

  v59 = os_log_create("com.apple.appstored", "Restore");
  v60 = qword_1000088A0;
  qword_1000088A0 = v59;

  v61 = os_log_create("com.apple.appstored", "Scheduler");
  v62 = qword_1000088A8;
  qword_1000088A8 = v61;

  v63 = os_log_create("com.apple.appstored", "Signpost");
  v64 = qword_1000088B0;
  qword_1000088B0 = v63;

  v65 = os_log_create("com.apple.appstored", "SKAdNetwork");
  v66 = qword_1000088B8;
  qword_1000088B8 = v65;

  v67 = os_log_create("com.apple.appstored", "Skanner");
  v68 = qword_1000088C0;
  qword_1000088C0 = v67;

  v69 = os_log_create("com.apple.appstored", "SoftwareMap");
  v70 = qword_1000088C8;
  qword_1000088C8 = v69;

  v71 = os_log_create("com.apple.appstored", "SQL");
  v72 = qword_1000088D0;
  qword_1000088D0 = v71;

  v73 = os_log_create("com.apple.appstored", "StoreKit");
  v74 = qword_1000088D8;
  qword_1000088D8 = v73;

  v75 = os_log_create("com.apple.appstored", "Subscription");
  v76 = qword_1000088E0;
  qword_1000088E0 = v75;

  v77 = os_log_create("com.apple.appstored", "TestFlightFeedback");
  v78 = qword_1000088E8;
  qword_1000088E8 = v77;

  v79 = os_log_create("com.apple.appstored", "TestFlightExtension");
  v80 = qword_1000088F0;
  qword_1000088F0 = v79;

  v81 = os_log_create("com.apple.appstored", "Updates");
  v82 = qword_1000088F8;
  qword_1000088F8 = v81;

  v83 = os_log_create("com.apple.appstored", "VPP");
  v84 = qword_100008900;
  qword_100008900 = v83;

  qword_100008908 = os_log_create("com.apple.appstored", "XDC");

  _objc_release_x1();
}

Bulletin *sub_100001598(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_self();
  v3 = [v2 content];

  v4 = [v3 userInfo];

  v5 = [Bulletin alloc];
  v6 = v4;
  if (v5)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [(Bulletin *)v5 init];
      if (!v7)
      {
        goto LABEL_20;
      }

      v8 = [v6 objectForKey:@"actiontitle"];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v9 = [v8 copy];
        actionButtonTitle = v7->_actionButtonTitle;
        v7->_actionButtonTitle = v9;
      }

      v11 = [v6 objectForKey:@"actionurl"];

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v12 = [[NSURL alloc] initWithString:v11];
        actionButtonURL = v7->_actionButtonURL;
        v7->_actionButtonURL = v12;
      }

      v14 = [v6 objectForKey:@"date"];

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v15 = [v14 copy];
        creationDate = v7->_creationDate;
        v7->_creationDate = v15;
      }

      v17 = [v6 objectForKey:@"msg"];

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v18 = [v17 copy];
        message = v7->_message;
        v7->_message = v18;
      }

      v20 = [v6 objectForKey:@"rid"];

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v21 = [v20 copy];
        recordID = v7->_recordID;
        v7->_recordID = v21;
      }

      v23 = [v6 objectForKey:@"title"];

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v24 = [v23 copy];
        title = v7->_title;
        v7->_title = v24;
      }

      v5 = [v6 objectForKey:@"url"];

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v26 = [[NSURL alloc] initWithString:v5];
        launchURL = v7->_launchURL;
        v7->_launchURL = v26;
      }
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

LABEL_20:

  return v7;
}

void sub_100001890(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    v5 = [v3 actionIdentifier];
    v6 = ASDLogHandleForCategory(9);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      v28 = objc_opt_class();
      v29 = 2114;
      v30 = v5;
      v7 = v28;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "[%{public}@]: Handling notification response with actionId: %{public}@", buf, 0x16u);
    }

    if ([v5 isEqualToString:UNNotificationDefaultActionIdentifier])
    {
      v8 = 24;
    }

    else
    {
      if ([v5 isEqualToString:UNNotificationDismissActionIdentifier])
      {
LABEL_17:

        goto LABEL_18;
      }

      v8 = 16;
    }

    v9 = *(a1 + v8);
    if (v9)
    {
      v10 = v9;
      v25[0] = FBSOpenApplicationOptionKeyPromptUnlockDevice;
      v25[1] = FBSOpenApplicationOptionKeyUnlockDevice;
      v26[0] = &__kCFBooleanTrue;
      v26[1] = &__kCFBooleanTrue;
      v25[2] = FBSOpenApplicationOptionKeyLaunchOrigin;
      v26[2] = @"appstored";
      v11 = [NSDictionary dictionaryWithObjects:v26 forKeys:v25 count:3];
      v12 = [v4 notification];
      v13 = [v12 request];
      v14 = [v13 identifier];
      v15 = [v14 isEqualToString:@"com.apple.appstored.authenticate.watch"];

      v16 = +[LSApplicationWorkspace defaultWorkspace];
      v17 = v16;
      if (v15)
      {
        v24 = 0;
        v18 = &v24;
        [v16 openSensitiveURL:v10 withOptions:v11 error:&v24];
      }

      else
      {
        v23 = 0;
        v18 = &v23;
        [v16 openURL:v10 withOptions:v11 error:&v23];
      }

      v19 = *v18;

      if (v19)
      {
        v20 = ASDLogHandleForCategory(9);
        if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
        {
          v21 = objc_opt_class();
          *buf = 138543618;
          v28 = v21;
          v29 = 2114;
          v30 = v19;
          v22 = v21;
          _os_log_error_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "[%{public}@]: Error opening URL. Error: %{public}@", buf, 0x16u);
        }
      }
    }

    goto LABEL_17;
  }

LABEL_18:
}