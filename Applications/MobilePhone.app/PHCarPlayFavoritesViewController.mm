@interface PHCarPlayFavoritesViewController
- (PHCarPlayFavoritesViewController)init;
- (id)audioFavoritesEntryForFavoritesEntry:(id)entry;
- (id)avatarViewContactForFavoritesEntry:(id)entry;
- (id)favoritesEntryAtIndex:(int64_t)index;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (id)titleForNoContentBanner;
- (id)transportNameForFavoritesEntry:(id)entry;
- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section;
- (void)dealloc;
- (void)handleTPFavoritesControllerFavoritesEntriesDidChangeNotification:(id)notification;
- (void)programmaticallySelectRowAtIndexPath:(id)path;
- (void)reloadDataForFavoritesEntries:(id)entries;
- (void)setFavoritesEntries:(id)entries completionHandler:(id)handler;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation PHCarPlayFavoritesViewController

- (PHCarPlayFavoritesViewController)init
{
  v12.receiver = self;
  v12.super_class = PHCarPlayFavoritesViewController;
  v2 = [(PHCarPlayGenericTableViewController *)&v12 init];
  if (v2)
  {
    v3 = +[(PHApplicationServices *)MPApplicationServices];
    callProviderManager = [v3 callProviderManager];
    v5 = *(v2 + 65);
    *(v2 + 65) = callProviderManager;

    favoritesController = [v3 favoritesController];
    v7 = *(v2 + 49);
    *(v2 + 49) = favoritesController;

    v8 = objc_alloc_init(NSMutableDictionary);
    v9 = *(v2 + 73);
    *(v2 + 73) = v8;

    v10 = +[NSNotificationCenter defaultCenter];
    [v10 addObserver:v2 selector:"handleTPFavoritesControllerFavoritesEntriesDidChangeNotification:" name:TPFavoritesControllerFavoritesEntriesDidChangeNotification object:0];
  }

  return v2;
}

- (void)viewWillAppear:(BOOL)appear
{
  v9.receiver = self;
  v9.super_class = PHCarPlayFavoritesViewController;
  [(PHCarPlayGenericTableViewController *)&v9 viewWillAppear:appear];
  favoritesController = [(PHCarPlayFavoritesViewController *)self favoritesController];
  favoritesEntries = [favoritesController favoritesEntries];

  if (favoritesEntries)
  {
    favoritesEntries2 = [(PHCarPlayFavoritesViewController *)self favoritesEntries];

    if (favoritesEntries2)
    {
      return;
    }

    favoritesController2 = [(PHCarPlayFavoritesViewController *)self favoritesController];
    favoritesEntries3 = [favoritesController2 favoritesEntries];
    [(PHCarPlayFavoritesViewController *)self reloadDataForFavoritesEntries:favoritesEntries3];
  }

  else
  {
    favoritesController2 = [(PHCarPlayFavoritesViewController *)self favoritesController];
    [favoritesController2 fetchIfNeeded];
  }
}

- (void)dealloc
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = PHCarPlayFavoritesViewController;
  [(PHCarPlayGenericTableViewController *)&v4 dealloc];
}

- (void)setFavoritesEntries:(id)entries completionHandler:(id)handler
{
  entriesCopy = entries;
  handlerCopy = handler;
  v7 = entriesCopy;
  v8 = handlerCopy;
  if (*(&self->_favoritesController + 1) == entriesCopy || entriesCopy && (v9 = [(TPFavoritesController *)entriesCopy isEqualToArray:?], v7 = entriesCopy, (v9 & 1) != 0))
  {
    v10 = 0;
    if (!v8)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v11 = [(TPFavoritesController *)v7 copy];
  v12 = *(&self->_favoritesController + 1);
  *(&self->_favoritesController + 1) = v11;

  v10 = 1;
  if (v8)
  {
LABEL_5:
    v8[2](v8, v10);
  }

LABEL_6:
}

- (void)handleTPFavoritesControllerFavoritesEntriesDidChangeNotification:(id)notification
{
  object = [notification object];
  if (object)
  {
    v6 = object;
    favoritesEntries = [object favoritesEntries];
    [(PHCarPlayFavoritesViewController *)self reloadDataForFavoritesEntries:favoritesEntries];

    object = v6;
  }
}

- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section
{
  v5 = [(PHCarPlayFavoritesViewController *)self favoritesEntries:view];
  v6 = [v5 count];

  [(PHCarPlayGenericTableViewController *)self setNoContentBannerShown:v6 == 0];
  return v6;
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  pathCopy = path;
  viewCopy = view;
  v8 = objc_opt_class();
  v9 = NSStringFromClass(v8);
  v10 = [viewCopy dequeueReusableCellWithIdentifier:v9 forIndexPath:pathCopy];

  if (pathCopy)
  {
    v11 = -[PHCarPlayFavoritesViewController favoritesEntryAtIndex:](self, "favoritesEntryAtIndex:", [pathCopy row]);
    if (v11)
    {
      v12 = v11;
      v13 = [(PHCarPlayFavoritesViewController *)self avatarViewContactForFavoritesEntry:v11];
      [v10 setContact:v13];

      name = [v12 name];
      [v10 setFavoriteName:name];

      callProviderManager = [(PHCarPlayFavoritesViewController *)self callProviderManager];
      v16 = [callProviderManager providerForFavoritesEntry:v12];

      if (v16)
      {
        if ([v16 isTelephonyProvider])
        {
          localizedContactPropertyLabel = [v12 localizedContactPropertyLabel];
        }

        else
        {
          isFaceTimeProvider = [v16 isFaceTimeProvider];
          v19 = CNActionTypeVideoCall;
          actionType = [v12 actionType];
          v21 = [v19 isEqualToString:actionType];

          if (isFaceTimeProvider)
          {
            v22 = +[NSBundle mainBundle];
            v23 = v22;
            if (v21)
            {
              v24 = @"FAVORITES_ALERT_ACTION_TITLE_FACETIME_VIDEO";
            }

            else
            {
              v24 = @"FAVORITES_ALERT_ACTION_TITLE_FACETIME_AUDIO";
            }

            localizedContactPropertyLabel = [v22 localizedStringForKey:v24 value:&stru_10028F310 table:@"Favorites"];
          }

          else
          {
            if (v21)
            {
              v25 = @"FAVORITES_CALL_PROVIDER_NAME_%@_CALL_TYPE_VIDEO";
            }

            else
            {
              v25 = @"FAVORITES_CALL_PROVIDER_NAME_%@_CALL_TYPE_AUDIO";
            }

            v26 = +[NSBundle mainBundle];
            v27 = [v26 localizedStringForKey:v25 value:&stru_10028F310 table:@"Favorites"];
            localizedName = [v16 localizedName];
            localizedContactPropertyLabel = [NSString stringWithFormat:v27, localizedName];
          }
        }
      }

      else
      {
        localizedContactPropertyLabel = 0;
      }

      [v10 setPhoneNumberType:localizedContactPropertyLabel];
    }
  }

  return v10;
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  pathCopy = path;
  [view deselectRowAtIndexPath:pathCopy animated:1];
  [(PHCarPlayFavoritesViewController *)self programmaticallySelectRowAtIndexPath:pathCopy];
}

- (void)programmaticallySelectRowAtIndexPath:(id)path
{
  pathCopy = path;
  v5 = PHDefaultLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v13 = pathCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%@", buf, 0xCu);
  }

  v6 = -[PHCarPlayFavoritesViewController favoritesEntryAtIndex:](self, "favoritesEntryAtIndex:", [pathCopy row]);
  v7 = PHDefaultLog();
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
  if (v6)
  {
    if (v8)
    {
      *buf = 138412290;
      v13 = v6;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Retrieving an audio favorite for favorite (%@).", buf, 0xCu);
    }

    v9 = [(PHCarPlayFavoritesViewController *)self audioFavoritesEntryForFavoritesEntry:v6];

    if (v9)
    {
      v10[0] = _NSConcreteStackBlock;
      v10[1] = 3221225472;
      v10[2] = __73__PHCarPlayFavoritesViewController_programmaticallySelectRowAtIndexPath___block_invoke;
      v10[3] = &unk_100285568;
      v11 = v9;
      v7 = v9;
      [v7 performActionWithCompletion:v10];
    }

    else
    {
      v7 = PHDefaultLog();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        [PHCarPlayFavoritesViewController programmaticallySelectRowAtIndexPath:v7];
      }
    }
  }

  else if (v8)
  {
    *buf = 138412290;
    v13 = pathCopy;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "[WARN] Could not retrieve a favorite at index path (%@).", buf, 0xCu);
  }
}

void __73__PHCarPlayFavoritesViewController_programmaticallySelectRowAtIndexPath___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = PHDefaultLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __73__PHCarPlayFavoritesViewController_programmaticallySelectRowAtIndexPath___block_invoke_cold_1(a1, v3, v4);
    }
  }
}

- (id)titleForNoContentBanner
{
  v2 = [NSBundle bundleForClass:objc_opt_class()];
  v3 = [v2 localizedStringForKey:@"NO FAVORITES" value:&stru_10028F310 table:@"PHCarPlay"];

  return v3;
}

- (void)viewDidLoad
{
  v8.receiver = self;
  v8.super_class = PHCarPlayFavoritesViewController;
  [(PHCarPlayGenericViewController *)&v8 viewDidLoad];
  mainTableView = [(PHCarPlayGenericTableViewController *)self mainTableView];
  v4 = objc_opt_class();
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  [mainTableView registerClass:v4 forCellReuseIdentifier:v6];

  mainTableView2 = [(PHCarPlayGenericTableViewController *)self mainTableView];
  [mainTableView2 setRowHeight:UITableViewAutomaticDimension];
}

- (id)audioFavoritesEntryForFavoritesEntry:(id)entry
{
  entryCopy = entry;
  v5 = CNActionTypeAudioCall;
  actionType = [entryCopy actionType];
  v7 = [v5 isEqualToString:actionType];

  if (v7)
  {
    v8 = entryCopy;
  }

  else
  {
    v9 = CNActionTypeVideoCall;
    actionType2 = [entryCopy actionType];
    LODWORD(v9) = [v9 isEqualToString:actionType2];

    if (v9)
    {
      v20 = [CNFavoritesEntry alloc];
      contactProperty = [entryCopy contactProperty];
      contact = [contactProperty contact];
      contactProperty2 = [entryCopy contactProperty];
      v13 = [contactProperty2 key];
      contactProperty3 = [entryCopy contactProperty];
      identifier = [contactProperty3 identifier];
      bundleIdentifier = [entryCopy bundleIdentifier];
      favoritesController = [(PHCarPlayFavoritesViewController *)self favoritesController];
      contactStore = [favoritesController contactStore];
      v8 = [v20 initWithContact:contact propertyKey:v13 labeledValueIdentifier:identifier actionType:v5 bundleIdentifier:bundleIdentifier store:contactStore];
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

- (id)avatarViewContactForFavoritesEntry:(id)entry
{
  entryCopy = entry;
  favoritesController = [(PHCarPlayFavoritesViewController *)self favoritesController];
  v6 = [favoritesController contactForFavoritesEntry:entryCopy];

  return v6;
}

- (id)favoritesEntryAtIndex:(int64_t)index
{
  favoritesEntries = [(PHCarPlayFavoritesViewController *)self favoritesEntries];
  v5 = favoritesEntries;
  if (index < 0 || [favoritesEntries count] <= index)
  {
    v6 = 0;
  }

  else
  {
    v6 = [v5 objectAtIndexedSubscript:index];
  }

  return v6;
}

- (void)reloadDataForFavoritesEntries:(id)entries
{
  entriesCopy = entries;
  objc_initWeak(&location, self);
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = __66__PHCarPlayFavoritesViewController_reloadDataForFavoritesEntries___block_invoke;
  v5[3] = &unk_100286790;
  objc_copyWeak(&v6, &location);
  [(PHCarPlayFavoritesViewController *)self setFavoritesEntries:entriesCopy completionHandler:v5];
  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);
}

void __66__PHCarPlayFavoritesViewController_reloadDataForFavoritesEntries___block_invoke(uint64_t a1, int a2)
{
  if (a2)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    if (WeakRetained)
    {
      v4 = WeakRetained;
      if ([WeakRetained viewIsInAppearedState])
      {
        v3 = [v4 mainTableView];
        [v3 reloadData];
      }

      else
      {
        [v4 setTableViewReloadIsRequiredOnViewWillAppear:1];
      }

      WeakRetained = v4;
    }
  }
}

- (id)transportNameForFavoritesEntry:(id)entry
{
  entryCopy = entry;
  transportNameCache = [(PHCarPlayFavoritesViewController *)self transportNameCache];
  bundleIdentifier = [entryCopy bundleIdentifier];
  v7 = [transportNameCache objectForKeyedSubscript:bundleIdentifier];

  if (v7 && [v7 length])
  {
    localizedBundleName = v7;
  }

  else
  {
    localizedBundleName = [entryCopy localizedBundleName];

    if (localizedBundleName && [localizedBundleName length])
    {
      transportNameCache2 = [(PHCarPlayFavoritesViewController *)self transportNameCache];
      bundleIdentifier2 = [entryCopy bundleIdentifier];
      [transportNameCache2 setObject:localizedBundleName forKeyedSubscript:bundleIdentifier2];
    }
  }

  v11 = CNActionBundleIdentifierPhone;
  bundleIdentifier3 = [entryCopy bundleIdentifier];
  LOBYTE(v11) = [v11 isEqualToString:bundleIdentifier3];

  if ((v11 & 1) == 0)
  {
    v13 = CNActionTypeAudioCall;
    actionType = [entryCopy actionType];
    LOBYTE(v13) = [v13 isEqualToString:actionType];

    if (v13)
    {
      v15 = @"FAVORITES_CALL_PROVIDER_NAME_%@_CALL_TYPE_AUDIO";
    }

    else
    {
      v16 = CNActionTypeVideoCall;
      actionType2 = [entryCopy actionType];
      LODWORD(v16) = [v16 isEqualToString:actionType2];

      if (v16)
      {
        v15 = @"FAVORITES_CALL_PROVIDER_NAME_%@_CALL_TYPE_VIDEO";
      }

      else
      {
        v15 = 0;
      }
    }

    v18 = +[NSBundle mainBundle];
    v19 = [v18 localizedStringForKey:v15 value:&stru_10028F310 table:@"Favorites"];
    v20 = [NSString stringWithFormat:v19, localizedBundleName];

    localizedBundleName = v20;
  }

  return localizedBundleName;
}

void __73__PHCarPlayFavoritesViewController_programmaticallySelectRowAtIndexPath___block_invoke_cold_1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v3 = *(a1 + 32);
  v4 = 138412546;
  v5 = v3;
  v6 = 2112;
  v7 = a2;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "Could not open the specified favorite (%@) due to an error (%@).", &v4, 0x16u);
}

@end