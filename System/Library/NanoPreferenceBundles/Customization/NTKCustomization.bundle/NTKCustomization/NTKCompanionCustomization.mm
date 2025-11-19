@interface NTKCompanionCustomization
+ (void)initialize;
- (BOOL)_canHandleNotification:(id)a3;
- (BOOL)handlePresentationOfNotification:(id)a3 fromNotificationCenter:(id)a4 withCompletionHandler:(id)a5;
- (BOOL)handleUserNotificationResponse:(id)a3 fromNotificationCenter:(id)a4 withCompletionHandler:(id)a5;
- (id)facesViewController;
- (id)galleryViewController;
- (id)libraryViewController;
- (id)userNotificationCategories;
- (void)_addFaceForBundleIdentifier:(id)a3;
@end

@implementation NTKCompanionCustomization

+ (void)initialize
{
  v2 = +[NTKGreenfieldCompanionAppInstallationMonitor sharedMonitor];
  [v2 start];

  v3 = objc_opt_new();
  v4 = qword_277E0;
  qword_277E0 = v3;

  v5 = qword_277E0;

  [v5 start];
}

- (id)facesViewController
{
  v2 = self;
  objc_sync_enter(v2);
  facesViewController = v2->_facesViewController;
  if (!facesViewController)
  {
    v4 = objc_opt_new();
    v5 = v2->_facesViewController;
    v2->_facesViewController = v4;

    facesViewController = v2->_facesViewController;
  }

  v6 = facesViewController;
  objc_sync_exit(v2);

  return v6;
}

- (id)galleryViewController
{
  v2 = self;
  objc_sync_enter(v2);
  galleryViewController = v2->_galleryViewController;
  if (!galleryViewController)
  {
    v4 = objc_opt_new();
    v5 = v2->_galleryViewController;
    v2->_galleryViewController = v4;

    galleryViewController = v2->_galleryViewController;
  }

  v6 = galleryViewController;
  objc_sync_exit(v2);

  return v6;
}

- (id)userNotificationCategories
{
  v19 = NTKCompanionClockFaceLocalizedString();
  v2 = [UNNotificationAction actionWithIdentifier:"actionWithIdentifier:title:options:" title:@"VIEW_GALLERY_ID" options:?];
  v18 = NTKCompanionClockFaceLocalizedString();
  v3 = [UNNotificationAction actionWithIdentifier:"actionWithIdentifier:title:options:" title:@"ADD_FACE_ID" options:?];
  v4 = NTKCompanionClockFaceLocalizedString();
  v5 = [UNNotificationAction actionWithIdentifier:@"VIEW_WHATS_NEW_ID" title:v4 options:5];
  v6 = +[NSMutableSet set];
  v7 = NTKFaceSupportFaceCategoryIdentifier;
  v22[0] = v3;
  v22[1] = v2;
  v8 = [NSArray arrayWithObjects:v22 count:2];
  v9 = [UNNotificationCategory categoryWithIdentifier:v7 actions:v8 intentIdentifiers:&__NSArray0__struct options:0];

  if (v9)
  {
    [v6 addObject:v9];
  }

  v10 = NTKFaceSupportCollectionCategoryIdentifier;
  v21 = v2;
  v11 = [NSArray arrayWithObjects:&v21 count:1];
  v12 = [UNNotificationCategory categoryWithIdentifier:v10 actions:v11 intentIdentifiers:&__NSArray0__struct options:0];

  if (v12)
  {
    [v6 addObject:v12];
  }

  v13 = NTKFaceSupportWhatsNewCategoryIdentifier;
  v20 = v5;
  v14 = [NSArray arrayWithObjects:&v20 count:1];
  v15 = [UNNotificationCategory categoryWithIdentifier:v13 actions:v14 intentIdentifiers:&__NSArray0__struct options:0];

  if (v15)
  {
    [v6 addObject:v15];
  }

  v16 = [v6 copy];

  return v16;
}

- (id)libraryViewController
{
  v2 = self;
  objc_sync_enter(v2);
  libraryViewController = v2->_libraryViewController;
  if (!libraryViewController)
  {
    v4 = objc_opt_new();
    v5 = v2->_libraryViewController;
    v2->_libraryViewController = v4;

    libraryViewController = v2->_libraryViewController;
  }

  v6 = libraryViewController;
  objc_sync_exit(v2);

  return v6;
}

- (BOOL)handleUserNotificationResponse:(id)a3 fromNotificationCenter:(id)a4 withCompletionHandler:(id)a5
{
  v6 = a3;
  v7 = [v6 notification];
  if ([(NTKCompanionCustomization *)self _canHandleNotification:v7])
  {
    v8 = [v7 request];
    v9 = [v8 content];
    v10 = [v9 categoryIdentifier];
    v11 = [v10 hasPrefix:@"com.apple.nanotimekit.facesupport."];
    if (!v11)
    {
LABEL_30:

      goto LABEL_31;
    }

    v39 = v10;
    v40 = v9;
    if (qword_277F0 != -1)
    {
      sub_FBF4();
    }

    v12 = v8;
    v13 = qword_277E8;
    if (os_log_type_enabled(qword_277E8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v42 = v6;
      _os_log_impl(&dword_0, v13, OS_LOG_TYPE_DEFAULT, "Got a response for %@", buf, 0xCu);
    }

    v14 = [v6 actionIdentifier];
    v15 = [v6 notification];
    v16 = [v15 request];
    v17 = [v16 content];
    v18 = [v17 userInfo];

    v19 = v18;
    if (!v18)
    {
      v25 = qword_277E8;
      v21 = v14;
      v8 = v12;
      v9 = v40;
      if (os_log_type_enabled(qword_277E8, OS_LOG_TYPE_ERROR))
      {
        sub_FC80(v6, v25);
      }

      goto LABEL_29;
    }

    v20 = [v18 objectForKey:@"bid"];
    if (!v20 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      v24 = qword_277E8;
      v21 = v14;
      v8 = v12;
      v9 = v40;
      if (os_log_type_enabled(qword_277E8, OS_LOG_TYPE_ERROR))
      {
        sub_FC08(v20, v24);
      }

      goto LABEL_28;
    }

    v21 = v14;
    if ([v14 isEqualToString:@"ADD_FACE_ID"])
    {
      v22 = qword_277E8;
      v8 = v12;
      if (os_log_type_enabled(qword_277E8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v42 = v6;
        _os_log_impl(&dword_0, v22, OS_LOG_TYPE_DEFAULT, "ADDING FACE for response %{public}@", buf, 0xCu);
      }

      v23 = +[NSDistributedNotificationCenter defaultCenter];
      [v23 postNotificationName:@"NTKFaceSupportAddFaceNotification" object:v20];

      [(NTKCompanionCustomization *)self _addFaceForBundleIdentifier:v20];
      v9 = v40;
    }

    else
    {
      v26 = [v14 isEqualToString:@"VIEW_GALLERY_ID"];
      v8 = v12;
      if (v26)
      {
        v27 = qword_277E8;
        v9 = v40;
        if (os_log_type_enabled(qword_277E8, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543362;
          v42 = v6;
          _os_log_impl(&dword_0, v27, OS_LOG_TYPE_DEFAULT, "VIEWING GALLERY for response %{public}@", buf, 0xCu);
        }

        v28 = +[NSDistributedNotificationCenter defaultCenter];
        [v28 postNotificationName:@"NTKFaceSupportViewFaceNotification" object:v20];

        [(NTKCompanionCustomization *)self _viewFaceForBundleIdentifier:v20 showDetail:0];
      }

      else
      {
        v9 = v40;
        if (![v21 isEqualToString:@"VIEW_WHATS_NEW_ID"])
        {
          v32 = [v18 objectForKey:@"defaultaction"];
          if ([v32 isEqualToString:@"detail"])
          {
            log = qword_277E8;
            if (os_log_type_enabled(qword_277E8, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138543618;
              v42 = v6;
              v43 = 2114;
              v44 = v21;
              _os_log_impl(&dword_0, log, OS_LOG_TYPE_DEFAULT, "VIEWING FACE DETAIL for response %{public}@ - %{public}@", buf, 0x16u);
            }

            [(NTKCompanionCustomization *)self _viewFaceForBundleIdentifier:v20 showDetail:1];
          }

          else
          {
            v36 = v32;
            loga = v19;
            v33 = [v32 isEqualToString:@"whatsnew"];
            v34 = qword_277E8;
            v35 = os_log_type_enabled(qword_277E8, OS_LOG_TYPE_DEFAULT);
            if (v33)
            {
              if (v35)
              {
                *buf = 138543618;
                v42 = v6;
                v43 = 2114;
                v44 = v21;
                _os_log_impl(&dword_0, v34, OS_LOG_TYPE_DEFAULT, "VIEWING WHAT'S NEW for response %{public}@ - %{public}@", buf, 0x16u);
              }

              [(NTKCompanionCustomization *)self _viewWhatsNew];
            }

            else
            {
              if (v35)
              {
                *buf = 138543618;
                v42 = v6;
                v43 = 2114;
                v44 = v21;
                _os_log_impl(&dword_0, v34, OS_LOG_TYPE_DEFAULT, "PERFORMING DEFAULT ACTION (VIEWING FACE DETAIL) for response %{public}@ - %{public}@", buf, 0x16u);
              }

              [(NTKCompanionCustomization *)self _viewFaceForBundleIdentifier:v20 showDetail:1];
            }

            v32 = v36;
            v19 = loga;
          }

          goto LABEL_28;
        }

        v29 = qword_277E8;
        if (os_log_type_enabled(qword_277E8, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543362;
          v42 = v6;
          _os_log_impl(&dword_0, v29, OS_LOG_TYPE_DEFAULT, "VIEWING WHAT'S NEW for response %{public}@", buf, 0xCu);
        }

        v30 = +[NSDistributedNotificationCenter defaultCenter];
        [v30 postNotificationName:@"NTKFaceSupportViewWhatsNewNotification" object:v20];

        [(NTKCompanionCustomization *)self _viewWhatsNew];
      }
    }

    v19 = v18;
LABEL_28:

LABEL_29:
    v10 = v39;
    goto LABEL_30;
  }

  LOBYTE(v11) = 0;
LABEL_31:

  return v11;
}

- (BOOL)handlePresentationOfNotification:(id)a3 fromNotificationCenter:(id)a4 withCompletionHandler:(id)a5
{
  v7 = a5;
  v8 = [(NTKCompanionCustomization *)self _canHandleNotification:a3];
  if (v8)
  {
    v7[2](v7, 26);
  }

  return v8;
}

- (void)_addFaceForBundleIdentifier:(id)a3
{
  v4 = a3;
  v5 = +[CLKDevice currentDevice];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_C070;
  v11[3] = &unk_20C60;
  v12 = NTKCollectionIdentifierLibraryFaces;
  sub_C070(v11, v5);
  v6 = +[NTKFaceBundleManager sharedManager];
  v7 = [v6 faceBundleForBundleIdentifier:v4 onDevice:v5];

  v8 = [v7 defaultFaceForDevice:v5];
  [qword_277F8 appendFace:v8 suppressingCallbackToObserver:0];
  [qword_277F8 setSelectedFace:v8 suppressingCallbackToObserver:0];
  v9 = [(NTKCompanionCustomization *)self galleryViewController];
  v10 = [v9 tabBarController];
  [v10 setSelectedIndex:0];
}

- (BOOL)_canHandleNotification:(id)a3
{
  v3 = [a3 request];
  v4 = [v3 content];
  v5 = [v4 categoryIdentifier];
  v6 = [v5 hasPrefix:@"com.apple.nanotimekit.facesupport."];

  return v6;
}

@end