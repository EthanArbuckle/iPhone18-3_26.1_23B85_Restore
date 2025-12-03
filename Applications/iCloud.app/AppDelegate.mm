@interface AppDelegate
- (BOOL)_canBeAcceptedOnWatch:(id)watch;
- (BOOL)_shouldLaunchAcceptFlowForShareURL:(id)l;
- (BOOL)application:(id)application openURL:(id)l options:(id)options;
- (BOOL)handleUniversalLinkInUserActivity:(id)activity unitTestOverrides:(id)overrides;
- (NSMutableDictionary)activeVettingURLToVettingAcceptor;
- (NSMutableSet)activeSharingURLs;
- (OS_dispatch_queue)acceptQueue;
- (id)_decodeURL:(id)l;
- (void)_acceptShareWithAcceptor:(id)acceptor;
- (void)_synchronouslyAcceptShareWithAcceptor:(id)acceptor;
- (void)acceptShareWithMetadata:(id)metadata shareURL:(id)l;
- (void)initOnce;
- (void)injectTestTargetContainer:(id)container;
- (void)vetURL:(id)l;
@end

@implementation AppDelegate

- (BOOL)_shouldLaunchAcceptFlowForShareURL:(id)l
{
  v3 = qword_10002E348;
  lCopy = l;
  if (v3 != -1)
  {
    dispatch_once(&qword_10002E348, &stru_1000286A0);
  }

  v5 = qword_10002E350;
  cKURLSlug = [lCopy CKURLSlug];

  lowercaseString = [cKURLSlug lowercaseString];
  LOBYTE(v5) = [v5 containsObject:lowercaseString];

  return v5;
}

- (void)initOnce
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (![(AppDelegate *)selfCopy isInitialized])
  {
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v3 = ck_log_facility_ck;
    if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_INFO))
    {
      v9 = 134217984;
      v10 = selfCopy;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "Initializing iCloud sharing AppDelegate: %p", &v9, 0xCu);
    }

    v4 = dispatch_queue_attr_make_with_autorelease_frequency(&_dispatch_queue_attr_concurrent, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v5 = dispatch_queue_attr_make_with_qos_class(v4, QOS_CLASS_USER_INITIATED, 0);
    v6 = dispatch_queue_create("com.apple.cloudkit.sharebear.acceptqueue", v5);
    [(AppDelegate *)selfCopy setAcceptQueue:v6];

    v7 = objc_alloc_init(NSMutableSet);
    [(AppDelegate *)selfCopy setActiveSharingURLs:v7];

    v8 = objc_alloc_init(NSMutableDictionary);
    [(AppDelegate *)selfCopy setActiveVettingURLToVettingAcceptor:v8];

    [(AppDelegate *)selfCopy setIsInitialized:1];
  }

  objc_sync_exit(selfCopy);
}

- (void)injectTestTargetContainer:(id)container
{
  if (__sTestOverridesAvailable == 1)
  {
    [(AppDelegate *)self setTestContainer:container];
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

- (void)_synchronouslyAcceptShareWithAcceptor:(id)acceptor
{
  acceptorCopy = acceptor;
  v5 = dispatch_semaphore_create(0);
  acceptQueue = [(AppDelegate *)self acceptQueue];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10000171C;
  v9[3] = &unk_1000286F0;
  v10 = acceptorCopy;
  v11 = v5;
  v7 = v5;
  v8 = acceptorCopy;
  dispatch_async(acceptQueue, v9);

  dispatch_semaphore_wait(v7, 0xFFFFFFFFFFFFFFFFLL);
}

- (void)_acceptShareWithAcceptor:(id)acceptor
{
  acceptorCopy = acceptor;
  v5 = [acceptorCopy url];
  activeSharingURLs = [(AppDelegate *)self activeSharingURLs];
  v7 = [activeSharingURLs CKSynchronizedAddIfAbsent:v5];

  if (v7)
  {
    v8 = +[UIApplication sharedApplication];
    v24[0] = _NSConcreteStackBlock;
    v24[1] = 3221225472;
    v24[2] = sub_100001C30;
    v24[3] = &unk_100028718;
    v9 = acceptorCopy;
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
      backgroundTaskID = [v9 backgroundTaskID];
      *buf = 134217984;
      v27 = backgroundTaskID;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "Started background task of handling share URL, taskID is %lu", buf, 0xCu);
    }

    objc_initWeak(buf, v9);
    objc_initWeak(&location, self);
    acceptQueue = [(AppDelegate *)self acceptQueue];
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_100001D20;
    v18[3] = &unk_100028768;
    v19 = v9;
    objc_copyWeak(&v21, &location);
    v20 = v5;
    objc_copyWeak(&v22, buf);
    dispatch_async(acceptQueue, v18);

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
      cKURLThroughSlug = [v5 CKURLThroughSlug];
      cKPathAfterSlug = [v5 CKPathAfterSlug];
      *buf = 138543874;
      v27 = cKURLThroughSlug;
      v28 = 2160;
      v29 = 1752392040;
      v30 = 2112;
      v31 = cKPathAfterSlug;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "Sharing URL is already being handled, ignoring: %{public}@%{mask.hash}@", buf, 0x20u);
    }
  }
}

- (void)acceptShareWithMetadata:(id)metadata shareURL:(id)l
{
  lCopy = l;
  metadataCopy = metadata;
  v8 = [[ShareAcceptor alloc] initWithShareMetadata:metadataCopy shareURL:lCopy];

  [(AppDelegate *)self _acceptShareWithAcceptor:v8];
}

- (void)vetURL:(id)l
{
  lCopy = l;
  v5 = [[VettingAcceptor alloc] initWithCloudKitURL:lCopy];
  activeVettingURLToVettingAcceptor = [(AppDelegate *)self activeVettingURLToVettingAcceptor];
  v7 = [activeVettingURLToVettingAcceptor CKSynchronizedSetIfAbsentObject:v5 forKey:lCopy];

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
      backgroundTaskID = [(VettingAcceptor *)v9 backgroundTaskID];
      *buf = 134217984;
      v24 = backgroundTaskID;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "Started background task of handling vetting URL, taskID is %lu", buf, 0xCu);
    }

    objc_initWeak(buf, v9);
    objc_initWeak(&location, self);
    acceptQueue = [(AppDelegate *)self acceptQueue];
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_1000026B8;
    v15[3] = &unk_100028768;
    v16 = v9;
    objc_copyWeak(&v18, &location);
    v17 = lCopy;
    objc_copyWeak(&v19, buf);
    dispatch_async(acceptQueue, v15);

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
      v24 = lCopy;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "Vetting URL is already being handled, ignoring: %@", buf, 0xCu);
    }
  }
}

- (BOOL)_canBeAcceptedOnWatch:(id)watch
{
  cKURLSlug = [watch CKURLSlug];
  lowercaseString = [cKURLSlug lowercaseString];

  if ([lowercaseString isEqualToString:kCKRemindersShareURLSlug])
  {
    v5 = 1;
  }

  else
  {
    v5 = [lowercaseString isEqualToString:kCKGenericShareURLSlug];
  }

  return v5;
}

- (BOOL)application:(id)application openURL:(id)l options:(id)options
{
  applicationCopy = application;
  lCopy = l;
  optionsCopy = options;
  v11 = _os_activity_create(&_mh_execute_header, "ShareBear/AppDelegate/openURL", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  v13.opaque[0] = 0;
  v13.opaque[1] = 0;
  os_activity_scope_enter(v11, &v13);
  [(AppDelegate *)self _handleURL:lCopy invitationToken:0 isSourceICS:0 unitTestOverrides:0];
  os_activity_scope_leave(&v13);

  return 1;
}

- (id)_decodeURL:(id)l
{
  lCopy = l;
  v3 = [NSURLComponents componentsWithURL:"componentsWithURL:resolvingAgainstBaseURL:" resolvingAgainstBaseURL:?];
  percentEncodedQuery = [v3 percentEncodedQuery];
  v5 = [percentEncodedQuery componentsSeparatedByString:@"&"];
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
    v40 = lCopy;
    v20 = "URL %@ does not have any query items. This is probably a stingray share";
    goto LABEL_26;
  }

  v30 = percentEncodedQuery;
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
          stringByRemovingPercentEncoding = [v12 stringByRemovingPercentEncoding];

          v14 = [v11 objectAtIndexedSubscript:1];
          stringByRemovingPercentEncoding2 = [v14 stringByRemovingPercentEncoding];

          v15StringByRemovingPercentEncoding = [stringByRemovingPercentEncoding2 stringByRemovingPercentEncoding];
          if (([v15StringByRemovingPercentEncoding isEqualToString:stringByRemovingPercentEncoding2] & 1) == 0)
          {
            if (ck_log_initialization_predicate != -1)
            {
              dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
            }

            v17 = ck_log_facility_ck;
            if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_INFO))
            {
              *buf = 138412290;
              v40 = lCopy;
              _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_INFO, "Token from URL %@ is doubly encoded", buf, 0xCu);
            }

            v18 = v15StringByRemovingPercentEncoding;

            stringByRemovingPercentEncoding2 = v18;
          }

          if ([stringByRemovingPercentEncoding isEqualToString:@"token"])
          {
            v22 = [[NSData alloc] initWithBase64EncodedString:stringByRemovingPercentEncoding2 options:0];
            v23 = [NSSet setWithObjects:objc_opt_class(), 0];
            v33 = 0;
            v21 = [NSKeyedUnarchiver _strictlyUnarchivedObjectOfClasses:v23 fromData:v22 error:&v33];
            v24 = v33;

            v28 = v22;
            if (v24)
            {
              percentEncodedQuery = v30;
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
              percentEncodedQuery = v30;
              v3 = v31;
              if (ck_log_initialization_predicate != -1)
              {
                dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
              }

              v26 = ck_log_facility_ck;
              if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_INFO))
              {
                *buf = 138412290;
                v40 = lCopy;
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

  percentEncodedQuery = v30;
  v3 = v31;
  v5 = v29;
  v19 = ck_log_facility_ck;
  if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v40 = lCopy;
    v20 = "Did not get any token from URL %@";
LABEL_26:
    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_INFO, v20, buf, 0xCu);
  }

LABEL_27:
  v21 = 0;
LABEL_39:

  return v21;
}

- (BOOL)handleUniversalLinkInUserActivity:(id)activity unitTestOverrides:(id)overrides
{
  activityCopy = activity;
  overridesCopy = overrides;
  activityType = [activityCopy activityType];
  v9 = [activityType isEqual:NSUserActivityTypeBrowsingWeb];

  if (v9)
  {
    webpageURL = [activityCopy webpageURL];
    if (webpageURL)
    {
      state.opaque[0] = 0;
      state.opaque[1] = 0;
      v29 = _os_activity_create(&_mh_execute_header, "ShareBear/AppDelegate/handleUniversalLinkInUserActivity", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
      os_activity_scope_enter(v29, &state);
      v11 = [(AppDelegate *)self _decodeURL:webpageURL];
      if (ck_log_initialization_predicate != -1)
      {
        dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
      }

      v12 = ck_log_facility_ck;
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        v13 = v11;
        cKURLThroughSlug = [webpageURL CKURLThroughSlug];
        cKPathAfterSlug = [webpageURL CKPathAfterSlug];
        *buf = 138544130;
        v32 = cKURLThroughSlug;
        v33 = 2160;
        v34 = 1752392040;
        v35 = 2112;
        v36 = cKPathAfterSlug;
        v37 = 2112;
        v38 = v13;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "Handler called for CK sharing/vetting URL: %{public}@%{mask.hash}@, invitationToken %@", buf, 0x2Au);

        v11 = v13;
      }

      v16 = [activityCopy valueForKey:@"_sourceApplication"];
      v17 = [activityCopy valueForKeyPath:@"_originatingProcess.bundleIdentifier"];
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
        cKURLThroughSlug2 = [webpageURL CKURLThroughSlug];
        cKPathAfterSlug2 = [webpageURL CKPathAfterSlug];
        v25 = cKPathAfterSlug2;
        v26 = @"NO";
        *buf = 138544642;
        v33 = 2160;
        v32 = cKURLThroughSlug2;
        if (v18)
        {
          v26 = @"YES";
        }

        v34 = 1752392040;
        v35 = 2112;
        v36 = cKPathAfterSlug2;
        v37 = 2112;
        v38 = v16;
        v39 = 2112;
        v40 = v17;
        v41 = 2112;
        v42 = v26;
        _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_INFO, "URL: %{public}@%{mask.hash}@, sourceApplication %@, bundleID %@, isSourceICS: %@", buf, 0x3Eu);

        v11 = v28;
      }

      v20 = [(AppDelegate *)self _handleURL:webpageURL invitationToken:v11 isSourceICS:v18 unitTestOverrides:overridesCopy];
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