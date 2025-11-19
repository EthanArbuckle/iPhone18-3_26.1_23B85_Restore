@interface THBookmarkMenuPopoverViewController
- (BOOL)isCurrentPageBookmarked;
- (BOOL)tableView:(id)a3 canEditRowAtIndexPath:(id)a4;
- (THBookmarkMenuPopoverUserModelDelegate)delegate;
- (THBookmarkMenuPopoverViewController)init;
- (THBookmarkMenuPopoverViewDelegate)viewDelegate;
- (THReflowablePaginationController)reflowablePaginationController;
- (id)p_bookmarkTitleStringForLocation:(id)a3;
- (id)p_fetchedResultsControllerBookmarkIndexPathToTableViewBookmarkIndexPath:(id)a3;
- (id)p_tableViewBookmarkIndexPathToFetchedResultsControllerBookmarkIndexPath:(id)a3;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4;
- (void)addRemoveBookmark:(id)a3;
- (void)controller:(id)a3 didChangeObject:(id)a4 atIndexPath:(id)a5 forChangeType:(unint64_t)a6 newIndexPath:(id)a7;
- (void)controller:(id)a3 didChangeSection:(id)a4 atIndex:(unint64_t)a5 forChangeType:(unint64_t)a6;
- (void)controllerDidChangeContent:(id)a3;
- (void)controllerWillChangeContent:(id)a3;
- (void)dealloc;
- (void)dismissBookmarkMenu:(BOOL)a3 completion:(id)a4;
- (void)loadView;
- (void)p_applicationDidEnterBackground:(id)a3;
- (void)p_applyTheme;
- (void)p_cancelEditingOnAllVisibleCells;
- (void)p_managedObjectContextDidSaveNotification:(id)a3;
- (void)p_navigationHistoryDidChange:(id)a3;
- (void)p_syncWithStatusAnimated:(BOOL)a3;
- (void)p_syncWithStatusForPage:(unint64_t)a3 animated:(BOOL)a4;
- (void)paginationController:(id)a3 paginationCompleteStateChangedTo:(BOOL)a4;
- (void)setCurrentPageBookmarked:(BOOL)a3;
- (void)setReflowablePaginationController:(id)a3;
- (void)setTheme:(id)a3;
- (void)tableView:(id)a3 commitEditingStyle:(int64_t)a4 forRowAtIndexPath:(id)a5;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)tableView:(id)a3 willDisplayCell:(id)a4 forRowAtIndexPath:(id)a5;
- (void)teardown;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
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
  v3 = [(THBookmarkMenuPopoverViewController *)self navigationController];
  v4 = [v3 navigationBar];

  [v4 setTranslucent:0];
  [v4 _setHidesShadow:1];
  v5 = [(THBookmarkMenuPopoverViewController *)self tableView];
  [v5 frame];
  v7 = v6;
  v9 = v8;
  [v5 setFrame:?];
  [v5 setRowHeight:58.0];
  v10 = objc_alloc_init(UIView);
  [v5 setTableFooterView:v10];

  v11 = +[UIScreen mainScreen];
  [v11 scale];
  v13 = 1.0 / v12;

  v14 = [[BEHairlineDividerView alloc] initWithFrame:{v7, v9, 340.0, v13}];
  headerDividerView = self->_headerDividerView;
  self->_headerDividerView = v14;

  [(BEHairlineDividerView *)self->_headerDividerView setAutoresizingMask:2];
  [(BEHairlineDividerView *)self->_headerDividerView setHorizontal:1];
  v16 = [v4 superview];
  [v16 addSubview:self->_headerDividerView];

  v17 = [(THBookmarkMenuPopoverViewController *)self delegate];
  v18 = [v17 bookmarkFetchedResultsController];
  [(THBookmarkMenuPopoverViewController *)self setBookmarkFetchedResultsController:v18];

  v19 = [(THBookmarkMenuPopoverViewController *)self bookmarkFetchedResultsController];
  [v19 setDelegate:self];

  v20 = +[NSNotificationCenter defaultCenter];
  v21 = [v20 addNonBlockingObserver:self selector:"p_managedObjectContextDidSaveNotification:" name:NSManagedObjectContextDidSaveNotification object:0];
  [(THBookmarkMenuPopoverViewController *)self setManagedObjectContextDidSaveObserver:v21];

  v22 = [(THBookmarkMenuPopoverViewController *)self bookmarkFetchedResultsController];
  v28 = 0;
  [v22 performFetch:&v28];
  v23 = v28;

  v24 = [(THBookmarkMenuPopoverViewController *)self view];
  [v24 frame];
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

- (void)setTheme:(id)a3
{
  v4.receiver = self;
  v4.super_class = THBookmarkMenuPopoverViewController;
  [(THBookmarkMenuPopoverViewController *)&v4 setTheme:a3];
  [(THBookmarkMenuPopoverViewController *)self p_applyTheme];
}

- (void)teardown
{
  v3 = +[NSNotificationCenter defaultCenter];
  v4 = [(THBookmarkMenuPopoverViewController *)self managedObjectContextDidSaveObserver];
  [v3 removeObserver:v4];

  [(THBookmarkMenuPopoverViewController *)self setManagedObjectContextDidSaveObserver:0];
  v5 = [(THBookmarkMenuPopoverViewController *)self bookmarkFetchedResultsController];
  [v5 setDelegate:0];

  [(THBookmarkMenuPopoverViewController *)self setBookmarkFetchedResultsController:0];
  v7 = [(THBookmarkMenuPopoverViewController *)self tableView];
  [v7 setDelegate:0];
  [v7 setDataSource:0];
  [(THBookmarkMenuPopoverViewController *)self setDelegate:0];
  [(THBookmarkMenuPopoverViewController *)self setViewDelegate:0];
  v6 = +[NSNotificationCenter defaultCenter];
  [v6 removeObserver:self];

  [(THBookmarkMenuPopoverViewController *)self setReflowablePaginationController:0];
  [(THBookmarkMenuPopoverViewController *)self setTornDown:1];
}

- (void)setReflowablePaginationController:(id)a3
{
  obj = a3;
  WeakRetained = objc_loadWeakRetained(&self->_reflowablePaginationController);

  if (WeakRetained != obj)
  {
    v5 = [(THBookmarkMenuPopoverViewController *)self reflowablePaginationController];
    [v5 unregisterObserver:self];

    objc_storeWeak(&self->_reflowablePaginationController, obj);
    v6 = [(THBookmarkMenuPopoverViewController *)self reflowablePaginationController];
    [v6 registerObserver:self];
  }
}

- (void)viewWillLayoutSubviews
{
  v16.receiver = self;
  v16.super_class = THBookmarkMenuPopoverViewController;
  [(THBookmarkMenuPopoverViewController *)&v16 viewWillLayoutSubviews];
  v3 = [(THBookmarkMenuPopoverViewController *)self navigationController];
  v4 = [v3 navigationBar];
  v5 = [v4 superview];

  tableView = self->_tableView;
  [(UITableView *)tableView bounds];
  [(UITableView *)tableView convertRect:v5 toView:?];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v13 = +[UIScreen mainScreen];
  [v13 scale];
  v15 = 1.0 / v14;

  [(BEHairlineDividerView *)self->_headerDividerView setFrame:v8, v10, v12, v15];
}

- (void)viewWillAppear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = THBookmarkMenuPopoverViewController;
  [(THBookmarkMenuPopoverViewController *)&v4 viewWillAppear:a3];
  [(THBookmarkMenuPopoverViewController *)self p_syncWithStatusAnimated:0];
}

- (void)viewWillDisappear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = THBookmarkMenuPopoverViewController;
  [(THBookmarkMenuPopoverViewController *)&v4 viewWillDisappear:a3];
  [(THBookmarkMenuPopoverViewController *)self teardown];
}

- (void)p_cancelEditingOnAllVisibleCells
{
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v3 = [(THBookmarkMenuPopoverViewController *)self tableView];
  v4 = [v3 visibleCells];

  v5 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
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
          objc_enumerationMutation(v4);
        }

        [*(*(&v10 + 1) + 8 * v8) setEditing:0];
        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }

  v9 = [(THBookmarkMenuPopoverViewController *)self tableView];
  [v9 reloadData];
}

- (void)addRemoveBookmark:(id)a3
{
  [(THBookmarkMenuPopoverViewController *)self p_cancelEditingOnAllVisibleCells];
  v4 = [(THBookmarkMenuPopoverViewController *)self isCurrentPageBookmarked]^ 1;

  [(THBookmarkMenuPopoverViewController *)self setCurrentPageBookmarked:v4];
}

- (BOOL)isCurrentPageBookmarked
{
  v2 = self;
  v3 = [(THBookmarkMenuPopoverViewController *)self delegate];
  LOBYTE(v2) = [v3 isCurrentPageBookmarkedForBookmarkMenuPopoverViewController:v2];

  return v2;
}

- (void)setCurrentPageBookmarked:(BOOL)a3
{
  v3 = a3;
  v5 = [(THBookmarkMenuPopoverViewController *)self delegate];
  [v5 setCurrentPageBookmarked:v3 forBookmarkMenuPopoverViewController:self];
}

- (void)paginationController:(id)a3 paginationCompleteStateChangedTo:(BOOL)a4
{
  v4 = [(THBookmarkMenuPopoverViewController *)self tableView:a3];
  [v4 reloadData];
}

- (void)dismissBookmarkMenu:(BOOL)a3 completion:(id)a4
{
  v6 = [TSUAssertionHandler currentHandler:a3];
  v4 = [NSString stringWithUTF8String:"[THBookmarkMenuPopoverViewController dismissBookmarkMenu:completion:]"];
  v5 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Alder/bliss/Classes/THBookmarkMenuPopoverViewController.m"];
  [v6 handleFailureInFunction:v4 file:v5 lineNumber:250 description:{@"Warning, dismissBookmarkMenu:completion: requested but not hooked up to anything"}];
}

- (void)p_syncWithStatusAnimated:(BOOL)a3
{
  v3 = a3;
  v5 = [(THBookmarkMenuPopoverViewController *)self delegate];
  -[THBookmarkMenuPopoverViewController p_syncWithStatusForPage:animated:](self, "p_syncWithStatusForPage:animated:", [v5 currentAbsolutePageIndexForBookmarks], v3);
}

- (void)p_syncWithStatusForPage:(unint64_t)a3 animated:(BOOL)a4
{
  v4 = a4;
  v6 = [(THBookmarkMenuPopoverViewController *)self tableView];
  v7 = [(THBookmarkMenuPopoverViewController *)self p_addRemoveBookmarkIndexPath];
  v20 = v7;
  v8 = [NSArray arrayWithObjects:&v20 count:1];
  if (v4)
  {
    v9 = 0;
  }

  else
  {
    v9 = 5;
  }

  [v6 reloadRowsAtIndexPaths:v8 withRowAnimation:v9];

  v10 = [(THBookmarkMenuPopoverViewController *)self bookmarkFetchedResultsController];
  v11 = [v10 sections];
  v12 = [v11 objectAtIndex:0];

  v13 = [v12 numberOfObjects];
  [v6 rowHeight];
  v15 = v14;
  v16 = +[UIDevice currentDevice];
  v17 = [v16 orientation] - 1 < &dword_0 + 2;

  v18 = dbl_34AA80[v17];
  if (v15 * (v13 + 1) < v18)
  {
    v18 = v15 * (v13 + 1);
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
    v3 = [(THBookmarkMenuPopoverViewController *)self theme];

    if (v3)
    {
      v4 = [(THBookmarkMenuPopoverViewController *)self themePage];
      v5 = [(THBookmarkMenuPopoverViewController *)self tableView];
      v6 = [(THBookmarkMenuPopoverViewController *)self navigationController];
      v7 = [v4 searchBackgroundColor];
      if (!v7)
      {
        v7 = [v4 backgroundColorForTraitEnvironment:self];
      }

      [v5 setBackgroundColor:v7];
      v8 = [v4 tableViewSeparatorColor];
      [v5 setSeparatorColor:v8];

      v9 = [v6 popoverPresentationController];
      [v9 setBackgroundColor:v7];

      v10 = [v6 navigationBar];
      [v10 setBarStyle:{objc_msgSend(v4, "isNight:", self)}];
      [v10 setBarTintColor:v7];
      v17 = NSForegroundColorAttributeName;
      v11 = [v4 popoverTitleColor];
      v18 = v11;
      v12 = [NSDictionary dictionaryWithObjects:&v18 forKeys:&v17 count:1];
      [v10 setTitleTextAttributes:v12];

      v13 = [v6 viewIfLoaded];
      v14 = [v4 tintColor];
      [v13 setTintColor:v14];

      [v13 setBackgroundColor:v7];
      v15 = [v4 separatorColor];
      [(BEHairlineDividerView *)self->_headerDividerView setDividerColor:v15];

      [(THBookmarkMenuPopoverViewController *)self setNeedsStatusBarAppearanceUpdate];
    }

    v16 = [(THBookmarkMenuPopoverViewController *)self tableView];
    [v16 reloadData];
  }
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v7 section];
  if (v8 == &dword_0 + 1)
  {
    v13 = [(THBookmarkMenuPopoverViewController *)self bookmarkFetchedResultsController];
    v15 = [v13 sections];
    v14 = [v15 objectAtIndex:0];

    if ([v14 numberOfObjects])
    {
      v16 = [(THBookmarkMenuPopoverViewController *)self p_tableViewBookmarkIndexPathToFetchedResultsControllerBookmarkIndexPath:v7];
      v17 = [(THBookmarkMenuPopoverViewController *)self delegate];
      v18 = [v13 objectAtIndexPath:v16];
      v19 = [v17 cachedAnnotationForFetchedObject:v18];

      v20 = [THPageLocation pageLocationWithAnnotation:v19];
      [v6 deselectRowAtIndexPath:v7 animated:1];
      v21 = [(THBookmarkMenuPopoverViewController *)self delegate];
      v22 = [(THBookmarkMenuPopoverViewController *)self viewDelegate];
      v25[0] = _NSConcreteStackBlock;
      v25[1] = 3221225472;
      v25[2] = sub_1098E0;
      v25[3] = &unk_45ADB0;
      v26 = v21;
      v27 = v20;
      v23 = v20;
      v24 = v21;
      [v22 dismissBookmarkMenu:1 completion:v25];
    }

    goto LABEL_7;
  }

  if (!v8)
  {
    v9 = [(THBookmarkMenuPopoverViewController *)self delegate];
    v10 = [v9 isBookmarkApplicable];

    if (v10)
    {
      v11 = [(THBookmarkMenuPopoverViewController *)self delegate];
      v12 = [(THBookmarkMenuPopoverViewController *)self viewDelegate];
      v28[0] = _NSConcreteStackBlock;
      v28[1] = 3221225472;
      v28[2] = sub_109898;
      v28[3] = &unk_45ADB0;
      v29 = v11;
      v30 = self;
      v13 = v11;
      [v12 dismissBookmarkMenu:1 completion:v28];

      v14 = v29;
LABEL_7:
    }
  }
}

- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4
{
  if (a4 != 1)
  {
    return a4 == 0;
  }

  v5 = [(THBookmarkMenuPopoverViewController *)self bookmarkFetchedResultsController];
  v6 = [v5 sections];
  v7 = [v6 objectAtIndex:0];

  v8 = [v7 numberOfObjects];
  if (v8 <= 1)
  {
    v9 = 1;
  }

  else
  {
    v9 = v8;
  }

  return v9;
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v4 = [a3 dequeueReusableCellWithIdentifier:{@"BookmarkCell", a4}];
  if (!v4)
  {
    v4 = [[THBookmarkMenuTableViewCell alloc] initWithStyle:0 reuseIdentifier:@"BookmarkCell"];
  }

  return v4;
}

- (void)tableView:(id)a3 willDisplayCell:(id)a4 forRowAtIndexPath:(id)a5
{
  v75 = a4;
  v7 = a5;
  v8 = [v7 section];
  if (v8 == &dword_0 + 1)
  {
    v20 = [(THBookmarkMenuPopoverViewController *)self bookmarkFetchedResultsController];
    v21 = [(__CFString *)v20 sections];
    v22 = [v21 objectAtIndex:0];

    v71 = v22;
    if ([v22 numberOfObjects])
    {
      v73 = v7;
      v23 = [(THBookmarkMenuPopoverViewController *)self p_tableViewBookmarkIndexPathToFetchedResultsControllerBookmarkIndexPath:v7];
      v24 = [(THBookmarkMenuPopoverViewController *)self delegate];
      v25 = [(__CFString *)v20 objectAtIndexPath:v23];
      v26 = [v24 cachedAnnotationForFetchedObject:v25];

      v27 = [THPageLocation pageLocationWithAnnotation:v26];
      v28 = [v26 annotationAbsolutePhysicalPageIndex];
      v29 = [(THBookmarkMenuPopoverViewController *)self delegate];
      v30 = [v29 hasThumbnailImageForAbsolutePageIndex:v28];

      if (v30 && (-[THBookmarkMenuPopoverViewController delegate](self, "delegate"), v31 = objc_claimAutoreleasedReturnValue(), v32 = [v31 thumbnailImageForAbsolutePageIndex:v28], v31, v32))
      {
        v33 = [UIImage imageWithCGImage:v32];
      }

      else
      {
        v33 = 0;
      }

      v16 = [(THBookmarkMenuPopoverViewController *)self p_bookmarkTitleStringForLocation:v27];
      v37 = [(THBookmarkMenuPopoverViewController *)self theme];
      v38 = [v37 bookmarkLabelColor];

      v17 = v38;
      v39 = [(THBookmarkMenuPopoverViewController *)self delegate];
      v40 = [v39 pageNumberStringForLocation:v27];

      v34 = v40;
      v35 = 3;
      v7 = v73;
    }

    else
    {
      v41 = THBundle();
      v16 = [v41 localizedStringForKey:@"No Bookmarks" value:&stru_471858 table:0];

      v23 = [(THBookmarkMenuPopoverViewController *)self theme];
      v17 = [v23 buttonTitleColorDisabled];
      v34 = 0;
      v33 = 0;
      v35 = 0;
    }
  }

  else
  {
    if (v8)
    {
      v34 = 0;
      v17 = 0;
      v16 = 0;
      v23 = 0;
      v35 = 3;
      goto LABEL_28;
    }

    v9 = [(THBookmarkMenuPopoverViewController *)self isCurrentPageBookmarked];
    v10 = [(THBookmarkMenuPopoverViewController *)self delegate];
    v11 = [v10 isBookPortraitOnly];

    v12 = THBundle();
    v71 = [v12 localizedStringForKey:@"Add Bookmark" value:&stru_471858 table:0];

    v13 = [(THBookmarkMenuPopoverViewController *)self delegate];
    v14 = [v13 isBookmarkApplicable];

    if (v14)
    {
      if (v9)
      {
        v15 = THBundle();
        v16 = [v15 localizedStringForKey:@"Remove Bookmark" value:&stru_471858 table:0];

        v17 = [UIColor colorWithRed:1.0 green:0.231372549 blue:0.188235294 alpha:1.0];
        v18 = 0;
        v19 = @"ib_bookmarks_thumb_remove";
        if (v11)
        {
          v19 = @"ib_bookmarks_thumb_remove_portrait";
        }
      }

      else
      {
        v16 = v71;
        v42 = [(THBookmarkMenuPopoverViewController *)self theme];
        v17 = [v42 keyColor];

        v19 = @"ib_bookmarks_thumb_add";
        if (v11)
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
      v17 = [UIColor colorWithWhite:0.678431373 alpha:1.0];
      v36 = 0;
      v19 = @"ib_bookmarks_thumb_add-D";
      if (v11)
      {
        v19 = @"ib_bookmarks_thumb_add_portrait-D";
      }

      v18 = 1;
    }

    v20 = v19;
    v43 = [UIImage th_imageNamed:v20];
    v23 = v43;
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

  v23 = v33;
LABEL_27:

LABEL_28:
  v44 = [(THBookmarkMenuPopoverViewController *)self themePage];
  objc_opt_class();
  v45 = TSUDynamicCast();
  v46 = v45;
  if (v45)
  {
    v47 = [v45 thumbnail];
    [v47 setImage:v23];

    v48 = [v44 tableViewSeparatorColor];
    v70 = v34;
    v74 = v7;
    v49 = [v48 CGColor];
    [v46 thumbnail];
    v50 = v72 = v35;
    [v50 layer];
    v51 = v46;
    v52 = v44;
    v53 = v23;
    v54 = self;
    v55 = v17;
    v57 = v56 = v16;
    v58 = v49;
    v7 = v74;
    [v57 setBorderColor:v58];

    v16 = v56;
    v17 = v55;
    self = v54;
    v23 = v53;
    v44 = v52;
    v46 = v51;

    v59 = [v51 bookmarkTitleLabel];
    [v59 setText:v16];

    v60 = [v51 bookmarkTitleLabel];
    [v60 setTextColor:v17];

    v61 = [v51 pageNumberLabel];
    v34 = v70;
    [v61 setText:?];

    v62 = [v44 bookmarkPageNumberColor];
    v63 = [v46 pageNumberLabel];
    [v63 setTextColor:v62];

    v35 = v72;
  }

  [v75 setSelectionStyle:v35];
  v64 = [UIView alloc];
  [v75 bounds];
  v65 = [v64 initWithFrame:?];
  [v75 setSelectedBackgroundView:v65];

  v66 = [v44 tableViewCellSelectedColor];
  v67 = [v75 selectedBackgroundView];
  [v67 setBackgroundColor:v66];

  v68 = [(THBookmarkMenuPopoverViewController *)self tableView];
  v69 = [v68 backgroundColor];
  [v75 setBackgroundColor:v69];
}

- (BOOL)tableView:(id)a3 canEditRowAtIndexPath:(id)a4
{
  if ([a4 section] != &dword_0 + 1)
  {
    return 0;
  }

  v5 = [(THBookmarkMenuPopoverViewController *)self bookmarkFetchedResultsController];
  v6 = [v5 sections];
  v7 = [v6 objectAtIndex:0];

  v8 = [v7 numberOfObjects] != 0;
  return v8;
}

- (void)tableView:(id)a3 commitEditingStyle:(int64_t)a4 forRowAtIndexPath:(id)a5
{
  v16 = a5;
  if ([v16 section] == &dword_0 + 1)
  {
    v6 = [(THBookmarkMenuPopoverViewController *)self bookmarkFetchedResultsController];
    v7 = [v6 sections];
    v8 = [v7 objectAtIndex:0];

    if ([v8 numberOfObjects])
    {
      v9 = [(THBookmarkMenuPopoverViewController *)self delegate];
      v10 = [v9 isAnnotationWriteEnabled];

      if (v10)
      {
        v11 = [(THBookmarkMenuPopoverViewController *)self p_tableViewBookmarkIndexPathToFetchedResultsControllerBookmarkIndexPath:v16];
        v12 = [(THBookmarkMenuPopoverViewController *)self delegate];
        v13 = [v6 objectAtIndexPath:v11];
        v14 = [v12 cachedAnnotationForFetchedObject:v13];

        v15 = [(THBookmarkMenuPopoverViewController *)self delegate];
        [v15 removeBookmark:v14];
      }

      else
      {
        v11 = [(THBookmarkMenuPopoverViewController *)self delegate];
        [v11 denyBookmarkEdit];
      }
    }
  }
}

- (id)p_bookmarkTitleStringForLocation:(id)a3
{
  v4 = a3;
  v5 = [(THBookmarkMenuPopoverViewController *)self delegate];
  v6 = [v5 sectionTitleStringForLocation:v4];

  v7 = [(THBookmarkMenuPopoverViewController *)self delegate];
  v8 = [v7 sectionNumberStringForLocation:v4];

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

- (void)p_managedObjectContextDidSaveNotification:(id)a3
{
  v12 = a3;
  if (!+[NSThread isMainThread])
  {
    v4 = +[TSUAssertionHandler currentHandler];
    v5 = [NSString stringWithUTF8String:"[THBookmarkMenuPopoverViewController p_managedObjectContextDidSaveNotification:]"];
    v6 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Alder/bliss/Classes/THBookmarkMenuPopoverViewController.m"];
    [v4 handleFailureInFunction:v5 file:v6 lineNumber:579 description:@"This operation must only be performed on the main thread."];
  }

  v7 = [(THBookmarkMenuPopoverViewController *)self bookmarkFetchedResultsController];
  v8 = [v7 managedObjectContext];

  if (v8)
  {
    v9 = [v12 object];
    v10 = [v9 persistentStoreCoordinator];
    v11 = [v8 persistentStoreCoordinator];

    if (v10 == v11)
    {
      [v8 mergeChangesFromContextDidSaveNotification:v12];
    }
  }
}

- (void)controllerWillChangeContent:(id)a3
{
  v3 = [(THBookmarkMenuPopoverViewController *)self tableView];
  [v3 beginUpdates];
}

- (void)controller:(id)a3 didChangeSection:(id)a4 atIndex:(unint64_t)a5 forChangeType:(unint64_t)a6
{
  v13 = a3;
  v10 = a4;
  if (a6 == 2)
  {
    v11 = [(THBookmarkMenuPopoverViewController *)self tableView];
    v12 = [NSIndexSet indexSetWithIndex:a5 + 1];
    [v11 deleteSections:v12 withRowAnimation:0];
  }

  else
  {
    if (a6 != 1)
    {
      goto LABEL_6;
    }

    v11 = [(THBookmarkMenuPopoverViewController *)self tableView];
    v12 = [NSIndexSet indexSetWithIndex:a5 + 1];
    [v11 insertSections:v12 withRowAnimation:0];
  }

LABEL_6:
  [(THBookmarkMenuPopoverViewController *)self p_syncWithStatusAnimated:1];
}

- (id)p_fetchedResultsControllerBookmarkIndexPathToTableViewBookmarkIndexPath:(id)a3
{
  if (a3)
  {
    v4 = +[NSIndexPath indexPathForRow:inSection:](NSIndexPath, "indexPathForRow:inSection:", [a3 row], 1);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)p_tableViewBookmarkIndexPathToFetchedResultsControllerBookmarkIndexPath:(id)a3
{
  if (a3)
  {
    v4 = +[NSIndexPath indexPathForRow:inSection:](NSIndexPath, "indexPathForRow:inSection:", [a3 row], 0);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)controller:(id)a3 didChangeObject:(id)a4 atIndexPath:(id)a5 forChangeType:(unint64_t)a6 newIndexPath:(id)a7
{
  v10 = a7;
  v11 = [(THBookmarkMenuPopoverViewController *)self p_fetchedResultsControllerBookmarkIndexPathToTableViewBookmarkIndexPath:a5];
  v12 = [(THBookmarkMenuPopoverViewController *)self p_fetchedResultsControllerBookmarkIndexPathToTableViewBookmarkIndexPath:v10];

  v13 = [(THBookmarkMenuPopoverViewController *)self tableView];
  switch(a6)
  {
    case 3uLL:
      v18 = v11;
      v16 = [NSArray arrayWithObjects:&v18 count:1];
      [v13 deleteRowsAtIndexPaths:v16 withRowAnimation:0];

      v17 = v12;
      v14 = &v17;
      goto LABEL_7;
    case 2uLL:
      v19 = v11;
      v15 = [NSArray arrayWithObjects:&v19 count:1];
      [v13 deleteRowsAtIndexPaths:v15 withRowAnimation:0];
LABEL_8:

      break;
    case 1uLL:
      v20 = v12;
      v14 = &v20;
LABEL_7:
      v15 = [NSArray arrayWithObjects:v14 count:1];
      [v13 insertRowsAtIndexPaths:v15 withRowAnimation:0];
      goto LABEL_8;
  }
}

- (void)controllerDidChangeContent:(id)a3
{
  v4 = [a3 sections];
  v5 = [v4 objectAtIndex:0];

  if (![v5 numberOfObjects])
  {
    v6 = [(THBookmarkMenuPopoverViewController *)self tableView];
    v7 = [NSIndexPath indexPathForRow:0 inSection:1];
    v10 = v7;
    v8 = [NSArray arrayWithObjects:&v10 count:1];
    [v6 insertRowsAtIndexPaths:v8 withRowAnimation:0];
  }

  v9 = [(THBookmarkMenuPopoverViewController *)self tableView];
  [v9 endUpdates];

  [(THBookmarkMenuPopoverViewController *)self p_syncWithStatusAnimated:1];
}

- (void)p_navigationHistoryDidChange:(id)a3
{
  v3 = [(THBookmarkMenuPopoverViewController *)self viewDelegate];
  [v3 dismissBookmarkMenu:1 completion:0];
}

- (void)p_applicationDidEnterBackground:(id)a3
{
  v3 = [(THBookmarkMenuPopoverViewController *)self viewDelegate];
  [v3 dismissBookmarkMenu:0 completion:0];
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