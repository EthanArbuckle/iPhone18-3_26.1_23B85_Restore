@interface SHMediaItemPresenter
- (BOOL)didUserCancelAuthenticationWithError:(id)a3;
- (BOOL)isShazamAppInstalled;
- (SHMediaItemPresenter)initWithRemoteConfiguration:(id)a3 bundleIdentifier:(id)a4;
- (id)initBundleIdentifier:(id)a3;
- (id)presentationOptionsForFeatureFlags:(id)a3;
- (id)removePresentationOption:(int64_t)a3 fromArray:(id)a4;
- (void)iteratePresentationOptions:(id)a3 mediaItem:(id)a4 presentationSettings:(id)a5 featureFlags:(id)a6 completionHandler:(id)a7;
- (void)openURL:(id)a3 presentationSettings:(id)a4 completionHandler:(id)a5;
- (void)presentMediaItem:(id)a3 completionHandler:(id)a4;
- (void)presentMediaItem:(id)a3 presentationSettings:(id)a4 completionHandler:(id)a5;
- (void)presentShazamAppFromShazamURL:(id)a3 completionHandler:(id)a4;
@end

@implementation SHMediaItemPresenter

- (id)initBundleIdentifier:(id)a3
{
  v5 = a3;
  v10.receiver = self;
  v10.super_class = SHMediaItemPresenter;
  v6 = [(SHMediaItemPresenter *)&v10 init];
  if (v6)
  {
    v7 = +[SHRemoteConfiguration sharedInstance];
    remoteConfiguration = v6->_remoteConfiguration;
    v6->_remoteConfiguration = v7;

    objc_storeStrong(&v6->_bundleIdentifier, a3);
  }

  return v6;
}

- (SHMediaItemPresenter)initWithRemoteConfiguration:(id)a3 bundleIdentifier:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = [(SHMediaItemPresenter *)self initBundleIdentifier:v8];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(v9 + 1, a3);
    objc_storeStrong(&v10->_bundleIdentifier, a4);
  }

  return v10;
}

- (void)presentMediaItem:(id)a3 completionHandler:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [SHMediaItemPresentationSettings alloc];
  v14 = SHMediaItemPresentationSettingOpenResultInBrowserOnFailure;
  v15 = &__kCFBooleanTrue;
  v9 = [NSDictionary dictionaryWithObjects:&v15 forKeys:&v14 count:1];
  v10 = [v8 initWithSettings:v9];

  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100043048;
  v12[3] = &unk_10007E078;
  v13 = v6;
  v11 = v6;
  [(SHMediaItemPresenter *)self presentMediaItem:v7 presentationSettings:v10 completionHandler:v12];
}

- (void)presentMediaItem:(id)a3 presentationSettings:(id)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [v8 properties];
  v12 = [v11 count];

  if (v12)
  {
    objc_initWeak(location, self);
    v13 = [(SHMediaItemPresenter *)self remoteConfiguration];
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_100043260;
    v15[3] = &unk_10007E0A0;
    objc_copyWeak(&v19, location);
    v16 = v8;
    v17 = v9;
    v18 = v10;
    [v13 featureFlagsWithCompletion:v15];

    objc_destroyWeak(&v19);
    objc_destroyWeak(location);
  }

  else
  {
    v14 = sh_log_object();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      LODWORD(location[0]) = 138412290;
      *(location + 4) = v8;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEBUG, "Presenting media item with no properties %@", location, 0xCu);
    }

    [(SHMediaItemPresenter *)self presentTrackPageFromMediaItem:v8 presentationSettings:v9 displayShazamUpsell:0 completionHandler:v10];
  }
}

- (BOOL)isShazamAppInstalled
{
  v7 = 0;
  v2 = [[LSApplicationRecord alloc] initWithBundleIdentifier:@"com.shazam.Shazam" allowPlaceholder:0 error:&v7];
  v3 = v7;
  if (!v2)
  {
    v4 = sh_log_object();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = [0 bundleIdentifier];
      *buf = 138412546;
      v9 = v5;
      v10 = 2112;
      v11 = v3;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "No application record for %@ found with error: %@", buf, 0x16u);
    }
  }

  return v2 != 0;
}

- (id)presentationOptionsForFeatureFlags:(id)a3
{
  v4 = +[NSMutableArray array];
  if ([(SHMediaItemPresenter *)self isShazamAppInstalled])
  {
    [v4 addObject:&off_100081248];
  }

  [v4 addObject:&off_100081260];
  [v4 addObject:&off_100081278];
  v5 = [v4 copy];

  return v5;
}

- (id)removePresentationOption:(int64_t)a3 fromArray:(id)a4
{
  v5 = [a4 mutableCopy];
  v6 = [NSNumber numberWithInteger:a3];
  [v5 removeObject:v6];

  v7 = [v5 copy];

  return v7;
}

- (BOOL)didUserCancelAuthenticationWithError:(id)a3
{
  v3 = a3;
  v4 = [v3 domain];
  v5 = [v4 isEqualToString:FBSOpenApplicationServiceErrorDomain];

  v6 = [v3 code] != 1 && objc_msgSend(v3, "code") != 2;
  v7 = v5 ^ 1 | v6;
  if ((v7 & 1) == 0)
  {
    v8 = sh_log_object();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "User dismissed the authentication request to open the matched song", v10, 2u);
    }
  }

  return (v7 & 1) == 0;
}

- (void)iteratePresentationOptions:(id)a3 mediaItem:(id)a4 presentationSettings:(id)a5 featureFlags:(id)a6 completionHandler:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v17 = sh_log_object();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v50 = v12;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEBUG, "Available presentation options are %@", buf, 0xCu);
  }

  objc_initWeak(buf, self);
  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  v18 = v12;
  v19 = [v18 countByEnumeratingWithState:&v44 objects:v48 count:16];
  if (v19)
  {
    v20 = *v45;
LABEL_5:
    v21 = 0;
    while (1)
    {
      if (*v45 != v20)
      {
        objc_enumerationMutation(v18);
      }

      v22 = [*(*(&v44 + 1) + 8 * v21) integerValue];
      if (v22 > 1)
      {
        if (v22 == 2)
        {
          v23 = [v15 shouldDisplayShazamUpsell];
          v32[0] = _NSConcreteStackBlock;
          v32[1] = 3221225472;
          v32[2] = sub_100043B78;
          v32[3] = &unk_10007E0C8;
          objc_copyWeak(&v37, buf);
          v33 = v13;
          v36 = v16;
          v34 = v18;
          v35 = v15;
          [(SHMediaItemPresenter *)self presentTrackPageFromMediaItem:v33 presentationSettings:v14 displayShazamUpsell:v23 completionHandler:v32];

          objc_destroyWeak(&v37);
          goto LABEL_27;
        }

        if (v22 == 3)
        {
          v27 = [v13 webURL];
          v28 = v27 == 0;

          if (v28)
          {
            v30 = sh_log_object();
            if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
            {
              *v31 = 0;
              _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_ERROR, "Failed to present media item, missing url", v31, 2u);
            }

LABEL_26:
            (*(v16 + 2))(v16, 0, 0, 0);
          }

          else
          {
            v29 = [v13 webURL];
            [(SHMediaItemPresenter *)self openURL:v29 presentationSettings:v14 completionHandler:v16];
          }

LABEL_27:

          goto LABEL_28;
        }
      }

      else
      {
        if (!v22)
        {
          goto LABEL_26;
        }

        if (v22 == 1)
        {
          v24 = [v13 webURL];
          v25 = v24 == 0;

          if (v25)
          {
            [(SHMediaItemPresenter *)self presentTrackPageFromMediaItem:v13 presentationSettings:v14 displayShazamUpsell:0 completionHandler:v16];
          }

          else
          {
            v26 = [v13 webURL];
            v38[0] = _NSConcreteStackBlock;
            v38[1] = 3221225472;
            v38[2] = sub_100043A94;
            v38[3] = &unk_10007E0C8;
            objc_copyWeak(&v43, buf);
            v39 = v13;
            v42 = v16;
            v40 = v18;
            v41 = v15;
            [(SHMediaItemPresenter *)self presentShazamAppFromShazamURL:v26 completionHandler:v38];

            objc_destroyWeak(&v43);
          }

          goto LABEL_27;
        }
      }

      if (v19 == ++v21)
      {
        v19 = [v18 countByEnumeratingWithState:&v44 objects:v48 count:16];
        if (v19)
        {
          goto LABEL_5;
        }

        break;
      }
    }
  }

  (*(v16 + 2))(v16, 0, 0, 0);
LABEL_28:
  objc_destroyWeak(buf);
}

- (void)presentShazamAppFromShazamURL:(id)a3 completionHandler:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = sh_log_object();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v18 = v5;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEBUG, "Attempting to open Shazam app with url %@", buf, 0xCu);
  }

  v8 = objc_alloc_init(_LSOpenConfiguration);
  v15[0] = FBSOpenApplicationOptionKeyUnlockDevice;
  v15[1] = FBSOpenApplicationOptionKeyPromptUnlockDevice;
  v16[0] = &__kCFBooleanTrue;
  v16[1] = &__kCFBooleanTrue;
  v9 = [NSDictionary dictionaryWithObjects:v16 forKeys:v15 count:2];
  [v8 setFrontBoardOptions:v9];

  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100043E80;
  v12[3] = &unk_10007E0F0;
  v13 = v5;
  v14 = v6;
  v10 = v6;
  v11 = v5;
  [LSAppLink openWithURL:v11 configuration:v8 completionHandler:v12];
}

- (void)openURL:(id)a3 presentationSettings:(id)a4 completionHandler:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  if (v8 && ([v8 openResultInBrowserOnFailure] & 1) == 0)
  {
    (*(v9 + 2))(v9, 0, v7, 0);
  }

  else
  {
    v10 = objc_alloc_init(_LSOpenConfiguration);
    v16[0] = FBSOpenApplicationOptionKeyUnlockDevice;
    v16[1] = FBSOpenApplicationOptionKeyPromptUnlockDevice;
    v17[0] = &__kCFBooleanTrue;
    v17[1] = &__kCFBooleanTrue;
    v11 = [NSDictionary dictionaryWithObjects:v17 forKeys:v16 count:2];
    [v10 setFrontBoardOptions:v11];

    v12 = +[LSApplicationWorkspace defaultWorkspace];
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_1000446B4;
    v13[3] = &unk_10007E118;
    v14 = v7;
    v15 = v9;
    [v12 openURL:v14 configuration:v10 completionHandler:v13];
  }
}

@end