@interface MPFavoritesTableViewController
+ ($1FF454C5B48E436092D281DABF654916)badge;
+ (id)moveObjectAtIndex:(unint64_t)index toIndex:(unint64_t)toIndex inArray:(id)array;
- (BOOL)shouldNavigationControllerPresentLargeTitles;
- (BOOL)shouldSnapshot;
- (CNAvatarViewControllerSettings)avatarViewControllerSettings;
- (MPFavoritesTableViewController)init;
- (MPFavoritesTableViewController)initWithCoder:(id)coder;
- (MPFavoritesTableViewController)initWithNibName:(id)name bundle:(id)bundle;
- (MPFavoritesTableViewController)initWithStyle:(int64_t)style;
- (MPFavoritesTableViewController)initWithStyle:(int64_t)style favoritesController:(id)controller;
- (UIBarButtonItem)addButtonItem;
- (id)contactCacheKeyForFavoritesEntry:(id)entry;
- (id)favoritesEntryAtIndex:(int64_t)index;
- (id)favoritesEntryPickerContactForContact:(id)contact contactStore:(id)store;
- (id)tabBarIconName;
- (id)tabBarSystemItemTitle;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section;
- (void)addButtonAction:(id)action;
- (void)commonInit;
- (void)contactPicker:(id)picker didSelectContact:(id)contact;
- (void)contactPickerDidCancel:(id)cancel;
- (void)dealloc;
- (void)favoritesEntryPicker:(id)picker didPickEntry:(id)entry;
- (void)handleTPFavoritesControllerFavoritesEntriesDidChangeNotification:(id)notification;
- (void)handleUIApplicationWillEnterForegroundNotification:(id)notification;
- (void)handleUIContentSizeCategoryDidChangeNotification:(id)notification;
- (void)makeUIForDefaultPNG;
- (void)postCNContactsClientDidDisplayFavoritesNotification;
- (void)presentContactPickerViewControllerAnimated:(BOOL)animated completion:(id)completion;
- (void)refreshView;
- (void)reloadDataIfNeeded;
- (void)reloadDataSource;
- (void)removeFavoriteEntryAtIndexPath:(id)path;
- (void)setEditing:(BOOL)editing animated:(BOOL)animated;
- (void)setNavigationItemsForEditing:(BOOL)editing animated:(BOOL)animated;
- (void)setShouldShowAddButtonItem:(BOOL)item animated:(BOOL)animated;
- (void)tableView:(id)view accessoryButtonTappedForRowWithIndexPath:(id)path;
- (void)tableView:(id)view commitEditingStyle:(int64_t)style forRowAtIndexPath:(id)path;
- (void)tableView:(id)view didEndDisplayingCell:(id)cell forRowAtIndexPath:(id)path;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)tableView:(id)view moveRowAtIndexPath:(id)path toIndexPath:(id)indexPath;
- (void)tableView:(id)view prefetchRowsAtIndexPaths:(id)paths;
- (void)tableView:(id)view willDisplayCell:(id)cell forRowAtIndexPath:(id)path;
- (void)tipKitActionFavoriteAdded;
- (void)tipKitLogAnalyticsAddFavoritesEvent;
- (void)tipKitStartObservation;
- (void)tipKitStopObservation;
- (void)updateTableViewCell:(id)cell withContactUsingFavoritesEntry:(id)entry;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLoad;
- (void)viewIsAppearing:(BOOL)appearing;
- (void)viewWillDisappear:(BOOL)disappear;
@end

@implementation MPFavoritesTableViewController

- (MPFavoritesTableViewController)initWithStyle:(int64_t)style favoritesController:(id)controller
{
  controllerCopy = controller;
  v14.receiver = self;
  v14.super_class = MPFavoritesTableViewController;
  v8 = [(PHTableViewController *)&v14 initWithStyle:style];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_favoritesController, controller);
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

- (MPFavoritesTableViewController)initWithCoder:(id)coder
{
  [(MPFavoritesTableViewController *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (MPFavoritesTableViewController)initWithNibName:(id)name bundle:(id)bundle
{
  [(MPFavoritesTableViewController *)self doesNotRecognizeSelector:a2, bundle];

  return 0;
}

- (MPFavoritesTableViewController)initWithStyle:(int64_t)style
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
    favoritesController = [(MPFavoritesTableViewController *)self favoritesController];
    contactStore = [favoritesController contactStore];
    v6 = [CNAvatarViewControllerSettings settingsWithContactStore:contactStore threeDTouchEnabled:1];
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
  tableView = [(MPFavoritesTableViewController *)self tableView];
  [tableView setRowHeight:UITableViewAutomaticDimension];

  tableView2 = [(MPFavoritesTableViewController *)self tableView];
  [tableView2 setSeparatorInsetReference:1];

  v5 = +[UIApplication sharedApplication];
  preferredContentSizeCategory = [v5 preferredContentSizeCategory];
  [(PHContactTableViewCell *)MPFavoritesTableViewCell separatorInsetForContentSizeCategory:preferredContentSizeCategory];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  tableView3 = [(MPFavoritesTableViewController *)self tableView];
  [tableView3 setSeparatorInset:{v8, v10, v12, v14}];

  +[(PHContactTableViewCell *)MPFavoritesTableViewCell];
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v23 = v22;
  tableView4 = [(MPFavoritesTableViewController *)self tableView];
  [tableView4 setContentInset:{v17, v19, v21, v23}];

  tableView5 = [(MPFavoritesTableViewController *)self tableView];
  v26 = objc_opt_class();
  v27 = +[(PHTableViewCell *)MPFavoritesTableViewCell];
  [tableView5 registerClass:v26 forCellReuseIdentifier:v27];

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

- (void)viewIsAppearing:(BOOL)appearing
{
  v17.receiver = self;
  v17.super_class = MPFavoritesTableViewController;
  [(MPFavoritesTableViewController *)&v17 viewIsAppearing:appearing];
  v4 = objc_alloc_init(TUFeatureFlags);
  nameAndPhotoEnabledC3 = [v4 nameAndPhotoEnabledC3];

  if (nameAndPhotoEnabledC3)
  {
    v6 = PHDefaultLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v16 = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Going to present CNKCNSharedProfileOnboardingController on launch", v16, 2u);
    }

    onboardingController = [(MPFavoritesTableViewController *)self onboardingController];

    if (!onboardingController)
    {
      v8 = objc_opt_new();
      [(MPFavoritesTableViewController *)self setOnboardingController:v8];
    }

    onboardingController2 = [(MPFavoritesTableViewController *)self onboardingController];
    v10 = +[TUCallCenter sharedInstance];
    contactStore = [v10 contactStore];
    [onboardingController2 presentOnboardingControllerOnLaunchIfNeededFrom:self withContactStore:contactStore];
  }

  favoritesEntries = [(MPFavoritesTableViewController *)self favoritesEntries];

  if (!favoritesEntries)
  {
    favoritesController = [(MPFavoritesTableViewController *)self favoritesController];
    favoritesEntries2 = [favoritesController favoritesEntries];

    if (favoritesEntries2)
    {
      [(PHTableViewController *)self setNeedsReloadData:1];
      [(MPFavoritesTableViewController *)self reloadDataIfNeeded];
    }

    else
    {
      favoritesController2 = [(MPFavoritesTableViewController *)self favoritesController];
      [favoritesController2 fetchIfNeeded];
    }
  }

  [(MPFavoritesTableViewController *)self postCNContactsClientDidDisplayFavoritesNotification];
  [(MPFavoritesTableViewController *)self tipKitStartObservation];
  [(MPFavoritesTableViewController *)self setViewHadAppeared:1];
}

- (void)viewDidAppear:(BOOL)appear
{
  v8.receiver = self;
  v8.super_class = MPFavoritesTableViewController;
  [(PHTableViewController *)&v8 viewDidAppear:appear];
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

- (void)viewWillDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  v5.receiver = self;
  v5.super_class = MPFavoritesTableViewController;
  [(PHTableViewController *)&v5 viewWillDisappear:?];
  if ([(MPFavoritesTableViewController *)self isEditing])
  {
    [(MPFavoritesTableViewController *)self setEditing:0 animated:disappearCopy];
  }

  [(MPFavoritesTableViewController *)self tipKitStopObservation];
}

- (void)setEditing:(BOOL)editing animated:(BOOL)animated
{
  animatedCopy = animated;
  editingCopy = editing;
  +[CATransaction begin];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = __54__MPFavoritesTableViewController_setEditing_animated___block_invoke;
  v10[3] = &unk_100284FD0;
  v10[4] = self;
  [CATransaction setCompletionBlock:v10];
  v9.receiver = self;
  v9.super_class = MPFavoritesTableViewController;
  [(MPFavoritesTableViewController *)&v9 setEditing:editingCopy animated:animatedCopy];
  [(MPFavoritesTableViewController *)self setNavigationItemsForEditing:editingCopy animated:animatedCopy];
  +[CATransaction commit];
  tableView = [(MPFavoritesTableViewController *)self tableView];
  [tableView beginUpdates];

  tableView2 = [(MPFavoritesTableViewController *)self tableView];
  [tableView2 endUpdates];
}

- (void)reloadDataIfNeeded
{
  if ([(PHTableViewController *)self needsReloadData])
  {
    tableView = [(MPFavoritesTableViewController *)self tableView];
    v4 = [(PHTableViewController *)self tableViewCanPerformReloadData:tableView];

    if (v4)
    {
      [(MPFavoritesTableViewController *)self reloadDataSource];
      favoritesEntries = [(MPFavoritesTableViewController *)self favoritesEntries];

      if (favoritesEntries)
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
  favoritesEntries = [(MPFavoritesTableViewController *)self favoritesEntries];
  if (favoritesEntries)
  {
    favoritesEntries2 = [(MPFavoritesTableViewController *)self favoritesEntries];
    v5 = [favoritesEntries2 count] != 0;
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

  navigationController = [(MPFavoritesTableViewController *)self navigationController];
  visibleViewController = [navigationController visibleViewController];
  v3 = visibleViewController == self;

  return v3;
}

- (id)tabBarSystemItemTitle
{
  v2 = +[NSBundle mainBundle];
  v3 = [v2 localizedStringForKey:@"FAVORITES_TITLE" value:&stru_10028F310 table:@"Favorites"];

  return v3;
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  v8 = +[(PHTableViewCell *)MPFavoritesTableViewCell];
  v9 = [viewCopy dequeueReusableCellWithIdentifier:v8];

  featureFlags = [(MPFavoritesTableViewController *)self featureFlags];
  [v9 setTapTargets:{objc_msgSend(featureFlags, "favoritesCallTapTargetsEnabled")}];

  v11 = +[NSUUID UUID];
  [v9 setUUID:v11];

  v12 = -[MPFavoritesTableViewController favoritesEntryAtIndex:](self, "favoritesEntryAtIndex:", [pathCopy row]);
  if (v12)
  {
    avatarViewController = [v9 avatarViewController];
    if (!avatarViewController)
    {
      v14 = [CNAvatarViewController alloc];
      avatarViewControllerSettings = [(MPFavoritesTableViewController *)self avatarViewControllerSettings];
      avatarViewController = [v14 initWithSettings:avatarViewControllerSettings];

      [avatarViewController setObjectViewControllerDelegate:self];
      [v9 setAvatarViewController:avatarViewController];
      avatarViewController2 = [v9 avatarViewController];
      view = [avatarViewController2 view];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      if (isKindOfClass)
      {
        avatarViewController3 = [v9 avatarViewController];
        view2 = [avatarViewController3 view];

        [view2 setAllowStaleRendering:1];
      }
    }

    actionType = [v12 actionType];
    [v9 setActionType:actionType];

    name = [v12 name];
    titleLabel = [v9 titleLabel];
    [titleLabel setText:name];

    favoritesController = [(MPFavoritesTableViewController *)self favoritesController];
    v25 = [favoritesController transportNameForFavoritesEntry:v12];
    subtitleLabel = [v9 subtitleLabel];
    [subtitleLabel setText:v25];

    contactProperty = [v12 contactProperty];
    contact = [contactProperty contact];

    if (contact)
    {
      contactProperty2 = [v12 contactProperty];
      contact2 = [contactProperty2 contact];
      v45 = contact2;
      v31 = [NSArray arrayWithObjects:&v45 count:1];
      avatarViewController4 = [v9 avatarViewController];
      [avatarViewController4 setContacts:v31];
    }

    else
    {
      avatarViewController5 = [v9 avatarViewController];
      [avatarViewController5 setContacts:&__NSArray0__struct];
    }

    featureFlags2 = [(MPFavoritesTableViewController *)self featureFlags];
    favoritesCallTapTargetsEnabled = [featureFlags2 favoritesCallTapTargetsEnabled];

    if (favoritesCallTapTargetsEnabled && (objc_opt_respondsToSelector() & 1) != 0)
    {
      objc_initWeak(&location, self);
      v37 = _NSConcreteStackBlock;
      v38 = 3221225472;
      v39 = __66__MPFavoritesTableViewController_tableView_cellForRowAtIndexPath___block_invoke;
      v40 = &unk_100285C30;
      objc_copyWeak(&v43, &location);
      v41 = pathCopy;
      v42 = viewCopy;
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

- (void)updateTableViewCell:(id)cell withContactUsingFavoritesEntry:(id)entry
{
  cellCopy = cell;
  entryCopy = entry;
  uUID = [cellCopy UUID];
  objc_initWeak(&location, self);
  contactsQueue = [(MPFavoritesTableViewController *)self contactsQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = __85__MPFavoritesTableViewController_updateTableViewCell_withContactUsingFavoritesEntry___block_invoke;
  block[3] = &unk_1002854F8;
  objc_copyWeak(&v17, &location);
  v14 = entryCopy;
  v15 = cellCopy;
  v16 = uUID;
  v10 = uUID;
  v11 = cellCopy;
  v12 = entryCopy;
  dispatch_async(contactsQueue, block);

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

- (void)tableView:(id)view commitEditingStyle:(int64_t)style forRowAtIndexPath:(id)path
{
  if (style == 1)
  {
    [(MPFavoritesTableViewController *)self removeFavoriteEntryAtIndexPath:path];
  }
}

- (void)tableView:(id)view moveRowAtIndexPath:(id)path toIndexPath:(id)indexPath
{
  if (path && indexPath)
  {
    indexPathCopy = indexPath;
    v8 = [path row];
    v9 = [indexPathCopy row];

    favoritesEntries = [(MPFavoritesTableViewController *)self favoritesEntries];
    v13 = [MPFavoritesTableViewController moveObjectAtIndex:v8 toIndex:v9 inArray:favoritesEntries];

    v11 = v13;
    if (v13)
    {
      [(MPFavoritesTableViewController *)self setFavoritesEntries:v13];
      favoritesController = [(MPFavoritesTableViewController *)self favoritesController];
      [favoritesController moveEntryAtIndex:v8 toIndex:v9];

      v11 = v13;
    }
  }
}

+ (id)moveObjectAtIndex:(unint64_t)index toIndex:(unint64_t)toIndex inArray:(id)array
{
  arrayCopy = array;
  if ([arrayCopy count] <= index)
  {
    v9 = 0;
  }

  else
  {
    v8 = [arrayCopy count];
    v9 = 0;
    if (index != toIndex && v8 > toIndex)
    {
      v9 = [arrayCopy mutableCopy];
      v10 = [v9 objectAtIndex:index];
      [v9 removeObjectAtIndex:index];
      if ([v9 count] <= toIndex)
      {
        [v9 addObject:v10];
      }

      else
      {
        [v9 insertObject:v10 atIndex:toIndex];
      }
    }
  }

  return v9;
}

- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section
{
  v4 = [(MPFavoritesTableViewController *)self favoritesEntries:view];
  v5 = [v4 count];

  return v5;
}

- (void)tableView:(id)view prefetchRowsAtIndexPaths:(id)paths
{
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  obj = paths;
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

          dataSourcePrefetchingOperationQueue = [(PHTableViewController *)self dataSourcePrefetchingOperationQueue];
          [dataSourcePrefetchingOperationQueue addOperation:v12];
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

- (void)tableView:(id)view willDisplayCell:(id)cell forRowAtIndexPath:(id)path
{
  v16.receiver = self;
  v16.super_class = MPFavoritesTableViewController;
  pathCopy = path;
  [(PHTableViewController *)&v16 tableView:view willDisplayCell:cell forRowAtIndexPath:pathCopy];
  v9 = [pathCopy row];

  v10 = [(MPFavoritesTableViewController *)self favoritesEntryAtIndex:v9];
  v11 = v10;
  if (v10)
  {
    contactProperty = [v10 contactProperty];
    contact = [contactProperty contact];

    if (contact)
    {
      contactCache = [(MPFavoritesTableViewController *)self contactCache];
      v15 = [(MPFavoritesTableViewController *)self contactCacheKeyForFavoritesEntry:v11];
      [contactCache setObject:contact forKey:v15];
    }
  }
}

- (void)tableView:(id)view didEndDisplayingCell:(id)cell forRowAtIndexPath:(id)path
{
  v13.receiver = self;
  v13.super_class = MPFavoritesTableViewController;
  pathCopy = path;
  [(PHTableViewController *)&v13 tableView:view didEndDisplayingCell:cell forRowAtIndexPath:pathCopy];
  v9 = [pathCopy row];

  v10 = [(MPFavoritesTableViewController *)self favoritesEntryAtIndex:v9];
  if (v10)
  {
    contactCache = [(MPFavoritesTableViewController *)self contactCache];
    v12 = [(MPFavoritesTableViewController *)self contactCacheKeyForFavoritesEntry:v10];
    [contactCache removeObjectForKey:v12];
  }
}

- (void)tableView:(id)view accessoryButtonTappedForRowWithIndexPath:(id)path
{
  v5 = -[MPFavoritesTableViewController favoritesEntryAtIndex:](self, "favoritesEntryAtIndex:", [path row]);
  if (v5)
  {
    favoritesController = [(MPFavoritesTableViewController *)self favoritesController];
    v7 = +[CNContactViewController descriptorForRequiredKeys];
    v15 = v7;
    v8 = [NSArray arrayWithObjects:&v15 count:1];
    v9 = [favoritesController contactForFavoritesEntry:v5 keyDescriptors:v8];

    if (v9)
    {
      v10 = [CNContactViewController viewControllerForContact:v9];
      v11 = v10;
      if (v10)
      {
        [v10 setAllowsActions:1];
        [v11 setActions:{objc_msgSend(v11, "actions") | 0x80}];
        avatarViewControllerSettings = [(MPFavoritesTableViewController *)self avatarViewControllerSettings];
        contactStore = [avatarViewControllerSettings contactStore];
        [v11 setContactStore:contactStore];

        navigationController = [(MPFavoritesTableViewController *)self navigationController];
        [navigationController pushViewController:v11 animated:1];
      }
    }
  }
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  featureFlags = [(MPFavoritesTableViewController *)self featureFlags];
  favoritesCallTapTargetsEnabled = [featureFlags favoritesCallTapTargetsEnabled];

  if (favoritesCallTapTargetsEnabled)
  {
    v10 = -[MPFavoritesTableViewController favoritesEntryAtIndex:](self, "favoritesEntryAtIndex:", [pathCopy row]);
    if (v10)
    {
      favoritesController = [(MPFavoritesTableViewController *)self favoritesController];
      v12 = +[CNContactViewController descriptorForRequiredKeys];
      v27 = v12;
      v13 = [NSArray arrayWithObjects:&v27 count:1];
      v14 = [favoritesController contactForFavoritesEntry:v10 keyDescriptors:v13];

      if (v14)
      {
        v15 = [CNContactViewController viewControllerForContact:v14];
        v16 = v15;
        if (v15)
        {
          [v15 setAllowsActions:1];
          [v16 setActions:{objc_msgSend(v16, "actions") | 0x80}];
          avatarViewControllerSettings = [(MPFavoritesTableViewController *)self avatarViewControllerSettings];
          contactStore = [avatarViewControllerSettings contactStore];
          [v16 setContactStore:contactStore];

          navigationController = [(MPFavoritesTableViewController *)self navigationController];
          [navigationController pushViewController:v16 animated:1];
        }
      }
    }

    [viewCopy deselectRowAtIndexPath:pathCopy animated:0];
LABEL_16:

    goto LABEL_17;
  }

  if (pathCopy && [pathCopy row] != 0x7FFFFFFFFFFFFFFFLL)
  {
    v10 = -[MPFavoritesTableViewController favoritesEntryAtIndex:](self, "favoritesEntryAtIndex:", [pathCopy row]);
    if (v10)
    {
      v21[0] = _NSConcreteStackBlock;
      v21[1] = 3221225472;
      v21[2] = __68__MPFavoritesTableViewController_tableView_didSelectRowAtIndexPath___block_invoke;
      v21[3] = &unk_100285C08;
      v22 = viewCopy;
      v23 = pathCopy;
      v24 = v10;
      [v24 performActionWithCompletion:v21];

      v20 = v22;
    }

    else
    {
      [viewCopy deselectRowAtIndexPath:pathCopy animated:0];
      v20 = PHDefaultLog();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v26 = pathCopy;
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

- (void)presentContactPickerViewControllerAnimated:(BOOL)animated completion:(id)completion
{
  animatedCopy = animated;
  completionCopy = completion;
  navigationController = [(MPFavoritesTableViewController *)self navigationController];
  if (navigationController)
  {
    v7 = navigationController;
    presentedViewController = [navigationController presentedViewController];
    if (presentedViewController)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v9 = presentedViewController;

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
    [v7 presentViewController:v10 animated:animatedCopy completion:completionCopy];
  }
}

- (void)setShouldShowAddButtonItem:(BOOL)item animated:(BOOL)animated
{
  if (self->_shouldShowAddButtonItem != item)
  {
    animatedCopy = animated;
    self->_shouldShowAddButtonItem = item;
    isEditing = [(MPFavoritesTableViewController *)self isEditing];

    [(MPFavoritesTableViewController *)self setNavigationItemsForEditing:isEditing animated:animatedCopy];
  }
}

- (void)addButtonAction:(id)action
{
  [(MPFavoritesTableViewController *)self tipKitStopObservation];

  [(MPFavoritesTableViewController *)self presentContactPickerViewControllerAnimated:1 completion:0];
}

- (id)contactCacheKeyForFavoritesEntry:(id)entry
{
  entryCopy = entry;
  contactProperty = [entryCopy contactProperty];
  contact = [contactProperty contact];
  identifier = [contact identifier];
  v7 = identifier;
  if (identifier)
  {
    v8 = identifier;
  }

  else
  {
    v9 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [entryCopy hash]);
    v8 = [NSString stringWithFormat:@"%@", v9];
  }

  return v8;
}

- (id)favoritesEntryAtIndex:(int64_t)index
{
  favoritesEntries = [(MPFavoritesTableViewController *)self favoritesEntries];
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

- (id)favoritesEntryPickerContactForContact:(id)contact contactStore:(id)store
{
  contactCopy = contact;
  storeCopy = store;
  v7 = +[CNUIFavoritesEntryPicker descriptorForRequiredKeys];
  v23 = v7;
  v8 = [NSArray arrayWithObjects:&v23 count:1];

  if ([contactCopy areKeysAvailable:v8])
  {
    v9 = contactCopy;
  }

  else
  {
    v10 = [NSMutableArray arrayWithArray:v8];
    availableKeyDescriptor = [contactCopy availableKeyDescriptor];
    if (availableKeyDescriptor)
    {
      [v10 addObject:availableKeyDescriptor];
    }

    identifier = [contactCopy identifier];
    v16 = 0;
    v9 = [storeCopy unifiedContactWithIdentifier:identifier keysToFetch:v10 error:&v16];
    v13 = v16;

    if (!v9)
    {
      v14 = PHDefaultLog();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412802;
        v18 = contactCopy;
        v19 = 2112;
        v20 = storeCopy;
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

- (void)removeFavoriteEntryAtIndexPath:(id)path
{
  pathCopy = path;
  tableView = [(MPFavoritesTableViewController *)self tableView];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = __65__MPFavoritesTableViewController_removeFavoriteEntryAtIndexPath___block_invoke;
  v9[3] = &unk_1002852E0;
  v9[4] = self;
  v10 = pathCopy;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = __65__MPFavoritesTableViewController_removeFavoriteEntryAtIndexPath___block_invoke_2;
  v7[3] = &unk_100285C58;
  v7[4] = self;
  v8 = v10;
  v6 = v10;
  [tableView performBatchUpdates:v9 completion:v7];
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

- (void)contactPickerDidCancel:(id)cancel
{
  navigationController = [(MPFavoritesTableViewController *)self navigationController];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = __57__MPFavoritesTableViewController_contactPickerDidCancel___block_invoke;
  v5[3] = &unk_100284FD0;
  v5[4] = self;
  [navigationController dismissViewControllerAnimated:1 completion:v5];
}

- (void)contactPicker:(id)picker didSelectContact:(id)contact
{
  pickerCopy = picker;
  contactCopy = contact;
  [pickerCopy invalidateSelectionAnimated:1];
  favoritesController = [(MPFavoritesTableViewController *)self favoritesController];
  contactStore = [favoritesController contactStore];
  v9 = [(MPFavoritesTableViewController *)self favoritesEntryPickerContactForContact:contactCopy contactStore:contactStore];

  if (v9)
  {
    v10 = [[CNUIFavoritesEntryPicker alloc] initWithContact:contactCopy];
    [(MPFavoritesTableViewController *)self setFavoritesEntryPicker:v10];

    favoritesEntryPicker = [(MPFavoritesTableViewController *)self favoritesEntryPicker];
    [favoritesEntryPicker setDelegate:self];

    favoritesEntryPicker2 = [(MPFavoritesTableViewController *)self favoritesEntryPicker];
    viewController = [favoritesEntryPicker2 viewController];
    [pickerCopy presentViewController:viewController animated:1 completion:0];
  }
}

- (void)favoritesEntryPicker:(id)picker didPickEntry:(id)entry
{
  entryCopy = entry;
  v6 = PHDefaultLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v19 = entryCopy;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Favorite was picked: %@", buf, 0xCu);
  }

  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = __68__MPFavoritesTableViewController_favoritesEntryPicker_didPickEntry___block_invoke;
  v17[3] = &unk_100284FD0;
  v17[4] = self;
  v7 = objc_retainBlock(v17);
  favoritesEntries = [(MPFavoritesTableViewController *)self favoritesEntries];
  v9 = [favoritesEntries containsObject:entryCopy];

  if (v9)
  {
    v10 = PHDefaultLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v19 = entryCopy;
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

    tableView = [(MPFavoritesTableViewController *)self tableView];
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = __68__MPFavoritesTableViewController_favoritesEntryPicker_didPickEntry___block_invoke_3;
    v15[3] = &unk_1002852E0;
    v15[4] = self;
    v16 = entryCopy;
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = __68__MPFavoritesTableViewController_favoritesEntryPicker_didPickEntry___block_invoke_4;
    v12[3] = &unk_100285C80;
    v12[4] = self;
    v13 = v16;
    v14 = v7;
    [tableView performBatchUpdates:v15 completion:v12];
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

- (void)handleTPFavoritesControllerFavoritesEntriesDidChangeNotification:(id)notification
{
  object = [notification object];
  v5 = object;
  if (object)
  {
    -[MPFavoritesTableViewController setShouldShowAddButtonItem:](self, "setShouldShowAddButtonItem:", [object canAddEntry]);
    favoritesEntries = [v5 favoritesEntries];
    v7 = [favoritesEntries count];
    favoritesEntries2 = [(MPFavoritesTableViewController *)self favoritesEntries];
    v9 = [favoritesEntries2 count];

    if (v7 == v9)
    {
      v31 = v5;
      tableView = [(MPFavoritesTableViewController *)self tableView];
      indexPathsForVisibleRows = [tableView indexPathsForVisibleRows];

      v32 = objc_alloc_init(NSMutableArray);
      v36 = 0u;
      v37 = 0u;
      v38 = 0u;
      v39 = 0u;
      obj = indexPathsForVisibleRows;
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
            v16 = [favoritesEntries objectAtIndexedSubscript:{objc_msgSend(v15, "row")}];
            v17 = -[MPFavoritesTableViewController favoritesEntryAtIndex:](self, "favoritesEntryAtIndex:", [v15 row]);
            v18 = [v17 isEqual:v16];

            if (!v18)
            {
              [(PHTableViewController *)self setNeedsReloadData:1];

              goto LABEL_18;
            }

            v19 = favoritesEntries;
            v20 = [(MPFavoritesTableViewController *)self contactCacheKeyForFavoritesEntry:v16];
            contactProperty = [v16 contactProperty];
            contact = [contactProperty contact];

            contactCache = [(MPFavoritesTableViewController *)self contactCache];
            v24 = [contactCache objectForKey:v20];

            if (contact && ([contact isEqualIgnoringIdentifiers:v24] & 1) == 0)
            {
              [v32 addObject:v15];
              contactCache2 = [(MPFavoritesTableViewController *)self contactCache];
              [contactCache2 setObject:contact forKey:v20];
            }

            favoritesEntries = v19;
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

        tableView2 = [(MPFavoritesTableViewController *)self tableView];
        [tableView2 reconfigureRowsAtIndexPaths:v32];
      }
    }

    else
    {
      [(PHTableViewController *)self setNeedsReloadData:[(MPFavoritesTableViewController *)self viewHadAppeared]];
      v26 = [favoritesEntries count];
      favoritesEntries3 = [(MPFavoritesTableViewController *)self favoritesEntries];
      v28 = [favoritesEntries3 count];

      if (v26 > v28)
      {
        [(MPFavoritesTableViewController *)self tipKitLogAnalyticsAddFavoritesEvent];
      }
    }

    [(MPFavoritesTableViewController *)self reloadDataIfNeeded];
  }
}

- (void)handleUIApplicationWillEnterForegroundNotification:(id)notification
{
  notificationCopy = notification;
  v5 = PHDefaultLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v9 = objc_opt_class();
    v10 = 2112;
    v11 = notificationCopy;
    v6 = v9;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%@ is handling <%@>", buf, 0x16u);
  }

  v7.receiver = self;
  v7.super_class = MPFavoritesTableViewController;
  [(PHTableViewController *)&v7 handleUIApplicationWillEnterForegroundNotification:notificationCopy];
  [(MPFavoritesTableViewController *)self postCNContactsClientDidDisplayFavoritesNotification];
}

- (void)handleUIContentSizeCategoryDidChangeNotification:(id)notification
{
  v12.receiver = self;
  v12.super_class = MPFavoritesTableViewController;
  notificationCopy = notification;
  [(PHTableViewController *)&v12 handleUIContentSizeCategoryDidChangeNotification:notificationCopy];
  userInfo = [notificationCopy userInfo];

  v6 = [userInfo objectForKeyedSubscript:UIContentSizeCategoryNewValueKey];

  tableView = [(MPFavoritesTableViewController *)self tableView];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = __83__MPFavoritesTableViewController_handleUIContentSizeCategoryDidChangeNotification___block_invoke_2;
  v9[3] = &unk_100285C58;
  v10 = v6;
  selfCopy = self;
  v8 = v6;
  [tableView performBatchUpdates:&__block_literal_global_10 completion:v9];
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
  favoritesEntries = [(MPFavoritesTableViewController *)self favoritesEntries];
  v4 = [favoritesEntries count];

  if (!v4)
  {
    contentUnavailableView = [(PHTableViewController *)self contentUnavailableView];
    [contentUnavailableView setTitle:0];
  }
}

- (void)reloadDataSource
{
  favoritesController = [(MPFavoritesTableViewController *)self favoritesController];
  favoritesEntries = [favoritesController favoritesEntries];
  v5 = [favoritesEntries mutableCopy];
  [(MPFavoritesTableViewController *)self setFavoritesEntries:v5];

  favoritesController2 = [(MPFavoritesTableViewController *)self favoritesController];
  -[MPFavoritesTableViewController setShouldShowAddButtonItem:](self, "setShouldShowAddButtonItem:", [favoritesController2 canAddEntry]);

  favoritesEntries2 = [(MPFavoritesTableViewController *)self favoritesEntries];
  -[MPFavoritesTableViewController tipKitSetNumberOfFavorites:](self, "tipKitSetNumberOfFavorites:", [favoritesEntries2 count]);
}

- (void)refreshView
{
  [(MPFavoritesTableViewController *)self view];
  if (objc_claimAutoreleasedReturnValue() && [(MPFavoritesTableViewController *)self isViewLoaded])
  {
    favoritesEntries = [(MPFavoritesTableViewController *)self favoritesEntries];
    -[PHTableViewController setContentUnavailable:animated:](self, "setContentUnavailable:animated:", [favoritesEntries count] == 0, 0);
    [(MPFavoritesTableViewController *)self setNavigationItemsForEditing:[(MPFavoritesTableViewController *)self isEditing] animated:0];
    tableView = [(MPFavoritesTableViewController *)self tableView];
    [tableView reloadData];
  }

  _objc_release_x1();
}

- (void)setNavigationItemsForEditing:(BOOL)editing animated:(BOOL)animated
{
  animatedCopy = animated;
  navigationItem = [(MPFavoritesTableViewController *)self navigationItem];
  if (navigationItem)
  {
    v12 = navigationItem;
    if ([(MPFavoritesTableViewController *)self isViewLoaded])
    {
      favoritesEntries = [(MPFavoritesTableViewController *)self favoritesEntries];
      if (([(MPFavoritesTableViewController *)self isEditing]& 1) != 0 || ![(MPFavoritesTableViewController *)self shouldShowAddButtonItem])
      {
        addButtonItem = 0;
      }

      else
      {
        addButtonItem = [(MPFavoritesTableViewController *)self addButtonItem];
      }

      if ([favoritesEntries count])
      {
        editButtonItem = [(MPFavoritesTableViewController *)self editButtonItem];
      }

      else
      {
        editButtonItem = 0;
      }

      leftBarButtonItem = [v12 leftBarButtonItem];

      if (leftBarButtonItem != editButtonItem)
      {
        [v12 setLeftBarButtonItem:editButtonItem animated:animatedCopy];
      }

      rightBarButtonItem = [v12 rightBarButtonItem];

      if (rightBarButtonItem != addButtonItem)
      {
        [v12 setRightBarButtonItem:addButtonItem animated:animatedCopy];
      }
    }
  }

  _objc_release_x1();
}

- (void)tipKitStartObservation
{
  type metadata accessor for TPTipsHelper();
  selfCopy = self;
  static TPTipsHelper.taskQueue.getter();
  swift_allocObject();
  swift_unknownObjectWeakInit();

  dispatch thunk of TaskQueue.async(_:)();
}

- (void)tipKitStopObservation
{
  selfCopy = self;
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