@interface FaceTimeApplication
+ (id)allowedNotificationCategories;
- (BOOL)_isIPad;
- (BOOL)_styleIsActuallyGoingToBlur;
- (BOOL)alwaysShowLocalVideo;
- (BOOL)application:(id)a3 openURL:(id)a4 options:(id)a5;
- (BOOL)showsTelephonyRecents;
- (BOOL)tabBarFillsScreen;
- (BOOL)usesBlendModes;
- (id)_fetchScrollView;
- (id)recentsController;
- (id)scrollTestsWithCount:(int64_t)a3 forScrollView:(id)a4 name:(id)a5;
- (int64_t)backdropStyle;
- (void)applicationDidFinishLaunching:(id)a3;
- (void)applicationOpenURL:(id)a3;
- (void)handleRecentsDetailsViewURL:(id)a3;
- (void)handleVideoMessagePlaybackURL:(id)a3;
- (void)performScrollTestWithName:(id)a3 options:(id)a4;
- (void)performTestWithName:(id)a3 options:(id)a4;
- (void)userNotificationCenter:(id)a3 willPresentNotification:(id)a4 withCompletionHandler:(id)a5;
@end

@implementation FaceTimeApplication

- (BOOL)alwaysShowLocalVideo
{
  v3 = +[UIDevice currentDevice];
  v4 = [v3 userInterfaceIdiom];

  if (v4)
  {
    if ([(FaceTimeApplication *)self tabBarFillsScreen])
    {
      v5 = [(FaceTimeApplication *)self _isBlurUI];
      if (v5)
      {

        LOBYTE(v5) = [(FaceTimeApplication *)self _styleIsActuallyGoingToBlur];
      }
    }

    else
    {
      LOBYTE(v5) = 1;
    }
  }

  else
  {
    LOBYTE(v5) = 0;
  }

  return v5;
}

- (BOOL)tabBarFillsScreen
{
  v2 = [(PhoneApplication *)self rootViewController];
  v3 = [v2 traitCollection];

  LOBYTE(v2) = [v3 horizontalSizeClass] == 1;
  return v2;
}

- (BOOL)_styleIsActuallyGoingToBlur
{
  if (qword_100126A10 != -1)
  {
    sub_100003EFC();
  }

  return byte_100126A08 == 1 && !UIAccessibilityIsReduceMotionEnabled() && !UIAccessibilityIsReduceTransparencyEnabled();
}

- (int64_t)backdropStyle
{
  if ([UIApp userInterfaceStyle] == 1)
  {
    return 2030;
  }

  else
  {
    return -2;
  }
}

- (id)recentsController
{
  recentsController = self->_recentsController;
  if (!recentsController)
  {
    v4 = +[FTApplicationServices sharedInstance];
    v5 = [PHRecentsController alloc];
    v6 = [(FaceTimeApplication *)self callHistoryController];
    v7 = [v4 callProviderManager];
    v8 = [v4 contactStore];
    v9 = [v4 suggestedContactStore];
    v10 = [v4 metadataCache];
    v11 = [(PHRecentsController *)v5 initWithCallHistoryController:v6 callProviderManager:v7 contactStore:v8 suggestedContactStore:v9 metadataCache:v10];
    v12 = self->_recentsController;
    self->_recentsController = v11;

    recentsController = self->_recentsController;
  }

  return recentsController;
}

- (BOOL)showsTelephonyRecents
{
  v2 = +[CNKFeatures sharedInstance];
  v3 = [v2 isFaceTimeLaunchPageEnabled];

  if (v3 & 1) != 0 || ([UIApp isDeviceCapableOfTelephonyCalls])
  {
    return 0;
  }

  return +[TUCallCapabilities supportsTelephonyCalls];
}

- (void)applicationDidFinishLaunching:(id)a3
{
  v7.receiver = self;
  v7.super_class = FaceTimeApplication;
  [(PhoneApplication *)&v7 applicationDidFinishLaunching:a3];
  v4 = [(PhoneApplication *)self rootViewController];
  [v4 createFaceTimeFirstRunViewIfNeeded];

  +[PHThumperSetupController showThumperAvailableDialogIfNecessary];
  v5 = +[UNUserNotificationCenter currentNotificationCenter];
  [(FaceTimeApplication *)self setNotificationCenter:v5];

  v6 = [(FaceTimeApplication *)self notificationCenter];
  [v6 setDelegate:self];

  +[CNKNameAndPhotoUtilities prewarm];
}

- (BOOL)application:(id)a3 openURL:(id)a4 options:(id)a5
{
  v6 = a4;
  v7 = sub_100003B9C();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v13) = 0;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "FaceTime was launched via URL", &v13, 2u);
  }

  v8 = [v6 pseudonymForLinkDetailsView];

  if (v8)
  {
    v9 = sub_100003B9C();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v13 = 138412290;
      v14 = v8;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Showing link detail view for pseudonym %@", &v13, 0xCu);
    }

    v10 = [(PhoneApplication *)self rootViewController];
    v11 = [v10 faceTimeContainerViewController];
    [v11 showLinkDetailViewControllerForPseudonym:v8];
  }

  return 1;
}

- (void)handleVideoMessagePlaybackURL:(id)a3
{
  v4 = a3;
  v5 = [v4 videoMessageUUID];
  v6 = sub_100003B9C();
  v7 = v6;
  if (v5)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 138412290;
      v10 = v5;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Showing video message player for message UUID %@", &v9, 0xCu);
    }

    v7 = [(PhoneApplication *)self rootViewController];
    v8 = [v7 faceTimeContainerViewController];
    [v8 showVideoPlayerForMessageWithUUID:v5];
  }

  else if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    sub_1000C4CE8(v4, v7);
  }
}

- (void)handleRecentsDetailsViewURL:(id)a3
{
  v4 = a3;
  v5 = [v4 recentsUniqueID];
  v6 = sub_100003B9C();
  v7 = v6;
  if (v5)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 138412290;
      v10 = v5;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Showing recents details view for call with uniqueID: %@", &v9, 0xCu);
    }

    v7 = [(PhoneApplication *)self rootViewController];
    v8 = [v7 faceTimeContainerViewController];
    [v8 presentRecentsDetailsViewFor:v5];
  }

  else if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    sub_1000C4D60(v4, v7);
  }
}

- (void)applicationOpenURL:(id)a3
{
  v4 = a3;
  if ([v4 isFaceTimeAppVideoMessagePlaybackURL])
  {
    [(FaceTimeApplication *)self handleVideoMessagePlaybackURL:v4];
  }

  else if ([v4 isFaceTimeRecentsDetailsViewURL])
  {
    [(FaceTimeApplication *)self handleRecentsDetailsViewURL:v4];
  }
}

- (BOOL)_isIPad
{
  v2 = +[UIDevice currentDevice];
  v3 = [v2 userInterfaceIdiom] == 1;

  return v3;
}

- (BOOL)usesBlendModes
{
  if ([UIApp userInterfaceStyle] != 1)
  {
    return 0;
  }

  return [(FaceTimeApplication *)self _styleIsActuallyGoingToBlur];
}

+ (id)allowedNotificationCategories
{
  if (qword_100126A20 != -1)
  {
    sub_1000C4DD8();
  }

  v3 = qword_100126A18;

  return v3;
}

- (void)userNotificationCenter:(id)a3 willPresentNotification:(id)a4 withCompletionHandler:(id)a5
{
  v13 = a5;
  v7 = [a4 request];
  v8 = [v7 content];
  v9 = [v8 categoryIdentifier];

  if ([v9 length])
  {
    v10 = +[FaceTimeApplication allowedNotificationCategories];
    if ([v10 containsObject:v9])
    {

LABEL_6:
      v12 = 24;
      goto LABEL_9;
    }

    if ([(FaceTimeApplication *)self applicationState])
    {
      v11 = [v9 isEqualToString:@"group-facetime-invite"];

      if (v11)
      {
        goto LABEL_6;
      }
    }

    else
    {
    }
  }

  v12 = 0;
LABEL_9:
  v13[2](v13, v12);
}

- (void)performTestWithName:(id)a3 options:(id)a4
{
  v7 = a3;
  v6 = a4;
  if ([v7 hasPrefix:@"Scroll"] && ((objc_msgSend(v7, "hasSuffix:", @"Recents") & 1) != 0 || (objc_msgSend(v7, "hasSuffix:", @"RecentsGlitch") & 1) != 0 || objc_msgSend(v7, "hasSuffix:", @"RecentsGlitchExtended")))
  {
    [(FaceTimeApplication *)self performScrollTestWithName:v7 options:v6];
  }
}

- (void)performScrollTestWithName:(id)a3 options:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v7 objectForKeyedSubscript:@"offset"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0) || (v9 = [v8 intValue], (v9 - 0x7FFFFFFF) <= 1))
  {
    [(FaceTimeApplication *)self _ftFailedTest:v6];
    v10 = sub_100003B9C();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_1000C4ED4(v8, v10, v11, v12, v13, v14, v15, v16);
    }

    v9 = 0x7FFFFFFFLL;
  }

  v17 = [v7 objectForKeyedSubscript:@"iterations"];

  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    v18 = [v17 intValue];
    if ((v18 - 0x7FFFFFFF) > 1)
    {
      if (v9 == 0x7FFFFFFF)
      {
        goto LABEL_13;
      }

      v26 = v18;
      if (([v6 hasSuffix:@"Recents"] & 1) == 0 && (objc_msgSend(v6, "hasSuffix:", @"RecentsGlitch") & 1) == 0 && !objc_msgSend(v6, "hasSuffix:", @"RecentsGlitchExtended") || (-[FaceTimeApplication _fetchScrollView](self, "_fetchScrollView"), (v27 = objc_claimAutoreleasedReturnValue()) == 0))
      {
        [(FaceTimeApplication *)self _ftFailedTest:v6];
        v19 = sub_100003B9C();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
        {
          sub_1000C4F40(v6, v19, v34, v35, v36, v37, v38, v39);
        }

        goto LABEL_12;
      }

      v19 = v27;
      v28 = sub_100003B9C();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
      {
        v41 = 138412546;
        v42 = v6;
        v43 = 2112;
        v44 = v7;
        _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "Performing scroll test %@ with the following options: %@", &v41, 0x16u);
      }

      [(FaceTimeApplication *)self _ftStartedTest:v6];
      v29 = [v7 objectForKey:@"recapBased"];
      if ([v29 BOOLValue])
      {
        v30 = +[RPTTestRunner isRecapAvailable];

        if (v30)
        {
          v31 = sub_100003B9C();
          if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
          {
            LOWORD(v41) = 0;
            _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "Running recap based scroll view test", &v41, 2u);
          }

          v32 = [(FaceTimeApplication *)self scrollTestsWithCount:v26 forScrollView:v19 name:v6];
          v33 = [RPTGroupScrollTestParameters newWithTestName:v6 parameters:v32 completionHandler:&stru_10010B718];

          [RPTTestRunner runTestWithParameters:v33];
          goto LABEL_12;
        }
      }

      else
      {
      }

      [v19 _performScrollTest:v6 iterations:v26 delta:v9];
      v40 = sub_100003B9C();
      if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
      {
        v41 = 138412290;
        v42 = v6;
        _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_DEFAULT, "Finished test %@", &v41, 0xCu);
      }

      goto LABEL_12;
    }
  }

  [(FaceTimeApplication *)self _ftFailedTest:v6];
  v19 = sub_100003B9C();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
  {
    sub_1000C4FAC(v17, v19, v20, v21, v22, v23, v24, v25);
  }

LABEL_12:

LABEL_13:
}

- (id)scrollTestsWithCount:(int64_t)a3 forScrollView:(id)a4 name:(id)a5
{
  v7 = a4;
  v8 = a5;
  v9 = objc_alloc_init(NSMutableArray);
  if (a3 >= 2)
  {
    v10 = 0;
    do
    {
      v11 = [RPTScrollViewTestParameters alloc];
      v16[0] = _NSConcreteStackBlock;
      v16[1] = 3221225472;
      v16[2] = sub_10003AA84;
      v16[3] = &unk_10010AF00;
      v16[4] = v10;
      v12 = [v11 initWithTestName:v8 scrollView:v7 completionHandler:v16];
      [v12 setShouldFlick:0];
      [v9 addObject:v12];

      ++v10;
    }

    while (a3 - 1 != v10);
  }

  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_10003AB30;
  v15[3] = &unk_10010AF00;
  v15[4] = a3;
  v13 = [[RPTScrollViewTestParameters alloc] initWithTestName:v8 scrollView:v7 completionHandler:v15];
  [v9 addObject:v13];

  return v9;
}

- (id)_fetchScrollView
{
  v2 = [(PhoneApplication *)self rootViewController];
  v3 = [v2 faceTimeContainerViewController];
  v4 = [v3 collectionView];

  return v4;
}

@end