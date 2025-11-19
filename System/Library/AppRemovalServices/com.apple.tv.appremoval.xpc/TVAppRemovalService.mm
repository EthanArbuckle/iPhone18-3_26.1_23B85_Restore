@interface TVAppRemovalService
- (BOOL)_anyDownloadsExistAtPaths:(id)a3;
- (void)_clearPreferencesForApplicationID:(id)a3;
- (void)removeAppWithReply:(id)a3;
@end

@implementation TVAppRemovalService

- (void)removeAppWithReply:(id)a3
{
  v4 = a3;
  NSLog(@"Running app removal...");
  v5 = +[NSBundle mainBundle];
  v6 = [v5 bundleIdentifier];
  [v6 UTF8String];

  v7 = tcc_identity_create();
  v8 = dispatch_group_create();
  NSLog(@"Invalidating playback keys and listening for secure invalidation complete notification");
  dispatch_group_enter(v8);
  v9 = +[NSNotificationCenter defaultCenter];
  v10 = VUITellAppRemovalServiceThatSecureInvalidationDidCompleteNotification;
  v11 = +[NSOperationQueue currentQueue];
  v93[0] = _NSConcreteStackBlock;
  v93[1] = 3221225472;
  v93[2] = sub_10000183C;
  v93[3] = &unk_100004288;
  v12 = v8;
  v94 = v12;
  v13 = [v9 addObserverForName:v10 object:0 queue:v11 usingBlock:v93];

  [VUIMediaLibraryManager setDeleteAllVideosAndKeysOnInitializationForAppRemoval:1];
  v14 = +[VUIMediaLibraryManager defaultManager];
  v15 = &NSLog_ptr;
  [MPMediaQuery setFilteringDisabled:1];
  v16 = [MPMediaLibrary alloc];
  v17 = +[ICUserIdentity autoupdatingActiveAccount];
  v18 = [v16 initWithClientIdentity:v7 userIdentity:v17];

  v19 = +[ISNetworkObserver sharedInstance];
  LOBYTE(v16) = +[ISNetworkObserver isLikelyToReachRemoteServerWithReachabilityFlags:](ISNetworkObserver, "isLikelyToReachRemoteServerWithReachabilityFlags:", [v19 networkReachabilityFlags]);

  NSLog(@"Process rentals...");
  v20 = &NSLog_ptr;
  if (v16)
  {
    v21 = objc_alloc_init(MPMediaQuery);
    v22 = [MPMediaPropertyPredicate predicateWithValue:&off_100004588 forProperty:?];
    [v21 addFilterPredicate:v22];

    v23 = [MPMediaPropertyPredicate predicateWithValue:&__kCFBooleanTrue forProperty:MPMediaItemPropertyIsRental];
    [v21 addFilterPredicate:v23];

    +[NSDate timeIntervalSinceReferenceDate];
    v24 = [NSNumber numberWithDouble:?];
    v25 = [MPMediaPropertyPredicate predicateWithValue:v24 forProperty:MPMediaItemPropertyRentalExpirationDate comparisonType:101];
    [v21 addFilterPredicate:v25];

    NSLog(@"Rental count... %lu", [v21 _countOfItems]);
    if ([v21 _hasItems])
    {
      v72 = v18;
      v73 = v4;
      v74 = self;
      v76 = v12;
      v78 = v7;
      v91 = 0u;
      v92 = 0u;
      v89 = 0u;
      v90 = 0u;
      v71 = v21;
      v26 = [v21 items];
      v27 = [v26 countByEnumeratingWithState:&v89 objects:v98 count:16];
      v28 = &NSLog_ptr;
      if (v27)
      {
        v29 = v27;
        v30 = *v90;
        v31 = MPMediaItemPropertyStoreAccountID;
        v32 = MPMediaItemPropertyStoreRentalID;
        v80 = MPMediaItemPropertyStoreRentalID;
        do
        {
          for (i = 0; i != v29; i = i + 1)
          {
            if (*v90 != v30)
            {
              objc_enumerationMutation(v26);
            }

            v34 = *(*(&v89 + 1) + 8 * i);
            v35 = [v34 valueForProperty:v31];
            v36 = [v34 valueForProperty:v32];
            v37 = v28[47];
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v38 = v28[47];
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v39 = v30;
                v40 = v36;
                v41 = v31;
                v42 = v26;
                v43 = v35;
                v44 = [[SSRentalCheckinRequest alloc] initWithAccountIdentifier:v43 rentalKeyIdentifier:v40];

                v30 = v39;
                v45 = dispatch_semaphore_create(0);
                v87[0] = _NSConcreteStackBlock;
                v87[1] = 3221225472;
                v87[2] = sub_10000187C;
                v87[3] = &unk_1000042B0;
                v88 = v45;
                v46 = v45;
                [v44 startWithConnectionResponseBlock:v87];
                v47 = dispatch_time(0, 3000000000);
                dispatch_semaphore_wait(v46, v47);

                v26 = v42;
                v31 = v41;
                v32 = v80;

                v28 = &NSLog_ptr;
              }
            }
          }

          v29 = [v26 countByEnumeratingWithState:&v89 objects:v98 count:16];
        }

        while (v29);
      }

      v12 = v76;
      v7 = v78;
      v18 = v72;
      v4 = v73;
      self = v74;
      v15 = &NSLog_ptr;
      v20 = &NSLog_ptr;
      v21 = v71;
    }

    v48 = MPMediaItemPropertyMediaType;
  }

  else
  {
    v48 = MPMediaItemPropertyMediaType;
  }

  NSLog(@"Process content for deletion...");
  v49 = objc_alloc_init(v15[64]);
  v50 = [v20[63] predicateWithValue:&off_100004588 forProperty:v48];
  [v49 addFilterPredicate:v50];

  v51 = [v20[63] predicateWithValue:&__kCFBooleanTrue forProperty:MPMediaItemPropertyHasNonPurgeableAsset];
  v97[0] = v51;
  v52 = [v20[63] predicateWithValue:&__kCFBooleanTrue forProperty:MPMediaItemPropertyIsLocal];
  v97[1] = v52;
  v53 = [NSArray arrayWithObjects:v97 count:2];
  v54 = [MPMediaCompoundAnyPredicate predicateMatchingPredicates:v53];
  [v49 addFilterPredicate:v54];

  if ([v49 _hasItems])
  {
    v77 = v12;
    v79 = v7;
    v55 = v18;
    v75 = self;
    v56 = v4;
    v57 = objc_alloc_init(NSMutableArray);
    v83 = 0u;
    v84 = 0u;
    v85 = 0u;
    v86 = 0u;
    v58 = [v49 items];
    v59 = [v58 countByEnumeratingWithState:&v83 objects:v96 count:16];
    if (v59)
    {
      v60 = v59;
      v61 = *v84;
      v62 = MPMediaItemPropertyFilePath;
      do
      {
        for (j = 0; j != v60; j = j + 1)
        {
          if (*v84 != v61)
          {
            objc_enumerationMutation(v58);
          }

          v64 = [*(*(&v83 + 1) + 8 * j) valueForProperty:v62];
          if ([v64 length])
          {
            [v57 addObject:v64];
          }
        }

        v60 = [v58 countByEnumeratingWithState:&v83 objects:v96 count:16];
      }

      while (v60);
    }

    v65 = [v49 items];
    v18 = v55;
    [v55 removeItems:v65];

    v4 = v56;
    self = v75;
    v12 = v77;
    v7 = v79;
    if ([v57 count])
    {
      do
      {
        NSLog(@"Waiting for downloads to be deleted");
        sleep(1u);
      }

      while ([(TVAppRemovalService *)v75 _anyDownloadsExistAtPaths:v57]);
      NSLog(@"Done waiting for downloads to be deleted");
    }
  }

  [(TVAppRemovalService *)self _clearPreferencesForApplicationID:@"com.apple.videos"];
  [(TVAppRemovalService *)self _clearPreferencesForApplicationID:@"com.apple.videos-preferences"];
  CFPreferencesSetAppValue(@"VideosShowCloudMediaEnabledSetting", kCFBooleanTrue, @"com.apple.mobileipod");
  CFPreferencesSetAppValue(@"VideosAllowHDREnabledSetting", 0, @"com.apple.mobileipod");
  v66 = [SSDownloadManager alloc];
  v95[0] = SSDownloadKindMovie;
  v95[1] = SSDownloadKindTelevisionEpisode;
  v67 = [NSArray arrayWithObjects:v95 count:2];
  v68 = [v66 initWithDownloadKinds:v67];

  v69 = [v68 downloads];
  NSLog(@"Cancel downloads if needed...");
  if ([v69 count])
  {
    [v68 cancelDownloads:v69 completionBlock:0];
  }

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100001884;
  block[3] = &unk_1000042D8;
  v82 = v4;
  v70 = v4;
  dispatch_group_notify(v12, &_dispatch_main_q, block);
}

- (void)_clearPreferencesForApplicationID:(id)a3
{
  applicationID = a3;
  v3 = CFPreferencesCopyKeyList(applicationID, kCFPreferencesCurrentUser, kCFPreferencesCurrentHost);
  if ([(__CFArray *)v3 count])
  {
    CFPreferencesSetMultiple(0, v3, applicationID, kCFPreferencesCurrentUser, kCFPreferencesCurrentHost);
  }
}

- (BOOL)_anyDownloadsExistAtPaths:(id)a3
{
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v3 = a3;
  v4 = [v3 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v15;
    v7 = @"NO";
    while (2)
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v15 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        NSLog(@"Looking for file at path %@", v9);
        v10 = +[NSFileManager defaultManager];
        v11 = [v10 fileExistsAtPath:v9];

        if (v11)
        {
          NSLog(@"Found at least one download that still exists at path %@", v9);
          v7 = @"YES";
          v12 = 1;
          goto LABEL_12;
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }

    v12 = 0;
  }

  else
  {
    v12 = 0;
    v7 = @"NO";
  }

LABEL_12:

  NSLog(@"Any downloads exist: %@", v7);
  return v12;
}

@end