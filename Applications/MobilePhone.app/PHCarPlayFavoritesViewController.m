@interface PHCarPlayFavoritesViewController
- (PHCarPlayFavoritesViewController)init;
- (id)audioFavoritesEntryForFavoritesEntry:(id)a3;
- (id)avatarViewContactForFavoritesEntry:(id)a3;
- (id)favoritesEntryAtIndex:(int64_t)a3;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (id)titleForNoContentBanner;
- (id)transportNameForFavoritesEntry:(id)a3;
- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4;
- (void)dealloc;
- (void)handleTPFavoritesControllerFavoritesEntriesDidChangeNotification:(id)a3;
- (void)programmaticallySelectRowAtIndexPath:(id)a3;
- (void)reloadDataForFavoritesEntries:(id)a3;
- (void)setFavoritesEntries:(id)a3 completionHandler:(id)a4;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
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
    v4 = [v3 callProviderManager];
    v5 = *(v2 + 65);
    *(v2 + 65) = v4;

    v6 = [v3 favoritesController];
    v7 = *(v2 + 49);
    *(v2 + 49) = v6;

    v8 = objc_alloc_init(NSMutableDictionary);
    v9 = *(v2 + 73);
    *(v2 + 73) = v8;

    v10 = +[NSNotificationCenter defaultCenter];
    [v10 addObserver:v2 selector:"handleTPFavoritesControllerFavoritesEntriesDidChangeNotification:" name:TPFavoritesControllerFavoritesEntriesDidChangeNotification object:0];
  }

  return v2;
}

- (void)viewWillAppear:(BOOL)a3
{
  v9.receiver = self;
  v9.super_class = PHCarPlayFavoritesViewController;
  [(PHCarPlayGenericTableViewController *)&v9 viewWillAppear:a3];
  v4 = [(PHCarPlayFavoritesViewController *)self favoritesController];
  v5 = [v4 favoritesEntries];

  if (v5)
  {
    v6 = [(PHCarPlayFavoritesViewController *)self favoritesEntries];

    if (v6)
    {
      return;
    }

    v7 = [(PHCarPlayFavoritesViewController *)self favoritesController];
    v8 = [v7 favoritesEntries];
    [(PHCarPlayFavoritesViewController *)self reloadDataForFavoritesEntries:v8];
  }

  else
  {
    v7 = [(PHCarPlayFavoritesViewController *)self favoritesController];
    [v7 fetchIfNeeded];
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

- (void)setFavoritesEntries:(id)a3 completionHandler:(id)a4
{
  v13 = a3;
  v6 = a4;
  v7 = v13;
  v8 = v6;
  if (*(&self->_favoritesController + 1) == v13 || v13 && (v9 = [(TPFavoritesController *)v13 isEqualToArray:?], v7 = v13, (v9 & 1) != 0))
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

- (void)handleTPFavoritesControllerFavoritesEntriesDidChangeNotification:(id)a3
{
  v4 = [a3 object];
  if (v4)
  {
    v6 = v4;
    v5 = [v4 favoritesEntries];
    [(PHCarPlayFavoritesViewController *)self reloadDataForFavoritesEntries:v5];

    v4 = v6;
  }
}

- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4
{
  v5 = [(PHCarPlayFavoritesViewController *)self favoritesEntries:a3];
  v6 = [v5 count];

  [(PHCarPlayGenericTableViewController *)self setNoContentBannerShown:v6 == 0];
  return v6;
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = objc_opt_class();
  v9 = NSStringFromClass(v8);
  v10 = [v7 dequeueReusableCellWithIdentifier:v9 forIndexPath:v6];

  if (v6)
  {
    v11 = -[PHCarPlayFavoritesViewController favoritesEntryAtIndex:](self, "favoritesEntryAtIndex:", [v6 row]);
    if (v11)
    {
      v12 = v11;
      v13 = [(PHCarPlayFavoritesViewController *)self avatarViewContactForFavoritesEntry:v11];
      [v10 setContact:v13];

      v14 = [v12 name];
      [v10 setFavoriteName:v14];

      v15 = [(PHCarPlayFavoritesViewController *)self callProviderManager];
      v16 = [v15 providerForFavoritesEntry:v12];

      if (v16)
      {
        if ([v16 isTelephonyProvider])
        {
          v17 = [v12 localizedContactPropertyLabel];
        }

        else
        {
          v18 = [v16 isFaceTimeProvider];
          v19 = CNActionTypeVideoCall;
          v20 = [v12 actionType];
          v21 = [v19 isEqualToString:v20];

          if (v18)
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

            v17 = [v22 localizedStringForKey:v24 value:&stru_10028F310 table:@"Favorites"];
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
            v28 = [v16 localizedName];
            v17 = [NSString stringWithFormat:v27, v28];
          }
        }
      }

      else
      {
        v17 = 0;
      }

      [v10 setPhoneNumberType:v17];
    }
  }

  return v10;
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v6 = a4;
  [a3 deselectRowAtIndexPath:v6 animated:1];
  [(PHCarPlayFavoritesViewController *)self programmaticallySelectRowAtIndexPath:v6];
}

- (void)programmaticallySelectRowAtIndexPath:(id)a3
{
  v4 = a3;
  v5 = PHDefaultLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v13 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%@", buf, 0xCu);
  }

  v6 = -[PHCarPlayFavoritesViewController favoritesEntryAtIndex:](self, "favoritesEntryAtIndex:", [v4 row]);
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
    v13 = v4;
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
  v3 = [(PHCarPlayGenericTableViewController *)self mainTableView];
  v4 = objc_opt_class();
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  [v3 registerClass:v4 forCellReuseIdentifier:v6];

  v7 = [(PHCarPlayGenericTableViewController *)self mainTableView];
  [v7 setRowHeight:UITableViewAutomaticDimension];
}

- (id)audioFavoritesEntryForFavoritesEntry:(id)a3
{
  v4 = a3;
  v5 = CNActionTypeAudioCall;
  v6 = [v4 actionType];
  v7 = [v5 isEqualToString:v6];

  if (v7)
  {
    v8 = v4;
  }

  else
  {
    v9 = CNActionTypeVideoCall;
    v10 = [v4 actionType];
    LODWORD(v9) = [v9 isEqualToString:v10];

    if (v9)
    {
      v20 = [CNFavoritesEntry alloc];
      v21 = [v4 contactProperty];
      v11 = [v21 contact];
      v12 = [v4 contactProperty];
      v13 = [v12 key];
      v14 = [v4 contactProperty];
      v15 = [v14 identifier];
      v16 = [v4 bundleIdentifier];
      v17 = [(PHCarPlayFavoritesViewController *)self favoritesController];
      v18 = [v17 contactStore];
      v8 = [v20 initWithContact:v11 propertyKey:v13 labeledValueIdentifier:v15 actionType:v5 bundleIdentifier:v16 store:v18];
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

- (id)avatarViewContactForFavoritesEntry:(id)a3
{
  v4 = a3;
  v5 = [(PHCarPlayFavoritesViewController *)self favoritesController];
  v6 = [v5 contactForFavoritesEntry:v4];

  return v6;
}

- (id)favoritesEntryAtIndex:(int64_t)a3
{
  v4 = [(PHCarPlayFavoritesViewController *)self favoritesEntries];
  v5 = v4;
  if (a3 < 0 || [v4 count] <= a3)
  {
    v6 = 0;
  }

  else
  {
    v6 = [v5 objectAtIndexedSubscript:a3];
  }

  return v6;
}

- (void)reloadDataForFavoritesEntries:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = __66__PHCarPlayFavoritesViewController_reloadDataForFavoritesEntries___block_invoke;
  v5[3] = &unk_100286790;
  objc_copyWeak(&v6, &location);
  [(PHCarPlayFavoritesViewController *)self setFavoritesEntries:v4 completionHandler:v5];
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

- (id)transportNameForFavoritesEntry:(id)a3
{
  v4 = a3;
  v5 = [(PHCarPlayFavoritesViewController *)self transportNameCache];
  v6 = [v4 bundleIdentifier];
  v7 = [v5 objectForKeyedSubscript:v6];

  if (v7 && [v7 length])
  {
    v8 = v7;
  }

  else
  {
    v8 = [v4 localizedBundleName];

    if (v8 && [v8 length])
    {
      v9 = [(PHCarPlayFavoritesViewController *)self transportNameCache];
      v10 = [v4 bundleIdentifier];
      [v9 setObject:v8 forKeyedSubscript:v10];
    }
  }

  v11 = CNActionBundleIdentifierPhone;
  v12 = [v4 bundleIdentifier];
  LOBYTE(v11) = [v11 isEqualToString:v12];

  if ((v11 & 1) == 0)
  {
    v13 = CNActionTypeAudioCall;
    v14 = [v4 actionType];
    LOBYTE(v13) = [v13 isEqualToString:v14];

    if (v13)
    {
      v15 = @"FAVORITES_CALL_PROVIDER_NAME_%@_CALL_TYPE_AUDIO";
    }

    else
    {
      v16 = CNActionTypeVideoCall;
      v17 = [v4 actionType];
      LODWORD(v16) = [v16 isEqualToString:v17];

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
    v20 = [NSString stringWithFormat:v19, v8];

    v8 = v20;
  }

  return v8;
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