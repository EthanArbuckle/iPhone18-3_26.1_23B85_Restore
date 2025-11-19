@interface CRLiOSShapeLibraryViewController
- (BOOL)allowsInsertDrag;
- (BOOL)insertPageViewControllerShouldAppearInSearchMode:(id)a3;
- (BOOL)p_canInsertAndConnectBoardItemToSelectedConnectionLine:(id)a3;
- (BOOL)p_isCompact;
- (BOOL)p_isSidebarLike;
- (BOOL)staysOpenOnSelectionChange;
- (CGPoint)p_unscaledPopoverAnchorPoint;
- (CGSize)p_cachedViewFrameSize;
- (CGSize)p_contentSize;
- (CGSize)preferredContentSize;
- (CRLiOSContentLibraryViewControllerDelegate)p_delegate;
- (CRLiOSShapeLibraryViewController)initWithDelegate:(id)a3 shouldChangeSelectedShapes:(BOOL)a4;
- (CRLiOSShapeLibraryViewController)initWithDelegate:(id)a3 unscaledPopoverAnchorPoint:(CGPoint)a4;
- (id)contextWithPresetCollectionViewController:(id)a3;
- (id)insertPageViewController:(id)a3 viewControllerAfterViewController:(id)a4;
- (id)insertPageViewController:(id)a3 viewControllerBeforeViewController:(id)a4;
- (id)insertPageViewController:(id)a3 viewControllerForPageAtIndex:(unint64_t)a4;
- (id)insertPageViewControllerDefaultSearchTerm:(id)a3;
- (id)insertPageViewControllerViewControllerForSearch:(id)a3;
- (id)itemsForBeginningDragSessionForPresetCollectionViewController:(id)a3 forCollectionView:(id)a4 atIndexPath:(id)a5;
- (id)p_boardItemFactory;
- (id)p_boardItemForPresetCollectionType:(unint64_t)a3 atIndexPath:(id)a4 context:(id)a5;
- (id)p_createShapeInsertViewController;
- (id)p_editingCoordinator;
- (id)p_interactiveCanvasController;
- (id)p_pageViewControllerWithPages:(id)a3 presetCollectionType:(unint64_t)a4;
- (id)p_pagesForPresetCollectionType:(unint64_t)a3;
- (id)p_pagesForSegment:(unint64_t)a3;
- (id)p_shapeAtIndexPath:(id)a3 context:(id)a4;
- (id)p_shapeInfoAtIndexPath:(id)a3 boardItemFactory:(id)a4 context:(id)a5;
- (id)p_shapeWithIdentifier:(id)a3 context:(id)a4;
- (unint64_t)insertPageViewController:(id)a3 presentationIndexForViewController:(id)a4;
- (unint64_t)p_integerDefaultForKey:(id)a3;
- (unint64_t)p_pageNumberForPresetCollectionViewController:(id)a3;
- (unint64_t)p_totalNumberOfPagesNeededForPresetCollectionType:(unint64_t)a3;
- (unint64_t)presentationCountForInsertPageViewController:(id)a3;
- (unint64_t)selectedSubpageIndexForInsertPageViewController:(id)a3;
- (void)insertPageViewController:(id)a3 didSelectPageNumber:(unint64_t)a4;
- (void)insertPageViewController:(id)a3 didSelectSubpageAtIndex:(unint64_t)a4;
- (void)insertPageViewController:(id)a3 willSearchWithText:(id)a4 inViewController:(id)a5 searchViewController:(id)a6;
- (void)insertPageViewControllerDidBeginSearch:(id)a3;
- (void)insertPageViewControllerDidEndSearch:(id)a3 cancelledExplicitly:(BOOL)a4;
- (void)insertPageViewControllerWillBeginSearch:(id)a3;
- (void)insertPageViewControllerWillDisappear:(id)a3;
- (void)insertPageViewControllerWillEndSearch:(id)a3 cancelledExplicitly:(BOOL)a4;
- (void)p_changeSelectedShapesToItemAtIndexPath:(id)a3 forPresetCollectionViewController:(id)a4;
- (void)p_dismissIfNeededWithBlock:(id)a3;
- (void)p_insertShapeAtIndexPath:(id)a3 context:(id)a4;
- (void)p_positionAndInsertBoardItems:(id)a3;
- (void)p_reloadAllPresetCollectionViewControllers;
- (void)p_setAllPresetCollectionViewControllersHidden:(BOOL)a3;
- (void)p_setIntegerDefault:(unint64_t)a3 forKey:(id)a4;
- (void)p_shapeLibraryIndexingDidFinish:(id)a3;
- (void)p_updateForPresentationSemanticContext;
- (void)p_workspaceDidActivate:(id)a3;
- (void)p_workspaceWillDeactivate:(id)a3;
- (void)presetCollectionViewController:(id)a3 didSelectPresetAtIndexPath:(id)a4;
- (void)processChanges:(id)a3 forChangeSource:(id)a4;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4;
@end

@implementation CRLiOSShapeLibraryViewController

- (CRLiOSShapeLibraryViewController)initWithDelegate:(id)a3 shouldChangeSelectedShapes:(BOOL)a4
{
  v6 = a3;
  v11.receiver = self;
  v11.super_class = CRLiOSShapeLibraryViewController;
  v7 = [(CRLiOSShapeLibraryViewController *)&v11 initWithNibName:0 bundle:0];
  v8 = v7;
  if (v7)
  {
    objc_storeWeak(&v7->_delegate, v6);
    v8->_shouldChangeSelectedShapes = a4;
    v8->_unscaledPopoverAnchorPoint = xmmword_1014629F0;
    v8->_showLinesInLibrary = 1;
    v9 = +[NSNotificationCenter defaultCenter];
    [v9 addObserver:v8 selector:"p_shapeLibraryIndexingDidFinish:" name:@"CRLShapeLibraryIndexingDidFinishNotification" object:0];
  }

  return v8;
}

- (CRLiOSShapeLibraryViewController)initWithDelegate:(id)a3 unscaledPopoverAnchorPoint:(CGPoint)a4
{
  y = a4.y;
  x = a4.x;
  result = [(CRLiOSShapeLibraryViewController *)self initWithDelegate:a3 shouldChangeSelectedShapes:0];
  if (result)
  {
    result->_unscaledPopoverAnchorPoint.x = x;
    result->_unscaledPopoverAnchorPoint.y = y;
  }

  return result;
}

- (void)viewDidLoad
{
  v81.receiver = self;
  v81.super_class = CRLiOSShapeLibraryViewController;
  [(CRLiOSShapeLibraryViewController *)&v81 viewDidLoad];
  v3 = +[UIColor clearColor];
  v4 = [(CRLiOSShapeLibraryViewController *)self view];
  [v4 setBackgroundColor:v3];

  v5 = +[CRLShapeLibrary sharedLibrary];
  v6 = [CRLBasicShapeLibrary alloc];
  v7 = +[CRLLocale currentLocale];
  v8 = [(CRLBasicShapeLibrary *)v6 initWithLocale:v7];

  v9 = [v5 dataLoadStatus];
  v10 = [CRLShapeCollectionDataSource alloc];
  v79 = v5;
  v80 = v8;
  if (v9 == 2)
  {
    v11 = [(CRLShapeCollectionDataSource *)v10 initWithShapeLibrary:v5 basicShapeLibrary:v8];
    shapeCollectionDataSource = self->_shapeCollectionDataSource;
    self->_shapeCollectionDataSource = v11;

    v13 = [[CRLShapeSearchResultsCollection alloc] initWithShapeLibrary:v5 basicShapeLibrary:v8 searchTerm:0];
  }

  else
  {
    v14 = [(CRLShapeCollectionDataSource *)v10 initWithBasicShapeLibrary:v8];
    v15 = self->_shapeCollectionDataSource;
    self->_shapeCollectionDataSource = v14;

    v13 = [[CRLShapeSearchResultsCollection alloc] initWithBasicShapeLibrary:v8 searchTerm:0];
  }

  shapeSearchResultsCollection = self->_shapeSearchResultsCollection;
  self->_shapeSearchResultsCollection = v13;

  v17 = objc_alloc_init(UINavigationBar);
  [(CRLiOSShapeLibraryViewController *)self setP_navigationBar:v17];
  [v17 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v17 setTranslucent:0];
  v18 = +[UIColor systemGroupedBackgroundColor];
  [v17 setBarTintColor:v18];

  [v17 _setHidesShadow:1];
  v19 = [(CRLiOSShapeLibraryViewController *)self view];
  [v19 addSubview:v17];

  v20 = [UINavigationItem alloc];
  v21 = +[NSBundle mainBundle];
  v22 = [v21 localizedStringForKey:@"Shapes" value:0 table:0];
  v23 = [v20 initWithTitle:v22];

  v77 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:24 target:self action:"p_closeButtonTapped:"];
  v24 = +[NSBundle mainBundle];
  v25 = [v24 localizedStringForKey:@"Done" value:0 table:0];
  [v77 setAccessibilityLabel:v25];

  v78 = v23;
  [v23 setRightBarButtonItem:v77];
  v87 = v23;
  v26 = [NSArray arrayWithObjects:&v87 count:1];
  [v17 setItems:v26 animated:0];

  v27 = [(CRLiOSShapeLibraryViewController *)self p_createShapeInsertViewController];
  [(CRLiOSShapeLibraryViewController *)self setP_shapeInsertViewController:v27];
  v28 = [v27 view];
  [v28 setTranslatesAutoresizingMaskIntoConstraints:0];

  [(CRLiOSShapeLibraryViewController *)self addChildViewController:v27];
  v29 = [(CRLiOSShapeLibraryViewController *)self view];
  v30 = [v27 view];
  [v29 addSubview:v30];

  v31 = [(CRLiOSShapeLibraryViewController *)self view];
  v32 = [v31 safeAreaLayoutGuide];

  if (+[_TtC8Freeform19CRLFeatureFlagGroup isSolariumEnabled])
  {
    v33 = 10.0;
  }

  else
  {
    v33 = 0.0;
  }

  v76 = [v17 leadingAnchor];
  v75 = [v32 leadingAnchor];
  v74 = [v76 constraintEqualToAnchor:v75];
  v86[0] = v74;
  v68 = v17;
  v72 = [v17 trailingAnchor];
  v71 = [v32 trailingAnchor];
  v70 = [v72 constraintEqualToAnchor:v71];
  v86[1] = v70;
  v69 = [v27 view];
  v67 = [v69 leadingAnchor];
  v66 = [v32 leadingAnchor];
  [v67 constraintEqualToAnchor:v66];
  v65 = v64 = v27;
  v86[2] = v65;
  v63 = [v27 view];
  v62 = [v63 trailingAnchor];
  v61 = [v32 trailingAnchor];
  v34 = [v62 constraintEqualToAnchor:v61];
  v86[3] = v34;
  v35 = [v17 topAnchor];
  v36 = v32;
  v73 = v32;
  v37 = [v32 topAnchor];
  v38 = [v35 constraintEqualToAnchor:v37 constant:v33];
  v86[4] = v38;
  v39 = [v27 view];
  v40 = [v39 bottomAnchor];
  v41 = [v36 bottomAnchor];
  v42 = [v40 constraintEqualToAnchor:v41];
  v86[5] = v42;
  v43 = [NSArray arrayWithObjects:v86 count:6];
  [NSLayoutConstraint activateConstraints:v43];

  v44 = [v64 view];
  v45 = [v44 topAnchor];
  v46 = [v68 bottomAnchor];
  v47 = [v45 constraintEqualToAnchor:v46];
  v85 = v47;
  v48 = [NSArray arrayWithObjects:&v85 count:1];
  [(CRLiOSShapeLibraryViewController *)self setP_constraintsForShowingNavigationBar:v48];

  v49 = [v64 view];
  v50 = [v49 topAnchor];
  v51 = [v73 topAnchor];
  v52 = [v50 constraintEqualToAnchor:v51];
  v84 = v52;
  v53 = [NSArray arrayWithObjects:&v84 count:1];
  [(CRLiOSShapeLibraryViewController *)self setP_constraintsForHidingNavigationBar:v53];

  [v68 setHidden:1];
  v54 = [(CRLiOSShapeLibraryViewController *)self p_constraintsForHidingNavigationBar];
  [NSLayoutConstraint activateConstraints:v54];

  [v64 didMoveToParentViewController:self];
  v55 = [[CRLAccessibilityTimer alloc] initWithTargetSerialQueue:&_dispatch_main_q];
  [(CRLiOSShapeLibraryViewController *)self setP_announcementTimer:v55];

  v56 = [(CRLiOSShapeLibraryViewController *)self p_announcementTimer];
  [v56 setAutomaticallyCancelPendingBlockUponSchedulingNewBlock:1];

  v83 = objc_opt_class();
  v57 = [NSArray arrayWithObjects:&v83 count:1];
  v58 = [(CRLiOSShapeLibraryViewController *)self registerForTraitChanges:v57 withTarget:self action:"p_reloadAllPresetCollectionViewControllers"];

  v82 = objc_opt_class();
  v59 = [NSArray arrayWithObjects:&v82 count:1];
  v60 = [(CRLiOSShapeLibraryViewController *)self registerForTraitChanges:v59 withTarget:self action:"p_updateForPresentationSemanticContext"];
}

- (void)viewWillAppear:(BOOL)a3
{
  v3 = a3;
  [(CRLShapeCollectionDataSource *)self->_shapeCollectionDataSource setShowLinesInLibrary:[(CRLiOSShapeLibraryViewController *)self showLinesInLibrary]];
  v5.receiver = self;
  v5.super_class = CRLiOSShapeLibraryViewController;
  [(CRLiOSShapeLibraryViewController *)&v5 viewWillAppear:v3];
  [(CRLiOSShapeLibraryViewController *)self p_updateForPresentationSemanticContext];
}

- (void)viewDidAppear:(BOOL)a3
{
  v21.receiver = self;
  v21.super_class = CRLiOSShapeLibraryViewController;
  [(CRLiOSShapeLibraryViewController *)&v21 viewDidAppear:a3];
  v4 = +[NSNotificationCenter defaultCenter];
  v5 = [(CRLiOSShapeLibraryViewController *)self view];
  v6 = [v5 window];
  v7 = [v6 windowScene];

  v8 = +[NSNotification CRLiOSSceneWillResignActive];
  [v4 addObserver:self selector:"p_workspaceWillDeactivate:" name:v8 object:v7];

  v9 = +[NSNotification CRLiOSSceneDidEnterBackground];
  [v4 addObserver:self selector:"p_workspaceDidEnterBackground:" name:v9 object:v7];

  v10 = +[NSNotification CRLiOSSceneDidBecomeActive];
  [v4 addObserver:self selector:"p_workspaceDidActivate:" name:v10 object:v7];

  v11 = [(CRLiOSShapeLibraryViewController *)self p_interactiveCanvasController];
  v12 = [v11 changeNotifier];
  v13 = [(CRLiOSShapeLibraryViewController *)self associatedBoardItems];
  v14 = [v13 anyObject];
  v15 = [v14 parentContainerItem];
  [v12 addObserver:self forChangeSource:v15];

  v16 = [(CRLiOSShapeLibraryViewController *)self associatedBoardItems];
  v17 = [v16 allObjects];
  v18 = [v17 crl_firstObjectPassingTest:&stru_1018516D8];

  v19 = [(CRLiOSShapeLibraryViewController *)self p_interactiveCanvasController];
  v20 = [v19 changeNotifier];
  [v20 addObserver:self forChangeSource:v18];
}

- (void)viewWillDisappear:(BOOL)a3
{
  v3 = a3;
  v5 = [(CRLiOSShapeLibraryViewController *)self view];
  v6 = [v5 window];
  v7 = [v6 windowScene];

  v8 = +[NSNotificationCenter defaultCenter];
  v9 = +[NSNotification CRLiOSSceneWillResignActive];
  [v8 removeObserver:self name:v9 object:v7];

  v10 = +[NSNotification CRLiOSSceneDidEnterBackground];
  [v8 removeObserver:self name:v10 object:v7];

  v11 = +[NSNotification CRLiOSSceneDidBecomeActive];
  [v8 removeObserver:self name:v11 object:v7];

  v12.receiver = self;
  v12.super_class = CRLiOSShapeLibraryViewController;
  [(CRLiOSShapeLibraryViewController *)&v12 viewWillDisappear:v3];
}

- (void)viewDidDisappear:(BOOL)a3
{
  v3 = a3;
  [(CRLiOSShapeLibraryViewController *)self setP_didDragOutsidePopover:0];
  v5 = [(CRLiOSShapeLibraryViewController *)self p_shapeSearchResultsCollection];
  [v5 setSearchTerm:0 completionHandler:0];

  v6 = [(CRLiOSShapeLibraryViewController *)self p_interactiveCanvasController];
  v7 = [v6 changeNotifier];
  v8 = [(CRLiOSShapeLibraryViewController *)self associatedBoardItems];
  v9 = [v8 anyObject];
  v10 = [v9 parentContainerItem];
  [v7 removeObserver:self forChangeSource:v10];

  v11 = [(CRLiOSShapeLibraryViewController *)self associatedBoardItems];
  v12 = [v11 allObjects];
  v13 = [v12 crl_firstObjectPassingTest:&stru_1018516F8];

  v14 = [(CRLiOSShapeLibraryViewController *)self p_interactiveCanvasController];
  v15 = [v14 changeNotifier];
  [v15 removeObserver:self forChangeSource:v13];

  [(CRLiOSShapeLibraryViewController *)self setAssociatedBoardItems:0];
  v16.receiver = self;
  v16.super_class = CRLiOSShapeLibraryViewController;
  [(CRLiOSShapeLibraryViewController *)&v16 viewDidDisappear:v3];
}

- (CGSize)preferredContentSize
{
  v3 = [(CRLiOSShapeLibraryViewController *)self traitCollection];
  if ([v3 userInterfaceIdiom] == 1)
  {
    v4 = 1;
  }

  else
  {
    v5 = [(CRLiOSShapeLibraryViewController *)self traitCollection];
    v4 = [v5 userInterfaceIdiom] == 6;
  }

  v6 = [(CRLiOSShapeLibraryViewController *)self presentingViewController];

  if (v4 && v6)
  {
    v7 = 496.0;
    v8 = 375.0;
  }

  else
  {
    v9.receiver = self;
    v9.super_class = CRLiOSShapeLibraryViewController;
    [(CRLiOSShapeLibraryViewController *)&v9 preferredContentSize];
  }

  result.height = v7;
  result.width = v8;
  return result;
}

- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4
{
  height = a3.height;
  width = a3.width;
  v7 = a4;
  v12.receiver = self;
  v12.super_class = CRLiOSShapeLibraryViewController;
  [(CRLiOSShapeLibraryViewController *)&v12 viewWillTransitionToSize:v7 withTransitionCoordinator:width, height];
  v8 = [(CRLiOSShapeLibraryViewController *)self p_shapeInsertViewController];
  v9 = [v8 isViewLoaded];

  if (v9)
  {
    v10 = [(CRLiOSShapeLibraryViewController *)self p_shapeInsertViewController];
    [v10 viewWillTransitionToSize:v7 withTransitionCoordinator:{width, height}];
  }

  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1002B6B00;
  v11[3] = &unk_101848DD8;
  v11[4] = self;
  [v7 animateAlongsideTransition:v11 completion:0];
}

- (void)p_workspaceWillDeactivate:(id)a3
{
  v6 = [(CRLiOSShapeLibraryViewController *)self view];
  [v6 frame];
  [(CRLiOSShapeLibraryViewController *)self setP_cachedViewFrameSize:v4, v5];
}

- (void)p_workspaceDidActivate:(id)a3
{
  if (!-[CRLiOSShapeLibraryViewController p_didEnterBackground](self, "p_didEnterBackground", a3) || ((-[CRLiOSShapeLibraryViewController setP_didEnterBackground:](self, "setP_didEnterBackground:", 0), -[CRLiOSShapeLibraryViewController p_cachedViewFrameSize](self, "p_cachedViewFrameSize"), v5 = v4, v7 = v6, -[CRLiOSShapeLibraryViewController view](self, "view"), v8 = objc_claimAutoreleasedReturnValue(), [v8 frame], v10 = v9, v12 = v11, v8, v5 == v10) ? (v13 = v7 == v12) : (v13 = 0), v13))
  {
    v14 = [(CRLiOSShapeLibraryViewController *)self p_pages];
    [(CRLiOSShapeLibraryViewController *)self p_reloadPagesIfNeeded:v14];
  }

  else
  {
    [(CRLiOSShapeLibraryViewController *)self p_reloadAllPresetCollectionViewControllers];
  }

  [(CRLiOSShapeLibraryViewController *)self p_setAllPresetCollectionViewControllersHidden:0];
}

- (void)p_updateForPresentationSemanticContext
{
  v3 = [(CRLiOSShapeLibraryViewController *)self traitCollection];
  v4 = [v3 _presentationSemanticContext];

  if (v4 == 3)
  {
    v5 = +[UIColor clearColor];
    v6 = [(CRLiOSShapeLibraryViewController *)self view];
    [v6 setBackgroundColor:v5];

    v7 = [(CRLiOSShapeLibraryViewController *)self p_navigationBar];
    [v7 setHidden:1];

    v8 = [(CRLiOSShapeLibraryViewController *)self p_constraintsForShowingNavigationBar];
    [NSLayoutConstraint deactivateConstraints:v8];

    [(CRLiOSShapeLibraryViewController *)self p_constraintsForHidingNavigationBar];
  }

  else
  {
    v9 = +[UIColor systemGroupedBackgroundColor];
    v10 = [(CRLiOSShapeLibraryViewController *)self view];
    [v10 setBackgroundColor:v9];

    v11 = [(CRLiOSShapeLibraryViewController *)self p_navigationBar];
    [v11 setHidden:0];

    v12 = [(CRLiOSShapeLibraryViewController *)self p_constraintsForHidingNavigationBar];
    [NSLayoutConstraint deactivateConstraints:v12];

    [(CRLiOSShapeLibraryViewController *)self p_constraintsForShowingNavigationBar];
  }
  v13 = ;
  [NSLayoutConstraint activateConstraints:?];
}

- (void)processChanges:(id)a3 forChangeSource:(id)a4
{
  v6 = a3;
  v7 = a4;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = objc_opt_class();
    v9 = sub_100013F00(v8, v7);
    v10 = [(CRLiOSShapeLibraryViewController *)self associatedBoardItems];
    v11 = [v10 allObjects];

    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_1002B6F90;
    v14[3] = &unk_101851720;
    v12 = v9;
    v15 = v12;
    if (([v11 crl_allObjectsPassTest:v14] & 1) == 0)
    {
      [(CRLiOSShapeLibraryViewController *)self dismissViewControllerAnimated:1 completion:0];
    }
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13[0] = _NSConcreteStackBlock;
      v13[1] = 3221225472;
      v13[2] = sub_1002B6FE8;
      v13[3] = &unk_101851748;
      v13[4] = self;
      [v6 enumerateObjectsUsingBlock:v13];
    }
  }
}

- (id)p_editingCoordinator
{
  v3 = [(CRLiOSShapeLibraryViewController *)self p_delegate];
  v4 = [v3 editingCoordinatorForContentLibraryViewController:self];

  return v4;
}

- (id)p_boardItemFactory
{
  v2 = [(CRLiOSShapeLibraryViewController *)self p_editingCoordinator];
  v3 = [v2 boardItemFactory];

  return v3;
}

- (id)p_interactiveCanvasController
{
  v3 = [(CRLiOSShapeLibraryViewController *)self p_delegate];
  v4 = [v3 interactiveCanvasControllerForContentLibraryViewController:self];

  return v4;
}

- (id)insertPageViewController:(id)a3 viewControllerBeforeViewController:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(CRLiOSShapeLibraryViewController *)self p_pages];
  v9 = objc_opt_class();
  v10 = sub_100013F00(v9, v6);

  v11 = [v8 indexOfObject:v10];
  v12 = [(CRLiOSShapeLibraryViewController *)self p_shapeInsertViewController];

  if (v12 != v7)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_10134857C();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_101348590();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_101348618();
    }

    v13 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v13);
    }

    v14 = [NSString stringWithUTF8String:"[CRLiOSShapeLibraryViewController insertPageViewController:viewControllerBeforeViewController:]"];
    v15 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/iOS/Views/CRLiOSShapeLibraryViewController.m"];
    [CRLAssertionHandler handleFailureInFunction:v14 file:v15 lineNumber:422 isFatal:0 description:"Delegate callback called for unexpected insert page view controller."];
  }

  if (v11 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v16 = 0;
  }

  else
  {
    v16 = 0;
    if ([v8 count] >= 2 && v11)
    {
      v16 = [v8 objectAtIndexedSubscript:v11 - 1];
    }
  }

  return v16;
}

- (id)insertPageViewController:(id)a3 viewControllerAfterViewController:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(CRLiOSShapeLibraryViewController *)self p_pages];
  v9 = objc_opt_class();
  v10 = sub_100013F00(v9, v6);

  v11 = [v8 indexOfObject:v10];
  v12 = [(CRLiOSShapeLibraryViewController *)self p_shapeInsertViewController];

  if (v12 != v7)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_101348640();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_101348654();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_1013486DC();
    }

    v13 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v13);
    }

    v14 = [NSString stringWithUTF8String:"[CRLiOSShapeLibraryViewController insertPageViewController:viewControllerAfterViewController:]"];
    v15 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/iOS/Views/CRLiOSShapeLibraryViewController.m"];
    [CRLAssertionHandler handleFailureInFunction:v14 file:v15 lineNumber:439 isFatal:0 description:"Delegate callback called for unexpected insert page view controller."];
  }

  if (v11 == 0x7FFFFFFFFFFFFFFFLL || [v8 count] < 2 || v11 >= objc_msgSend(v8, "count") - 1)
  {
    v16 = 0;
  }

  else
  {
    v16 = [v8 objectAtIndexedSubscript:v11 + 1];
  }

  return v16;
}

- (id)insertPageViewController:(id)a3 viewControllerForPageAtIndex:(unint64_t)a4
{
  v6 = a3;
  v7 = [(CRLiOSShapeLibraryViewController *)self p_shapeInsertViewController];

  if (v7 != v6)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_101348704();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_101348718();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_1013487A0();
    }

    v8 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v8);
    }

    v9 = [NSString stringWithUTF8String:"[CRLiOSShapeLibraryViewController insertPageViewController:viewControllerForPageAtIndex:]"];
    v10 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/iOS/Views/CRLiOSShapeLibraryViewController.m"];
    [CRLAssertionHandler handleFailureInFunction:v9 file:v10 lineNumber:452 isFatal:0 description:"Delegate callback called for unexpected insert page view controller."];
  }

  v11 = [(CRLiOSShapeLibraryViewController *)self p_pages];
  if ([v11 count] <= a4)
  {
    v12 = 0;
  }

  else
  {
    v12 = [v11 objectAtIndexedSubscript:a4];
  }

  return v12;
}

- (id)insertPageViewControllerViewControllerForSearch:(id)a3
{
  v4 = [[CRLiOSPresetCollectionViewController alloc] initWithPresetCollectionType:0 delegate:self];
  [(CRLiOSShapeLibraryViewController *)self setP_searchViewController:v4];

  return v4;
}

- (unint64_t)presentationCountForInsertPageViewController:(id)a3
{
  v4 = a3;
  v5 = [(CRLiOSShapeLibraryViewController *)self p_shapeInsertViewController];

  if (v5 != v4)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_1013487C8();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_1013487DC();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_101348864();
    }

    v6 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v6);
    }

    v7 = [NSString stringWithUTF8String:"[CRLiOSShapeLibraryViewController presentationCountForInsertPageViewController:]"];
    v8 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/iOS/Views/CRLiOSShapeLibraryViewController.m"];
    [CRLAssertionHandler handleFailureInFunction:v7 file:v8 lineNumber:468 isFatal:0 description:"Delegate callback called for unexpected insert page view controller."];
  }

  v9 = [(CRLiOSShapeLibraryViewController *)self p_pages];
  v10 = [v9 count];

  return v10;
}

- (unint64_t)insertPageViewController:(id)a3 presentationIndexForViewController:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(CRLiOSShapeLibraryViewController *)self p_shapeInsertViewController];

  if (v8 != v7)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_10134888C();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_1013488A0();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_101348928();
    }

    v9 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v9);
    }

    v10 = [NSString stringWithUTF8String:"[CRLiOSShapeLibraryViewController insertPageViewController:presentationIndexForViewController:]"];
    v11 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/iOS/Views/CRLiOSShapeLibraryViewController.m"];
    [CRLAssertionHandler handleFailureInFunction:v10 file:v11 lineNumber:473 isFatal:0 description:"Delegate callback called for unexpected insert page view controller."];
  }

  v12 = objc_opt_class();
  v13 = sub_100013F00(v12, v6);

  v14 = [(CRLiOSShapeLibraryViewController *)self p_pageNumberForPresetCollectionViewController:v13];
  return v14;
}

- (unint64_t)selectedSubpageIndexForInsertPageViewController:(id)a3
{
  v4 = a3;
  v5 = [(CRLiOSShapeLibraryViewController *)self p_shapeInsertViewController];

  if (v5 != v4)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_101348950();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_101348964();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_1013489EC();
    }

    v6 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v6);
    }

    v7 = [NSString stringWithUTF8String:"[CRLiOSShapeLibraryViewController selectedSubpageIndexForInsertPageViewController:]"];
    v8 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/iOS/Views/CRLiOSShapeLibraryViewController.m"];
    [CRLAssertionHandler handleFailureInFunction:v7 file:v8 lineNumber:480 isFatal:0 description:"Delegate callback called for unexpected insert page view controller."];
  }

  return 0;
}

- (void)insertPageViewController:(id)a3 didSelectPageNumber:(unint64_t)a4
{
  v6 = a3;
  v7 = [v6 selectedPageNumberAutosaveName];
  [(CRLiOSShapeLibraryViewController *)self p_setIntegerDefault:a4 forKey:v7];

  v8 = [(CRLiOSShapeLibraryViewController *)self p_shapeInsertViewController];

  if (v8 != v6)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_101348A14();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_101348A28();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_101348AB0();
    }

    v9 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v9);
    }

    v10 = [NSString stringWithUTF8String:"[CRLiOSShapeLibraryViewController insertPageViewController:didSelectPageNumber:]"];
    v11 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/iOS/Views/CRLiOSShapeLibraryViewController.m"];
    [CRLAssertionHandler handleFailureInFunction:v10 file:v11 lineNumber:491 isFatal:0 description:"Delegate callback called for unexpected insert page view controller."];
  }

  v12 = [(CRLiOSShapeLibraryViewController *)self p_pages];
  v13 = [v12 objectAtIndexedSubscript:a4];

  [v13 accessibilityFocusFirstVisiblePreset];
}

- (void)insertPageViewController:(id)a3 didSelectSubpageAtIndex:(unint64_t)a4
{
  v5 = a3;
  v6 = [(CRLiOSShapeLibraryViewController *)self p_shapeInsertViewController];

  if (v6 != v5)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_101348AD8();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_101348AEC();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_101348B74();
    }

    v7 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v7);
    }

    v8 = [NSString stringWithUTF8String:"[CRLiOSShapeLibraryViewController insertPageViewController:didSelectSubpageAtIndex:]"];
    v9 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/iOS/Views/CRLiOSShapeLibraryViewController.m"];
    [CRLAssertionHandler handleFailureInFunction:v8 file:v9 lineNumber:498 isFatal:0 description:"Delegate callback called for unexpected insert page view controller."];
  }
}

- (void)insertPageViewControllerWillBeginSearch:(id)a3
{
  v4 = a3;
  v5 = [(CRLiOSShapeLibraryViewController *)self p_shapeInsertViewController];

  if (v5 != v4)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_101348B9C();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_101348BB0();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_101348C38();
    }

    v6 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v6);
    }

    v7 = [NSString stringWithUTF8String:"[CRLiOSShapeLibraryViewController insertPageViewControllerWillBeginSearch:]"];
    v8 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/iOS/Views/CRLiOSShapeLibraryViewController.m"];
    [CRLAssertionHandler handleFailureInFunction:v7 file:v8 lineNumber:503 isFatal:0 description:"Delegate callback called for unexpected insert page view controller."];
  }

  v9 = [(CRLiOSShapeLibraryViewController *)self p_delegate];
  [v9 contentLibraryViewControllerWillBeginSearch:self];
}

- (void)insertPageViewControllerDidBeginSearch:(id)a3
{
  v4 = a3;
  v5 = [(CRLiOSShapeLibraryViewController *)self p_shapeInsertViewController];

  if (v5 != v4)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_101348C60();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_101348C74();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_101348CFC();
    }

    v6 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v6);
    }

    v7 = [NSString stringWithUTF8String:"[CRLiOSShapeLibraryViewController insertPageViewControllerDidBeginSearch:]"];
    v8 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/iOS/Views/CRLiOSShapeLibraryViewController.m"];
    [CRLAssertionHandler handleFailureInFunction:v7 file:v8 lineNumber:508 isFatal:0 description:"Delegate callback called for unexpected insert page view controller."];
  }

  [(CRLiOSShapeLibraryViewController *)self setP_searchState:1];
}

- (void)insertPageViewController:(id)a3 willSearchWithText:(id)a4 inViewController:(id)a5 searchViewController:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = [(CRLiOSShapeLibraryViewController *)self p_shapeInsertViewController];

  if (v14 != v10)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_101348D24();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_101348D38();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_101348DC0();
    }

    v15 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_101348DE8(v15);
    }

    v16 = [NSString stringWithUTF8String:"[CRLiOSShapeLibraryViewController insertPageViewController:willSearchWithText:inViewController:searchViewController:]"];
    v17 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/iOS/Views/CRLiOSShapeLibraryViewController.m"];
    [CRLAssertionHandler handleFailureInFunction:v16 file:v17 lineNumber:517 isFatal:0 description:"Delegate callback called for unexpected insert page view controller."];
  }

  v18 = [(CRLiOSShapeLibraryViewController *)self p_searchState];
  if ([v11 length])
  {
    v19 = 2;
  }

  else
  {
    v19 = 1;
  }

  v20 = [(CRLiOSShapeLibraryViewController *)self p_searchState];
  if (v20 != v19)
  {
    [(CRLiOSShapeLibraryViewController *)self setP_searchState:v19];
  }

  objc_initWeak(&location, self);
  v21 = [(CRLiOSShapeLibraryViewController *)self p_shapeSearchResultsCollection];
  v25[0] = _NSConcreteStackBlock;
  v25[1] = 3221225472;
  v25[2] = sub_1002B8A48;
  v25[3] = &unk_101851A30;
  v30 = v20 != v19;
  v22 = v12;
  v26 = v22;
  v29[1] = v18;
  v29[2] = v19;
  v23 = v13;
  v27 = v23;
  v24 = v11;
  v28 = v24;
  objc_copyWeak(v29, &location);
  [v21 setSearchTerm:v24 completionHandler:v25];

  objc_destroyWeak(v29);
  objc_destroyWeak(&location);
}

- (void)insertPageViewControllerWillEndSearch:(id)a3 cancelledExplicitly:(BOOL)a4
{
  v5 = a3;
  v6 = [(CRLiOSShapeLibraryViewController *)self p_shapeInsertViewController];

  if (v6 != v5)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_101348E90();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_101348EA4();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_101348F2C();
    }

    v7 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v7);
    }

    v8 = [NSString stringWithUTF8String:"[CRLiOSShapeLibraryViewController insertPageViewControllerWillEndSearch:cancelledExplicitly:]"];
    v9 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/iOS/Views/CRLiOSShapeLibraryViewController.m"];
    [CRLAssertionHandler handleFailureInFunction:v8 file:v9 lineNumber:557 isFatal:0 description:"Delegate callback called for unexpected insert page view controller."];
  }

  [(CRLiOSShapeLibraryViewController *)self setP_searchState:0];
  v10 = [(CRLiOSShapeLibraryViewController *)self p_shapeSearchResultsCollection];
  [v10 setSearchTerm:0 completionHandler:0];

  v11 = [(CRLiOSShapeLibraryViewController *)self p_delegate];
  [v11 contentLibraryViewControllerDidCancelSearch:self];
}

- (void)insertPageViewControllerDidEndSearch:(id)a3 cancelledExplicitly:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = [(CRLiOSShapeLibraryViewController *)self p_shapeInsertViewController];

  if (v7 != v6)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_101348F54();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_101348F68();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_101348FF0();
    }

    v8 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v8);
    }

    v9 = [NSString stringWithUTF8String:"[CRLiOSShapeLibraryViewController insertPageViewControllerDidEndSearch:cancelledExplicitly:]"];
    v10 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/iOS/Views/CRLiOSShapeLibraryViewController.m"];
    [CRLAssertionHandler handleFailureInFunction:v9 file:v10 lineNumber:564 isFatal:0 description:"Delegate callback called for unexpected insert page view controller."];
  }

  if (v4)
  {
    v11 = [(CRLiOSShapeLibraryViewController *)self p_interactiveCanvasController];
    v12 = [v11 layerHost];
    [v12 becomeFirstResponder];
  }
}

- (BOOL)insertPageViewControllerShouldAppearInSearchMode:(id)a3
{
  v4 = a3;
  v5 = [(CRLiOSShapeLibraryViewController *)self p_shapeInsertViewController];

  if (v5 != v4)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_101349018();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10134902C();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_1013490B4();
    }

    v6 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v6);
    }

    v7 = [NSString stringWithUTF8String:"[CRLiOSShapeLibraryViewController insertPageViewControllerShouldAppearInSearchMode:]"];
    v8 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/iOS/Views/CRLiOSShapeLibraryViewController.m"];
    [CRLAssertionHandler handleFailureInFunction:v7 file:v8 lineNumber:574 isFatal:0 description:"Delegate callback called for unexpected insert page view controller."];
  }

  v9 = [(CRLiOSShapeLibraryViewController *)self p_delegate];
  v10 = [v9 contentLibraryViewControllerShouldAppearInSearchMode:self];

  return v10;
}

- (void)insertPageViewControllerWillDisappear:(id)a3
{
  v4 = a3;
  v5 = [(CRLiOSShapeLibraryViewController *)self p_shapeInsertViewController];

  if (v5 != v4)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_1013490DC();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_1013490F0();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_101349178();
    }

    v6 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v6);
    }

    v7 = [NSString stringWithUTF8String:"[CRLiOSShapeLibraryViewController insertPageViewControllerWillDisappear:]"];
    v8 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/iOS/Views/CRLiOSShapeLibraryViewController.m"];
    [CRLAssertionHandler handleFailureInFunction:v7 file:v8 lineNumber:579 isFatal:0 description:"Delegate callback called for unexpected insert page view controller."];
  }

  if ([(CRLiOSShapeLibraryViewController *)self p_searchState]== 2 || [(CRLiOSShapeLibraryViewController *)self p_searchState]== 1)
  {
    v9 = [(CRLiOSShapeLibraryViewController *)self p_shapeSearchResultsCollection];
    v10 = [v9 searchTerm];

    v11 = &stru_1018BCA28;
    if (v10)
    {
      v11 = v10;
    }

    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  v13 = [(CRLiOSShapeLibraryViewController *)self p_delegate];
  [v13 contentLibraryViewController:self willDisappearWithSearchTerm:v12];
}

- (id)insertPageViewControllerDefaultSearchTerm:(id)a3
{
  v4 = a3;
  v5 = [(CRLiOSShapeLibraryViewController *)self p_shapeInsertViewController];

  if (v5 != v4)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_1013491A0();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_1013491B4();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_10134923C();
    }

    v6 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v6);
    }

    v7 = [NSString stringWithUTF8String:"[CRLiOSShapeLibraryViewController insertPageViewControllerDefaultSearchTerm:]"];
    v8 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/iOS/Views/CRLiOSShapeLibraryViewController.m"];
    [CRLAssertionHandler handleFailureInFunction:v7 file:v8 lineNumber:589 isFatal:0 description:"Delegate callback called for unexpected insert page view controller."];
  }

  v9 = [(CRLiOSShapeLibraryViewController *)self p_delegate];
  v10 = [v9 contentLibraryViewControllerDefaultSearchTerm:self];

  return v10;
}

- (BOOL)allowsInsertDrag
{
  v2 = self;
  v3 = [(CRLiOSShapeLibraryViewController *)self p_delegate];
  LOBYTE(v2) = [v3 contentLibraryViewControllerShouldAllowInsertDrag:v2];

  return v2;
}

- (id)contextWithPresetCollectionViewController:(id)a3
{
  v4 = a3;
  v5 = [(CRLiOSShapeLibraryViewController *)self traitCollection];
  if ([v5 userInterfaceIdiom] == 1 && (-[CRLiOSShapeLibraryViewController presentingViewController](self, "presentingViewController"), (v6 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v7 = v6;
    [(CRLiOSShapeLibraryViewController *)self p_contentSize];
    v9 = v8;

    if (v9 <= 496.0)
    {
      v10 = 1;
      goto LABEL_9;
    }
  }

  else
  {
  }

  if ([(CRLiOSShapeLibraryViewController *)self p_isSidebarLike])
  {
    v10 = 2;
  }

  else
  {
    v10 = 0;
  }

LABEL_9:
  v11 = [(CRLiOSShapeLibraryViewController *)self p_pageNumberForPresetCollectionViewController:v4];
  v12 = [(CRLiOSShapeLibraryViewController *)self p_searchState]== 2;
  v13 = [CRLiOSPresetCollectionContext alloc];
  [(CRLiOSShapeLibraryViewController *)self p_contentSize];
  v15 = v14;
  v17 = v16;
  v18 = [(CRLiOSShapeLibraryViewController *)self p_editingCoordinator];
  v19 = [(CRLiOSShapeLibraryViewController *)self traitCollection];
  v20 = [(CRLiOSPresetCollectionContext *)v13 initWithContextType:v10 contentSize:v18 editingCoordinator:v12 isSearching:v11 pageIndex:0 subpageIndex:v19 traitCollection:v15, v17];

  return v20;
}

- (void)presetCollectionViewController:(id)a3 didSelectPresetAtIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(CRLiOSShapeLibraryViewController *)self p_editingCoordinator];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1002B998C;
  v11[3] = &unk_101851B98;
  v11[4] = self;
  v12 = v7;
  v13 = v6;
  v9 = v6;
  v10 = v7;
  [v8 canPerformUserActionUsingBlock:v11];
}

- (void)p_changeSelectedShapesToItemAtIndexPath:(id)a3 forPresetCollectionViewController:(id)a4
{
  v16 = a3;
  v6 = a4;
  v7 = [(CRLiOSShapeLibraryViewController *)self p_interactiveCanvasController];
  v8 = [v7 editorController];
  v9 = [v8 mostSpecificCurrentEditorOfClass:objc_opt_class()];
  if (v9)
  {
    v10 = [(CRLiOSShapeLibraryViewController *)self contextWithPresetCollectionViewController:v6];
    v11 = [(CRLiOSShapeLibraryViewController *)self p_shapeAtIndexPath:v16 context:v10];
    v12 = [v11 pathSourceWithSize:{100.0, 100.0}];
    [_TtC8Freeform28CRLShapeLibraryPopoverHelper changeShapeForEditor:v9 shapePathSource:v12 interactiveCanvasController:v7];
  }

  [(CRLiOSShapeLibraryViewController *)self dismissViewControllerAnimated:1 completion:0];
  if ([(CRLiOSShapeLibraryViewController *)self p_isCompact])
  {
    v13 = [v7 layerHost];
    v14 = [v13 miniFormatterPresenter];
    v15 = [v8 selectionPath];
    [v14 presentMiniFormatterForSelectionPath:v15];
  }
}

- (id)itemsForBeginningDragSessionForPresetCollectionViewController:(id)a3 forCollectionView:(id)a4 atIndexPath:(id)a5
{
  v8 = a3;
  v46 = a4;
  v9 = a5;
  v47 = [(CRLiOSShapeLibraryViewController *)self contextWithPresetCollectionViewController:v8];
  v10 = objc_opt_class();
  v11 = -[CRLiOSShapeLibraryViewController p_boardItemForPresetCollectionType:atIndexPath:context:](self, "p_boardItemForPresetCollectionType:atIndexPath:context:", [v8 presetCollectionType], v9, v47);
  v12 = sub_100013F00(v10, v11);

  if (v12)
  {
    v44 = objc_alloc_init(CRLItemProviderItemWriter);
    v56 = v12;
    v13 = [NSArray arrayWithObjects:&v56 count:1];
    v14 = [(CRLiOSShapeLibraryViewController *)self p_interactiveCanvasController];
    v45 = [(CRLItemProviderItemWriter *)v44 createItemProviderWithCopyOfBoardItems:v13 fromInteractiveCanvasController:v14 outCopiedBoardItems:0];

    if (v45)
    {
      v15 = [v46 cellForItemAtIndexPath:v9];
      v16 = objc_opt_class();
      v22 = sub_100303920(v15, v16, 1, v17, v18, v19, v20, v21, &OBJC_PROTOCOL___CRLiOSPresetCollectionViewCell);

      v52[0] = 0;
      v52[1] = v52;
      v52[2] = 0x3032000000;
      v52[3] = sub_1002BA2B0;
      v52[4] = sub_1002BA2C0;
      v23 = [v22 presetButton];
      v53 = [v23 imageView];

      v24 = [(CRLiOSShapeLibraryViewController *)self p_shapeAtIndexPath:v9 context:v47];
      v25 = [v24 shapeType];

      v43 = objc_alloc_init(CRLSwatchRenderingContext);
      if (v25 <= 0x14 && ((1 << v25) & 0x1D8006) != 0)
      {
        v26 = 45.0;
      }

      else if ((v25 & 0xFFFFFFFFFFFFFFEFLL) == 2 || v25 == 19)
      {
        v26 = 45.0;
      }

      else
      {
        v26 = 0.0;
      }

      v50[0] = 0;
      v50[1] = v50;
      v50[2] = 0x3032000000;
      v50[3] = sub_1002BA2B0;
      v50[4] = sub_1002BA2C0;
      v51 = 0;
      v27 = +[CRLSwatchCache swatchCache];
      v28 = [v22 presetButton];
      [v28 bounds];
      v30 = v29;
      v32 = v31;
      v33 = [v12 pathSource];
      v34 = [(CRLiOSShapeLibraryViewController *)self p_editingCoordinator];
      v35 = [v27 shapeItemWithPresetsForSize:v25 shapeType:v33 shapePathSource:v34 angle:v43 editingCoordinator:v30 renderingContext:{v32, v26}];

      v55 = v35;
      v36 = [NSArray arrayWithObjects:&v55 count:1];
      v49[0] = _NSConcreteStackBlock;
      v49[1] = 3221225472;
      v49[2] = sub_1002BA2C8;
      v49[3] = &unk_101851C00;
      v49[4] = v35;
      v49[5] = v50;
      v49[6] = v25;
      [CRLCanvasLayoutController temporaryLayoutControllerForInfos:v36 useInBlock:v49];

      v37 = [[UIDragItem alloc] initWithItemProvider:v45];
      v48[0] = _NSConcreteStackBlock;
      v48[1] = 3221225472;
      v48[2] = sub_1002BA678;
      v48[3] = &unk_101851C28;
      v48[4] = v50;
      v48[5] = v52;
      [v37 setPreviewProvider:v48];
      v54 = v37;
      v38 = [NSArray arrayWithObjects:&v54 count:1];

      _Block_object_dispose(v50, 8);
      _Block_object_dispose(v52, 8);
    }

    else
    {
      +[CRLAssertionHandler _atomicIncrementAssertCount];
      if (qword_101AD5A10 != -1)
      {
        sub_101349264();
      }

      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_10134928C();
      }

      if (qword_101AD5A10 != -1)
      {
        sub_101349328();
      }

      v39 = off_1019EDA68;
      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_101349350(v39);
      }

      v22 = [NSString stringWithUTF8String:"[CRLiOSShapeLibraryViewController itemsForBeginningDragSessionForPresetCollectionViewController:forCollectionView:atIndexPath:]"];
      v40 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/iOS/Views/CRLiOSShapeLibraryViewController.m"];
      [CRLAssertionHandler handleFailureInFunction:v22 file:v40 lineNumber:715 isFatal:0 description:"invalid nil value for '%{public}s'", "itemProvider"];

      v38 = &__NSArray0__struct;
    }
  }

  else
  {
    v38 = &__NSArray0__struct;
  }

  return v38;
}

- (BOOL)staysOpenOnSelectionChange
{
  if ([(CRLiOSShapeLibraryViewController *)self p_canInsertAndConnectBoardItemToSelectedConnectionLine:0])
  {
    return 0;
  }

  else
  {
    return ![(CRLiOSShapeLibraryViewController *)self p_shouldChangeSelectedShapes];
  }
}

- (id)p_boardItemForPresetCollectionType:(unint64_t)a3 atIndexPath:(id)a4 context:(id)a5
{
  v8 = a4;
  v9 = a5;
  v10 = [(CRLiOSShapeLibraryViewController *)self p_boardItemFactory];
  if (a3)
  {
    v11 = 0;
  }

  else
  {
    v11 = [(CRLiOSShapeLibraryViewController *)self p_shapeInfoAtIndexPath:v8 boardItemFactory:v10 context:v9];
  }

  return v11;
}

- (id)p_shapeInfoAtIndexPath:(id)a3 boardItemFactory:(id)a4 context:(id)a5
{
  v8 = a4;
  v9 = [(CRLiOSShapeLibraryViewController *)self p_shapeAtIndexPath:a3 context:a5];
  v10 = [v9 pathSourceWithSize:{100.0, 100.0}];
  v11 = [(CRLiOSShapeLibraryViewController *)self p_interactiveCanvasController];
  v12 = [v11 selectionModelTranslator];
  v13 = [v11 editorController];
  v14 = [v13 selectionPath];
  v15 = [v12 infosForSelectionPath:v14];

  v16 = objc_opt_class();
  v17 = [v15 anyObject];
  v18 = sub_100014370(v16, v17);

  v19 = objc_opt_class();
  v20 = [v11 board];
  v21 = [v18 getConnectedFromWithBoardItemOwner:v20];
  if (v21)
  {
    v22 = sub_100014370(v19, v21);
  }

  else
  {
    [v11 board];
    v29 = v8;
    v23 = v30 = v9;
    [v18 getConnectedToWithBoardItemOwner:v23];
    v25 = v24 = v10;
    v22 = sub_100014370(v19, v25);

    v10 = v24;
    v8 = v29;
    v9 = v30;
  }

  if (!-[CRLiOSShapeLibraryViewController showLinesInLibrary](self, "showLinesInLibrary") && v18 && v22 && [v15 count] == 1)
  {
    v26 = [v8 makeShapeItemForDiagramWithConnectingTo:v22 with:v10 shapeType:{objc_msgSend(v9, "shapeType")}];
  }

  else
  {
    v26 = [v8 makeShapeItemWithShapeType:objc_msgSend(v9 pathSource:{"shapeType"), v10}];
  }

  v27 = v26;

  return v27;
}

- (void)p_insertShapeAtIndexPath:(id)a3 context:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(CRLiOSShapeLibraryViewController *)self p_boardItemFactory];
  v9 = [(CRLiOSShapeLibraryViewController *)self p_interactiveCanvasController];
  v10 = [v9 commandController];
  [v10 openGroup];
  [v10 enableProgressiveEnqueuingInCurrentGroup];
  v11 = [(CRLiOSShapeLibraryViewController *)self p_shapeAtIndexPath:v7 context:v6];
  v12 = [v11 shapeType];

  v13 = [(CRLiOSShapeLibraryViewController *)self p_shapeInfoAtIndexPath:v7 boardItemFactory:v8 context:v6];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v14 = [v9 canvasEditor];
    v15 = [v14 infosToConnect];
    v16 = [v15 count];

    if (v16 == 2)
    {
      v17 = [v9 canvasEditor];
      v18 = [v17 connectionLineItemToUseForConnecting];

      if (v18)
      {
        v19 = [v8 makeDuplicateOfBoardItem:v18];
        v20 = v19;
        if (v19)
        {
          v21 = v19;
        }

        else
        {
          v21 = v13;
        }

        v22 = v21;

        v13 = v22;
      }
    }
  }

  v23 = objc_opt_class();
  v24 = sub_100014370(v23, v13);
  v25 = v24;
  if (v24)
  {
    if (v12 == 21)
    {
      v26 = [v24 pathSource];
      v27 = [v26 localizationKey];
    }

    else
    {
      v27 = [CRLBasicShapeLibraryShape baseNameForShapeType:v12];
    }

    [_TtC8Freeform25CRLAnalyticsShapeInserted sendShapeInsertedAnalyticsWithShapeIdentifier:v27 isMiniShapePicker:0];
  }

  v28 = [v9 canvasEditor];
  v29 = [v28 infosToConnect];
  v30 = [v8 blockToRunCommandToPostProcessWithNewBoardItem:v13 shapeType:v12 infosToConnect:v29 commandController:v10];

  v32 = v13;
  v31 = [NSArray arrayWithObjects:&v32 count:1];
  [(CRLiOSShapeLibraryViewController *)self p_positionAndInsertBoardItems:v31];

  v30[2](v30);
  [v10 closeGroup];
  [(CRLiOSShapeLibraryViewController *)self dismissViewControllerAnimated:1 completion:0];
}

- (BOOL)p_isCompact
{
  v3 = [(CRLiOSShapeLibraryViewController *)self p_delegate];
  v4 = [v3 boardViewControllerTraitCollectionForContentLibraryViewController:self];

  if ([v4 crl_isCompactWidth])
  {
    v5 = 1;
  }

  else
  {
    v5 = +[UIDevice crl_phoneUI];
  }

  return v5;
}

- (id)p_pagesForSegment:(unint64_t)a3
{
  v5 = [(CRLiOSShapeLibraryViewController *)self p_allPresetCollectionViewControllers];
  v6 = v5;
  if (a3 == 0x7FFFFFFFFFFFFFFFLL || [v5 count] <= a3)
  {
    v8 = &__NSArray0__struct;
  }

  else
  {
    v7 = [(CRLiOSShapeLibraryViewController *)self p_allPresetCollectionViewControllers];
    v8 = [v7 objectAtIndexedSubscript:a3];
  }

  return v8;
}

- (id)p_createShapeInsertViewController
{
  v3 = [(CRLiOSShapeLibraryViewController *)self p_pagesForPresetCollectionType:0];
  v4 = [(CRLiOSShapeLibraryViewController *)self p_pageViewControllerWithPages:v3 presetCollectionType:0];
  v7 = v3;
  v5 = [NSArray arrayWithObjects:&v7 count:1];
  [(CRLiOSShapeLibraryViewController *)self setP_allPresetCollectionViewControllers:v5];

  return v4;
}

- (unint64_t)p_totalNumberOfPagesNeededForPresetCollectionType:(unint64_t)a3
{
  if (a3)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_1013493F8();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10134940C();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_101349494();
    }

    v4 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v4);
    }

    v5 = [NSString stringWithUTF8String:"[CRLiOSShapeLibraryViewController p_totalNumberOfPagesNeededForPresetCollectionType:]"];
    v6 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/iOS/Views/CRLiOSShapeLibraryViewController.m"];
    [CRLAssertionHandler handleFailureInFunction:v5 file:v6 lineNumber:943 isFatal:0 description:"This method only knows how to count pages of shapes."];
  }

  v7 = [(CRLiOSShapeLibraryViewController *)self p_shapeCollectionDataSource];
  v8 = [v7 categoryNames];
  v9 = [v8 count];

  return v9;
}

- (id)p_pagesForPresetCollectionType:(unint64_t)a3
{
  v5 = [(CRLiOSShapeLibraryViewController *)self p_totalNumberOfPagesNeededForPresetCollectionType:?];
  v6 = [NSMutableArray arrayWithCapacity:v5];
  if (v5)
  {
    v7 = v5;
    do
    {
      v8 = [[CRLiOSPresetCollectionViewController alloc] initWithPresetCollectionType:a3 delegate:self];
      [v6 addObject:v8];

      --v7;
    }

    while (v7);
  }

  if (![v6 count])
  {
    v9 = +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_1013494BC();
    }

    v10 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      *buf = 67110402;
      v16 = v9;
      v17 = 2082;
      v18 = "[CRLiOSShapeLibraryViewController p_pagesForPresetCollectionType:]";
      v19 = 2082;
      v20 = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/iOS/Views/CRLiOSShapeLibraryViewController.m";
      v21 = 1024;
      v22 = 957;
      v23 = 2048;
      v24 = a3;
      v25 = 2048;
      v26 = v5;
      _os_log_error_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Insert pages are empty for type %zi! Requested %zi pages.", buf, 0x36u);
    }

    if (qword_101AD5A10 != -1)
    {
      sub_1013494D0();
    }

    v11 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v11);
    }

    v12 = [NSString stringWithUTF8String:"[CRLiOSShapeLibraryViewController p_pagesForPresetCollectionType:]"];
    v13 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/iOS/Views/CRLiOSShapeLibraryViewController.m"];
    [CRLAssertionHandler handleFailureInFunction:v12 file:v13 lineNumber:957 isFatal:0 description:"Insert pages are empty for type %zi! Requested %zi pages.", a3, v5];
  }

  return v6;
}

- (id)p_pageViewControllerWithPages:(id)a3 presetCollectionType:(unint64_t)a4
{
  v6 = a3;
  v7 = [[CRLiOSInsertPageViewController alloc] initWithTransitionStyle:1 navigationOrientation:0 options:0];
  v8 = v7;
  v9 = 0;
  if (!a4)
  {
    [(CRLiOSInsertPageViewController *)v7 setSelectedPageNumberAutosaveName:@"CRLiOSInsertPageViewControllerSelectedPageShapes"];
    [(CRLiOSInsertPageViewController *)v8 setSelectedSubpageAutosaveName:@"CRLiOSInsertPageViewControllerSelectedSubpageShapes"];
    v9 = 0;
  }

  v10 = [(CRLiOSInsertPageViewController *)v8 selectedPageNumberAutosaveName];
  v11 = [(CRLiOSShapeLibraryViewController *)self p_integerDefaultForKey:v10];

  if (v11 != 0x7FFFFFFFFFFFFFFFLL && v11 < [v6 count])
  {
    v9 = v11;
  }

  v12 = [v6 objectAtIndexedSubscript:v9];
  [(CRLiOSInsertPageViewController *)v8 setInsertPageViewControllerDataSource:self];
  [(CRLiOSInsertPageViewController *)v8 setInsertPageViewControllerDelegate:self];
  v13 = [v12 layout];
  [(CRLiOSInsertPageViewController *)v8 setInsertPageViewControllerNavigationDataSource:v13];

  [(CRLiOSShapeLibraryViewController *)self preferredContentSize];
  [(CRLiOSInsertPageViewController *)v8 setPreferredContentSize:?];
  v16 = v12;
  v14 = [NSArray arrayWithObjects:&v16 count:1];
  [(CRLiOSInsertPageViewController *)v8 setViewControllers:v14];

  return v8;
}

- (unint64_t)p_pageNumberForPresetCollectionViewController:(id)a3
{
  v4 = a3;
  v5 = [(CRLiOSShapeLibraryViewController *)self p_pages];
  v6 = [v5 indexOfObject:v4];

  return v6;
}

- (void)p_reloadAllPresetCollectionViewControllers
{
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v3 = [(CRLiOSShapeLibraryViewController *)self p_allPresetCollectionViewControllers];
  v4 = [v3 countByEnumeratingWithState:&v19 objects:v24 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v20;
    do
    {
      v7 = 0;
      do
      {
        if (*v20 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v19 + 1) + 8 * v7);
        v15 = 0u;
        v16 = 0u;
        v17 = 0u;
        v18 = 0u;
        v9 = v8;
        v10 = [v9 countByEnumeratingWithState:&v15 objects:v23 count:16];
        if (v10)
        {
          v11 = v10;
          v12 = *v16;
          do
          {
            v13 = 0;
            do
            {
              if (*v16 != v12)
              {
                objc_enumerationMutation(v9);
              }

              [*(*(&v15 + 1) + 8 * v13) reloadData];
              v13 = v13 + 1;
            }

            while (v11 != v13);
            v11 = [v9 countByEnumeratingWithState:&v15 objects:v23 count:16];
          }

          while (v11);
        }

        v7 = v7 + 1;
      }

      while (v7 != v5);
      v5 = [v3 countByEnumeratingWithState:&v19 objects:v24 count:16];
    }

    while (v5);
  }

  v14 = [(CRLiOSShapeLibraryViewController *)self p_searchViewController];
  [v14 reloadData];
}

- (void)p_setAllPresetCollectionViewControllersHidden:(BOOL)a3
{
  v3 = a3;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v4 = [(CRLiOSShapeLibraryViewController *)self p_allPresetCollectionViewControllers];
  v5 = [v4 countByEnumeratingWithState:&v20 objects:v25 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v21;
    do
    {
      v8 = 0;
      do
      {
        if (*v21 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v20 + 1) + 8 * v8);
        v16 = 0u;
        v17 = 0u;
        v18 = 0u;
        v19 = 0u;
        v10 = v9;
        v11 = [v10 countByEnumeratingWithState:&v16 objects:v24 count:16];
        if (v11)
        {
          v12 = v11;
          v13 = *v17;
          do
          {
            v14 = 0;
            do
            {
              if (*v17 != v13)
              {
                objc_enumerationMutation(v10);
              }

              v15 = [*(*(&v16 + 1) + 8 * v14) view];
              [v15 setHidden:v3];

              v14 = v14 + 1;
            }

            while (v12 != v14);
            v12 = [v10 countByEnumeratingWithState:&v16 objects:v24 count:16];
          }

          while (v12);
        }

        v8 = v8 + 1;
      }

      while (v8 != v6);
      v6 = [v4 countByEnumeratingWithState:&v20 objects:v25 count:16];
    }

    while (v6);
  }
}

- (void)p_setIntegerDefault:(unint64_t)a3 forKey:(id)a4
{
  v5 = a4;
  v7 = +[NSUserDefaults standardUserDefaults];
  v6 = [NSNumber numberWithUnsignedInteger:a3];
  [v7 setObject:v6 forKey:v5];
}

- (unint64_t)p_integerDefaultForKey:(id)a3
{
  v3 = a3;
  v4 = objc_opt_class();
  v5 = +[NSUserDefaults standardUserDefaults];
  v6 = [v5 objectForKey:v3];

  v7 = sub_100013F00(v4, v6);

  if (v7)
  {
    v8 = [v7 integerValue];
  }

  else
  {
    v8 = 0x7FFFFFFFFFFFFFFFLL;
  }

  return v8;
}

- (CGSize)p_contentSize
{
  v2 = [(CRLiOSShapeLibraryViewController *)self p_shapeInsertViewController];
  [v2 contentSize];
  v4 = v3;
  v6 = v5;

  v7 = v4;
  v8 = v6;
  result.height = v8;
  result.width = v7;
  return result;
}

- (BOOL)p_isSidebarLike
{
  [(CRLiOSShapeLibraryViewController *)self p_contentSize];
  v4 = v3;
  v6 = v5;
  v7 = [(CRLiOSShapeLibraryViewController *)self traitCollection];
  v8 = [v7 userInterfaceIdiom] == 1 && objc_msgSend(v7, "verticalSizeClass") == 2 && objc_msgSend(v7, "horizontalSizeClass") == 1 && v6 >= 736.0 && v4 <= 375.0;

  return v8;
}

- (void)p_dismissIfNeededWithBlock:(id)a3
{
  v4 = a3;
  if ([(CRLiOSShapeLibraryViewController *)self p_isCompact])
  {
    [(CRLiOSShapeLibraryViewController *)self dismissViewControllerAnimated:1 completion:v4];
  }

  else if (v4)
  {
    v4[2]();
  }
}

- (BOOL)p_canInsertAndConnectBoardItemToSelectedConnectionLine:(id)a3
{
  v4 = a3;
  v5 = [(CRLiOSShapeLibraryViewController *)self p_interactiveCanvasController];
  v6 = [v5 editorController];
  v7 = [v6 mostSpecificCurrentEditorOfClass:objc_opt_class()];

  if (!v7 || (([(CRLiOSShapeLibraryViewController *)self p_unscaledPopoverAnchorPoint], v9 == INFINITY) ? (v10 = v8 == INFINITY) : (v10 = 0), v10))
  {
    v12 = 0;
  }

  else
  {
    if (v4)
    {
      v11 = [v7 canHandleInsertAndConnectBoardItem:v4];
    }

    else
    {
      v11 = [v7 currentSelectionIsValidForInsertAndConnectBoardItem];
    }

    v12 = v11;
  }

  return v12;
}

- (void)p_positionAndInsertBoardItems:(id)a3
{
  v4 = a3;
  v5 = +[CRLInsertionContext nonInteractiveInsertionContext];
  v6 = [(CRLiOSShapeLibraryViewController *)self p_interactiveCanvasController];
  v7 = [v6 editorController];
  v8 = [v7 mostSpecificCurrentEditorOfClass:objc_opt_class()];

  if ([v4 count] == 1)
  {
    v9 = [v4 objectAtIndexedSubscript:0];
    v10 = [(CRLiOSShapeLibraryViewController *)self p_canInsertAndConnectBoardItemToSelectedConnectionLine:v9];

    if (v10)
    {
      v11 = [v4 objectAtIndexedSubscript:0];
      v12 = [v8 anyConnectionLine];
      v13 = v12;
      if (v8)
      {
        if (v12)
        {
LABEL_31:
          [v8 insertAndConnectBoardItem:v11 postProcessBlock:0];
          [_TtC8Freeform27CRLInsertionAnimationHelper addInsertionAnimationsToInfo:v11 connectionLineLayout:v13 onInteractiveCanvasController:v6];

          goto LABEL_32;
        }
      }

      else
      {
        +[CRLAssertionHandler _atomicIncrementAssertCount];
        if (qword_101AD5A10 != -1)
        {
          sub_1013494F8();
        }

        if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
        {
          sub_10134950C();
        }

        if (qword_101AD5A10 != -1)
        {
          sub_1013495A8();
        }

        v20 = off_1019EDA68;
        if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
        {
          sub_10130DA10(v20);
        }

        v21 = [NSString stringWithUTF8String:"[CRLiOSShapeLibraryViewController p_positionAndInsertBoardItems:]"];
        v22 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/iOS/Views/CRLiOSShapeLibraryViewController.m"];
        [CRLAssertionHandler handleFailureInFunction:v21 file:v22 lineNumber:1099 isFatal:0 description:"invalid nil value for '%{public}s'", "connectionLineEditor"];

        if (v13)
        {
          goto LABEL_31;
        }
      }

      +[CRLAssertionHandler _atomicIncrementAssertCount];
      if (qword_101AD5A10 != -1)
      {
        sub_1013495D0();
      }

      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_1013495F8();
      }

      if (qword_101AD5A10 != -1)
      {
        sub_101349694();
      }

      v23 = off_1019EDA68;
      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_10130DA10(v23);
      }

      v24 = [NSString stringWithUTF8String:"[CRLiOSShapeLibraryViewController p_positionAndInsertBoardItems:]"];
      v25 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/iOS/Views/CRLiOSShapeLibraryViewController.m"];
      [CRLAssertionHandler handleFailureInFunction:v24 file:v25 lineNumber:1100 isFatal:0 description:"invalid nil value for '%{public}s'", "selectedConnectionLineLayout"];

      goto LABEL_31;
    }
  }

  [(CRLiOSShapeLibraryViewController *)self p_unscaledPopoverAnchorPoint];
  if (v15 != INFINITY || v14 != INFINITY)
  {
    [(CRLiOSShapeLibraryViewController *)self p_unscaledPopoverAnchorPoint];
    if ((sub_1001228B4() & 1) == 0)
    {
      [(CRLiOSShapeLibraryViewController *)self p_unscaledPopoverAnchorPoint];
      v17 = [CRLInsertionContext dragInsertionContextWithPreferredCenter:0 required:0 fromDragToInsertController:0 insertFloating:0x7FFFFFFFFFFFFFFFLL targetZOrder:?];

      v5 = v17;
    }
  }

  v18 = [v6 editorController];
  v19 = [v18 mostSpecificCurrentEditorOfClass:objc_opt_class() conformingToProtocol:&OBJC_PROTOCOL___CRLBoardItemInsertionEditor];

  [v19 prepareGeometryForInsertingBoardItems:v4 withInsertionContext:v5];
  [v19 insertBoardItems:v4 withInsertionContext:v5 postProcessBlock:0];
  [_TtC8Freeform27CRLInsertionAnimationHelper addInsertionAnimationsToInfos:v4 onInteractiveCanvasController:v6];

LABEL_32:
  v26 = [(CRLiOSShapeLibraryViewController *)self p_delegate];
  [v26 contentLibraryViewController:self didInsertBoardItems:v4];
}

- (id)p_shapeAtIndexPath:(id)a3 context:(id)a4
{
  v6 = a4;
  v7 = a3;
  if ([v6 isSearching])
  {
    v8 = [(CRLiOSShapeLibraryViewController *)self p_shapeSearchResultsCollection];
    v9 = [v8 shapeAtIndexPath:v7];
  }

  else
  {
    v8 = [(CRLiOSShapeLibraryViewController *)self p_shapeCollectionDataSource];
    v10 = [v7 row];

    v9 = [v8 shapeAtIndex:v10 categoryIndex:{objc_msgSend(v6, "pageIndex")}];
  }

  return v9;
}

- (id)p_shapeWithIdentifier:(id)a3 context:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(CRLiOSShapeLibraryViewController *)self p_shapeCollectionDataSource];
  v9 = [v6 pageIndex];

  v10 = [v8 shapeWithIdentifier:v7 categoryIndex:v9];

  return v10;
}

- (void)p_shapeLibraryIndexingDidFinish:(id)a3
{
  if ([(CRLiOSShapeLibraryViewController *)self p_searchState])
  {
    v4 = [(CRLiOSShapeLibraryViewController *)self p_shapeSearchResultsCollection];
    [v4 resetSearchResults];

    v5 = [(CRLiOSShapeLibraryViewController *)self p_searchViewController];
    [v5 reloadData];
  }
}

- (CGSize)p_cachedViewFrameSize
{
  width = self->_cachedViewFrameSize.width;
  height = self->_cachedViewFrameSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (CRLiOSContentLibraryViewControllerDelegate)p_delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (CGPoint)p_unscaledPopoverAnchorPoint
{
  x = self->_unscaledPopoverAnchorPoint.x;
  y = self->_unscaledPopoverAnchorPoint.y;
  result.y = y;
  result.x = x;
  return result;
}

@end