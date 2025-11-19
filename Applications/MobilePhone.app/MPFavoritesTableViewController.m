@interface MPFavoritesTableViewController
+ ($1FF454C5B48E436092D281DABF654916)badge;
+ (id)moveObjectAtIndex:(unint64_t)a3 toIndex:(unint64_t)a4 inArray:(id)a5;
- (BOOL)shouldNavigationControllerPresentLargeTitles;
- (BOOL)shouldSnapshot;
- (CNAvatarViewControllerSettings)avatarViewControllerSettings;
- (MPFavoritesTableViewController)init;
- (MPFavoritesTableViewController)initWithCoder:(id)a3;
- (MPFavoritesTableViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (MPFavoritesTableViewController)initWithStyle:(int64_t)a3;
- (MPFavoritesTableViewController)initWithStyle:(int64_t)a3 favoritesController:(id)a4;
- (UIBarButtonItem)addButtonItem;
- (id)contactCacheKeyForFavoritesEntry:(id)a3;
- (id)favoritesEntryAtIndex:(int64_t)a3;
- (id)favoritesEntryPickerContactForContact:(id)a3 contactStore:(id)a4;
- (id)tabBarIconName;
- (id)tabBarSystemItemTitle;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4;
- (void)addButtonAction:(id)a3;
- (void)commonInit;
- (void)contactPicker:(id)a3 didSelectContact:(id)a4;
- (void)contactPickerDidCancel:(id)a3;
- (void)dealloc;
- (void)favoritesEntryPicker:(id)a3 didPickEntry:(id)a4;
- (void)handleTPFavoritesControllerFavoritesEntriesDidChangeNotification:(id)a3;
- (void)handleUIApplicationWillEnterForegroundNotification:(id)a3;
- (void)handleUIContentSizeCategoryDidChangeNotification:(id)a3;
- (void)makeUIForDefaultPNG;
- (void)postCNContactsClientDidDisplayFavoritesNotification;
- (void)presentContactPickerViewControllerAnimated:(BOOL)a3 completion:(id)a4;
- (void)refreshView;
- (void)reloadDataIfNeeded;
- (void)reloadDataSource;
- (void)removeFavoriteEntryAtIndexPath:(id)a3;
- (void)setEditing:(BOOL)a3 animated:(BOOL)a4;
- (void)setNavigationItemsForEditing:(BOOL)a3 animated:(BOOL)a4;
- (void)setShouldShowAddButtonItem:(BOOL)a3 animated:(BOOL)a4;
- (void)tableView:(id)a3 accessoryButtonTappedForRowWithIndexPath:(id)a4;
- (void)tableView:(id)a3 commitEditingStyle:(int64_t)a4 forRowAtIndexPath:(id)a5;
- (void)tableView:(id)a3 didEndDisplayingCell:(id)a4 forRowAtIndexPath:(id)a5;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)tableView:(id)a3 moveRowAtIndexPath:(id)a4 toIndexPath:(id)a5;
- (void)tableView:(id)a3 prefetchRowsAtIndexPaths:(id)a4;
- (void)tableView:(id)a3 willDisplayCell:(id)a4 forRowAtIndexPath:(id)a5;
- (void)tipKitActionFavoriteAdded;
- (void)tipKitLogAnalyticsAddFavoritesEvent;
- (void)tipKitStartObservation;
- (void)tipKitStopObservation;
- (void)updateTableViewCell:(id)a3 withContactUsingFavoritesEntry:(id)a4;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidLoad;
- (void)viewIsAppearing:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
@end

@implementation MPFavoritesTableViewController

- (MPFavoritesTableViewController)initWithStyle:(int64_t)a3 favoritesController:(id)a4
{
  v7 = a4;
  v14.receiver = self;
  v14.super_class = MPFavoritesTableViewController;
  v8 = [(PHTableViewController *)&v14 initWithStyle:a3];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_favoritesController, a4);
    v10 = dispatch_queue_create("com.apple.mobilephone.favorites", 0);
    contactsQueue = v9->_contactsQueue;
    v9->_contactsQueue = v10;

    v12 = +[NSNotificationCenter defaultCenter];
    [v12 addObserver:v9 selector:"handleTPFavoritesControllerFavoritesEntriesDidChangeNotification:" name:TPFavoritesControllerFavoritesEntriesDidChangeNotification object:v9->_favoritesController];
  }

  return v9;
}

- (MPFavoritesTableViewController)init
{
  [(MPFavoritesTableViewController *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (MPFavoritesTableViewController)initWithCoder:(id)a3
{
  [(MPFavoritesTableViewController *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (MPFavoritesTableViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  [(MPFavoritesTableViewController *)self doesNotRecognizeSelector:a2, a4];

  return 0;
}

- (MPFavoritesTableViewController)initWithStyle:(int64_t)a3
{
  [(MPFavoritesTableViewController *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (void)commonInit
{
  v5.receiver = self;
  v5.super_class = MPFavoritesTableViewController;
  [(PHTableViewController *)&v5 commonInit];
  v3 = objc_alloc_init(NSCache);
  contactCache = self->_contactCache;
  self->_contactCache = v3;

  self->_shouldShowAddButtonItem = 0;
}

- (void)dealloc
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = MPFavoritesTableViewController;
  [(PHTableViewController *)&v4 dealloc];
}

- (CNAvatarViewControllerSettings)avatarViewControllerSettings
{
  avatarViewControllerSettings = self->_avatarViewControllerSettings;
  if (!avatarViewControllerSettings)
  {
    v4 = [(MPFavoritesTableViewController *)self favoritesController];
    v5 = [v4 contactStore];
    v6 = [CNAvatarViewControllerSettings settingsWithContactStore:v5 threeDTouchEnabled:1];
    v7 = self->_avatarViewControllerSettings;
    self->_avatarViewControllerSettings = v6;

    avatarViewControllerSettings = self->_avatarViewControllerSettings;
  }

  return avatarViewControllerSettings;
}

- (void)viewDidLoad
{
  v34.receiver = self;
  v34.super_class = MPFavoritesTableViewController;
  [(PHTableViewController *)&v34 viewDidLoad];
  v3 = [(MPFavoritesTableViewController *)self tableView];
  [v3 setRowHeight:UITableViewAutomaticDimension];

  v4 = [(MPFavoritesTableViewController *)self tableView];
  [v4 setSeparatorInsetReference:1];

  v5 = +[UIApplication sharedApplication];
  v6 = [v5 preferredContentSizeCategory];
  [(PHContactTableViewCell *)MPFavoritesTableViewCell separatorInsetForContentSizeCategory:v6];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v15 = [(MPFavoritesTableViewController *)self tableView];
  [v15 setSeparatorInset:{v8, v10, v12, v14}];

  +[(PHContactTableViewCell *)MPFavoritesTableViewCell];
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v24 = [(MPFavoritesTableViewController *)self tableView];
  [v24 setContentInset:{v17, v19, v21, v23}];

  v25 = [(MPFavoritesTableViewController *)self tableView];
  v26 = objc_opt_class();
  v27 = +[(PHTableViewCell *)MPFavoritesTableViewCell];
  [v25 registerClass:v26 forCellReuseIdentifier:v27];

  v28 = +[NSBundle mainBundle];
  v29 = [v28 localizedStringForKey:@"FAVORITES_CONTENT_UNAVAILABLE_VIEW_TITLE" value:&stru_10028F310 table:@"Favorites"];
  [(PHTableViewController *)self setContentUnavailableViewTitle:v29];

  v30 = +[NSBundle mainBundle];
  v31 = [v30 localizedStringForKey:@"FAVORITES_TITLE" value:&stru_10028F310 table:@"Favorites"];
  [(MPFavoritesTableViewController *)self setTitle:v31];

  if (+[UIApplication shouldMakeUIForDefaultPNG])
  {
    [(MPFavoritesTableViewController *)self makeUIForDefaultPNG];
  }

  v32 = objc_alloc_init(TUFeatureFlags);
  featureFlags = self->_featureFlags;
  self->_featureFlags = v32;
}

- (void)viewIsAppearing:(BOOL)a3
{
  v17.receiver = self;
  v17.super_class = MPFavoritesTableViewController;
  [(MPFavoritesTableViewController *)&v17 viewIsAppearing:a3];
  v4 = objc_alloc_init(TUFeatureFlags);
  v5 = [v4 nameAndPhotoEnabledC3];

  if (v5)
  {
    v6 = PHDefaultLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v16 = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Going to present CNKCNSharedProfileOnboardingController on launch", v16, 2u);
    }

    v7 = [(MPFavoritesTableViewController *)self onboardingController];

    if (!v7)
    {
      v8 = objc_opt_new();
      [(MPFavoritesTableViewController *)self setOnboardingController:v8];
    }

    v9 = [(MPFavoritesTableViewController *)self onboardingController];
    v10 = +[TUCallCenter sharedInstance];
    v11 = [v10 contactStore];
    [v9 presentOnboardingControllerOnLaunchIfNeededFrom:self withContactStore:v11];
  }

  v12 = [(MPFavoritesTableViewController *)self favoritesEntries];

  if (!v12)
  {
    v13 = [(MPFavoritesTableViewController *)self favoritesController];
    v14 = [v13 favoritesEntries];

    if (v14)
    {
      [(PHTableViewController *)self setNeedsReloadData:1];
      [(MPFavoritesTableViewController *)self reloadDataIfNeeded];
    }

    else
    {
      v15 = [(MPFavoritesTableViewController *)self favoritesController];
      [v15 fetchIfNeeded];
    }
  }

  [(MPFavoritesTableViewController *)self postCNContactsClientDidDisplayFavoritesNotification];
  [(MPFavoritesTableViewController *)self tipKitStartObservation];
  [(MPFavoritesTableViewController *)self setViewHadAppeared:1];
}

- (void)viewDidAppear:(BOOL)a3
{
  v8.receiver = self;
  v8.super_class = MPFavoritesTableViewController;
  [(PHTableViewController *)&v8 viewDidAppear:a3];
  v4 = PHDefaultLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "MPFavoritesTableViewController viewDidAppear:", v7, 2u);
  }

  v5 = createPHPhoneTabBarControllerTabViewDidAppearNotificationInfo(1, self);
  v6 = +[NSNotificationCenter defaultCenter];
  [v6 postNotificationName:@"PHPhoneTabBarControllerTabViewDidAppearNotification" object:v5];
}

- (void)viewWillDisappear:(BOOL)a3
{
  v3 = a3;
  v5.receiver = self;
  v5.super_class = MPFavoritesTableViewController;
  [(PHTableViewController *)&v5 viewWillDisappear:?];
  if ([(MPFavoritesTableViewController *)self isEditing])
  {
    [(MPFavoritesTableViewController *)self setEditing:0 animated:v3];
  }

  [(MPFavoritesTableViewController *)self tipKitStopObservation];
}

- (void)setEditing:(BOOL)a3 animated:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  +[CATransaction begin];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = __54__MPFavoritesTableViewController_setEditing_animated___block_invoke;
  v10[3] = &unk_100284FD0;
  v10[4] = self;
  [CATransaction setCompletionBlock:v10];
  v9.receiver = self;
  v9.super_class = MPFavoritesTableViewController;
  [(MPFavoritesTableViewController *)&v9 setEditing:v5 animated:v4];
  [(MPFavoritesTableViewController *)self setNavigationItemsForEditing:v5 animated:v4];
  +[CATransaction commit];
  v7 = [(MPFavoritesTableViewController *)self tableView];
  [v7 beginUpdates];

  v8 = [(MPFavoritesTableViewController *)self tableView];
  [v8 endUpdates];
}

- (void)reloadDataIfNeeded
{
  if ([(PHTableViewController *)self needsReloadData])
  {
    v3 = [(MPFavoritesTableViewController *)self tableView];
    v4 = [(PHTableViewController *)self tableViewCanPerformReloadData:v3];

    if (v4)
    {
      [(MPFavoritesTableViewController *)self reloadDataSource];
      v5 = [(MPFavoritesTableViewController *)self favoritesEntries];

      if (v5)
      {
        [(MPFavoritesTableViewController *)self refreshView];
        [(PHTableViewController *)self setNeedsReloadData:0];

        [(PHTableViewController *)self updateTitleDisplayModeIfNeeded];
      }
    }
  }
}

- (BOOL)shouldNavigationControllerPresentLargeTitles
{
  v3 = [(MPFavoritesTableViewController *)self favoritesEntries];
  if (v3)
  {
    v4 = [(MPFavoritesTableViewController *)self favoritesEntries];
    v5 = [v4 count] != 0;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ ($1FF454C5B48E436092D281DABF654916)badge
{
  v2 = PhoneBadgeKnownZero[0];
  v3 = PhoneBadgeKnownZero[1];
  result.var1 = v3;
  result.var0 = v2;
  return result;
}

- (id)tabBarIconName
{
  v2 = +[NSBundle mainBundle];
  v3 = [v2 localizedStringForKey:@"FAVORITES_TITLE" value:&stru_10028F310 table:@"Favorites"];

  return v3;
}

- (BOOL)shouldSnapshot
{
  if (([(MPFavoritesTableViewController *)self isEditing]& 1) != 0)
  {
    return 0;
  }

  v4 = [(MPFavoritesTableViewController *)self navigationController];
  v5 = [v4 visibleViewController];
  v3 = v5 == self;

  return v3;
}

- (id)tabBarSystemItemTitle
{
  v2 = +[NSBundle mainBundle];
  v3 = [v2 localizedStringForKey:@"FAVORITES_TITLE" value:&stru_10028F310 table:@"Favorites"];

  return v3;
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = +[(PHTableViewCell *)MPFavoritesTableViewCell];
  v9 = [v6 dequeueReusableCellWithIdentifier:v8];

  v10 = [(MPFavoritesTableViewController *)self featureFlags];
  [v9 setTapTargets:{objc_msgSend(v10, "favoritesCallTapTargetsEnabled")}];

  v11 = +[NSUUID UUID];
  [v9 setUUID:v11];

  v12 = -[MPFavoritesTableViewController favoritesEntryAtIndex:](self, "favoritesEntryAtIndex:", [v7 row]);
  if (v12)
  {
    v13 = [v9 avatarViewController];
    if (!v13)
    {
      v14 = [CNAvatarViewController alloc];
      v15 = [(MPFavoritesTableViewController *)self avatarViewControllerSettings];
      v13 = [v14 initWithSettings:v15];

      [v13 setObjectViewControllerDelegate:self];
      [v9 setAvatarViewController:v13];
      v16 = [v9 avatarViewController];
      v17 = [v16 view];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      if (isKindOfClass)
      {
        v19 = [v9 avatarViewController];
        v20 = [v19 view];

        [v20 setAllowStaleRendering:1];
      }
    }

    v21 = [v12 actionType];
    [v9 setActionType:v21];

    v22 = [v12 name];
    v23 = [v9 titleLabel];
    [v23 setText:v22];

    v24 = [(MPFavoritesTableViewController *)self favoritesController];
    v25 = [v24 transportNameForFavoritesEntry:v12];
    v26 = [v9 subtitleLabel];
    [v26 setText:v25];

    v27 = [v12 contactProperty];
    v28 = [v27 contact];

    if (v28)
    {
      v29 = [v12 contactProperty];
      v30 = [v29 contact];
      v45 = v30;
      v31 = [NSArray arrayWithObjects:&v45 count:1];
      v32 = [v9 avatarViewController];
      [v32 setContacts:v31];
    }

    else
    {
      v33 = [v9 avatarViewController];
      [v33 setContacts:&__NSArray0__struct];
    }

    v34 = [(MPFavoritesTableViewController *)self featureFlags];
    v35 = [v34 favoritesCallTapTargetsEnabled];

    if (v35 && (objc_opt_respondsToSelector() & 1) != 0)
    {
      objc_initWeak(&location, self);
      v37 = _NSConcreteStackBlock;
      v38 = 3221225472;
      v39 = __66__MPFavoritesTableViewController_tableView_cellForRowAtIndexPath___block_invoke;
      v40 = &unk_100285C30;
      objc_copyWeak(&v43, &location);
      v41 = v7;
      v42 = v6;
      [v9 setActionButtonTappedHandler:&v37];

      objc_destroyWeak(&v43);
      objc_destroyWeak(&location);
    }

    [(MPFavoritesTableViewController *)self updateTableViewCell:v9 withContactUsingFavoritesEntry:v12, v37, v38, v39, v40];
  }

  return v9;
}

void __66__MPFavoritesTableViewController_tableView_cellForRowAtIndexPath___block_invoke(id *a1)
{
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  if (WeakRetained)
  {
    v3 = a1[4];
    if (v3)
    {
      if ([v3 row] != 0x7FFFFFFFFFFFFFFFLL)
      {
        v4 = [WeakRetained favoritesEntryAtIndex:{objc_msgSend(a1[4], "row")}];
        if (v4)
        {
          v7[0] = _NSConcreteStackBlock;
          v7[1] = 3221225472;
          v7[2] = __66__MPFavoritesTableViewController_tableView_cellForRowAtIndexPath___block_invoke_2;
          v7[3] = &unk_100285C08;
          v8 = a1[5];
          v9 = a1[4];
          v10 = v4;
          [v10 performActionWithCompletion:v7];

          v5 = v8;
        }

        else
        {
          [a1[5] deselectRowAtIndexPath:a1[4] animated:0];
          v5 = PHDefaultLog();
          if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
          {
            v6 = a1[4];
            *buf = 138412290;
            v12 = v6;
            _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "[WARN] Could not retrieve a favorite at index path (%@).", buf, 0xCu);
          }
        }
      }
    }
  }
}

void __66__MPFavoritesTableViewController_tableView_cellForRowAtIndexPath___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = __66__MPFavoritesTableViewController_tableView_cellForRowAtIndexPath___block_invoke_3;
  v5[3] = &unk_1002852E0;
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  dispatch_async(&_dispatch_main_q, v5);
  if (v3)
  {
    v4 = PHDefaultLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __66__MPFavoritesTableViewController_tableView_cellForRowAtIndexPath___block_invoke_2_cold_1();
    }
  }
}

- (void)updateTableViewCell:(id)a3 withContactUsingFavoritesEntry:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 UUID];
  objc_initWeak(&location, self);
  v9 = [(MPFavoritesTableViewController *)self contactsQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = __85__MPFavoritesTableViewController_updateTableViewCell_withContactUsingFavoritesEntry___block_invoke;
  block[3] = &unk_1002854F8;
  objc_copyWeak(&v17, &location);
  v14 = v7;
  v15 = v6;
  v16 = v8;
  v10 = v8;
  v11 = v6;
  v12 = v7;
  dispatch_async(v9, block);

  objc_destroyWeak(&v17);
  objc_destroyWeak(&location);
}

void __85__MPFavoritesTableViewController_updateTableViewCell_withContactUsingFavoritesEntry___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = [WeakRetained favoritesController];
    v5 = [v4 contactForFavoritesEntry:*(a1 + 32)];

    if (!v5)
    {
      v5 = objc_alloc_init(CNContact);
    }

    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = __85__MPFavoritesTableViewController_updateTableViewCell_withContactUsingFavoritesEntry___block_invoke_2;
    block[3] = &unk_1002853E8;
    v8 = *(a1 + 40);
    v9 = *(a1 + 48);
    v10 = v5;
    v6 = v5;
    dispatch_async(&_dispatch_main_q, block);
  }
}

void __85__MPFavoritesTableViewController_updateTableViewCell_withContactUsingFavoritesEntry___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) UUID];
  v3 = [v2 isEqual:*(a1 + 40)];

  if (v3)
  {
    v4 = [*(a1 + 32) avatarViewController];
    v5 = [v4 view];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v7 = [*(a1 + 32) avatarViewController];
      v8 = [v7 view];

      v9 = [*(a1 + 48) identifier];
      [v8 setContextToken:v9];
    }

    v12 = *(a1 + 48);
    v10 = [NSArray arrayWithObjects:&v12 count:1];
    v11 = [*(a1 + 32) avatarViewController];
    [v11 setContacts:v10];
  }
}

- (void)tableView:(id)a3 commitEditingStyle:(int64_t)a4 forRowAtIndexPath:(id)a5
{
  if (a4 == 1)
  {
    [(MPFavoritesTableViewController *)self removeFavoriteEntryAtIndexPath:a5];
  }
}

- (void)tableView:(id)a3 moveRowAtIndexPath:(id)a4 toIndexPath:(id)a5
{
  if (a4 && a5)
  {
    v7 = a5;
    v8 = [a4 row];
    v9 = [v7 row];

    v10 = [(MPFavoritesTableViewController *)self favoritesEntries];
    v13 = [MPFavoritesTableViewController moveObjectAtIndex:v8 toIndex:v9 inArray:v10];

    v11 = v13;
    if (v13)
    {
      [(MPFavoritesTableViewController *)self setFavoritesEntries:v13];
      v12 = [(MPFavoritesTableViewController *)self favoritesController];
      [v12 moveEntryAtIndex:v8 toIndex:v9];

      v11 = v13;
    }
  }
}

+ (id)moveObjectAtIndex:(unint64_t)a3 toIndex:(unint64_t)a4 inArray:(id)a5
{
  v7 = a5;
  if ([v7 count] <= a3)
  {
    v9 = 0;
  }

  else
  {
    v8 = [v7 count];
    v9 = 0;
    if (a3 != a4 && v8 > a4)
    {
      v9 = [v7 mutableCopy];
      v10 = [v9 objectAtIndex:a3];
      [v9 removeObjectAtIndex:a3];
      if ([v9 count] <= a4)
      {
        [v9 addObject:v10];
      }

      else
      {
        [v9 insertObject:v10 atIndex:a4];
      }
    }
  }

  return v9;
}

- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4
{
  v4 = [(MPFavoritesTableViewController *)self favoritesEntries:a3];
  v5 = [v4 count];

  return v5;
}

- (void)tableView:(id)a3 prefetchRowsAtIndexPaths:(id)a4
{
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  obj = a4;
  v5 = [obj countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v20;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v20 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v19 + 1) + 8 * i);
        v10 = -[MPFavoritesTableViewController favoritesEntryAtIndex:](self, "favoritesEntryAtIndex:", [v9 row]);
        v11 = v10;
        if (v10)
        {
          v17[0] = _NSConcreteStackBlock;
          v17[1] = 3221225472;
          v17[2] = __69__MPFavoritesTableViewController_tableView_prefetchRowsAtIndexPaths___block_invoke;
          v17[3] = &unk_1002852E0;
          v17[4] = self;
          v18 = v10;
          v12 = [NSBlockOperation blockOperationWithBlock:v17];
          v13 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v9 hash]);
          v14 = [NSString stringWithFormat:@"%@", v13];
          [v12 setName:v14];

          v15 = [(PHTableViewController *)self dataSourcePrefetchingOperationQueue];
          [v15 addOperation:v12];
        }
      }

      v6 = [obj countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v6);
  }
}

void __69__MPFavoritesTableViewController_tableView_prefetchRowsAtIndexPaths___block_invoke(uint64_t a1)
{
  v5 = [*(a1 + 32) favoritesController];
  v2 = [v5 contactForFavoritesEntry:*(a1 + 40)];
  v3 = [v5 transportNameForFavoritesEntry:*(a1 + 40)];
  v4 = [*(a1 + 40) name];
}

- (void)tableView:(id)a3 willDisplayCell:(id)a4 forRowAtIndexPath:(id)a5
{
  v16.receiver = self;
  v16.super_class = MPFavoritesTableViewController;
  v8 = a5;
  [(PHTableViewController *)&v16 tableView:a3 willDisplayCell:a4 forRowAtIndexPath:v8];
  v9 = [v8 row];

  v10 = [(MPFavoritesTableViewController *)self favoritesEntryAtIndex:v9];
  v11 = v10;
  if (v10)
  {
    v12 = [v10 contactProperty];
    v13 = [v12 contact];

    if (v13)
    {
      v14 = [(MPFavoritesTableViewController *)self contactCache];
      v15 = [(MPFavoritesTableViewController *)self contactCacheKeyForFavoritesEntry:v11];
      [v14 setObject:v13 forKey:v15];
    }
  }
}

- (void)tableView:(id)a3 didEndDisplayingCell:(id)a4 forRowAtIndexPath:(id)a5
{
  v13.receiver = self;
  v13.super_class = MPFavoritesTableViewController;
  v8 = a5;
  [(PHTableViewController *)&v13 tableView:a3 didEndDisplayingCell:a4 forRowAtIndexPath:v8];
  v9 = [v8 row];

  v10 = [(MPFavoritesTableViewController *)self favoritesEntryAtIndex:v9];
  if (v10)
  {
    v11 = [(MPFavoritesTableViewController *)self contactCache];
    v12 = [(MPFavoritesTableViewController *)self contactCacheKeyForFavoritesEntry:v10];
    [v11 removeObjectForKey:v12];
  }
}

- (void)tableView:(id)a3 accessoryButtonTappedForRowWithIndexPath:(id)a4
{
  v5 = -[MPFavoritesTableViewController favoritesEntryAtIndex:](self, "favoritesEntryAtIndex:", [a4 row]);
  if (v5)
  {
    v6 = [(MPFavoritesTableViewController *)self favoritesController];
    v7 = +[CNContactViewController descriptorForRequiredKeys];
    v15 = v7;
    v8 = [NSArray arrayWithObjects:&v15 count:1];
    v9 = [v6 contactForFavoritesEntry:v5 keyDescriptors:v8];

    if (v9)
    {
      v10 = [CNContactViewController viewControllerForContact:v9];
      v11 = v10;
      if (v10)
      {
        [v10 setAllowsActions:1];
        [v11 setActions:{objc_msgSend(v11, "actions") | 0x80}];
        v12 = [(MPFavoritesTableViewController *)self avatarViewControllerSettings];
        v13 = [v12 contactStore];
        [v11 setContactStore:v13];

        v14 = [(MPFavoritesTableViewController *)self navigationController];
        [v14 pushViewController:v11 animated:1];
      }
    }
  }
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(MPFavoritesTableViewController *)self featureFlags];
  v9 = [v8 favoritesCallTapTargetsEnabled];

  if (v9)
  {
    v10 = -[MPFavoritesTableViewController favoritesEntryAtIndex:](self, "favoritesEntryAtIndex:", [v7 row]);
    if (v10)
    {
      v11 = [(MPFavoritesTableViewController *)self favoritesController];
      v12 = +[CNContactViewController descriptorForRequiredKeys];
      v27 = v12;
      v13 = [NSArray arrayWithObjects:&v27 count:1];
      v14 = [v11 contactForFavoritesEntry:v10 keyDescriptors:v13];

      if (v14)
      {
        v15 = [CNContactViewController viewControllerForContact:v14];
        v16 = v15;
        if (v15)
        {
          [v15 setAllowsActions:1];
          [v16 setActions:{objc_msgSend(v16, "actions") | 0x80}];
          v17 = [(MPFavoritesTableViewController *)self avatarViewControllerSettings];
          v18 = [v17 contactStore];
          [v16 setContactStore:v18];

          v19 = [(MPFavoritesTableViewController *)self navigationController];
          [v19 pushViewController:v16 animated:1];
        }
      }
    }

    [v6 deselectRowAtIndexPath:v7 animated:0];
LABEL_16:

    goto LABEL_17;
  }

  if (v7 && [v7 row] != 0x7FFFFFFFFFFFFFFFLL)
  {
    v10 = -[MPFavoritesTableViewController favoritesEntryAtIndex:](self, "favoritesEntryAtIndex:", [v7 row]);
    if (v10)
    {
      v21[0] = _NSConcreteStackBlock;
      v21[1] = 3221225472;
      v21[2] = __68__MPFavoritesTableViewController_tableView_didSelectRowAtIndexPath___block_invoke;
      v21[3] = &unk_100285C08;
      v22 = v6;
      v23 = v7;
      v24 = v10;
      [v24 performActionWithCompletion:v21];

      v20 = v22;
    }

    else
    {
      [v6 deselectRowAtIndexPath:v7 animated:0];
      v20 = PHDefaultLog();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v26 = v7;
        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "[WARN] Could not retrieve a favorite at index path (%@).", buf, 0xCu);
      }
    }

    goto LABEL_16;
  }

LABEL_17:
}

void __68__MPFavoritesTableViewController_tableView_didSelectRowAtIndexPath___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = __68__MPFavoritesTableViewController_tableView_didSelectRowAtIndexPath___block_invoke_2;
  v5[3] = &unk_1002852E0;
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  dispatch_async(&_dispatch_main_q, v5);
  if (v3)
  {
    v4 = PHDefaultLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __66__MPFavoritesTableViewController_tableView_cellForRowAtIndexPath___block_invoke_2_cold_1();
    }
  }
}

- (UIBarButtonItem)addButtonItem
{
  addButtonItem = self->_addButtonItem;
  if (!addButtonItem)
  {
    v4 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:4 target:self action:"addButtonAction:"];
    v5 = self->_addButtonItem;
    self->_addButtonItem = v4;

    addButtonItem = self->_addButtonItem;
  }

  return addButtonItem;
}

- (void)presentContactPickerViewControllerAnimated:(BOOL)a3 completion:(id)a4
{
  v4 = a3;
  v14 = a4;
  v6 = [(MPFavoritesTableViewController *)self navigationController];
  if (v6)
  {
    v7 = v6;
    v8 = [v6 presentedViewController];
    if (v8)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v9 = v8;

        v7 = v9;
      }
    }

    v10 = objc_alloc_init(CNContactPickerViewController);
    [v10 setAllowsEditing:0];
    [v10 setAutocloses:0];
    [v10 setDelegate:self];
    [v10 setHidesSearchableSources:1];
    [v10 setMode:2];
    [v10 setOnlyRealContacts:1];
    v11 = [NSPredicate predicateWithFormat:@"emailAddresses.@count > 0 OR instantMessageAddresses.@count > 0 OR phoneNumbers.@count > 0 OR socialProfiles.@count > 0"];
    [v10 setPredicateForEnablingContact:v11];

    v12 = +[NSBundle mainBundle];
    v13 = [v12 localizedStringForKey:@"FAVORITES_CONTACT_PICKER_VIEW_CONTROLLER_PROMPT" value:&stru_10028F310 table:@"Favorites"];
    [v10 setPrompt:v13];

    [v10 setDefinesPresentationContext:0];
    [v7 presentViewController:v10 animated:v4 completion:v14];
  }
}

- (void)setShouldShowAddButtonItem:(BOOL)a3 animated:(BOOL)a4
{
  if (self->_shouldShowAddButtonItem != a3)
  {
    v5 = a4;
    self->_shouldShowAddButtonItem = a3;
    v7 = [(MPFavoritesTableViewController *)self isEditing];

    [(MPFavoritesTableViewController *)self setNavigationItemsForEditing:v7 animated:v5];
  }
}

- (void)addButtonAction:(id)a3
{
  [(MPFavoritesTableViewController *)self tipKitStopObservation];

  [(MPFavoritesTableViewController *)self presentContactPickerViewControllerAnimated:1 completion:0];
}

- (id)contactCacheKeyForFavoritesEntry:(id)a3
{
  v3 = a3;
  v4 = [v3 contactProperty];
  v5 = [v4 contact];
  v6 = [v5 identifier];
  v7 = v6;
  if (v6)
  {
    v8 = v6;
  }

  else
  {
    v9 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v3 hash]);
    v8 = [NSString stringWithFormat:@"%@", v9];
  }

  return v8;
}

- (id)favoritesEntryAtIndex:(int64_t)a3
{
  v4 = [(MPFavoritesTableViewController *)self favoritesEntries];
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

- (id)favoritesEntryPickerContactForContact:(id)a3 contactStore:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = +[CNUIFavoritesEntryPicker descriptorForRequiredKeys];
  v23 = v7;
  v8 = [NSArray arrayWithObjects:&v23 count:1];

  if ([v5 areKeysAvailable:v8])
  {
    v9 = v5;
  }

  else
  {
    v10 = [NSMutableArray arrayWithArray:v8];
    v11 = [v5 availableKeyDescriptor];
    if (v11)
    {
      [v10 addObject:v11];
    }

    v12 = [v5 identifier];
    v16 = 0;
    v9 = [v6 unifiedContactWithIdentifier:v12 keysToFetch:v10 error:&v16];
    v13 = v16;

    if (!v9)
    {
      v14 = PHDefaultLog();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412802;
        v18 = v5;
        v19 = 2112;
        v20 = v6;
        v21 = 2112;
        v22 = v13;
        _os_log_error_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "Could not retrieve a compatible contact using contact (%@) and contact store (%@) due to an error (%@).", buf, 0x20u);
      }
    }
  }

  return v9;
}

- (void)postCNContactsClientDidDisplayFavoritesNotification
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();

  CFNotificationCenterPostNotification(DarwinNotifyCenter, @"com.apple.contacts.clientDidDisplayFavorites", 0, 0, 0);
}

- (void)removeFavoriteEntryAtIndexPath:(id)a3
{
  v4 = a3;
  v5 = [(MPFavoritesTableViewController *)self tableView];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = __65__MPFavoritesTableViewController_removeFavoriteEntryAtIndexPath___block_invoke;
  v9[3] = &unk_1002852E0;
  v9[4] = self;
  v10 = v4;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = __65__MPFavoritesTableViewController_removeFavoriteEntryAtIndexPath___block_invoke_2;
  v7[3] = &unk_100285C58;
  v7[4] = self;
  v8 = v10;
  v6 = v10;
  [v5 performBatchUpdates:v9 completion:v7];
}

void __65__MPFavoritesTableViewController_removeFavoriteEntryAtIndexPath___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) favoritesEntries];
  v3 = [v2 mutableCopy];

  [v3 removeObjectAtIndex:{objc_msgSend(*(a1 + 40), "row")}];
  [*(a1 + 32) setFavoritesEntries:v3];
  v4 = [*(a1 + 32) tableView];
  v6 = *(a1 + 40);
  v5 = [NSArray arrayWithObjects:&v6 count:1];
  [v4 deleteRowsAtIndexPaths:v5 withRowAnimation:100];
}

void __65__MPFavoritesTableViewController_removeFavoriteEntryAtIndexPath___block_invoke_2(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
    v3 = PHDefaultLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "The delete animations were interrupted before they could complete successfully.", v8, 2u);
    }
  }

  v4 = [*(a1 + 32) favoritesEntries];
  v5 = [v4 count];

  if (!v5)
  {
    [*(a1 + 32) setEditing:0 animated:1];
    [*(a1 + 32) setContentUnavailable:1 animated:1];
  }

  v6 = [*(a1 + 32) favoritesController];
  v7 = +[NSIndexSet indexSetWithIndex:](NSIndexSet, "indexSetWithIndex:", [*(a1 + 40) row]);
  [v6 removeEntriesAtIndexes:v7];
}

- (void)contactPickerDidCancel:(id)a3
{
  v4 = [(MPFavoritesTableViewController *)self navigationController];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = __57__MPFavoritesTableViewController_contactPickerDidCancel___block_invoke;
  v5[3] = &unk_100284FD0;
  v5[4] = self;
  [v4 dismissViewControllerAnimated:1 completion:v5];
}

- (void)contactPicker:(id)a3 didSelectContact:(id)a4
{
  v14 = a3;
  v6 = a4;
  [v14 invalidateSelectionAnimated:1];
  v7 = [(MPFavoritesTableViewController *)self favoritesController];
  v8 = [v7 contactStore];
  v9 = [(MPFavoritesTableViewController *)self favoritesEntryPickerContactForContact:v6 contactStore:v8];

  if (v9)
  {
    v10 = [[CNUIFavoritesEntryPicker alloc] initWithContact:v6];
    [(MPFavoritesTableViewController *)self setFavoritesEntryPicker:v10];

    v11 = [(MPFavoritesTableViewController *)self favoritesEntryPicker];
    [v11 setDelegate:self];

    v12 = [(MPFavoritesTableViewController *)self favoritesEntryPicker];
    v13 = [v12 viewController];
    [v14 presentViewController:v13 animated:1 completion:0];
  }
}

- (void)favoritesEntryPicker:(id)a3 didPickEntry:(id)a4
{
  v5 = a4;
  v6 = PHDefaultLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v19 = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Favorite was picked: %@", buf, 0xCu);
  }

  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = __68__MPFavoritesTableViewController_favoritesEntryPicker_didPickEntry___block_invoke;
  v17[3] = &unk_100284FD0;
  v17[4] = self;
  v7 = objc_retainBlock(v17);
  v8 = [(MPFavoritesTableViewController *)self favoritesEntries];
  v9 = [v8 containsObject:v5];

  if (v9)
  {
    v10 = PHDefaultLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v19 = v5;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Not adding favorites entry as it exists already: %@", buf, 0xCu);
    }

    (v7[2])(v7);
  }

  else
  {
    if ([(PHTableViewController *)self contentUnavailable])
    {
      [(PHTableViewController *)self setContentUnavailable:0 animated:0];
      [(MPFavoritesTableViewController *)self setNavigationItemsForEditing:[(MPFavoritesTableViewController *)self isEditing] animated:0];
    }

    v11 = [(MPFavoritesTableViewController *)self tableView];
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = __68__MPFavoritesTableViewController_favoritesEntryPicker_didPickEntry___block_invoke_3;
    v15[3] = &unk_1002852E0;
    v15[4] = self;
    v16 = v5;
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = __68__MPFavoritesTableViewController_favoritesEntryPicker_didPickEntry___block_invoke_4;
    v12[3] = &unk_100285C80;
    v12[4] = self;
    v13 = v16;
    v14 = v7;
    [v11 performBatchUpdates:v15 completion:v12];
  }
}

id __68__MPFavoritesTableViewController_favoritesEntryPicker_didPickEntry___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = __68__MPFavoritesTableViewController_favoritesEntryPicker_didPickEntry___block_invoke_2;
  v3[3] = &unk_100284FD0;
  v3[4] = v1;
  return [v1 dismissViewControllerAnimated:1 completion:v3];
}

void __68__MPFavoritesTableViewController_favoritesEntryPicker_didPickEntry___block_invoke_3(uint64_t a1)
{
  v2 = [*(a1 + 32) favoritesEntries];
  v3 = [v2 count];

  v4 = [NSIndexPath indexPathForItem:v3 inSection:0];
  v5 = [*(a1 + 32) favoritesEntries];
  v6 = [v5 arrayByAddingObject:*(a1 + 40)];
  [*(a1 + 32) setFavoritesEntries:v6];

  v7 = [*(a1 + 32) tableView];
  v9 = v4;
  v8 = [NSArray arrayWithObjects:&v9 count:1];
  [v7 insertRowsAtIndexPaths:v8 withRowAnimation:100];
}

uint64_t __68__MPFavoritesTableViewController_favoritesEntryPicker_didPickEntry___block_invoke_4(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
    v3 = PHDefaultLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "The insert animations were interrupted before they could complete successfully.", v6, 2u);
    }
  }

  [*(a1 + 32) tipKitActionFavoriteAdded];
  v4 = [*(a1 + 32) favoritesController];
  [v4 addEntry:*(a1 + 40)];

  return (*(*(a1 + 48) + 16))();
}

- (void)handleTPFavoritesControllerFavoritesEntriesDidChangeNotification:(id)a3
{
  v4 = [a3 object];
  v5 = v4;
  if (v4)
  {
    -[MPFavoritesTableViewController setShouldShowAddButtonItem:](self, "setShouldShowAddButtonItem:", [v4 canAddEntry]);
    v6 = [v5 favoritesEntries];
    v7 = [v6 count];
    v8 = [(MPFavoritesTableViewController *)self favoritesEntries];
    v9 = [v8 count];

    if (v7 == v9)
    {
      v31 = v5;
      v10 = [(MPFavoritesTableViewController *)self tableView];
      v11 = [v10 indexPathsForVisibleRows];

      v32 = objc_alloc_init(NSMutableArray);
      v36 = 0u;
      v37 = 0u;
      v38 = 0u;
      v39 = 0u;
      obj = v11;
      v12 = [obj countByEnumeratingWithState:&v36 objects:v40 count:16];
      if (v12)
      {
        v13 = v12;
        v34 = *v37;
        while (2)
        {
          for (i = 0; i != v13; i = i + 1)
          {
            if (*v37 != v34)
            {
              objc_enumerationMutation(obj);
            }

            v15 = *(*(&v36 + 1) + 8 * i);
            v16 = [v6 objectAtIndexedSubscript:{objc_msgSend(v15, "row")}];
            v17 = -[MPFavoritesTableViewController favoritesEntryAtIndex:](self, "favoritesEntryAtIndex:", [v15 row]);
            v18 = [v17 isEqual:v16];

            if (!v18)
            {
              [(PHTableViewController *)self setNeedsReloadData:1];

              goto LABEL_18;
            }

            v19 = v6;
            v20 = [(MPFavoritesTableViewController *)self contactCacheKeyForFavoritesEntry:v16];
            v21 = [v16 contactProperty];
            v22 = [v21 contact];

            v23 = [(MPFavoritesTableViewController *)self contactCache];
            v24 = [v23 objectForKey:v20];

            if (v22 && ([v22 isEqualIgnoringIdentifiers:v24] & 1) == 0)
            {
              [v32 addObject:v15];
              v25 = [(MPFavoritesTableViewController *)self contactCache];
              [v25 setObject:v22 forKey:v20];
            }

            v6 = v19;
          }

          v13 = [obj countByEnumeratingWithState:&v36 objects:v40 count:16];
          if (v13)
          {
            continue;
          }

          break;
        }
      }

LABEL_18:

      v5 = v31;
      if (!-[PHTableViewController needsReloadData](self, "needsReloadData") && [v32 count])
      {
        v29 = PHDefaultLog();
        if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "Update Favorite Cells", buf, 2u);
        }

        v30 = [(MPFavoritesTableViewController *)self tableView];
        [v30 reconfigureRowsAtIndexPaths:v32];
      }
    }

    else
    {
      [(PHTableViewController *)self setNeedsReloadData:[(MPFavoritesTableViewController *)self viewHadAppeared]];
      v26 = [v6 count];
      v27 = [(MPFavoritesTableViewController *)self favoritesEntries];
      v28 = [v27 count];

      if (v26 > v28)
      {
        [(MPFavoritesTableViewController *)self tipKitLogAnalyticsAddFavoritesEvent];
      }
    }

    [(MPFavoritesTableViewController *)self reloadDataIfNeeded];
  }
}

- (void)handleUIApplicationWillEnterForegroundNotification:(id)a3
{
  v4 = a3;
  v5 = PHDefaultLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v9 = objc_opt_class();
    v10 = 2112;
    v11 = v4;
    v6 = v9;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%@ is handling <%@>", buf, 0x16u);
  }

  v7.receiver = self;
  v7.super_class = MPFavoritesTableViewController;
  [(PHTableViewController *)&v7 handleUIApplicationWillEnterForegroundNotification:v4];
  [(MPFavoritesTableViewController *)self postCNContactsClientDidDisplayFavoritesNotification];
}

- (void)handleUIContentSizeCategoryDidChangeNotification:(id)a3
{
  v12.receiver = self;
  v12.super_class = MPFavoritesTableViewController;
  v4 = a3;
  [(PHTableViewController *)&v12 handleUIContentSizeCategoryDidChangeNotification:v4];
  v5 = [v4 userInfo];

  v6 = [v5 objectForKeyedSubscript:UIContentSizeCategoryNewValueKey];

  v7 = [(MPFavoritesTableViewController *)self tableView];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = __83__MPFavoritesTableViewController_handleUIContentSizeCategoryDidChangeNotification___block_invoke_2;
  v9[3] = &unk_100285C58;
  v10 = v6;
  v11 = self;
  v8 = v6;
  [v7 performBatchUpdates:&__block_literal_global_10 completion:v9];
}

void __83__MPFavoritesTableViewController_handleUIContentSizeCategoryDidChangeNotification___block_invoke_2(uint64_t a1)
{
  if (*(a1 + 32))
  {
    [(PHContactTableViewCell *)MPFavoritesTableViewCell separatorInsetForContentSizeCategory:?];
    v3 = v2;
    v5 = v4;
    v7 = v6;
    v9 = v8;
    v10 = [*(a1 + 40) tableView];
    [v10 setSeparatorInset:{v3, v5, v7, v9}];
  }
}

- (void)makeUIForDefaultPNG
{
  v6.receiver = self;
  v6.super_class = MPFavoritesTableViewController;
  [(PHTableViewController *)&v6 makeUIForDefaultPNG];
  v3 = [(MPFavoritesTableViewController *)self favoritesEntries];
  v4 = [v3 count];

  if (!v4)
  {
    v5 = [(PHTableViewController *)self contentUnavailableView];
    [v5 setTitle:0];
  }
}

- (void)reloadDataSource
{
  v3 = [(MPFavoritesTableViewController *)self favoritesController];
  v4 = [v3 favoritesEntries];
  v5 = [v4 mutableCopy];
  [(MPFavoritesTableViewController *)self setFavoritesEntries:v5];

  v6 = [(MPFavoritesTableViewController *)self favoritesController];
  -[MPFavoritesTableViewController setShouldShowAddButtonItem:](self, "setShouldShowAddButtonItem:", [v6 canAddEntry]);

  v7 = [(MPFavoritesTableViewController *)self favoritesEntries];
  -[MPFavoritesTableViewController tipKitSetNumberOfFavorites:](self, "tipKitSetNumberOfFavorites:", [v7 count]);
}

- (void)refreshView
{
  [(MPFavoritesTableViewController *)self view];
  if (objc_claimAutoreleasedReturnValue() && [(MPFavoritesTableViewController *)self isViewLoaded])
  {
    v3 = [(MPFavoritesTableViewController *)self favoritesEntries];
    -[PHTableViewController setContentUnavailable:animated:](self, "setContentUnavailable:animated:", [v3 count] == 0, 0);
    [(MPFavoritesTableViewController *)self setNavigationItemsForEditing:[(MPFavoritesTableViewController *)self isEditing] animated:0];
    v4 = [(MPFavoritesTableViewController *)self tableView];
    [v4 reloadData];
  }

  _objc_release_x1();
}

- (void)setNavigationItemsForEditing:(BOOL)a3 animated:(BOOL)a4
{
  v4 = a4;
  v6 = [(MPFavoritesTableViewController *)self navigationItem];
  if (v6)
  {
    v12 = v6;
    if ([(MPFavoritesTableViewController *)self isViewLoaded])
    {
      v7 = [(MPFavoritesTableViewController *)self favoritesEntries];
      if (([(MPFavoritesTableViewController *)self isEditing]& 1) != 0 || ![(MPFavoritesTableViewController *)self shouldShowAddButtonItem])
      {
        v8 = 0;
      }

      else
      {
        v8 = [(MPFavoritesTableViewController *)self addButtonItem];
      }

      if ([v7 count])
      {
        v9 = [(MPFavoritesTableViewController *)self editButtonItem];
      }

      else
      {
        v9 = 0;
      }

      v10 = [v12 leftBarButtonItem];

      if (v10 != v9)
      {
        [v12 setLeftBarButtonItem:v9 animated:v4];
      }

      v11 = [v12 rightBarButtonItem];

      if (v11 != v8)
      {
        [v12 setRightBarButtonItem:v8 animated:v4];
      }
    }
  }

  _objc_release_x1();
}

- (void)tipKitStartObservation
{
  type metadata accessor for TPTipsHelper();
  v3 = self;
  static TPTipsHelper.taskQueue.getter();
  swift_allocObject();
  swift_unknownObjectWeakInit();

  dispatch thunk of TaskQueue.async(_:)();
}

- (void)tipKitStopObservation
{
  v2 = self;
  specialized MPFavoritesTableViewController.dismissPopover()();
  type metadata accessor for TPTipsHelper();
  static TPTipsHelper.taskQueue.getter();
  dispatch thunk of TaskQueue.async(_:)();
}

- (void)tipKitLogAnalyticsAddFavoritesEvent
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd);
  __chkstk_darwin(v2 - 8);
  v4 = &v8 - v3;
  v5 = type metadata accessor for TaskPriority();
  (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
  type metadata accessor for MainActor();
  v6 = static MainActor.shared.getter();
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  *(v7 + 24) = &protocol witness table for MainActor;
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v4, &closure #1 in MPFavoritesTableViewController.tipKitLogAnalyticsAddFavoritesEvent()partial apply, v7);
}

- (void)tipKitActionFavoriteAdded
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s6TipKit4TipsO5EventVy_AC13EmptyDonationVGMd);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v14 - v4;
  v6 = type metadata accessor for Tips.InvalidationReason();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for FavoritesTip();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v14 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  FavoritesTip.init()();
  (*(v7 + 104))(v9, enum case for Tips.InvalidationReason.actionPerformed(_:), v6);
  lazy protocol witness table accessor for type FavoritesTip and conformance FavoritesTip();
  Tip.invalidate(reason:)();
  (*(v7 + 8))(v9, v6);
  (*(v11 + 8))(v13, v10);
  static FavoritesTip.favoriteAddedEvent.getter();
  Tips.Event.sendDonation<>(_:)();
  (*(v3 + 8))(v5, v2);
}

@end