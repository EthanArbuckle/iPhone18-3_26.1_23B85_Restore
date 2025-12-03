@interface PHCarPlayMainMenuContainerViewController
- (BOOL)tabBarController:(id)controller shouldSelectViewController:(id)viewController;
- (PHCarPlayMainMenuContainerViewController)initWithNibName:(id)name bundle:(id)bundle;
- (id)navigationItem;
- (id)preferredFocusEnvironments;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section;
- (void)_initializeRootViewControllerDictionaries;
- (void)handleURL:(id)l;
- (void)loadView;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
@end

@implementation PHCarPlayMainMenuContainerViewController

- (PHCarPlayMainMenuContainerViewController)initWithNibName:(id)name bundle:(id)bundle
{
  v7.receiver = self;
  v7.super_class = PHCarPlayMainMenuContainerViewController;
  v4 = [(PHCarPlayMainMenuContainerViewController *)&v7 initWithNibName:name bundle:bundle];
  v5 = v4;
  if (v4)
  {
    [(PHCarPlayMainMenuContainerViewController *)v4 _initializeRootViewControllerDictionaries];
  }

  return v5;
}

- (void)loadView
{
  v53 = [[UIView alloc] initWithFrame:{0.0, 0.0, 400.0, 240.0}];
  [(PHCarPlayMainMenuContainerViewController *)self setView:?];
  v3 = [[UIView alloc] initWithFrame:{0.0, 0.0, 400.0, 240.0}];
  [v3 setAutoresizingMask:18];
  v4 = +[UIColor clearColor];
  [v3 setBackgroundColor:v4];

  [v3 setOpaque:0];
  view = [(PHCarPlayMainMenuContainerViewController *)self view];
  [view addSubview:v3];

  selfCopy = self;
  v52 = v3;
  [(PHCarPlayMainMenuContainerViewController *)self setCentralAreaContainerView:v3];
  v6 = objc_alloc_init(UITabBarController);
  if (_UISolariumEnabled())
  {
    v7 = +[UIColor clearColor];
    view2 = [v6 view];
    [view2 setBackgroundColor:v7];
  }

  view3 = [v6 view];
  [view3 setTranslatesAutoresizingMaskIntoConstraints:0];

  centralAreaContainerView = [(PHCarPlayMainMenuContainerViewController *)self centralAreaContainerView];
  [centralAreaContainerView bounds];
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;
  view4 = [v6 view];
  [view4 setFrame:{v12, v14, v16, v18}];

  [(PHCarPlayMainMenuContainerViewController *)self addChildViewController:v6];
  [(PHCarPlayMainMenuContainerViewController *)self setRootViewController:v6];
  [(PHCarPlayMainMenuContainerViewController *)self setSelectedViewController:v6];
  selectedViewController = [(PHCarPlayMainMenuContainerViewController *)self selectedViewController];
  [selectedViewController didMoveToParentViewController:self];

  centralAreaContainerView2 = [(PHCarPlayMainMenuContainerViewController *)self centralAreaContainerView];
  selectedViewController2 = [(PHCarPlayMainMenuContainerViewController *)self selectedViewController];
  view5 = [selectedViewController2 view];
  [centralAreaContainerView2 addSubview:view5];

  v63[0] = @"rootView";
  v51 = v6;
  view6 = [v6 view];
  v63[1] = @"centerContainer";
  v64[0] = view6;
  centralAreaContainerView3 = [(PHCarPlayMainMenuContainerViewController *)selfCopy centralAreaContainerView];
  v64[1] = centralAreaContainerView3;
  v26 = [NSDictionary dictionaryWithObjects:v64 forKeys:v63 count:2];

  view7 = [(PHCarPlayMainMenuContainerViewController *)selfCopy view];
  v28 = [NSLayoutConstraint constraintsWithVisualFormat:@"|[rootView]|" options:0 metrics:0 views:v26];
  [view7 addConstraints:v28];

  view8 = [(PHCarPlayMainMenuContainerViewController *)selfCopy view];
  v50 = v26;
  v30 = [NSLayoutConstraint constraintsWithVisualFormat:@"V:|[rootView]|" options:0 metrics:0 views:v26];
  [view8 addConstraints:v30];

  v57 = +[NSMutableArray array];
  v58 = 0u;
  v59 = 0u;
  v60 = 0u;
  v61 = 0u;
  obj = [(PHCarPlayMainMenuContainerViewController *)selfCopy rootViewControllerDictionaries];
  v31 = [obj countByEnumeratingWithState:&v58 objects:v62 count:16];
  if (v31)
  {
    v32 = v31;
    v56 = *v59;
    do
    {
      for (i = 0; i != v32; i = i + 1)
      {
        if (*v59 != v56)
        {
          objc_enumerationMutation(obj);
        }

        v34 = *(*(&v58 + 1) + 8 * i);
        v35 = [v34 objectForKeyedSubscript:@"kPHCarPlayMenuItemControllerName"];
        v36 = objc_alloc_init(NSClassFromString(v35));

        v37 = [v34 objectForKeyedSubscript:@"kPHCarPlayMenuItemTitle"];
        navigationItem = [v36 navigationItem];
        [navigationItem setTitle:v37];

        v39 = [UITabBarItem alloc];
        v40 = [v34 objectForKeyedSubscript:@"kPHCarPlayMenuIconImageName"];
        v41 = [UIImage systemImageNamed:v40];
        v42 = [v39 initWithTitle:0 image:v41 tag:0];

        v43 = [v34 objectForKeyedSubscript:@"kPHCarPlayMenuItemTitle"];
        [v42 setTitle:v43];

        v44 = [v34 objectForKeyedSubscript:@"kPHCarPlayMenuItemControllerName"];
        [v42 setAccessibilityIdentifier:v44];

        accessibilityIdentifier = [v42 accessibilityIdentifier];
        LODWORD(v41) = [accessibilityIdentifier isEqualToString:@"PHCarPlayDialerViewController"];

        if (v41)
        {
          v46 = [NSBundle bundleForClass:objc_opt_class()];
          v47 = [v46 localizedStringForKey:@"KEYPAD" value:&stru_10028F310 table:@"PHCarPlay"];
          [v42 setAccessibilityLabel:v47];
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          badgeString = [v36 badgeString];
          [v42 setBadgeValue:badgeString];
        }

        [v36 setTabBarItem:v42];
        [v34 setValue:v36 forKey:@"kPHCarPlayMenuItemControllerInstance"];
        [v57 addObject:v36];
      }

      v32 = [obj countByEnumeratingWithState:&v58 objects:v62 count:16];
    }

    while (v32);
  }

  v49 = v51;
  [v49 setViewControllers:v57 animated:0];
  [v49 setDelegate:selfCopy];
}

- (BOOL)tabBarController:(id)controller shouldSelectViewController:(id)viewController
{
  viewControllerCopy = viewController;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0)
  {
    return 1;
  }

  v6 = +[PHCarPlayVoicemailManager sharedVoicemailManager];
  isVisualVoicemailAvailable = [v6 isVisualVoicemailAvailable];

  if (isVisualVoicemailAvailable)
  {
    return 1;
  }

  v9 = PHDefaultLog();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *v10 = 0;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "CarPlay Voicemail Tab Selected, but visual voicemail is not available. Calling voicemail instead.", v10, 2u);
  }

  return [UIApp dialVoicemail] ^ 1;
}

- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section
{
  v4 = [(PHCarPlayMainMenuContainerViewController *)self rootViewControllerDictionaries:view];
  v5 = [v4 count];

  return v5;
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  pathCopy = path;
  v7 = [view dequeueReusableCellWithIdentifier:@"PHCarPlayMainMenuContainerViewController"];
  if (!v7)
  {
    v7 = [[PHCarPlayHardwareMenuTableViewCell alloc] initWithStyle:0 reuseIdentifier:@"PHCarPlayMainMenuContainerViewController"];
  }

  rootViewControllerDictionaries = [(PHCarPlayMainMenuContainerViewController *)self rootViewControllerDictionaries];
  v9 = [pathCopy row];

  v10 = [rootViewControllerDictionaries objectAtIndex:v9];

  v11 = [v10 objectForKeyedSubscript:@"kPHCarPlayMenuItemTitle"];
  mainLabel = [(PHCarPlayHardwareMenuTableViewCell *)v7 mainLabel];
  [mainLabel setText:v11];

  v13 = [v10 objectForKeyedSubscript:@"kPHCarPlayMenuIconImageName"];
  v14 = [UIImage phCarPlayImageNamed:v13];
  iconImageView = [(PHCarPlayHardwareMenuTableViewCell *)v7 iconImageView];
  [iconImageView setImage:v14];

  return v7;
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  pathCopy = path;
  viewCopy = view;
  rootViewControllerDictionaries = [(PHCarPlayMainMenuContainerViewController *)self rootViewControllerDictionaries];
  v8 = [rootViewControllerDictionaries objectAtIndex:{objc_msgSend(pathCopy, "row")}];

  topViewController = [v8 valueForKey:@"kPHCarPlayMenuItemControllerInstance"];
  if (!topViewController)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      topViewController = [0 topViewController];
    }

    else
    {
      v10 = [v8 objectForKeyedSubscript:@"kPHCarPlayMenuItemTitle"];
      navigationItem = [0 navigationItem];
      [navigationItem setTitle:v10];

      topViewController = 0;
    }
  }

  [viewCopy deselectRowAtIndexPath:pathCopy animated:0];
  [viewCopy highlightRowAtIndexPath:pathCopy animated:0 scrollPosition:0];

  navigationController = [(PHCarPlayMainMenuContainerViewController *)self navigationController];
  [navigationController pushViewController:topViewController animated:1];
}

- (void)handleURL:(id)l
{
  lCopy = l;
  scheme = [lCopy scheme];
  rootViewControllerDictionaries = [(PHCarPlayMainMenuContainerViewController *)self rootViewControllerDictionaries];
  v7 = [rootViewControllerDictionaries count];

  if (v7)
  {
    v8 = 0;
    while (1)
    {
      rootViewControllerDictionaries2 = [(PHCarPlayMainMenuContainerViewController *)self rootViewControllerDictionaries];
      v10 = [rootViewControllerDictionaries2 objectAtIndexedSubscript:v8];
      v11 = [v10 objectForKeyedSubscript:@"kPHCarPlayMenuItemDeepLinkScheme"];

      if ([scheme isEqualToString:v11])
      {
        break;
      }

      ++v8;
      rootViewControllerDictionaries3 = [(PHCarPlayMainMenuContainerViewController *)self rootViewControllerDictionaries];
      v13 = [rootViewControllerDictionaries3 count];

      if (v13 <= v8)
      {
        goto LABEL_9;
      }
    }

    v14 = PHDefaultLog();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      v59 = v8;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Switching to CarPlay tab: %i.", buf, 8u);
    }

    rootViewController = [(PHCarPlayMainMenuContainerViewController *)self rootViewController];
    [rootViewController setSelectedIndex:v8];
  }

LABEL_9:
  if ([scheme isEqualToString:@"mobilephone-contacts"])
  {
    rootViewController2 = [(PHCarPlayMainMenuContainerViewController *)self rootViewController];
    selectedViewController = [rootViewController2 selectedViewController];

    host = [lCopy host];
    lowercaseString = [host lowercaseString];

    if (!lowercaseString || ![lowercaseString isEqualToString:@"show"])
    {
      goto LABEL_29;
    }

    v49 = selectedViewController;
    v20 = [NSURLComponents componentsWithURL:lCopy resolvingAgainstBaseURL:0];
    queryItems = [v20 queryItems];

    v52 = 0u;
    v53 = 0u;
    v50 = 0u;
    v51 = 0u;
    v22 = queryItems;
    v23 = [v22 countByEnumeratingWithState:&v50 objects:v57 count:16];
    v24 = v22;
    if (v23)
    {
      v25 = v23;
      v47 = lCopy;
      v48 = lowercaseString;
      v24 = 0;
      v26 = *v51;
      do
      {
        for (i = 0; i != v25; i = i + 1)
        {
          if (*v51 != v26)
          {
            objc_enumerationMutation(v22);
          }

          v28 = *(*(&v50 + 1) + 8 * i);
          name = [v28 name];
          v30 = [name isEqualToString:@"id"];

          if (v30)
          {
            value = [v28 value];

            v24 = value;
          }
        }

        v25 = [v22 countByEnumeratingWithState:&v50 objects:v57 count:16];
      }

      while (v25);

      lCopy = v47;
      lowercaseString = v48;
      if (!v24)
      {
        goto LABEL_28;
      }

      v32 = +[(PHApplicationServices *)MPApplicationServices];
      contactStore = [v32 contactStore];

      v34 = +[CNContactViewController descriptorForRequiredKeys];
      v56 = v34;
      v35 = [NSArray arrayWithObjects:&v56 count:1];
      v36 = [contactStore contactForIdentifier:v24 keysToFetch:v35];

      if (v36)
      {
        v37 = PHDefaultLog();
        if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEFAULT, "Loading Contact Into Tab", buf, 2u);
        }

        delegate = [v49 delegate];
        [delegate contactListViewController:v49 didSelectContact:v36];

        lowercaseString = v48;
      }
    }

LABEL_28:
    selectedViewController = v49;
LABEL_29:
  }

  if ([scheme isEqualToString:@"vmshow"])
  {
    voicemailMessageUUID = [lCopy voicemailMessageUUID];
    if (([UIApp hasEnhancedVoicemail] & 1) != 0 || voicemailMessageUUID)
    {
      if (voicemailMessageUUID || [UIApp hasEnhancedVoicemail])
      {
        voicemailMessageUUID2 = [lCopy voicemailMessageUUID];
        if (voicemailMessageUUID2)
        {
          v41 = [[MPMessageID alloc] initWithUuid:voicemailMessageUUID2];
          if (v41)
          {
            goto LABEL_42;
          }
        }

        v42 = PHDefaultLog();
        if (os_log_type_enabled(v42, OS_LOG_TYPE_FAULT))
        {
          [(PHVoicemailNavigationController *)lCopy handleURL:v42];
        }

        voicemailRecordID = [lCopy voicemailRecordID];
        if (voicemailRecordID >= 1)
        {
          v41 = [[MPMessageID alloc] initWithValue:voicemailRecordID];
          if (v41)
          {
LABEL_42:
            v44 = v41;
            v45 = +[NSNotificationCenter defaultCenter];
            v54 = @"kPHCarPlayVoicemailViewControllerVoicemailIDKey";
            v55 = v44;
            v46 = [NSDictionary dictionaryWithObjects:&v55 forKeys:&v54 count:1];
            [v45 postNotificationName:@"PHCarPlayVoicemailViewControllerPlayVoicemailEventNotification" object:0 userInfo:v46];
          }
        }
      }
    }

    else
    {
      dispatch_async(&_dispatch_main_q, &__block_literal_global_23);
    }
  }
}

- (void)_initializeRootViewControllerDictionaries
{
  v3 = &swift_dynamicCastClassUnconditional_ptr;
  v38[0] = @"kPHCarPlayMenuItemTitle";
  [NSBundle bundleForClass:objc_opt_class()];
  v28 = v4 = &stru_10028F310;
  v27 = [v28 localizedStringForKey:@"FAVORITES" value:&stru_10028F310 table:@"PHCarPlay"];
  v39[0] = v27;
  v39[1] = @"star.fill";
  v38[1] = @"kPHCarPlayMenuIconImageName";
  v38[2] = @"kPHCarPlayMenuItemControllerName";
  v38[3] = @"kPHCarPlayMenuItemDeepLinkScheme";
  v39[2] = @"PHCarPlayFavoritesViewController";
  v39[3] = @"mobilephone-favorites";
  v26 = [NSDictionary dictionaryWithObjects:v39 forKeys:v38 count:4];
  v25 = [NSMutableDictionary dictionaryWithDictionary:?];
  v40[0] = v25;
  v36[0] = @"kPHCarPlayMenuItemTitle";
  v24 = [NSBundle bundleForClass:objc_opt_class()];
  v23 = [v24 localizedStringForKey:@"RECENTS" value:&stru_10028F310 table:@"PHCarPlay"];
  v37[0] = v23;
  v37[1] = @"clock.fill";
  v36[1] = @"kPHCarPlayMenuIconImageName";
  v36[2] = @"kPHCarPlayMenuItemControllerName";
  v36[3] = @"kPHCarPlayMenuItemDeepLinkScheme";
  v37[2] = @"PHCarPlayRecentsViewController";
  v37[3] = @"mobilephone-recents";
  v22 = [NSDictionary dictionaryWithObjects:v37 forKeys:v36 count:4];
  v21 = [NSMutableDictionary dictionaryWithDictionary:?];
  v40[1] = v21;
  v34[0] = @"kPHCarPlayMenuItemTitle";
  v5 = [NSBundle bundleForClass:objc_opt_class()];
  v6 = [v5 localizedStringForKey:@"CONTACTS" value:&stru_10028F310 table:@"PHCarPlay"];
  v35[0] = v6;
  v35[1] = @"person.crop.circle.fill";
  v34[1] = @"kPHCarPlayMenuIconImageName";
  v34[2] = @"kPHCarPlayMenuItemControllerName";
  v34[3] = @"kPHCarPlayMenuItemDeepLinkScheme";
  v35[2] = @"CNStarkContactsListViewController";
  v35[3] = @"mobilephone-contacts";
  v7 = [NSDictionary dictionaryWithObjects:v35 forKeys:v34 count:4];
  v8 = [NSMutableDictionary dictionaryWithDictionary:v7];
  v40[2] = v8;
  v32[0] = @"kPHCarPlayMenuItemTitle";
  v9 = _UISolariumEnabled();
  selfCopy = self;
  if ((v9 & 1) == 0)
  {
    v3 = [NSBundle bundleForClass:objc_opt_class()];
    v4 = [v3 localizedStringForKey:@"KEYPAD" value:&stru_10028F310 table:@"PHCarPlay"];
  }

  v33[0] = v4;
  v33[1] = @"circle.grid.3x3.fill";
  v32[1] = @"kPHCarPlayMenuIconImageName";
  v32[2] = @"kPHCarPlayMenuItemControllerName";
  v32[3] = @"kPHCarPlayMenuItemDeepLinkScheme";
  v33[2] = @"PHCarPlayDialerViewController";
  v33[3] = @"mobilephone-keypad";
  v10 = [NSDictionary dictionaryWithObjects:v33 forKeys:v32 count:4];
  v11 = [NSMutableDictionary dictionaryWithDictionary:v10];
  v40[3] = v11;
  v12 = [NSArray arrayWithObjects:v40 count:4];

  if ((v9 & 1) == 0)
  {
  }

  v13 = &swift_dynamicCastClassUnconditional_ptr;
  if (PHShouldHideVoicemailUI())
  {
    v14 = v12;
    v15 = selfCopy;
  }

  else
  {
    v30[0] = @"kPHCarPlayMenuItemTitle";
    v16 = _UISolariumEnabled();
    v15 = selfCopy;
    if (v16)
    {
      v17 = &stru_10028F310;
    }

    else
    {
      v13 = [NSBundle bundleForClass:objc_opt_class()];
      v17 = [v13 localizedStringForKey:@"VOICEMAIL" value:&stru_10028F310 table:@"PHCarPlay"];
    }

    v31[0] = v17;
    v31[1] = @"recordingtape";
    v30[1] = @"kPHCarPlayMenuIconImageName";
    v30[2] = @"kPHCarPlayMenuItemControllerName";
    v30[3] = @"kPHCarPlayMenuItemDeepLinkScheme";
    v31[2] = @"PHCarPlayVoicemailViewController";
    v31[3] = @"vmshow";
    v18 = [NSDictionary dictionaryWithObjects:v31 forKeys:v30 count:4];
    v19 = [NSMutableDictionary dictionaryWithDictionary:v18];
    v14 = [v12 arrayByAddingObject:v19];

    if ((v16 & 1) == 0)
    {
    }
  }

  v20 = [NSMutableArray arrayWithArray:v14];
  [(PHCarPlayMainMenuContainerViewController *)v15 setRootViewControllerDictionaries:v20];
}

- (id)navigationItem
{
  selectedViewController = [(PHCarPlayMainMenuContainerViewController *)self selectedViewController];
  v3SelectedViewController = [selectedViewController selectedViewController];
  navigationItem = [v3SelectedViewController navigationItem];

  if (!navigationItem)
  {
    v7.receiver = self;
    v7.super_class = PHCarPlayMainMenuContainerViewController;
    navigationItem = [(PHCarPlayMainMenuContainerViewController *)&v7 navigationItem];
  }

  return navigationItem;
}

- (id)preferredFocusEnvironments
{
  selectedViewController = [(PHCarPlayMainMenuContainerViewController *)self selectedViewController];

  if (selectedViewController)
  {
    selectedViewController2 = [(PHCarPlayMainMenuContainerViewController *)self selectedViewController];
    v8 = selectedViewController2;
    preferredFocusEnvironments = [NSArray arrayWithObjects:&v8 count:1];
  }

  else
  {
    v7.receiver = self;
    v7.super_class = PHCarPlayMainMenuContainerViewController;
    preferredFocusEnvironments = [(PHCarPlayMainMenuContainerViewController *)&v7 preferredFocusEnvironments];
  }

  return preferredFocusEnvironments;
}

@end