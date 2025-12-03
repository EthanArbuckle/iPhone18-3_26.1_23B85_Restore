@interface THBookmarkMenuPopoverViewController
- (BOOL)isCurrentPageBookmarked;
- (BOOL)tableView:(id)view canEditRowAtIndexPath:(id)path;
- (THBookmarkMenuPopoverUserModelDelegate)delegate;
- (THBookmarkMenuPopoverViewController)init;
- (THBookmarkMenuPopoverViewDelegate)viewDelegate;
- (THReflowablePaginationController)reflowablePaginationController;
- (id)p_bookmarkTitleStringForLocation:(id)location;
- (id)p_fetchedResultsControllerBookmarkIndexPathToTableViewBookmarkIndexPath:(id)path;
- (id)p_tableViewBookmarkIndexPathToFetchedResultsControllerBookmarkIndexPath:(id)path;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section;
- (void)addRemoveBookmark:(id)bookmark;
- (void)controller:(id)controller didChangeObject:(id)object atIndexPath:(id)path forChangeType:(unint64_t)type newIndexPath:(id)indexPath;
- (void)controller:(id)controller didChangeSection:(id)section atIndex:(unint64_t)index forChangeType:(unint64_t)type;
- (void)controllerDidChangeContent:(id)content;
- (void)controllerWillChangeContent:(id)content;
- (void)dealloc;
- (void)dismissBookmarkMenu:(BOOL)menu completion:(id)completion;
- (void)loadView;
- (void)p_applicationDidEnterBackground:(id)background;
- (void)p_applyTheme;
- (void)p_cancelEditingOnAllVisibleCells;
- (void)p_managedObjectContextDidSaveNotification:(id)notification;
- (void)p_navigationHistoryDidChange:(id)change;
- (void)p_syncWithStatusAnimated:(BOOL)animated;
- (void)p_syncWithStatusForPage:(unint64_t)page animated:(BOOL)animated;
- (void)paginationController:(id)controller paginationCompleteStateChangedTo:(BOOL)to;
- (void)setCurrentPageBookmarked:(BOOL)bookmarked;
- (void)setReflowablePaginationController:(id)controller;
- (void)setTheme:(id)theme;
- (void)tableView:(id)view commitEditingStyle:(int64_t)style forRowAtIndexPath:(id)path;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)tableView:(id)view willDisplayCell:(id)cell forRowAtIndexPath:(id)path;
- (void)teardown;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
- (void)viewWillLayoutSubviews;
@end

@implementation THBookmarkMenuPopoverViewController

- (THBookmarkMenuPopoverViewController)init
{
  v7.receiver = self;
  v7.super_class = THBookmarkMenuPopoverViewController;
  v2 = [(THBookmarkMenuPopoverViewController *)&v7 initWithNibName:0 bundle:0];
  v3 = v2;
  if (v2)
  {
    [(THBookmarkMenuPopoverViewController *)v2 setViewDelegate:v2];
    v4 = +[UITraitCollection bc_allAPITraits];
    v5 = [(THBookmarkMenuPopoverViewController *)v3 registerForTraitChanges:v4 withAction:"_traitCollectionDidChange:previousTraitCollection:"];
  }

  return v3;
}

- (void)loadView
{
  v4.receiver = self;
  v4.super_class = THBookmarkMenuPopoverViewController;
  [(THBookmarkMenuPopoverViewController *)&v4 loadView];
  v3 = objc_alloc_init(UITableView);
  [v3 setDelegate:self];
  [v3 setDataSource:self];
  [(THBookmarkMenuPopoverViewController *)self setTableView:v3];
  [(THBookmarkMenuPopoverViewController *)self setView:v3];
}

- (void)viewDidLoad
{
  v29.receiver = self;
  v29.super_class = THBookmarkMenuPopoverViewController;
  [(THBookmarkMenuPopoverViewController *)&v29 viewDidLoad];
  navigationController = [(THBookmarkMenuPopoverViewController *)self navigationController];
  navigationBar = [navigationController navigationBar];

  [navigationBar setTranslucent:0];
  [navigationBar _setHidesShadow:1];
  tableView = [(THBookmarkMenuPopoverViewController *)self tableView];
  [tableView frame];
  v7 = v6;
  v9 = v8;
  [tableView setFrame:?];
  [tableView setRowHeight:58.0];
  v10 = objc_alloc_init(UIView);
  [tableView setTableFooterView:v10];

  v11 = +[UIScreen mainScreen];
  [v11 scale];
  v13 = 1.0 / v12;

  v14 = [[BEHairlineDividerView alloc] initWithFrame:{v7, v9, 340.0, v13}];
  headerDividerView = self->_headerDividerView;
  self->_headerDividerView = v14;

  [(BEHairlineDividerView *)self->_headerDividerView setAutoresizingMask:2];
  [(BEHairlineDividerView *)self->_headerDividerView setHorizontal:1];
  superview = [navigationBar superview];
  [superview addSubview:self->_headerDividerView];

  delegate = [(THBookmarkMenuPopoverViewController *)self delegate];
  bookmarkFetchedResultsController = [delegate bookmarkFetchedResultsController];
  [(THBookmarkMenuPopoverViewController *)self setBookmarkFetchedResultsController:bookmarkFetchedResultsController];

  bookmarkFetchedResultsController2 = [(THBookmarkMenuPopoverViewController *)self bookmarkFetchedResultsController];
  [bookmarkFetchedResultsController2 setDelegate:self];

  v20 = +[NSNotificationCenter defaultCenter];
  v21 = [v20 addNonBlockingObserver:self selector:"p_managedObjectContextDidSaveNotification:" name:NSManagedObjectContextDidSaveNotification object:0];
  [(THBookmarkMenuPopoverViewController *)self setManagedObjectContextDidSaveObserver:v21];

  bookmarkFetchedResultsController3 = [(THBookmarkMenuPopoverViewController *)self bookmarkFetchedResultsController];
  v28 = 0;
  [bookmarkFetchedResultsController3 performFetch:&v28];
  v23 = v28;

  view = [(THBookmarkMenuPopoverViewController *)self view];
  [view frame];
  [(THBookmarkMenuPopoverViewController *)self setPreferredContentSize:v25, v26];

  [(THBookmarkMenuPopoverViewController *)self p_applyTheme];
  [(THBookmarkMenuPopoverViewController *)self p_syncWithStatusAnimated:0];
  v27 = +[NSNotificationCenter defaultCenter];
  [v27 addObserver:self selector:"p_handleNotificationVantageDidChange:" name:@"THVantageDidChangeNotification" object:0];
  [v27 addObserver:self selector:"p_navigationHistoryDidChange:" name:THNavigationHistoryDidChangeNotification object:0];
  [v27 addObserver:self selector:"p_applicationDidEnterBackground:" name:UIApplicationDidEnterBackgroundNotification object:0];
}

- (void)dealloc
{
  if (![(THBookmarkMenuPopoverViewController *)self tornDown])
  {
    v3 = +[TSUAssertionHandler currentHandler];
    v4 = [NSString stringWithUTF8String:"[THBookmarkMenuPopoverViewController dealloc]"];
    v5 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Alder/bliss/Classes/THBookmarkMenuPopoverViewController.m"];
    [v3 handleFailureInFunction:v4 file:v5 lineNumber:133 description:@"should have been torn down"];
  }

  [(THBookmarkMenuPopoverViewController *)self teardown];
  [(THBookmarkMenuPopoverViewController *)self setTableView:0];
  [(THBookmarkMenuPopoverViewController *)self setDelegate:0];
  [(THBookmarkMenuPopoverViewController *)self setViewDelegate:0];
  v6.receiver = self;
  v6.super_class = THBookmarkMenuPopoverViewController;
  [(THBookmarkMenuPopoverViewController *)&v6 dealloc];
}

- (void)setTheme:(id)theme
{
  v4.receiver = self;
  v4.super_class = THBookmarkMenuPopoverViewController;
  [(THBookmarkMenuPopoverViewController *)&v4 setTheme:theme];
  [(THBookmarkMenuPopoverViewController *)self p_applyTheme];
}

- (void)teardown
{
  v3 = +[NSNotificationCenter defaultCenter];
  managedObjectContextDidSaveObserver = [(THBookmarkMenuPopoverViewController *)self managedObjectContextDidSaveObserver];
  [v3 removeObserver:managedObjectContextDidSaveObserver];

  [(THBookmarkMenuPopoverViewController *)self setManagedObjectContextDidSaveObserver:0];
  bookmarkFetchedResultsController = [(THBookmarkMenuPopoverViewController *)self bookmarkFetchedResultsController];
  [bookmarkFetchedResultsController setDelegate:0];

  [(THBookmarkMenuPopoverViewController *)self setBookmarkFetchedResultsController:0];
  tableView = [(THBookmarkMenuPopoverViewController *)self tableView];
  [tableView setDelegate:0];
  [tableView setDataSource:0];
  [(THBookmarkMenuPopoverViewController *)self setDelegate:0];
  [(THBookmarkMenuPopoverViewController *)self setViewDelegate:0];
  v6 = +[NSNotificationCenter defaultCenter];
  [v6 removeObserver:self];

  [(THBookmarkMenuPopoverViewController *)self setReflowablePaginationController:0];
  [(THBookmarkMenuPopoverViewController *)self setTornDown:1];
}

- (void)setReflowablePaginationController:(id)controller
{
  obj = controller;
  WeakRetained = objc_loadWeakRetained(&self->_reflowablePaginationController);

  if (WeakRetained != obj)
  {
    reflowablePaginationController = [(THBookmarkMenuPopoverViewController *)self reflowablePaginationController];
    [reflowablePaginationController unregisterObserver:self];

    objc_storeWeak(&self->_reflowablePaginationController, obj);
    reflowablePaginationController2 = [(THBookmarkMenuPopoverViewController *)self reflowablePaginationController];
    [reflowablePaginationController2 registerObserver:self];
  }
}

- (void)viewWillLayoutSubviews
{
  v16.receiver = self;
  v16.super_class = THBookmarkMenuPopoverViewController;
  [(THBookmarkMenuPopoverViewController *)&v16 viewWillLayoutSubviews];
  navigationController = [(THBookmarkMenuPopoverViewController *)self navigationController];
  navigationBar = [navigationController navigationBar];
  superview = [navigationBar superview];

  tableView = self->_tableView;
  [(UITableView *)tableView bounds];
  [(UITableView *)tableView convertRect:superview toView:?];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v13 = +[UIScreen mainScreen];
  [v13 scale];
  v15 = 1.0 / v14;

  [(BEHairlineDividerView *)self->_headerDividerView setFrame:v8, v10, v12, v15];
}

- (void)viewWillAppear:(BOOL)appear
{
  v4.receiver = self;
  v4.super_class = THBookmarkMenuPopoverViewController;
  [(THBookmarkMenuPopoverViewController *)&v4 viewWillAppear:appear];
  [(THBookmarkMenuPopoverViewController *)self p_syncWithStatusAnimated:0];
}

- (void)viewWillDisappear:(BOOL)disappear
{
  v4.receiver = self;
  v4.super_class = THBookmarkMenuPopoverViewController;
  [(THBookmarkMenuPopoverViewController *)&v4 viewWillDisappear:disappear];
  [(THBookmarkMenuPopoverViewController *)self teardown];
}

- (void)p_cancelEditingOnAllVisibleCells
{
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  tableView = [(THBookmarkMenuPopoverViewController *)self tableView];
  visibleCells = [tableView visibleCells];

  v5 = [visibleCells countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    do
    {
      v8 = 0;
      do
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(visibleCells);
        }

        [*(*(&v10 + 1) + 8 * v8) setEditing:0];
        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [visibleCells countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }

  tableView2 = [(THBookmarkMenuPopoverViewController *)self tableView];
  [tableView2 reloadData];
}

- (void)addRemoveBookmark:(id)bookmark
{
  [(THBookmarkMenuPopoverViewController *)self p_cancelEditingOnAllVisibleCells];
  v4 = [(THBookmarkMenuPopoverViewController *)self isCurrentPageBookmarked]^ 1;

  [(THBookmarkMenuPopoverViewController *)self setCurrentPageBookmarked:v4];
}

- (BOOL)isCurrentPageBookmarked
{
  selfCopy = self;
  delegate = [(THBookmarkMenuPopoverViewController *)self delegate];
  LOBYTE(selfCopy) = [delegate isCurrentPageBookmarkedForBookmarkMenuPopoverViewController:selfCopy];

  return selfCopy;
}

- (void)setCurrentPageBookmarked:(BOOL)bookmarked
{
  bookmarkedCopy = bookmarked;
  delegate = [(THBookmarkMenuPopoverViewController *)self delegate];
  [delegate setCurrentPageBookmarked:bookmarkedCopy forBookmarkMenuPopoverViewController:self];
}

- (void)paginationController:(id)controller paginationCompleteStateChangedTo:(BOOL)to
{
  v4 = [(THBookmarkMenuPopoverViewController *)self tableView:controller];
  [v4 reloadData];
}

- (void)dismissBookmarkMenu:(BOOL)menu completion:(id)completion
{
  v6 = [TSUAssertionHandler currentHandler:menu];
  v4 = [NSString stringWithUTF8String:"[THBookmarkMenuPopoverViewController dismissBookmarkMenu:completion:]"];
  v5 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Alder/bliss/Classes/THBookmarkMenuPopoverViewController.m"];
  [v6 handleFailureInFunction:v4 file:v5 lineNumber:250 description:{@"Warning, dismissBookmarkMenu:completion: requested but not hooked up to anything"}];
}

- (void)p_syncWithStatusAnimated:(BOOL)animated
{
  animatedCopy = animated;
  delegate = [(THBookmarkMenuPopoverViewController *)self delegate];
  -[THBookmarkMenuPopoverViewController p_syncWithStatusForPage:animated:](self, "p_syncWithStatusForPage:animated:", [delegate currentAbsolutePageIndexForBookmarks], animatedCopy);
}

- (void)p_syncWithStatusForPage:(unint64_t)page animated:(BOOL)animated
{
  animatedCopy = animated;
  tableView = [(THBookmarkMenuPopoverViewController *)self tableView];
  p_addRemoveBookmarkIndexPath = [(THBookmarkMenuPopoverViewController *)self p_addRemoveBookmarkIndexPath];
  v20 = p_addRemoveBookmarkIndexPath;
  v8 = [NSArray arrayWithObjects:&v20 count:1];
  if (animatedCopy)
  {
    v9 = 0;
  }

  else
  {
    v9 = 5;
  }

  [tableView reloadRowsAtIndexPaths:v8 withRowAnimation:v9];

  bookmarkFetchedResultsController = [(THBookmarkMenuPopoverViewController *)self bookmarkFetchedResultsController];
  sections = [bookmarkFetchedResultsController sections];
  v12 = [sections objectAtIndex:0];

  numberOfObjects = [v12 numberOfObjects];
  [tableView rowHeight];
  v15 = v14;
  v16 = +[UIDevice currentDevice];
  v17 = [v16 orientation] - 1 < &dword_0 + 2;

  v18 = dbl_34AA80[v17];
  if (v15 * (numberOfObjects + 1) < v18)
  {
    v18 = v15 * (numberOfObjects + 1);
  }

  v19 = v15 * 3.0;
  if (v18 >= v15 * 3.0)
  {
    v19 = v18;
  }

  [(THBookmarkMenuPopoverViewController *)self setPreferredContentSize:0.0, v19];
}

- (void)p_applyTheme
{
  if ([(THBookmarkMenuPopoverViewController *)self isViewLoaded])
  {
    theme = [(THBookmarkMenuPopoverViewController *)self theme];

    if (theme)
    {
      themePage = [(THBookmarkMenuPopoverViewController *)self themePage];
      tableView = [(THBookmarkMenuPopoverViewController *)self tableView];
      navigationController = [(THBookmarkMenuPopoverViewController *)self navigationController];
      searchBackgroundColor = [themePage searchBackgroundColor];
      if (!searchBackgroundColor)
      {
        searchBackgroundColor = [themePage backgroundColorForTraitEnvironment:self];
      }

      [tableView setBackgroundColor:searchBackgroundColor];
      tableViewSeparatorColor = [themePage tableViewSeparatorColor];
      [tableView setSeparatorColor:tableViewSeparatorColor];

      popoverPresentationController = [navigationController popoverPresentationController];
      [popoverPresentationController setBackgroundColor:searchBackgroundColor];

      navigationBar = [navigationController navigationBar];
      [navigationBar setBarStyle:{objc_msgSend(themePage, "isNight:", self)}];
      [navigationBar setBarTintColor:searchBackgroundColor];
      v17 = NSForegroundColorAttributeName;
      popoverTitleColor = [themePage popoverTitleColor];
      v18 = popoverTitleColor;
      v12 = [NSDictionary dictionaryWithObjects:&v18 forKeys:&v17 count:1];
      [navigationBar setTitleTextAttributes:v12];

      viewIfLoaded = [navigationController viewIfLoaded];
      tintColor = [themePage tintColor];
      [viewIfLoaded setTintColor:tintColor];

      [viewIfLoaded setBackgroundColor:searchBackgroundColor];
      separatorColor = [themePage separatorColor];
      [(BEHairlineDividerView *)self->_headerDividerView setDividerColor:separatorColor];

      [(THBookmarkMenuPopoverViewController *)self setNeedsStatusBarAppearanceUpdate];
    }

    tableView2 = [(THBookmarkMenuPopoverViewController *)self tableView];
    [tableView2 reloadData];
  }
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  section = [pathCopy section];
  if (section == &dword_0 + 1)
  {
    bookmarkFetchedResultsController = [(THBookmarkMenuPopoverViewController *)self bookmarkFetchedResultsController];
    sections = [bookmarkFetchedResultsController sections];
    v14 = [sections objectAtIndex:0];

    if ([v14 numberOfObjects])
    {
      v16 = [(THBookmarkMenuPopoverViewController *)self p_tableViewBookmarkIndexPathToFetchedResultsControllerBookmarkIndexPath:pathCopy];
      delegate = [(THBookmarkMenuPopoverViewController *)self delegate];
      v18 = [bookmarkFetchedResultsController objectAtIndexPath:v16];
      v19 = [delegate cachedAnnotationForFetchedObject:v18];

      v20 = [THPageLocation pageLocationWithAnnotation:v19];
      [viewCopy deselectRowAtIndexPath:pathCopy animated:1];
      delegate2 = [(THBookmarkMenuPopoverViewController *)self delegate];
      viewDelegate = [(THBookmarkMenuPopoverViewController *)self viewDelegate];
      v25[0] = _NSConcreteStackBlock;
      v25[1] = 3221225472;
      v25[2] = sub_1098E0;
      v25[3] = &unk_45ADB0;
      v26 = delegate2;
      v27 = v20;
      v23 = v20;
      v24 = delegate2;
      [viewDelegate dismissBookmarkMenu:1 completion:v25];
    }

    goto LABEL_7;
  }

  if (!section)
  {
    delegate3 = [(THBookmarkMenuPopoverViewController *)self delegate];
    isBookmarkApplicable = [delegate3 isBookmarkApplicable];

    if (isBookmarkApplicable)
    {
      delegate4 = [(THBookmarkMenuPopoverViewController *)self delegate];
      viewDelegate2 = [(THBookmarkMenuPopoverViewController *)self viewDelegate];
      v28[0] = _NSConcreteStackBlock;
      v28[1] = 3221225472;
      v28[2] = sub_109898;
      v28[3] = &unk_45ADB0;
      v29 = delegate4;
      selfCopy = self;
      bookmarkFetchedResultsController = delegate4;
      [viewDelegate2 dismissBookmarkMenu:1 completion:v28];

      v14 = v29;
LABEL_7:
    }
  }
}

- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section
{
  if (section != 1)
  {
    return section == 0;
  }

  bookmarkFetchedResultsController = [(THBookmarkMenuPopoverViewController *)self bookmarkFetchedResultsController];
  sections = [bookmarkFetchedResultsController sections];
  v7 = [sections objectAtIndex:0];

  numberOfObjects = [v7 numberOfObjects];
  if (numberOfObjects <= 1)
  {
    v9 = 1;
  }

  else
  {
    v9 = numberOfObjects;
  }

  return v9;
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  v4 = [view dequeueReusableCellWithIdentifier:{@"BookmarkCell", path}];
  if (!v4)
  {
    v4 = [[THBookmarkMenuTableViewCell alloc] initWithStyle:0 reuseIdentifier:@"BookmarkCell"];
  }

  return v4;
}

- (void)tableView:(id)view willDisplayCell:(id)cell forRowAtIndexPath:(id)path
{
  cellCopy = cell;
  pathCopy = path;
  section = [pathCopy section];
  if (section == &dword_0 + 1)
  {
    bookmarkFetchedResultsController = [(THBookmarkMenuPopoverViewController *)self bookmarkFetchedResultsController];
    sections = [(__CFString *)bookmarkFetchedResultsController sections];
    v22 = [sections objectAtIndex:0];

    v71 = v22;
    if ([v22 numberOfObjects])
    {
      v73 = pathCopy;
      theme2 = [(THBookmarkMenuPopoverViewController *)self p_tableViewBookmarkIndexPathToFetchedResultsControllerBookmarkIndexPath:pathCopy];
      delegate = [(THBookmarkMenuPopoverViewController *)self delegate];
      v25 = [(__CFString *)bookmarkFetchedResultsController objectAtIndexPath:theme2];
      v26 = [delegate cachedAnnotationForFetchedObject:v25];

      v27 = [THPageLocation pageLocationWithAnnotation:v26];
      annotationAbsolutePhysicalPageIndex = [v26 annotationAbsolutePhysicalPageIndex];
      delegate2 = [(THBookmarkMenuPopoverViewController *)self delegate];
      v30 = [delegate2 hasThumbnailImageForAbsolutePageIndex:annotationAbsolutePhysicalPageIndex];

      if (v30 && (-[THBookmarkMenuPopoverViewController delegate](self, "delegate"), v31 = objc_claimAutoreleasedReturnValue(), v32 = [v31 thumbnailImageForAbsolutePageIndex:annotationAbsolutePhysicalPageIndex], v31, v32))
      {
        v33 = [UIImage imageWithCGImage:v32];
      }

      else
      {
        v33 = 0;
      }

      v16 = [(THBookmarkMenuPopoverViewController *)self p_bookmarkTitleStringForLocation:v27];
      theme = [(THBookmarkMenuPopoverViewController *)self theme];
      bookmarkLabelColor = [theme bookmarkLabelColor];

      buttonTitleColorDisabled = bookmarkLabelColor;
      delegate3 = [(THBookmarkMenuPopoverViewController *)self delegate];
      v40 = [delegate3 pageNumberStringForLocation:v27];

      v34 = v40;
      v35 = 3;
      pathCopy = v73;
    }

    else
    {
      v41 = THBundle();
      v16 = [v41 localizedStringForKey:@"No Bookmarks" value:&stru_471858 table:0];

      theme2 = [(THBookmarkMenuPopoverViewController *)self theme];
      buttonTitleColorDisabled = [theme2 buttonTitleColorDisabled];
      v34 = 0;
      v33 = 0;
      v35 = 0;
    }
  }

  else
  {
    if (section)
    {
      v34 = 0;
      buttonTitleColorDisabled = 0;
      v16 = 0;
      theme2 = 0;
      v35 = 3;
      goto LABEL_28;
    }

    isCurrentPageBookmarked = [(THBookmarkMenuPopoverViewController *)self isCurrentPageBookmarked];
    delegate4 = [(THBookmarkMenuPopoverViewController *)self delegate];
    isBookPortraitOnly = [delegate4 isBookPortraitOnly];

    v12 = THBundle();
    v71 = [v12 localizedStringForKey:@"Add Bookmark" value:&stru_471858 table:0];

    delegate5 = [(THBookmarkMenuPopoverViewController *)self delegate];
    isBookmarkApplicable = [delegate5 isBookmarkApplicable];

    if (isBookmarkApplicable)
    {
      if (isCurrentPageBookmarked)
      {
        v15 = THBundle();
        v16 = [v15 localizedStringForKey:@"Remove Bookmark" value:&stru_471858 table:0];

        buttonTitleColorDisabled = [UIColor colorWithRed:1.0 green:0.231372549 blue:0.188235294 alpha:1.0];
        v18 = 0;
        v19 = @"ib_bookmarks_thumb_remove";
        if (isBookPortraitOnly)
        {
          v19 = @"ib_bookmarks_thumb_remove_portrait";
        }
      }

      else
      {
        v16 = v71;
        theme3 = [(THBookmarkMenuPopoverViewController *)self theme];
        buttonTitleColorDisabled = [theme3 keyColor];

        v19 = @"ib_bookmarks_thumb_add";
        if (isBookPortraitOnly)
        {
          v19 = @"ib_bookmarks_thumb_add_portrait";
        }

        v18 = 1;
      }

      v36 = 3;
    }

    else
    {
      v16 = v71;
      buttonTitleColorDisabled = [UIColor colorWithWhite:0.678431373 alpha:1.0];
      v36 = 0;
      v19 = @"ib_bookmarks_thumb_add-D";
      if (isBookPortraitOnly)
      {
        v19 = @"ib_bookmarks_thumb_add_portrait-D";
      }

      v18 = 1;
    }

    bookmarkFetchedResultsController = v19;
    v43 = [UIImage th_imageNamed:bookmarkFetchedResultsController];
    theme2 = v43;
    if (!v18)
    {
      v34 = 0;
      v35 = v36;
      goto LABEL_27;
    }

    v33 = [v43 imageWithRenderingMode:2];
    v34 = 0;
    v35 = v36;
  }

  theme2 = v33;
LABEL_27:

LABEL_28:
  themePage = [(THBookmarkMenuPopoverViewController *)self themePage];
  objc_opt_class();
  v45 = TSUDynamicCast();
  v46 = v45;
  if (v45)
  {
    thumbnail = [v45 thumbnail];
    [thumbnail setImage:theme2];

    tableViewSeparatorColor = [themePage tableViewSeparatorColor];
    v70 = v34;
    v74 = pathCopy;
    cGColor = [tableViewSeparatorColor CGColor];
    [v46 thumbnail];
    v50 = v72 = v35;
    [v50 layer];
    v51 = v46;
    v52 = themePage;
    v53 = theme2;
    selfCopy = self;
    v55 = buttonTitleColorDisabled;
    v57 = v56 = v16;
    v58 = cGColor;
    pathCopy = v74;
    [v57 setBorderColor:v58];

    v16 = v56;
    buttonTitleColorDisabled = v55;
    self = selfCopy;
    theme2 = v53;
    themePage = v52;
    v46 = v51;

    bookmarkTitleLabel = [v51 bookmarkTitleLabel];
    [bookmarkTitleLabel setText:v16];

    bookmarkTitleLabel2 = [v51 bookmarkTitleLabel];
    [bookmarkTitleLabel2 setTextColor:buttonTitleColorDisabled];

    pageNumberLabel = [v51 pageNumberLabel];
    v34 = v70;
    [pageNumberLabel setText:?];

    bookmarkPageNumberColor = [themePage bookmarkPageNumberColor];
    pageNumberLabel2 = [v46 pageNumberLabel];
    [pageNumberLabel2 setTextColor:bookmarkPageNumberColor];

    v35 = v72;
  }

  [cellCopy setSelectionStyle:v35];
  v64 = [UIView alloc];
  [cellCopy bounds];
  v65 = [v64 initWithFrame:?];
  [cellCopy setSelectedBackgroundView:v65];

  tableViewCellSelectedColor = [themePage tableViewCellSelectedColor];
  selectedBackgroundView = [cellCopy selectedBackgroundView];
  [selectedBackgroundView setBackgroundColor:tableViewCellSelectedColor];

  tableView = [(THBookmarkMenuPopoverViewController *)self tableView];
  backgroundColor = [tableView backgroundColor];
  [cellCopy setBackgroundColor:backgroundColor];
}

- (BOOL)tableView:(id)view canEditRowAtIndexPath:(id)path
{
  if ([path section] != &dword_0 + 1)
  {
    return 0;
  }

  bookmarkFetchedResultsController = [(THBookmarkMenuPopoverViewController *)self bookmarkFetchedResultsController];
  sections = [bookmarkFetchedResultsController sections];
  v7 = [sections objectAtIndex:0];

  v8 = [v7 numberOfObjects] != 0;
  return v8;
}

- (void)tableView:(id)view commitEditingStyle:(int64_t)style forRowAtIndexPath:(id)path
{
  pathCopy = path;
  if ([pathCopy section] == &dword_0 + 1)
  {
    bookmarkFetchedResultsController = [(THBookmarkMenuPopoverViewController *)self bookmarkFetchedResultsController];
    sections = [bookmarkFetchedResultsController sections];
    v8 = [sections objectAtIndex:0];

    if ([v8 numberOfObjects])
    {
      delegate = [(THBookmarkMenuPopoverViewController *)self delegate];
      isAnnotationWriteEnabled = [delegate isAnnotationWriteEnabled];

      if (isAnnotationWriteEnabled)
      {
        delegate4 = [(THBookmarkMenuPopoverViewController *)self p_tableViewBookmarkIndexPathToFetchedResultsControllerBookmarkIndexPath:pathCopy];
        delegate2 = [(THBookmarkMenuPopoverViewController *)self delegate];
        v13 = [bookmarkFetchedResultsController objectAtIndexPath:delegate4];
        v14 = [delegate2 cachedAnnotationForFetchedObject:v13];

        delegate3 = [(THBookmarkMenuPopoverViewController *)self delegate];
        [delegate3 removeBookmark:v14];
      }

      else
      {
        delegate4 = [(THBookmarkMenuPopoverViewController *)self delegate];
        [delegate4 denyBookmarkEdit];
      }
    }
  }
}

- (id)p_bookmarkTitleStringForLocation:(id)location
{
  locationCopy = location;
  delegate = [(THBookmarkMenuPopoverViewController *)self delegate];
  v6 = [delegate sectionTitleStringForLocation:locationCopy];

  delegate2 = [(THBookmarkMenuPopoverViewController *)self delegate];
  v8 = [delegate2 sectionNumberStringForLocation:locationCopy];

  if (v8)
  {
    v9 = [NSString stringWithFormat:@"%@: %@", v8, v6];
  }

  else
  {
    v9 = v6;
  }

  v10 = v9;

  return v10;
}

- (void)p_managedObjectContextDidSaveNotification:(id)notification
{
  notificationCopy = notification;
  if (!+[NSThread isMainThread])
  {
    v4 = +[TSUAssertionHandler currentHandler];
    v5 = [NSString stringWithUTF8String:"[THBookmarkMenuPopoverViewController p_managedObjectContextDidSaveNotification:]"];
    v6 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Alder/bliss/Classes/THBookmarkMenuPopoverViewController.m"];
    [v4 handleFailureInFunction:v5 file:v6 lineNumber:579 description:@"This operation must only be performed on the main thread."];
  }

  bookmarkFetchedResultsController = [(THBookmarkMenuPopoverViewController *)self bookmarkFetchedResultsController];
  managedObjectContext = [bookmarkFetchedResultsController managedObjectContext];

  if (managedObjectContext)
  {
    object = [notificationCopy object];
    persistentStoreCoordinator = [object persistentStoreCoordinator];
    persistentStoreCoordinator2 = [managedObjectContext persistentStoreCoordinator];

    if (persistentStoreCoordinator == persistentStoreCoordinator2)
    {
      [managedObjectContext mergeChangesFromContextDidSaveNotification:notificationCopy];
    }
  }
}

- (void)controllerWillChangeContent:(id)content
{
  tableView = [(THBookmarkMenuPopoverViewController *)self tableView];
  [tableView beginUpdates];
}

- (void)controller:(id)controller didChangeSection:(id)section atIndex:(unint64_t)index forChangeType:(unint64_t)type
{
  controllerCopy = controller;
  sectionCopy = section;
  if (type == 2)
  {
    tableView = [(THBookmarkMenuPopoverViewController *)self tableView];
    v12 = [NSIndexSet indexSetWithIndex:index + 1];
    [tableView deleteSections:v12 withRowAnimation:0];
  }

  else
  {
    if (type != 1)
    {
      goto LABEL_6;
    }

    tableView = [(THBookmarkMenuPopoverViewController *)self tableView];
    v12 = [NSIndexSet indexSetWithIndex:index + 1];
    [tableView insertSections:v12 withRowAnimation:0];
  }

LABEL_6:
  [(THBookmarkMenuPopoverViewController *)self p_syncWithStatusAnimated:1];
}

- (id)p_fetchedResultsControllerBookmarkIndexPathToTableViewBookmarkIndexPath:(id)path
{
  if (path)
  {
    v4 = +[NSIndexPath indexPathForRow:inSection:](NSIndexPath, "indexPathForRow:inSection:", [path row], 1);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)p_tableViewBookmarkIndexPathToFetchedResultsControllerBookmarkIndexPath:(id)path
{
  if (path)
  {
    v4 = +[NSIndexPath indexPathForRow:inSection:](NSIndexPath, "indexPathForRow:inSection:", [path row], 0);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)controller:(id)controller didChangeObject:(id)object atIndexPath:(id)path forChangeType:(unint64_t)type newIndexPath:(id)indexPath
{
  indexPathCopy = indexPath;
  v11 = [(THBookmarkMenuPopoverViewController *)self p_fetchedResultsControllerBookmarkIndexPathToTableViewBookmarkIndexPath:path];
  v12 = [(THBookmarkMenuPopoverViewController *)self p_fetchedResultsControllerBookmarkIndexPathToTableViewBookmarkIndexPath:indexPathCopy];

  tableView = [(THBookmarkMenuPopoverViewController *)self tableView];
  switch(type)
  {
    case 3uLL:
      v18 = v11;
      v16 = [NSArray arrayWithObjects:&v18 count:1];
      [tableView deleteRowsAtIndexPaths:v16 withRowAnimation:0];

      v17 = v12;
      v14 = &v17;
      goto LABEL_7;
    case 2uLL:
      v19 = v11;
      v15 = [NSArray arrayWithObjects:&v19 count:1];
      [tableView deleteRowsAtIndexPaths:v15 withRowAnimation:0];
LABEL_8:

      break;
    case 1uLL:
      v20 = v12;
      v14 = &v20;
LABEL_7:
      v15 = [NSArray arrayWithObjects:v14 count:1];
      [tableView insertRowsAtIndexPaths:v15 withRowAnimation:0];
      goto LABEL_8;
  }
}

- (void)controllerDidChangeContent:(id)content
{
  sections = [content sections];
  v5 = [sections objectAtIndex:0];

  if (![v5 numberOfObjects])
  {
    tableView = [(THBookmarkMenuPopoverViewController *)self tableView];
    v7 = [NSIndexPath indexPathForRow:0 inSection:1];
    v10 = v7;
    v8 = [NSArray arrayWithObjects:&v10 count:1];
    [tableView insertRowsAtIndexPaths:v8 withRowAnimation:0];
  }

  tableView2 = [(THBookmarkMenuPopoverViewController *)self tableView];
  [tableView2 endUpdates];

  [(THBookmarkMenuPopoverViewController *)self p_syncWithStatusAnimated:1];
}

- (void)p_navigationHistoryDidChange:(id)change
{
  viewDelegate = [(THBookmarkMenuPopoverViewController *)self viewDelegate];
  [viewDelegate dismissBookmarkMenu:1 completion:0];
}

- (void)p_applicationDidEnterBackground:(id)background
{
  viewDelegate = [(THBookmarkMenuPopoverViewController *)self viewDelegate];
  [viewDelegate dismissBookmarkMenu:0 completion:0];
}

- (THBookmarkMenuPopoverUserModelDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (THBookmarkMenuPopoverViewDelegate)viewDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_viewDelegate);

  return WeakRetained;
}

- (THReflowablePaginationController)reflowablePaginationController
{
  WeakRetained = objc_loadWeakRetained(&self->_reflowablePaginationController);

  return WeakRetained;
}

@end