@interface SHMediaItemPresenter
- (BOOL)didUserCancelAuthenticationWithError:(id)error;
- (BOOL)isShazamAppInstalled;
- (SHMediaItemPresenter)initWithRemoteConfiguration:(id)configuration bundleIdentifier:(id)identifier;
- (id)initBundleIdentifier:(id)identifier;
- (id)presentationOptionsForFeatureFlags:(id)flags;
- (id)removePresentationOption:(int64_t)option fromArray:(id)array;
- (void)iteratePresentationOptions:(id)options mediaItem:(id)item presentationSettings:(id)settings featureFlags:(id)flags completionHandler:(id)handler;
- (void)openURL:(id)l presentationSettings:(id)settings completionHandler:(id)handler;
- (void)presentMediaItem:(id)item completionHandler:(id)handler;
- (void)presentMediaItem:(id)item presentationSettings:(id)settings completionHandler:(id)handler;
- (void)presentShazamAppFromShazamURL:(id)l completionHandler:(id)handler;
@end

@implementation SHMediaItemPresenter

- (id)initBundleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v10.receiver = self;
  v10.super_class = SHMediaItemPresenter;
  v6 = [(SHMediaItemPresenter *)&v10 init];
  if (v6)
  {
    v7 = +[SHRemoteConfiguration sharedInstance];
    remoteConfiguration = v6->_remoteConfiguration;
    v6->_remoteConfiguration = v7;

    objc_storeStrong(&v6->_bundleIdentifier, identifier);
  }

  return v6;
}

- (SHMediaItemPresenter)initWithRemoteConfiguration:(id)configuration bundleIdentifier:(id)identifier
{
  configurationCopy = configuration;
  identifierCopy = identifier;
  v9 = [(SHMediaItemPresenter *)self initBundleIdentifier:identifierCopy];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(v9 + 1, configuration);
    objc_storeStrong(&v10->_bundleIdentifier, identifier);
  }

  return v10;
}

- (void)presentMediaItem:(id)item completionHandler:(id)handler
{
  handlerCopy = handler;
  itemCopy = item;
  v8 = [SHMediaItemPresentationSettings alloc];
  v14 = SHMediaItemPresentationSettingOpenResultInBrowserOnFailure;
  v15 = &__kCFBooleanTrue;
  v9 = [NSDictionary dictionaryWithObjects:&v15 forKeys:&v14 count:1];
  v10 = [v8 initWithSettings:v9];

  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100043048;
  v12[3] = &unk_10007E078;
  v13 = handlerCopy;
  v11 = handlerCopy;
  [(SHMediaItemPresenter *)self presentMediaItem:itemCopy presentationSettings:v10 completionHandler:v12];
}

- (void)presentMediaItem:(id)item presentationSettings:(id)settings completionHandler:(id)handler
{
  itemCopy = item;
  settingsCopy = settings;
  handlerCopy = handler;
  properties = [itemCopy properties];
  v12 = [properties count];

  if (v12)
  {
    objc_initWeak(location, self);
    remoteConfiguration = [(SHMediaItemPresenter *)self remoteConfiguration];
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_100043260;
    v15[3] = &unk_10007E0A0;
    objc_copyWeak(&v19, location);
    v16 = itemCopy;
    v17 = settingsCopy;
    v18 = handlerCopy;
    [remoteConfiguration featureFlagsWithCompletion:v15];

    objc_destroyWeak(&v19);
    objc_destroyWeak(location);
  }

  else
  {
    v14 = sh_log_object();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      LODWORD(location[0]) = 138412290;
      *(location + 4) = itemCopy;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEBUG, "Presenting media item with no properties %@", location, 0xCu);
    }

    [(SHMediaItemPresenter *)self presentTrackPageFromMediaItem:itemCopy presentationSettings:settingsCopy displayShazamUpsell:0 completionHandler:handlerCopy];
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
      bundleIdentifier = [0 bundleIdentifier];
      *buf = 138412546;
      v9 = bundleIdentifier;
      v10 = 2112;
      v11 = v3;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "No application record for %@ found with error: %@", buf, 0x16u);
    }
  }

  return v2 != 0;
}

- (id)presentationOptionsForFeatureFlags:(id)flags
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

- (id)removePresentationOption:(int64_t)option fromArray:(id)array
{
  v5 = [array mutableCopy];
  v6 = [NSNumber numberWithInteger:option];
  [v5 removeObject:v6];

  v7 = [v5 copy];

  return v7;
}

- (BOOL)didUserCancelAuthenticationWithError:(id)error
{
  errorCopy = error;
  domain = [errorCopy domain];
  v5 = [domain isEqualToString:FBSOpenApplicationServiceErrorDomain];

  v6 = [errorCopy code] != 1 && objc_msgSend(errorCopy, "code") != 2;
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

- (void)iteratePresentationOptions:(id)options mediaItem:(id)item presentationSettings:(id)settings featureFlags:(id)flags completionHandler:(id)handler
{
  optionsCopy = options;
  itemCopy = item;
  settingsCopy = settings;
  flagsCopy = flags;
  handlerCopy = handler;
  v17 = sh_log_object();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v50 = optionsCopy;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEBUG, "Available presentation options are %@", buf, 0xCu);
  }

  objc_initWeak(buf, self);
  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  v18 = optionsCopy;
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

      integerValue = [*(*(&v44 + 1) + 8 * v21) integerValue];
      if (integerValue > 1)
      {
        if (integerValue == 2)
        {
          shouldDisplayShazamUpsell = [flagsCopy shouldDisplayShazamUpsell];
          v32[0] = _NSConcreteStackBlock;
          v32[1] = 3221225472;
          v32[2] = sub_100043B78;
          v32[3] = &unk_10007E0C8;
          objc_copyWeak(&v37, buf);
          v33 = itemCopy;
          v36 = handlerCopy;
          v34 = v18;
          v35 = flagsCopy;
          [(SHMediaItemPresenter *)self presentTrackPageFromMediaItem:v33 presentationSettings:settingsCopy displayShazamUpsell:shouldDisplayShazamUpsell completionHandler:v32];

          objc_destroyWeak(&v37);
          goto LABEL_27;
        }

        if (integerValue == 3)
        {
          webURL = [itemCopy webURL];
          v28 = webURL == 0;

          if (v28)
          {
            v30 = sh_log_object();
            if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
            {
              *v31 = 0;
              _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_ERROR, "Failed to present media item, missing url", v31, 2u);
            }

LABEL_26:
            (*(handlerCopy + 2))(handlerCopy, 0, 0, 0);
          }

          else
          {
            webURL2 = [itemCopy webURL];
            [(SHMediaItemPresenter *)self openURL:webURL2 presentationSettings:settingsCopy completionHandler:handlerCopy];
          }

LABEL_27:

          goto LABEL_28;
        }
      }

      else
      {
        if (!integerValue)
        {
          goto LABEL_26;
        }

        if (integerValue == 1)
        {
          webURL3 = [itemCopy webURL];
          v25 = webURL3 == 0;

          if (v25)
          {
            [(SHMediaItemPresenter *)self presentTrackPageFromMediaItem:itemCopy presentationSettings:settingsCopy displayShazamUpsell:0 completionHandler:handlerCopy];
          }

          else
          {
            webURL4 = [itemCopy webURL];
            v38[0] = _NSConcreteStackBlock;
            v38[1] = 3221225472;
            v38[2] = sub_100043A94;
            v38[3] = &unk_10007E0C8;
            objc_copyWeak(&v43, buf);
            v39 = itemCopy;
            v42 = handlerCopy;
            v40 = v18;
            v41 = flagsCopy;
            [(SHMediaItemPresenter *)self presentShazamAppFromShazamURL:webURL4 completionHandler:v38];

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

  (*(handlerCopy + 2))(handlerCopy, 0, 0, 0);
LABEL_28:
  objc_destroyWeak(buf);
}

- (void)presentShazamAppFromShazamURL:(id)l completionHandler:(id)handler
{
  lCopy = l;
  handlerCopy = handler;
  v7 = sh_log_object();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v18 = lCopy;
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
  v13 = lCopy;
  v14 = handlerCopy;
  v10 = handlerCopy;
  v11 = lCopy;
  [LSAppLink openWithURL:v11 configuration:v8 completionHandler:v12];
}

- (void)openURL:(id)l presentationSettings:(id)settings completionHandler:(id)handler
{
  lCopy = l;
  settingsCopy = settings;
  handlerCopy = handler;
  if (settingsCopy && ([settingsCopy openResultInBrowserOnFailure] & 1) == 0)
  {
    (*(handlerCopy + 2))(handlerCopy, 0, lCopy, 0);
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
    v14 = lCopy;
    v15 = handlerCopy;
    [v12 openURL:v14 configuration:v10 completionHandler:v13];
  }
}

@end