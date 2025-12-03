@interface CRLiOSShapeLibraryViewController
- (BOOL)allowsInsertDrag;
- (BOOL)insertPageViewControllerShouldAppearInSearchMode:(id)mode;
- (BOOL)p_canInsertAndConnectBoardItemToSelectedConnectionLine:(id)line;
- (BOOL)p_isCompact;
- (BOOL)p_isSidebarLike;
- (BOOL)staysOpenOnSelectionChange;
- (CGPoint)p_unscaledPopoverAnchorPoint;
- (CGSize)p_cachedViewFrameSize;
- (CGSize)p_contentSize;
- (CGSize)preferredContentSize;
- (CRLiOSContentLibraryViewControllerDelegate)p_delegate;
- (CRLiOSShapeLibraryViewController)initWithDelegate:(id)delegate shouldChangeSelectedShapes:(BOOL)shapes;
- (CRLiOSShapeLibraryViewController)initWithDelegate:(id)delegate unscaledPopoverAnchorPoint:(CGPoint)point;
- (id)contextWithPresetCollectionViewController:(id)controller;
- (id)insertPageViewController:(id)controller viewControllerAfterViewController:(id)viewController;
- (id)insertPageViewController:(id)controller viewControllerBeforeViewController:(id)viewController;
- (id)insertPageViewController:(id)controller viewControllerForPageAtIndex:(unint64_t)index;
- (id)insertPageViewControllerDefaultSearchTerm:(id)term;
- (id)insertPageViewControllerViewControllerForSearch:(id)search;
- (id)itemsForBeginningDragSessionForPresetCollectionViewController:(id)controller forCollectionView:(id)view atIndexPath:(id)path;
- (id)p_boardItemFactory;
- (id)p_boardItemForPresetCollectionType:(unint64_t)type atIndexPath:(id)path context:(id)context;
- (id)p_createShapeInsertViewController;
- (id)p_editingCoordinator;
- (id)p_interactiveCanvasController;
- (id)p_pageViewControllerWithPages:(id)pages presetCollectionType:(unint64_t)type;
- (id)p_pagesForPresetCollectionType:(unint64_t)type;
- (id)p_pagesForSegment:(unint64_t)segment;
- (id)p_shapeAtIndexPath:(id)path context:(id)context;
- (id)p_shapeInfoAtIndexPath:(id)path boardItemFactory:(id)factory context:(id)context;
- (id)p_shapeWithIdentifier:(id)identifier context:(id)context;
- (unint64_t)insertPageViewController:(id)controller presentationIndexForViewController:(id)viewController;
- (unint64_t)p_integerDefaultForKey:(id)key;
- (unint64_t)p_pageNumberForPresetCollectionViewController:(id)controller;
- (unint64_t)p_totalNumberOfPagesNeededForPresetCollectionType:(unint64_t)type;
- (unint64_t)presentationCountForInsertPageViewController:(id)controller;
- (unint64_t)selectedSubpageIndexForInsertPageViewController:(id)controller;
- (void)insertPageViewController:(id)controller didSelectPageNumber:(unint64_t)number;
- (void)insertPageViewController:(id)controller didSelectSubpageAtIndex:(unint64_t)index;
- (void)insertPageViewController:(id)controller willSearchWithText:(id)text inViewController:(id)viewController searchViewController:(id)searchViewController;
- (void)insertPageViewControllerDidBeginSearch:(id)search;
- (void)insertPageViewControllerDidEndSearch:(id)search cancelledExplicitly:(BOOL)explicitly;
- (void)insertPageViewControllerWillBeginSearch:(id)search;
- (void)insertPageViewControllerWillDisappear:(id)disappear;
- (void)insertPageViewControllerWillEndSearch:(id)search cancelledExplicitly:(BOOL)explicitly;
- (void)p_changeSelectedShapesToItemAtIndexPath:(id)path forPresetCollectionViewController:(id)controller;
- (void)p_dismissIfNeededWithBlock:(id)block;
- (void)p_insertShapeAtIndexPath:(id)path context:(id)context;
- (void)p_positionAndInsertBoardItems:(id)items;
- (void)p_reloadAllPresetCollectionViewControllers;
- (void)p_setAllPresetCollectionViewControllersHidden:(BOOL)hidden;
- (void)p_setIntegerDefault:(unint64_t)default forKey:(id)key;
- (void)p_shapeLibraryIndexingDidFinish:(id)finish;
- (void)p_updateForPresentationSemanticContext;
- (void)p_workspaceDidActivate:(id)activate;
- (void)p_workspaceWillDeactivate:(id)deactivate;
- (void)presetCollectionViewController:(id)controller didSelectPresetAtIndexPath:(id)path;
- (void)processChanges:(id)changes forChangeSource:(id)source;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
@end

@implementation CRLiOSShapeLibraryViewController

- (CRLiOSShapeLibraryViewController)initWithDelegate:(id)delegate shouldChangeSelectedShapes:(BOOL)shapes
{
  delegateCopy = delegate;
  v11.receiver = self;
  v11.super_class = CRLiOSShapeLibraryViewController;
  v7 = [(CRLiOSShapeLibraryViewController *)&v11 initWithNibName:0 bundle:0];
  v8 = v7;
  if (v7)
  {
    objc_storeWeak(&v7->_delegate, delegateCopy);
    v8->_shouldChangeSelectedShapes = shapes;
    v8->_unscaledPopoverAnchorPoint = xmmword_1014629F0;
    v8->_showLinesInLibrary = 1;
    v9 = +[NSNotificationCenter defaultCenter];
    [v9 addObserver:v8 selector:"p_shapeLibraryIndexingDidFinish:" name:@"CRLShapeLibraryIndexingDidFinishNotification" object:0];
  }

  return v8;
}

- (CRLiOSShapeLibraryViewController)initWithDelegate:(id)delegate unscaledPopoverAnchorPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  result = [(CRLiOSShapeLibraryViewController *)self initWithDelegate:delegate shouldChangeSelectedShapes:0];
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
  view = [(CRLiOSShapeLibraryViewController *)self view];
  [view setBackgroundColor:v3];

  v5 = +[CRLShapeLibrary sharedLibrary];
  v6 = [CRLBasicShapeLibrary alloc];
  v7 = +[CRLLocale currentLocale];
  v8 = [(CRLBasicShapeLibrary *)v6 initWithLocale:v7];

  dataLoadStatus = [v5 dataLoadStatus];
  v10 = [CRLShapeCollectionDataSource alloc];
  v79 = v5;
  v80 = v8;
  if (dataLoadStatus == 2)
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
  view2 = [(CRLiOSShapeLibraryViewController *)self view];
  [view2 addSubview:v17];

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

  p_createShapeInsertViewController = [(CRLiOSShapeLibraryViewController *)self p_createShapeInsertViewController];
  [(CRLiOSShapeLibraryViewController *)self setP_shapeInsertViewController:p_createShapeInsertViewController];
  view3 = [p_createShapeInsertViewController view];
  [view3 setTranslatesAutoresizingMaskIntoConstraints:0];

  [(CRLiOSShapeLibraryViewController *)self addChildViewController:p_createShapeInsertViewController];
  view4 = [(CRLiOSShapeLibraryViewController *)self view];
  view5 = [p_createShapeInsertViewController view];
  [view4 addSubview:view5];

  view6 = [(CRLiOSShapeLibraryViewController *)self view];
  safeAreaLayoutGuide = [view6 safeAreaLayoutGuide];

  if (+[_TtC8Freeform19CRLFeatureFlagGroup isSolariumEnabled])
  {
    v33 = 10.0;
  }

  else
  {
    v33 = 0.0;
  }

  leadingAnchor = [v17 leadingAnchor];
  leadingAnchor2 = [safeAreaLayoutGuide leadingAnchor];
  v74 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v86[0] = v74;
  v68 = v17;
  trailingAnchor = [v17 trailingAnchor];
  trailingAnchor2 = [safeAreaLayoutGuide trailingAnchor];
  v70 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  v86[1] = v70;
  view7 = [p_createShapeInsertViewController view];
  leadingAnchor3 = [view7 leadingAnchor];
  leadingAnchor4 = [safeAreaLayoutGuide leadingAnchor];
  [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4];
  v65 = v64 = p_createShapeInsertViewController;
  v86[2] = v65;
  view8 = [p_createShapeInsertViewController view];
  trailingAnchor3 = [view8 trailingAnchor];
  trailingAnchor4 = [safeAreaLayoutGuide trailingAnchor];
  v34 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4];
  v86[3] = v34;
  topAnchor = [v17 topAnchor];
  v36 = safeAreaLayoutGuide;
  v73 = safeAreaLayoutGuide;
  topAnchor2 = [safeAreaLayoutGuide topAnchor];
  v38 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:v33];
  v86[4] = v38;
  view9 = [p_createShapeInsertViewController view];
  bottomAnchor = [view9 bottomAnchor];
  bottomAnchor2 = [v36 bottomAnchor];
  v42 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  v86[5] = v42;
  v43 = [NSArray arrayWithObjects:v86 count:6];
  [NSLayoutConstraint activateConstraints:v43];

  view10 = [v64 view];
  topAnchor3 = [view10 topAnchor];
  bottomAnchor3 = [v68 bottomAnchor];
  v47 = [topAnchor3 constraintEqualToAnchor:bottomAnchor3];
  v85 = v47;
  v48 = [NSArray arrayWithObjects:&v85 count:1];
  [(CRLiOSShapeLibraryViewController *)self setP_constraintsForShowingNavigationBar:v48];

  view11 = [v64 view];
  topAnchor4 = [view11 topAnchor];
  topAnchor5 = [v73 topAnchor];
  v52 = [topAnchor4 constraintEqualToAnchor:topAnchor5];
  v84 = v52;
  v53 = [NSArray arrayWithObjects:&v84 count:1];
  [(CRLiOSShapeLibraryViewController *)self setP_constraintsForHidingNavigationBar:v53];

  [v68 setHidden:1];
  p_constraintsForHidingNavigationBar = [(CRLiOSShapeLibraryViewController *)self p_constraintsForHidingNavigationBar];
  [NSLayoutConstraint activateConstraints:p_constraintsForHidingNavigationBar];

  [v64 didMoveToParentViewController:self];
  v55 = [[CRLAccessibilityTimer alloc] initWithTargetSerialQueue:&_dispatch_main_q];
  [(CRLiOSShapeLibraryViewController *)self setP_announcementTimer:v55];

  p_announcementTimer = [(CRLiOSShapeLibraryViewController *)self p_announcementTimer];
  [p_announcementTimer setAutomaticallyCancelPendingBlockUponSchedulingNewBlock:1];

  v83 = objc_opt_class();
  v57 = [NSArray arrayWithObjects:&v83 count:1];
  v58 = [(CRLiOSShapeLibraryViewController *)self registerForTraitChanges:v57 withTarget:self action:"p_reloadAllPresetCollectionViewControllers"];

  v82 = objc_opt_class();
  v59 = [NSArray arrayWithObjects:&v82 count:1];
  v60 = [(CRLiOSShapeLibraryViewController *)self registerForTraitChanges:v59 withTarget:self action:"p_updateForPresentationSemanticContext"];
}

- (void)viewWillAppear:(BOOL)appear
{
  appearCopy = appear;
  [(CRLShapeCollectionDataSource *)self->_shapeCollectionDataSource setShowLinesInLibrary:[(CRLiOSShapeLibraryViewController *)self showLinesInLibrary]];
  v5.receiver = self;
  v5.super_class = CRLiOSShapeLibraryViewController;
  [(CRLiOSShapeLibraryViewController *)&v5 viewWillAppear:appearCopy];
  [(CRLiOSShapeLibraryViewController *)self p_updateForPresentationSemanticContext];
}

- (void)viewDidAppear:(BOOL)appear
{
  v21.receiver = self;
  v21.super_class = CRLiOSShapeLibraryViewController;
  [(CRLiOSShapeLibraryViewController *)&v21 viewDidAppear:appear];
  v4 = +[NSNotificationCenter defaultCenter];
  view = [(CRLiOSShapeLibraryViewController *)self view];
  window = [view window];
  windowScene = [window windowScene];

  v8 = +[NSNotification CRLiOSSceneWillResignActive];
  [v4 addObserver:self selector:"p_workspaceWillDeactivate:" name:v8 object:windowScene];

  v9 = +[NSNotification CRLiOSSceneDidEnterBackground];
  [v4 addObserver:self selector:"p_workspaceDidEnterBackground:" name:v9 object:windowScene];

  v10 = +[NSNotification CRLiOSSceneDidBecomeActive];
  [v4 addObserver:self selector:"p_workspaceDidActivate:" name:v10 object:windowScene];

  p_interactiveCanvasController = [(CRLiOSShapeLibraryViewController *)self p_interactiveCanvasController];
  changeNotifier = [p_interactiveCanvasController changeNotifier];
  associatedBoardItems = [(CRLiOSShapeLibraryViewController *)self associatedBoardItems];
  anyObject = [associatedBoardItems anyObject];
  parentContainerItem = [anyObject parentContainerItem];
  [changeNotifier addObserver:self forChangeSource:parentContainerItem];

  associatedBoardItems2 = [(CRLiOSShapeLibraryViewController *)self associatedBoardItems];
  allObjects = [associatedBoardItems2 allObjects];
  v18 = [allObjects crl_firstObjectPassingTest:&stru_1018516D8];

  p_interactiveCanvasController2 = [(CRLiOSShapeLibraryViewController *)self p_interactiveCanvasController];
  changeNotifier2 = [p_interactiveCanvasController2 changeNotifier];
  [changeNotifier2 addObserver:self forChangeSource:v18];
}

- (void)viewWillDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  view = [(CRLiOSShapeLibraryViewController *)self view];
  window = [view window];
  windowScene = [window windowScene];

  v8 = +[NSNotificationCenter defaultCenter];
  v9 = +[NSNotification CRLiOSSceneWillResignActive];
  [v8 removeObserver:self name:v9 object:windowScene];

  v10 = +[NSNotification CRLiOSSceneDidEnterBackground];
  [v8 removeObserver:self name:v10 object:windowScene];

  v11 = +[NSNotification CRLiOSSceneDidBecomeActive];
  [v8 removeObserver:self name:v11 object:windowScene];

  v12.receiver = self;
  v12.super_class = CRLiOSShapeLibraryViewController;
  [(CRLiOSShapeLibraryViewController *)&v12 viewWillDisappear:disappearCopy];
}

- (void)viewDidDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  [(CRLiOSShapeLibraryViewController *)self setP_didDragOutsidePopover:0];
  p_shapeSearchResultsCollection = [(CRLiOSShapeLibraryViewController *)self p_shapeSearchResultsCollection];
  [p_shapeSearchResultsCollection setSearchTerm:0 completionHandler:0];

  p_interactiveCanvasController = [(CRLiOSShapeLibraryViewController *)self p_interactiveCanvasController];
  changeNotifier = [p_interactiveCanvasController changeNotifier];
  associatedBoardItems = [(CRLiOSShapeLibraryViewController *)self associatedBoardItems];
  anyObject = [associatedBoardItems anyObject];
  parentContainerItem = [anyObject parentContainerItem];
  [changeNotifier removeObserver:self forChangeSource:parentContainerItem];

  associatedBoardItems2 = [(CRLiOSShapeLibraryViewController *)self associatedBoardItems];
  allObjects = [associatedBoardItems2 allObjects];
  v13 = [allObjects crl_firstObjectPassingTest:&stru_1018516F8];

  p_interactiveCanvasController2 = [(CRLiOSShapeLibraryViewController *)self p_interactiveCanvasController];
  changeNotifier2 = [p_interactiveCanvasController2 changeNotifier];
  [changeNotifier2 removeObserver:self forChangeSource:v13];

  [(CRLiOSShapeLibraryViewController *)self setAssociatedBoardItems:0];
  v16.receiver = self;
  v16.super_class = CRLiOSShapeLibraryViewController;
  [(CRLiOSShapeLibraryViewController *)&v16 viewDidDisappear:disappearCopy];
}

- (CGSize)preferredContentSize
{
  traitCollection = [(CRLiOSShapeLibraryViewController *)self traitCollection];
  if ([traitCollection userInterfaceIdiom] == 1)
  {
    v4 = 1;
  }

  else
  {
    traitCollection2 = [(CRLiOSShapeLibraryViewController *)self traitCollection];
    v4 = [traitCollection2 userInterfaceIdiom] == 6;
  }

  presentingViewController = [(CRLiOSShapeLibraryViewController *)self presentingViewController];

  if (v4 && presentingViewController)
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

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  height = size.height;
  width = size.width;
  coordinatorCopy = coordinator;
  v12.receiver = self;
  v12.super_class = CRLiOSShapeLibraryViewController;
  [(CRLiOSShapeLibraryViewController *)&v12 viewWillTransitionToSize:coordinatorCopy withTransitionCoordinator:width, height];
  p_shapeInsertViewController = [(CRLiOSShapeLibraryViewController *)self p_shapeInsertViewController];
  isViewLoaded = [p_shapeInsertViewController isViewLoaded];

  if (isViewLoaded)
  {
    p_shapeInsertViewController2 = [(CRLiOSShapeLibraryViewController *)self p_shapeInsertViewController];
    [p_shapeInsertViewController2 viewWillTransitionToSize:coordinatorCopy withTransitionCoordinator:{width, height}];
  }

  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1002B6B00;
  v11[3] = &unk_101848DD8;
  v11[4] = self;
  [coordinatorCopy animateAlongsideTransition:v11 completion:0];
}

- (void)p_workspaceWillDeactivate:(id)deactivate
{
  view = [(CRLiOSShapeLibraryViewController *)self view];
  [view frame];
  [(CRLiOSShapeLibraryViewController *)self setP_cachedViewFrameSize:v4, v5];
}

- (void)p_workspaceDidActivate:(id)activate
{
  if (!-[CRLiOSShapeLibraryViewController p_didEnterBackground](self, "p_didEnterBackground", activate) || ((-[CRLiOSShapeLibraryViewController setP_didEnterBackground:](self, "setP_didEnterBackground:", 0), -[CRLiOSShapeLibraryViewController p_cachedViewFrameSize](self, "p_cachedViewFrameSize"), v5 = v4, v7 = v6, -[CRLiOSShapeLibraryViewController view](self, "view"), v8 = objc_claimAutoreleasedReturnValue(), [v8 frame], v10 = v9, v12 = v11, v8, v5 == v10) ? (v13 = v7 == v12) : (v13 = 0), v13))
  {
    p_pages = [(CRLiOSShapeLibraryViewController *)self p_pages];
    [(CRLiOSShapeLibraryViewController *)self p_reloadPagesIfNeeded:p_pages];
  }

  else
  {
    [(CRLiOSShapeLibraryViewController *)self p_reloadAllPresetCollectionViewControllers];
  }

  [(CRLiOSShapeLibraryViewController *)self p_setAllPresetCollectionViewControllersHidden:0];
}

- (void)p_updateForPresentationSemanticContext
{
  traitCollection = [(CRLiOSShapeLibraryViewController *)self traitCollection];
  _presentationSemanticContext = [traitCollection _presentationSemanticContext];

  if (_presentationSemanticContext == 3)
  {
    v5 = +[UIColor clearColor];
    view = [(CRLiOSShapeLibraryViewController *)self view];
    [view setBackgroundColor:v5];

    p_navigationBar = [(CRLiOSShapeLibraryViewController *)self p_navigationBar];
    [p_navigationBar setHidden:1];

    p_constraintsForShowingNavigationBar = [(CRLiOSShapeLibraryViewController *)self p_constraintsForShowingNavigationBar];
    [NSLayoutConstraint deactivateConstraints:p_constraintsForShowingNavigationBar];

    [(CRLiOSShapeLibraryViewController *)self p_constraintsForHidingNavigationBar];
  }

  else
  {
    v9 = +[UIColor systemGroupedBackgroundColor];
    view2 = [(CRLiOSShapeLibraryViewController *)self view];
    [view2 setBackgroundColor:v9];

    p_navigationBar2 = [(CRLiOSShapeLibraryViewController *)self p_navigationBar];
    [p_navigationBar2 setHidden:0];

    p_constraintsForHidingNavigationBar = [(CRLiOSShapeLibraryViewController *)self p_constraintsForHidingNavigationBar];
    [NSLayoutConstraint deactivateConstraints:p_constraintsForHidingNavigationBar];

    [(CRLiOSShapeLibraryViewController *)self p_constraintsForShowingNavigationBar];
  }
  v13 = ;
  [NSLayoutConstraint activateConstraints:?];
}

- (void)processChanges:(id)changes forChangeSource:(id)source
{
  changesCopy = changes;
  sourceCopy = source;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = objc_opt_class();
    v9 = sub_100013F00(v8, sourceCopy);
    associatedBoardItems = [(CRLiOSShapeLibraryViewController *)self associatedBoardItems];
    allObjects = [associatedBoardItems allObjects];

    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_1002B6F90;
    v14[3] = &unk_101851720;
    v12 = v9;
    v15 = v12;
    if (([allObjects crl_allObjectsPassTest:v14] & 1) == 0)
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
      [changesCopy enumerateObjectsUsingBlock:v13];
    }
  }
}

- (id)p_editingCoordinator
{
  p_delegate = [(CRLiOSShapeLibraryViewController *)self p_delegate];
  v4 = [p_delegate editingCoordinatorForContentLibraryViewController:self];

  return v4;
}

- (id)p_boardItemFactory
{
  p_editingCoordinator = [(CRLiOSShapeLibraryViewController *)self p_editingCoordinator];
  boardItemFactory = [p_editingCoordinator boardItemFactory];

  return boardItemFactory;
}

- (id)p_interactiveCanvasController
{
  p_delegate = [(CRLiOSShapeLibraryViewController *)self p_delegate];
  v4 = [p_delegate interactiveCanvasControllerForContentLibraryViewController:self];

  return v4;
}

- (id)insertPageViewController:(id)controller viewControllerBeforeViewController:(id)viewController
{
  viewControllerCopy = viewController;
  controllerCopy = controller;
  p_pages = [(CRLiOSShapeLibraryViewController *)self p_pages];
  v9 = objc_opt_class();
  v10 = sub_100013F00(v9, viewControllerCopy);

  v11 = [p_pages indexOfObject:v10];
  p_shapeInsertViewController = [(CRLiOSShapeLibraryViewController *)self p_shapeInsertViewController];

  if (p_shapeInsertViewController != controllerCopy)
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
    if ([p_pages count] >= 2 && v11)
    {
      v16 = [p_pages objectAtIndexedSubscript:v11 - 1];
    }
  }

  return v16;
}

- (id)insertPageViewController:(id)controller viewControllerAfterViewController:(id)viewController
{
  viewControllerCopy = viewController;
  controllerCopy = controller;
  p_pages = [(CRLiOSShapeLibraryViewController *)self p_pages];
  v9 = objc_opt_class();
  v10 = sub_100013F00(v9, viewControllerCopy);

  v11 = [p_pages indexOfObject:v10];
  p_shapeInsertViewController = [(CRLiOSShapeLibraryViewController *)self p_shapeInsertViewController];

  if (p_shapeInsertViewController != controllerCopy)
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

  if (v11 == 0x7FFFFFFFFFFFFFFFLL || [p_pages count] < 2 || v11 >= objc_msgSend(p_pages, "count") - 1)
  {
    v16 = 0;
  }

  else
  {
    v16 = [p_pages objectAtIndexedSubscript:v11 + 1];
  }

  return v16;
}

- (id)insertPageViewController:(id)controller viewControllerForPageAtIndex:(unint64_t)index
{
  controllerCopy = controller;
  p_shapeInsertViewController = [(CRLiOSShapeLibraryViewController *)self p_shapeInsertViewController];

  if (p_shapeInsertViewController != controllerCopy)
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

  p_pages = [(CRLiOSShapeLibraryViewController *)self p_pages];
  if ([p_pages count] <= index)
  {
    v12 = 0;
  }

  else
  {
    v12 = [p_pages objectAtIndexedSubscript:index];
  }

  return v12;
}

- (id)insertPageViewControllerViewControllerForSearch:(id)search
{
  v4 = [[CRLiOSPresetCollectionViewController alloc] initWithPresetCollectionType:0 delegate:self];
  [(CRLiOSShapeLibraryViewController *)self setP_searchViewController:v4];

  return v4;
}

- (unint64_t)presentationCountForInsertPageViewController:(id)controller
{
  controllerCopy = controller;
  p_shapeInsertViewController = [(CRLiOSShapeLibraryViewController *)self p_shapeInsertViewController];

  if (p_shapeInsertViewController != controllerCopy)
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

  p_pages = [(CRLiOSShapeLibraryViewController *)self p_pages];
  v10 = [p_pages count];

  return v10;
}

- (unint64_t)insertPageViewController:(id)controller presentationIndexForViewController:(id)viewController
{
  viewControllerCopy = viewController;
  controllerCopy = controller;
  p_shapeInsertViewController = [(CRLiOSShapeLibraryViewController *)self p_shapeInsertViewController];

  if (p_shapeInsertViewController != controllerCopy)
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
  v13 = sub_100013F00(v12, viewControllerCopy);

  v14 = [(CRLiOSShapeLibraryViewController *)self p_pageNumberForPresetCollectionViewController:v13];
  return v14;
}

- (unint64_t)selectedSubpageIndexForInsertPageViewController:(id)controller
{
  controllerCopy = controller;
  p_shapeInsertViewController = [(CRLiOSShapeLibraryViewController *)self p_shapeInsertViewController];

  if (p_shapeInsertViewController != controllerCopy)
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

- (void)insertPageViewController:(id)controller didSelectPageNumber:(unint64_t)number
{
  controllerCopy = controller;
  selectedPageNumberAutosaveName = [controllerCopy selectedPageNumberAutosaveName];
  [(CRLiOSShapeLibraryViewController *)self p_setIntegerDefault:number forKey:selectedPageNumberAutosaveName];

  p_shapeInsertViewController = [(CRLiOSShapeLibraryViewController *)self p_shapeInsertViewController];

  if (p_shapeInsertViewController != controllerCopy)
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

  p_pages = [(CRLiOSShapeLibraryViewController *)self p_pages];
  v13 = [p_pages objectAtIndexedSubscript:number];

  [v13 accessibilityFocusFirstVisiblePreset];
}

- (void)insertPageViewController:(id)controller didSelectSubpageAtIndex:(unint64_t)index
{
  controllerCopy = controller;
  p_shapeInsertViewController = [(CRLiOSShapeLibraryViewController *)self p_shapeInsertViewController];

  if (p_shapeInsertViewController != controllerCopy)
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

- (void)insertPageViewControllerWillBeginSearch:(id)search
{
  searchCopy = search;
  p_shapeInsertViewController = [(CRLiOSShapeLibraryViewController *)self p_shapeInsertViewController];

  if (p_shapeInsertViewController != searchCopy)
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

  p_delegate = [(CRLiOSShapeLibraryViewController *)self p_delegate];
  [p_delegate contentLibraryViewControllerWillBeginSearch:self];
}

- (void)insertPageViewControllerDidBeginSearch:(id)search
{
  searchCopy = search;
  p_shapeInsertViewController = [(CRLiOSShapeLibraryViewController *)self p_shapeInsertViewController];

  if (p_shapeInsertViewController != searchCopy)
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

- (void)insertPageViewController:(id)controller willSearchWithText:(id)text inViewController:(id)viewController searchViewController:(id)searchViewController
{
  controllerCopy = controller;
  textCopy = text;
  viewControllerCopy = viewController;
  searchViewControllerCopy = searchViewController;
  p_shapeInsertViewController = [(CRLiOSShapeLibraryViewController *)self p_shapeInsertViewController];

  if (p_shapeInsertViewController != controllerCopy)
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

  p_searchState = [(CRLiOSShapeLibraryViewController *)self p_searchState];
  if ([textCopy length])
  {
    v19 = 2;
  }

  else
  {
    v19 = 1;
  }

  p_searchState2 = [(CRLiOSShapeLibraryViewController *)self p_searchState];
  if (p_searchState2 != v19)
  {
    [(CRLiOSShapeLibraryViewController *)self setP_searchState:v19];
  }

  objc_initWeak(&location, self);
  p_shapeSearchResultsCollection = [(CRLiOSShapeLibraryViewController *)self p_shapeSearchResultsCollection];
  v25[0] = _NSConcreteStackBlock;
  v25[1] = 3221225472;
  v25[2] = sub_1002B8A48;
  v25[3] = &unk_101851A30;
  v30 = p_searchState2 != v19;
  v22 = viewControllerCopy;
  v26 = v22;
  v29[1] = p_searchState;
  v29[2] = v19;
  v23 = searchViewControllerCopy;
  v27 = v23;
  v24 = textCopy;
  v28 = v24;
  objc_copyWeak(v29, &location);
  [p_shapeSearchResultsCollection setSearchTerm:v24 completionHandler:v25];

  objc_destroyWeak(v29);
  objc_destroyWeak(&location);
}

- (void)insertPageViewControllerWillEndSearch:(id)search cancelledExplicitly:(BOOL)explicitly
{
  searchCopy = search;
  p_shapeInsertViewController = [(CRLiOSShapeLibraryViewController *)self p_shapeInsertViewController];

  if (p_shapeInsertViewController != searchCopy)
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
  p_shapeSearchResultsCollection = [(CRLiOSShapeLibraryViewController *)self p_shapeSearchResultsCollection];
  [p_shapeSearchResultsCollection setSearchTerm:0 completionHandler:0];

  p_delegate = [(CRLiOSShapeLibraryViewController *)self p_delegate];
  [p_delegate contentLibraryViewControllerDidCancelSearch:self];
}

- (void)insertPageViewControllerDidEndSearch:(id)search cancelledExplicitly:(BOOL)explicitly
{
  explicitlyCopy = explicitly;
  searchCopy = search;
  p_shapeInsertViewController = [(CRLiOSShapeLibraryViewController *)self p_shapeInsertViewController];

  if (p_shapeInsertViewController != searchCopy)
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

  if (explicitlyCopy)
  {
    p_interactiveCanvasController = [(CRLiOSShapeLibraryViewController *)self p_interactiveCanvasController];
    layerHost = [p_interactiveCanvasController layerHost];
    [layerHost becomeFirstResponder];
  }
}

- (BOOL)insertPageViewControllerShouldAppearInSearchMode:(id)mode
{
  modeCopy = mode;
  p_shapeInsertViewController = [(CRLiOSShapeLibraryViewController *)self p_shapeInsertViewController];

  if (p_shapeInsertViewController != modeCopy)
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

  p_delegate = [(CRLiOSShapeLibraryViewController *)self p_delegate];
  v10 = [p_delegate contentLibraryViewControllerShouldAppearInSearchMode:self];

  return v10;
}

- (void)insertPageViewControllerWillDisappear:(id)disappear
{
  disappearCopy = disappear;
  p_shapeInsertViewController = [(CRLiOSShapeLibraryViewController *)self p_shapeInsertViewController];

  if (p_shapeInsertViewController != disappearCopy)
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
    p_shapeSearchResultsCollection = [(CRLiOSShapeLibraryViewController *)self p_shapeSearchResultsCollection];
    searchTerm = [p_shapeSearchResultsCollection searchTerm];

    v11 = &stru_1018BCA28;
    if (searchTerm)
    {
      v11 = searchTerm;
    }

    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  p_delegate = [(CRLiOSShapeLibraryViewController *)self p_delegate];
  [p_delegate contentLibraryViewController:self willDisappearWithSearchTerm:v12];
}

- (id)insertPageViewControllerDefaultSearchTerm:(id)term
{
  termCopy = term;
  p_shapeInsertViewController = [(CRLiOSShapeLibraryViewController *)self p_shapeInsertViewController];

  if (p_shapeInsertViewController != termCopy)
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

  p_delegate = [(CRLiOSShapeLibraryViewController *)self p_delegate];
  v10 = [p_delegate contentLibraryViewControllerDefaultSearchTerm:self];

  return v10;
}

- (BOOL)allowsInsertDrag
{
  selfCopy = self;
  p_delegate = [(CRLiOSShapeLibraryViewController *)self p_delegate];
  LOBYTE(selfCopy) = [p_delegate contentLibraryViewControllerShouldAllowInsertDrag:selfCopy];

  return selfCopy;
}

- (id)contextWithPresetCollectionViewController:(id)controller
{
  controllerCopy = controller;
  traitCollection = [(CRLiOSShapeLibraryViewController *)self traitCollection];
  if ([traitCollection userInterfaceIdiom] == 1 && (-[CRLiOSShapeLibraryViewController presentingViewController](self, "presentingViewController"), (v6 = objc_claimAutoreleasedReturnValue()) != 0))
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
  v11 = [(CRLiOSShapeLibraryViewController *)self p_pageNumberForPresetCollectionViewController:controllerCopy];
  v12 = [(CRLiOSShapeLibraryViewController *)self p_searchState]== 2;
  v13 = [CRLiOSPresetCollectionContext alloc];
  [(CRLiOSShapeLibraryViewController *)self p_contentSize];
  v15 = v14;
  v17 = v16;
  p_editingCoordinator = [(CRLiOSShapeLibraryViewController *)self p_editingCoordinator];
  traitCollection2 = [(CRLiOSShapeLibraryViewController *)self traitCollection];
  v20 = [(CRLiOSPresetCollectionContext *)v13 initWithContextType:v10 contentSize:p_editingCoordinator editingCoordinator:v12 isSearching:v11 pageIndex:0 subpageIndex:traitCollection2 traitCollection:v15, v17];

  return v20;
}

- (void)presetCollectionViewController:(id)controller didSelectPresetAtIndexPath:(id)path
{
  controllerCopy = controller;
  pathCopy = path;
  p_editingCoordinator = [(CRLiOSShapeLibraryViewController *)self p_editingCoordinator];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1002B998C;
  v11[3] = &unk_101851B98;
  v11[4] = self;
  v12 = pathCopy;
  v13 = controllerCopy;
  v9 = controllerCopy;
  v10 = pathCopy;
  [p_editingCoordinator canPerformUserActionUsingBlock:v11];
}

- (void)p_changeSelectedShapesToItemAtIndexPath:(id)path forPresetCollectionViewController:(id)controller
{
  pathCopy = path;
  controllerCopy = controller;
  p_interactiveCanvasController = [(CRLiOSShapeLibraryViewController *)self p_interactiveCanvasController];
  editorController = [p_interactiveCanvasController editorController];
  v9 = [editorController mostSpecificCurrentEditorOfClass:objc_opt_class()];
  if (v9)
  {
    v10 = [(CRLiOSShapeLibraryViewController *)self contextWithPresetCollectionViewController:controllerCopy];
    v11 = [(CRLiOSShapeLibraryViewController *)self p_shapeAtIndexPath:pathCopy context:v10];
    v12 = [v11 pathSourceWithSize:{100.0, 100.0}];
    [_TtC8Freeform28CRLShapeLibraryPopoverHelper changeShapeForEditor:v9 shapePathSource:v12 interactiveCanvasController:p_interactiveCanvasController];
  }

  [(CRLiOSShapeLibraryViewController *)self dismissViewControllerAnimated:1 completion:0];
  if ([(CRLiOSShapeLibraryViewController *)self p_isCompact])
  {
    layerHost = [p_interactiveCanvasController layerHost];
    miniFormatterPresenter = [layerHost miniFormatterPresenter];
    selectionPath = [editorController selectionPath];
    [miniFormatterPresenter presentMiniFormatterForSelectionPath:selectionPath];
  }
}

- (id)itemsForBeginningDragSessionForPresetCollectionViewController:(id)controller forCollectionView:(id)view atIndexPath:(id)path
{
  controllerCopy = controller;
  viewCopy = view;
  pathCopy = path;
  v47 = [(CRLiOSShapeLibraryViewController *)self contextWithPresetCollectionViewController:controllerCopy];
  v10 = objc_opt_class();
  v11 = -[CRLiOSShapeLibraryViewController p_boardItemForPresetCollectionType:atIndexPath:context:](self, "p_boardItemForPresetCollectionType:atIndexPath:context:", [controllerCopy presetCollectionType], pathCopy, v47);
  v12 = sub_100013F00(v10, v11);

  if (v12)
  {
    v44 = objc_alloc_init(CRLItemProviderItemWriter);
    v56 = v12;
    v13 = [NSArray arrayWithObjects:&v56 count:1];
    p_interactiveCanvasController = [(CRLiOSShapeLibraryViewController *)self p_interactiveCanvasController];
    v45 = [(CRLItemProviderItemWriter *)v44 createItemProviderWithCopyOfBoardItems:v13 fromInteractiveCanvasController:p_interactiveCanvasController outCopiedBoardItems:0];

    if (v45)
    {
      v15 = [viewCopy cellForItemAtIndexPath:pathCopy];
      v16 = objc_opt_class();
      v22 = sub_100303920(v15, v16, 1, v17, v18, v19, v20, v21, &OBJC_PROTOCOL___CRLiOSPresetCollectionViewCell);

      v52[0] = 0;
      v52[1] = v52;
      v52[2] = 0x3032000000;
      v52[3] = sub_1002BA2B0;
      v52[4] = sub_1002BA2C0;
      presetButton = [v22 presetButton];
      imageView = [presetButton imageView];

      v24 = [(CRLiOSShapeLibraryViewController *)self p_shapeAtIndexPath:pathCopy context:v47];
      shapeType = [v24 shapeType];

      v43 = objc_alloc_init(CRLSwatchRenderingContext);
      if (shapeType <= 0x14 && ((1 << shapeType) & 0x1D8006) != 0)
      {
        v26 = 45.0;
      }

      else if ((shapeType & 0xFFFFFFFFFFFFFFEFLL) == 2 || shapeType == 19)
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
      presetButton2 = [v22 presetButton];
      [presetButton2 bounds];
      v30 = v29;
      v32 = v31;
      pathSource = [v12 pathSource];
      p_editingCoordinator = [(CRLiOSShapeLibraryViewController *)self p_editingCoordinator];
      v35 = [v27 shapeItemWithPresetsForSize:shapeType shapeType:pathSource shapePathSource:p_editingCoordinator angle:v43 editingCoordinator:v30 renderingContext:{v32, v26}];

      v55 = v35;
      v36 = [NSArray arrayWithObjects:&v55 count:1];
      v49[0] = _NSConcreteStackBlock;
      v49[1] = 3221225472;
      v49[2] = sub_1002BA2C8;
      v49[3] = &unk_101851C00;
      v49[4] = v35;
      v49[5] = v50;
      v49[6] = shapeType;
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

- (id)p_boardItemForPresetCollectionType:(unint64_t)type atIndexPath:(id)path context:(id)context
{
  pathCopy = path;
  contextCopy = context;
  p_boardItemFactory = [(CRLiOSShapeLibraryViewController *)self p_boardItemFactory];
  if (type)
  {
    v11 = 0;
  }

  else
  {
    v11 = [(CRLiOSShapeLibraryViewController *)self p_shapeInfoAtIndexPath:pathCopy boardItemFactory:p_boardItemFactory context:contextCopy];
  }

  return v11;
}

- (id)p_shapeInfoAtIndexPath:(id)path boardItemFactory:(id)factory context:(id)context
{
  factoryCopy = factory;
  v9 = [(CRLiOSShapeLibraryViewController *)self p_shapeAtIndexPath:path context:context];
  v10 = [v9 pathSourceWithSize:{100.0, 100.0}];
  p_interactiveCanvasController = [(CRLiOSShapeLibraryViewController *)self p_interactiveCanvasController];
  selectionModelTranslator = [p_interactiveCanvasController selectionModelTranslator];
  editorController = [p_interactiveCanvasController editorController];
  selectionPath = [editorController selectionPath];
  v15 = [selectionModelTranslator infosForSelectionPath:selectionPath];

  v16 = objc_opt_class();
  anyObject = [v15 anyObject];
  v18 = sub_100014370(v16, anyObject);

  v19 = objc_opt_class();
  board = [p_interactiveCanvasController board];
  v21 = [v18 getConnectedFromWithBoardItemOwner:board];
  if (v21)
  {
    v22 = sub_100014370(v19, v21);
  }

  else
  {
    [p_interactiveCanvasController board];
    v29 = factoryCopy;
    v23 = v30 = v9;
    [v18 getConnectedToWithBoardItemOwner:v23];
    v25 = v24 = v10;
    v22 = sub_100014370(v19, v25);

    v10 = v24;
    factoryCopy = v29;
    v9 = v30;
  }

  if (!-[CRLiOSShapeLibraryViewController showLinesInLibrary](self, "showLinesInLibrary") && v18 && v22 && [v15 count] == 1)
  {
    v26 = [factoryCopy makeShapeItemForDiagramWithConnectingTo:v22 with:v10 shapeType:{objc_msgSend(v9, "shapeType")}];
  }

  else
  {
    v26 = [factoryCopy makeShapeItemWithShapeType:objc_msgSend(v9 pathSource:{"shapeType"), v10}];
  }

  v27 = v26;

  return v27;
}

- (void)p_insertShapeAtIndexPath:(id)path context:(id)context
{
  contextCopy = context;
  pathCopy = path;
  p_boardItemFactory = [(CRLiOSShapeLibraryViewController *)self p_boardItemFactory];
  p_interactiveCanvasController = [(CRLiOSShapeLibraryViewController *)self p_interactiveCanvasController];
  commandController = [p_interactiveCanvasController commandController];
  [commandController openGroup];
  [commandController enableProgressiveEnqueuingInCurrentGroup];
  v11 = [(CRLiOSShapeLibraryViewController *)self p_shapeAtIndexPath:pathCopy context:contextCopy];
  shapeType = [v11 shapeType];

  v13 = [(CRLiOSShapeLibraryViewController *)self p_shapeInfoAtIndexPath:pathCopy boardItemFactory:p_boardItemFactory context:contextCopy];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    canvasEditor = [p_interactiveCanvasController canvasEditor];
    infosToConnect = [canvasEditor infosToConnect];
    v16 = [infosToConnect count];

    if (v16 == 2)
    {
      canvasEditor2 = [p_interactiveCanvasController canvasEditor];
      connectionLineItemToUseForConnecting = [canvasEditor2 connectionLineItemToUseForConnecting];

      if (connectionLineItemToUseForConnecting)
      {
        v19 = [p_boardItemFactory makeDuplicateOfBoardItem:connectionLineItemToUseForConnecting];
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
    if (shapeType == 21)
    {
      pathSource = [v24 pathSource];
      localizationKey = [pathSource localizationKey];
    }

    else
    {
      localizationKey = [CRLBasicShapeLibraryShape baseNameForShapeType:shapeType];
    }

    [_TtC8Freeform25CRLAnalyticsShapeInserted sendShapeInsertedAnalyticsWithShapeIdentifier:localizationKey isMiniShapePicker:0];
  }

  canvasEditor3 = [p_interactiveCanvasController canvasEditor];
  infosToConnect2 = [canvasEditor3 infosToConnect];
  v30 = [p_boardItemFactory blockToRunCommandToPostProcessWithNewBoardItem:v13 shapeType:shapeType infosToConnect:infosToConnect2 commandController:commandController];

  v32 = v13;
  v31 = [NSArray arrayWithObjects:&v32 count:1];
  [(CRLiOSShapeLibraryViewController *)self p_positionAndInsertBoardItems:v31];

  v30[2](v30);
  [commandController closeGroup];
  [(CRLiOSShapeLibraryViewController *)self dismissViewControllerAnimated:1 completion:0];
}

- (BOOL)p_isCompact
{
  p_delegate = [(CRLiOSShapeLibraryViewController *)self p_delegate];
  v4 = [p_delegate boardViewControllerTraitCollectionForContentLibraryViewController:self];

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

- (id)p_pagesForSegment:(unint64_t)segment
{
  p_allPresetCollectionViewControllers = [(CRLiOSShapeLibraryViewController *)self p_allPresetCollectionViewControllers];
  v6 = p_allPresetCollectionViewControllers;
  if (segment == 0x7FFFFFFFFFFFFFFFLL || [p_allPresetCollectionViewControllers count] <= segment)
  {
    v8 = &__NSArray0__struct;
  }

  else
  {
    p_allPresetCollectionViewControllers2 = [(CRLiOSShapeLibraryViewController *)self p_allPresetCollectionViewControllers];
    v8 = [p_allPresetCollectionViewControllers2 objectAtIndexedSubscript:segment];
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

- (unint64_t)p_totalNumberOfPagesNeededForPresetCollectionType:(unint64_t)type
{
  if (type)
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

  p_shapeCollectionDataSource = [(CRLiOSShapeLibraryViewController *)self p_shapeCollectionDataSource];
  categoryNames = [p_shapeCollectionDataSource categoryNames];
  v9 = [categoryNames count];

  return v9;
}

- (id)p_pagesForPresetCollectionType:(unint64_t)type
{
  v5 = [(CRLiOSShapeLibraryViewController *)self p_totalNumberOfPagesNeededForPresetCollectionType:?];
  v6 = [NSMutableArray arrayWithCapacity:v5];
  if (v5)
  {
    v7 = v5;
    do
    {
      v8 = [[CRLiOSPresetCollectionViewController alloc] initWithPresetCollectionType:type delegate:self];
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
      typeCopy = type;
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
    [CRLAssertionHandler handleFailureInFunction:v12 file:v13 lineNumber:957 isFatal:0 description:"Insert pages are empty for type %zi! Requested %zi pages.", type, v5];
  }

  return v6;
}

- (id)p_pageViewControllerWithPages:(id)pages presetCollectionType:(unint64_t)type
{
  pagesCopy = pages;
  v7 = [[CRLiOSInsertPageViewController alloc] initWithTransitionStyle:1 navigationOrientation:0 options:0];
  v8 = v7;
  v9 = 0;
  if (!type)
  {
    [(CRLiOSInsertPageViewController *)v7 setSelectedPageNumberAutosaveName:@"CRLiOSInsertPageViewControllerSelectedPageShapes"];
    [(CRLiOSInsertPageViewController *)v8 setSelectedSubpageAutosaveName:@"CRLiOSInsertPageViewControllerSelectedSubpageShapes"];
    v9 = 0;
  }

  selectedPageNumberAutosaveName = [(CRLiOSInsertPageViewController *)v8 selectedPageNumberAutosaveName];
  v11 = [(CRLiOSShapeLibraryViewController *)self p_integerDefaultForKey:selectedPageNumberAutosaveName];

  if (v11 != 0x7FFFFFFFFFFFFFFFLL && v11 < [pagesCopy count])
  {
    v9 = v11;
  }

  v12 = [pagesCopy objectAtIndexedSubscript:v9];
  [(CRLiOSInsertPageViewController *)v8 setInsertPageViewControllerDataSource:self];
  [(CRLiOSInsertPageViewController *)v8 setInsertPageViewControllerDelegate:self];
  layout = [v12 layout];
  [(CRLiOSInsertPageViewController *)v8 setInsertPageViewControllerNavigationDataSource:layout];

  [(CRLiOSShapeLibraryViewController *)self preferredContentSize];
  [(CRLiOSInsertPageViewController *)v8 setPreferredContentSize:?];
  v16 = v12;
  v14 = [NSArray arrayWithObjects:&v16 count:1];
  [(CRLiOSInsertPageViewController *)v8 setViewControllers:v14];

  return v8;
}

- (unint64_t)p_pageNumberForPresetCollectionViewController:(id)controller
{
  controllerCopy = controller;
  p_pages = [(CRLiOSShapeLibraryViewController *)self p_pages];
  v6 = [p_pages indexOfObject:controllerCopy];

  return v6;
}

- (void)p_reloadAllPresetCollectionViewControllers
{
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  p_allPresetCollectionViewControllers = [(CRLiOSShapeLibraryViewController *)self p_allPresetCollectionViewControllers];
  v4 = [p_allPresetCollectionViewControllers countByEnumeratingWithState:&v19 objects:v24 count:16];
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
          objc_enumerationMutation(p_allPresetCollectionViewControllers);
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
      v5 = [p_allPresetCollectionViewControllers countByEnumeratingWithState:&v19 objects:v24 count:16];
    }

    while (v5);
  }

  p_searchViewController = [(CRLiOSShapeLibraryViewController *)self p_searchViewController];
  [p_searchViewController reloadData];
}

- (void)p_setAllPresetCollectionViewControllersHidden:(BOOL)hidden
{
  hiddenCopy = hidden;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  p_allPresetCollectionViewControllers = [(CRLiOSShapeLibraryViewController *)self p_allPresetCollectionViewControllers];
  v5 = [p_allPresetCollectionViewControllers countByEnumeratingWithState:&v20 objects:v25 count:16];
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
          objc_enumerationMutation(p_allPresetCollectionViewControllers);
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

              view = [*(*(&v16 + 1) + 8 * v14) view];
              [view setHidden:hiddenCopy];

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
      v6 = [p_allPresetCollectionViewControllers countByEnumeratingWithState:&v20 objects:v25 count:16];
    }

    while (v6);
  }
}

- (void)p_setIntegerDefault:(unint64_t)default forKey:(id)key
{
  keyCopy = key;
  v7 = +[NSUserDefaults standardUserDefaults];
  v6 = [NSNumber numberWithUnsignedInteger:default];
  [v7 setObject:v6 forKey:keyCopy];
}

- (unint64_t)p_integerDefaultForKey:(id)key
{
  keyCopy = key;
  v4 = objc_opt_class();
  v5 = +[NSUserDefaults standardUserDefaults];
  v6 = [v5 objectForKey:keyCopy];

  v7 = sub_100013F00(v4, v6);

  if (v7)
  {
    integerValue = [v7 integerValue];
  }

  else
  {
    integerValue = 0x7FFFFFFFFFFFFFFFLL;
  }

  return integerValue;
}

- (CGSize)p_contentSize
{
  p_shapeInsertViewController = [(CRLiOSShapeLibraryViewController *)self p_shapeInsertViewController];
  [p_shapeInsertViewController contentSize];
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
  traitCollection = [(CRLiOSShapeLibraryViewController *)self traitCollection];
  v8 = [traitCollection userInterfaceIdiom] == 1 && objc_msgSend(traitCollection, "verticalSizeClass") == 2 && objc_msgSend(traitCollection, "horizontalSizeClass") == 1 && v6 >= 736.0 && v4 <= 375.0;

  return v8;
}

- (void)p_dismissIfNeededWithBlock:(id)block
{
  blockCopy = block;
  if ([(CRLiOSShapeLibraryViewController *)self p_isCompact])
  {
    [(CRLiOSShapeLibraryViewController *)self dismissViewControllerAnimated:1 completion:blockCopy];
  }

  else if (blockCopy)
  {
    blockCopy[2]();
  }
}

- (BOOL)p_canInsertAndConnectBoardItemToSelectedConnectionLine:(id)line
{
  lineCopy = line;
  p_interactiveCanvasController = [(CRLiOSShapeLibraryViewController *)self p_interactiveCanvasController];
  editorController = [p_interactiveCanvasController editorController];
  v7 = [editorController mostSpecificCurrentEditorOfClass:objc_opt_class()];

  if (!v7 || (([(CRLiOSShapeLibraryViewController *)self p_unscaledPopoverAnchorPoint], v9 == INFINITY) ? (v10 = v8 == INFINITY) : (v10 = 0), v10))
  {
    v12 = 0;
  }

  else
  {
    if (lineCopy)
    {
      currentSelectionIsValidForInsertAndConnectBoardItem = [v7 canHandleInsertAndConnectBoardItem:lineCopy];
    }

    else
    {
      currentSelectionIsValidForInsertAndConnectBoardItem = [v7 currentSelectionIsValidForInsertAndConnectBoardItem];
    }

    v12 = currentSelectionIsValidForInsertAndConnectBoardItem;
  }

  return v12;
}

- (void)p_positionAndInsertBoardItems:(id)items
{
  itemsCopy = items;
  v5 = +[CRLInsertionContext nonInteractiveInsertionContext];
  p_interactiveCanvasController = [(CRLiOSShapeLibraryViewController *)self p_interactiveCanvasController];
  editorController = [p_interactiveCanvasController editorController];
  v8 = [editorController mostSpecificCurrentEditorOfClass:objc_opt_class()];

  if ([itemsCopy count] == 1)
  {
    v9 = [itemsCopy objectAtIndexedSubscript:0];
    v10 = [(CRLiOSShapeLibraryViewController *)self p_canInsertAndConnectBoardItemToSelectedConnectionLine:v9];

    if (v10)
    {
      v11 = [itemsCopy objectAtIndexedSubscript:0];
      anyConnectionLine = [v8 anyConnectionLine];
      v13 = anyConnectionLine;
      if (v8)
      {
        if (anyConnectionLine)
        {
LABEL_31:
          [v8 insertAndConnectBoardItem:v11 postProcessBlock:0];
          [_TtC8Freeform27CRLInsertionAnimationHelper addInsertionAnimationsToInfo:v11 connectionLineLayout:v13 onInteractiveCanvasController:p_interactiveCanvasController];

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

  editorController2 = [p_interactiveCanvasController editorController];
  v19 = [editorController2 mostSpecificCurrentEditorOfClass:objc_opt_class() conformingToProtocol:&OBJC_PROTOCOL___CRLBoardItemInsertionEditor];

  [v19 prepareGeometryForInsertingBoardItems:itemsCopy withInsertionContext:v5];
  [v19 insertBoardItems:itemsCopy withInsertionContext:v5 postProcessBlock:0];
  [_TtC8Freeform27CRLInsertionAnimationHelper addInsertionAnimationsToInfos:itemsCopy onInteractiveCanvasController:p_interactiveCanvasController];

LABEL_32:
  p_delegate = [(CRLiOSShapeLibraryViewController *)self p_delegate];
  [p_delegate contentLibraryViewController:self didInsertBoardItems:itemsCopy];
}

- (id)p_shapeAtIndexPath:(id)path context:(id)context
{
  contextCopy = context;
  pathCopy = path;
  if ([contextCopy isSearching])
  {
    p_shapeSearchResultsCollection = [(CRLiOSShapeLibraryViewController *)self p_shapeSearchResultsCollection];
    v9 = [p_shapeSearchResultsCollection shapeAtIndexPath:pathCopy];
  }

  else
  {
    p_shapeSearchResultsCollection = [(CRLiOSShapeLibraryViewController *)self p_shapeCollectionDataSource];
    v10 = [pathCopy row];

    v9 = [p_shapeSearchResultsCollection shapeAtIndex:v10 categoryIndex:{objc_msgSend(contextCopy, "pageIndex")}];
  }

  return v9;
}

- (id)p_shapeWithIdentifier:(id)identifier context:(id)context
{
  contextCopy = context;
  identifierCopy = identifier;
  p_shapeCollectionDataSource = [(CRLiOSShapeLibraryViewController *)self p_shapeCollectionDataSource];
  pageIndex = [contextCopy pageIndex];

  v10 = [p_shapeCollectionDataSource shapeWithIdentifier:identifierCopy categoryIndex:pageIndex];

  return v10;
}

- (void)p_shapeLibraryIndexingDidFinish:(id)finish
{
  if ([(CRLiOSShapeLibraryViewController *)self p_searchState])
  {
    p_shapeSearchResultsCollection = [(CRLiOSShapeLibraryViewController *)self p_shapeSearchResultsCollection];
    [p_shapeSearchResultsCollection resetSearchResults];

    p_searchViewController = [(CRLiOSShapeLibraryViewController *)self p_searchViewController];
    [p_searchViewController reloadData];
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