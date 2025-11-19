@interface AppDelegate
- (BOOL)_canBeAcceptedOnWatch:(id)a3;
- (BOOL)_shouldLaunchAcceptFlowForShareURL:(id)a3;
- (BOOL)application:(id)a3 openURL:(id)a4 options:(id)a5;
- (BOOL)handleUniversalLinkInUserActivity:(id)a3 unitTestOverrides:(id)a4;
- (NSMutableDictionary)activeVettingURLToVettingAcceptor;
- (NSMutableSet)activeSharingURLs;
- (OS_dispatch_queue)acceptQueue;
- (id)_decodeURL:(id)a3;
- (void)_acceptShareWithAcceptor:(id)a3;
- (void)_synchronouslyAcceptShareWithAcceptor:(id)a3;
- (void)acceptShareWithMetadata:(id)a3 shareURL:(id)a4;
- (void)initOnce;
- (void)injectTestTargetContainer:(id)a3;
- (void)vetURL:(id)a3;
@end

@implementation AppDelegate

- (BOOL)_shouldLaunchAcceptFlowForShareURL:(id)a3
{
  v3 = qword_10002E348;
  v4 = a3;
  if (v3 != -1)
  {
    dispatch_once(&qword_10002E348, &stru_1000286A0);
  }

  v5 = qword_10002E350;
  v6 = [v4 CKURLSlug];

  v7 = [v6 lowercaseString];
  LOBYTE(v5) = [v5 containsObject:v7];

  return v5;
}

- (void)initOnce
{
  v2 = self;
  objc_sync_enter(v2);
  if (![(AppDelegate *)v2 isInitialized])
  {
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v3 = ck_log_facility_ck;
    if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_INFO))
    {
      v9 = 134217984;
      v10 = v2;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "Initializing iCloud sharing AppDelegate: %p", &v9, 0xCu);
    }

    v4 = dispatch_queue_attr_make_with_autorelease_frequency(&_dispatch_queue_attr_concurrent, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v5 = dispatch_queue_attr_make_with_qos_class(v4, QOS_CLASS_USER_INITIATED, 0);
    v6 = dispatch_queue_create("com.apple.cloudkit.sharebear.acceptqueue", v5);
    [(AppDelegate *)v2 setAcceptQueue:v6];

    v7 = objc_alloc_init(NSMutableSet);
    [(AppDelegate *)v2 setActiveSharingURLs:v7];

    v8 = objc_alloc_init(NSMutableDictionary);
    [(AppDelegate *)v2 setActiveVettingURLToVettingAcceptor:v8];

    [(AppDelegate *)v2 setIsInitialized:1];
  }

  objc_sync_exit(v2);
}

- (void)injectTestTargetContainer:(id)a3
{
  if (__sTestOverridesAvailable == 1)
  {
    [(AppDelegate *)self setTestContainer:a3];
  }
}

- (OS_dispatch_queue)acceptQueue
{
  [(AppDelegate *)self initOnce];
  acceptQueue = self->_acceptQueue;

  return acceptQueue;
}

- (NSMutableSet)activeSharingURLs
{
  [(AppDelegate *)self initOnce];
  activeSharingURLs = self->_activeSharingURLs;

  return activeSharingURLs;
}

- (NSMutableDictionary)activeVettingURLToVettingAcceptor
{
  [(AppDelegate *)self initOnce];
  activeVettingURLToVettingAcceptor = self->_activeVettingURLToVettingAcceptor;

  return activeVettingURLToVettingAcceptor;
}

- (void)_synchronouslyAcceptShareWithAcceptor:(id)a3
{
  v4 = a3;
  v5 = dispatch_semaphore_create(0);
  v6 = [(AppDelegate *)self acceptQueue];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10000171C;
  v9[3] = &unk_1000286F0;
  v10 = v4;
  v11 = v5;
  v7 = v5;
  v8 = v4;
  dispatch_async(v6, v9);

  dispatch_semaphore_wait(v7, 0xFFFFFFFFFFFFFFFFLL);
}

- (void)_acceptShareWithAcceptor:(id)a3
{
  v4 = a3;
  v5 = [v4 url];
  v6 = [(AppDelegate *)self activeSharingURLs];
  v7 = [v6 CKSynchronizedAddIfAbsent:v5];

  if (v7)
  {
    v8 = +[UIApplication sharedApplication];
    v24[0] = _NSConcreteStackBlock;
    v24[1] = 3221225472;
    v24[2] = sub_100001C30;
    v24[3] = &unk_100028718;
    v9 = v4;
    v25 = v9;
    [v9 setBackgroundTaskID:{objc_msgSend(v8, "beginBackgroundTaskWithName:expirationHandler:", @"com.apple.cloudkit.ShareBear.handleShareURL", v24)}];

    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v10 = ck_log_facility_ck;
    if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_INFO))
    {
      v11 = v10;
      v12 = [v9 backgroundTaskID];
      *buf = 134217984;
      v27 = v12;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "Started background task of handling share URL, taskID is %lu", buf, 0xCu);
    }

    objc_initWeak(buf, v9);
    objc_initWeak(&location, self);
    v13 = [(AppDelegate *)self acceptQueue];
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_100001D20;
    v18[3] = &unk_100028768;
    v19 = v9;
    objc_copyWeak(&v21, &location);
    v20 = v5;
    objc_copyWeak(&v22, buf);
    dispatch_async(v13, v18);

    objc_destroyWeak(&v22);
    objc_destroyWeak(&v21);

    objc_destroyWeak(&location);
    objc_destroyWeak(buf);
  }

  else
  {
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v14 = ck_log_facility_ck;
    if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_INFO))
    {
      v15 = v14;
      v16 = [v5 CKURLThroughSlug];
      v17 = [v5 CKPathAfterSlug];
      *buf = 138543874;
      v27 = v16;
      v28 = 2160;
      v29 = 1752392040;
      v30 = 2112;
      v31 = v17;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "Sharing URL is already being handled, ignoring: %{public}@%{mask.hash}@", buf, 0x20u);
    }
  }
}

- (void)acceptShareWithMetadata:(id)a3 shareURL:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [[ShareAcceptor alloc] initWithShareMetadata:v7 shareURL:v6];

  [(AppDelegate *)self _acceptShareWithAcceptor:v8];
}

- (void)vetURL:(id)a3
{
  v4 = a3;
  v5 = [[VettingAcceptor alloc] initWithCloudKitURL:v4];
  v6 = [(AppDelegate *)self activeVettingURLToVettingAcceptor];
  v7 = [v6 CKSynchronizedSetIfAbsentObject:v5 forKey:v4];

  if (v7)
  {
    v8 = +[UIApplication sharedApplication];
    v21[0] = _NSConcreteStackBlock;
    v21[1] = 3221225472;
    v21[2] = sub_1000025C8;
    v21[3] = &unk_100028718;
    v9 = v5;
    v22 = v9;
    -[VettingAcceptor setBackgroundTaskID:](v9, "setBackgroundTaskID:", [v8 beginBackgroundTaskWithName:@"com.apple.cloudkit.ShareBear.handleVettingURL" expirationHandler:v21]);

    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v10 = ck_log_facility_ck;
    if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_INFO))
    {
      v11 = v10;
      v12 = [(VettingAcceptor *)v9 backgroundTaskID];
      *buf = 134217984;
      v24 = v12;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "Started background task of handling vetting URL, taskID is %lu", buf, 0xCu);
    }

    objc_initWeak(buf, v9);
    objc_initWeak(&location, self);
    v13 = [(AppDelegate *)self acceptQueue];
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_1000026B8;
    v15[3] = &unk_100028768;
    v16 = v9;
    objc_copyWeak(&v18, &location);
    v17 = v4;
    objc_copyWeak(&v19, buf);
    dispatch_async(v13, v15);

    objc_destroyWeak(&v19);
    objc_destroyWeak(&v18);

    objc_destroyWeak(&location);
    objc_destroyWeak(buf);
  }

  else
  {
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v14 = ck_log_facility_ck;
    if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v24 = v4;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "Vetting URL is already being handled, ignoring: %@", buf, 0xCu);
    }
  }
}

- (BOOL)_canBeAcceptedOnWatch:(id)a3
{
  v3 = [a3 CKURLSlug];
  v4 = [v3 lowercaseString];

  if ([v4 isEqualToString:kCKRemindersShareURLSlug])
  {
    v5 = 1;
  }

  else
  {
    v5 = [v4 isEqualToString:kCKGenericShareURLSlug];
  }

  return v5;
}

- (BOOL)application:(id)a3 openURL:(id)a4 options:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = _os_activity_create(&_mh_execute_header, "ShareBear/AppDelegate/openURL", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  v13.opaque[0] = 0;
  v13.opaque[1] = 0;
  os_activity_scope_enter(v11, &v13);
  [(AppDelegate *)self _handleURL:v9 invitationToken:0 isSourceICS:0 unitTestOverrides:0];
  os_activity_scope_leave(&v13);

  return 1;
}

- (id)_decodeURL:(id)a3
{
  v32 = a3;
  v3 = [NSURLComponents componentsWithURL:"componentsWithURL:resolvingAgainstBaseURL:" resolvingAgainstBaseURL:?];
  v4 = [v3 percentEncodedQuery];
  v5 = [v4 componentsSeparatedByString:@"&"];
  if (![v5 count])
  {
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v19 = ck_log_facility_ck;
    if (!os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_INFO))
    {
      goto LABEL_27;
    }

    *buf = 138412290;
    v40 = v32;
    v20 = "URL %@ does not have any query items. This is probably a stingray share";
    goto LABEL_26;
  }

  v30 = v4;
  v31 = v3;
  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v29 = v5;
  v6 = v5;
  v7 = [v6 countByEnumeratingWithState:&v34 objects:v38 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v35;
    while (2)
    {
      v10 = 0;
      do
      {
        if (*v35 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [*(*(&v34 + 1) + 8 * v10) componentsSeparatedByString:@"="];
        if ([v11 count] == 2)
        {
          v12 = [v11 objectAtIndexedSubscript:0];
          v13 = [v12 stringByRemovingPercentEncoding];

          v14 = [v11 objectAtIndexedSubscript:1];
          v15 = [v14 stringByRemovingPercentEncoding];

          v16 = [v15 stringByRemovingPercentEncoding];
          if (([v16 isEqualToString:v15] & 1) == 0)
          {
            if (ck_log_initialization_predicate != -1)
            {
              dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
            }

            v17 = ck_log_facility_ck;
            if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_INFO))
            {
              *buf = 138412290;
              v40 = v32;
              _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_INFO, "Token from URL %@ is doubly encoded", buf, 0xCu);
            }

            v18 = v16;

            v15 = v18;
          }

          if ([v13 isEqualToString:@"token"])
          {
            v22 = [[NSData alloc] initWithBase64EncodedString:v15 options:0];
            v23 = [NSSet setWithObjects:objc_opt_class(), 0];
            v33 = 0;
            v21 = [NSKeyedUnarchiver _strictlyUnarchivedObjectOfClasses:v23 fromData:v22 error:&v33];
            v24 = v33;

            v28 = v22;
            if (v24)
            {
              v4 = v30;
              v3 = v31;
              if (ck_log_initialization_predicate != -1)
              {
                dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
              }

              v25 = ck_log_facility_ck;
              if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_ERROR))
              {
                *buf = 138412290;
                v40 = v21;
                _os_log_error_impl(&_mh_execute_header, v25, OS_LOG_TYPE_ERROR, "Failed to unarchive device to device invitation token: %@", buf, 0xCu);
              }

              v21 = 0;
            }

            else
            {
              v4 = v30;
              v3 = v31;
              if (ck_log_initialization_predicate != -1)
              {
                dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
              }

              v26 = ck_log_facility_ck;
              if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_INFO))
              {
                *buf = 138412290;
                v40 = v32;
                _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_INFO, "Successfully unarchived token from URL: %@", buf, 0xCu);
              }
            }

            v5 = v29;
            goto LABEL_39;
          }
        }

        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v34 objects:v38 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

  if (ck_log_initialization_predicate != -1)
  {
    dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
  }

  v4 = v30;
  v3 = v31;
  v5 = v29;
  v19 = ck_log_facility_ck;
  if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v40 = v32;
    v20 = "Did not get any token from URL %@";
LABEL_26:
    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_INFO, v20, buf, 0xCu);
  }

LABEL_27:
  v21 = 0;
LABEL_39:

  return v21;
}

- (BOOL)handleUniversalLinkInUserActivity:(id)a3 unitTestOverrides:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 activityType];
  v9 = [v8 isEqual:NSUserActivityTypeBrowsingWeb];

  if (v9)
  {
    v10 = [v6 webpageURL];
    if (v10)
    {
      state.opaque[0] = 0;
      state.opaque[1] = 0;
      v29 = _os_activity_create(&_mh_execute_header, "ShareBear/AppDelegate/handleUniversalLinkInUserActivity", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
      os_activity_scope_enter(v29, &state);
      v11 = [(AppDelegate *)self _decodeURL:v10];
      if (ck_log_initialization_predicate != -1)
      {
        dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
      }

      v12 = ck_log_facility_ck;
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        v13 = v11;
        v14 = [v10 CKURLThroughSlug];
        v15 = [v10 CKPathAfterSlug];
        *buf = 138544130;
        v32 = v14;
        v33 = 2160;
        v34 = 1752392040;
        v35 = 2112;
        v36 = v15;
        v37 = 2112;
        v38 = v13;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "Handler called for CK sharing/vetting URL: %{public}@%{mask.hash}@, invitationToken %@", buf, 0x2Au);

        v11 = v13;
      }

      v16 = [v6 valueForKey:@"_sourceApplication"];
      v17 = [v6 valueForKeyPath:@"_originatingProcess.bundleIdentifier"];
      if ([v16 isEqualToString:@"com.apple.InCallService"])
      {
        v18 = 1;
      }

      else
      {
        v18 = [v17 isEqualToString:@"com.apple.InCallService"];
      }

      if (ck_log_initialization_predicate != -1)
      {
        dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
      }

      v22 = ck_log_facility_ck;
      if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
      {
        v28 = v11;
        v23 = [v10 CKURLThroughSlug];
        v24 = [v10 CKPathAfterSlug];
        v25 = v24;
        v26 = @"NO";
        *buf = 138544642;
        v33 = 2160;
        v32 = v23;
        if (v18)
        {
          v26 = @"YES";
        }

        v34 = 1752392040;
        v35 = 2112;
        v36 = v24;
        v37 = 2112;
        v38 = v16;
        v39 = 2112;
        v40 = v17;
        v41 = 2112;
        v42 = v26;
        _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_INFO, "URL: %{public}@%{mask.hash}@, sourceApplication %@, bundleID %@, isSourceICS: %@", buf, 0x3Eu);

        v11 = v28;
      }

      v20 = [(AppDelegate *)self _handleURL:v10 invitationToken:v11 isSourceICS:v18 unitTestOverrides:v7];
      os_activity_scope_leave(&state);
    }

    else
    {
      if (ck_log_initialization_predicate != -1)
      {
        dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
      }

      v21 = ck_log_facility_ck;
      if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "Unexpected: webpageURL is nil", buf, 2u);
      }

      v20 = 0;
    }
  }

  else
  {
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v19 = ck_log_facility_ck;
    if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_debug_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEBUG, "activityType is not NSUserActivityTypeBrowsingWeb - ignoring", buf, 2u);
    }

    v20 = 0;
  }

  return v20;
}

@end