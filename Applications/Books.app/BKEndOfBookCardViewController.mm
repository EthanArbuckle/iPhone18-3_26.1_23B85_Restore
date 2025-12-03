@interface BKEndOfBookCardViewController
- (BCSheetTransitioningCardContent)transitioningCardContent;
- (BKEndOfBookCardViewController)initWithStoreID:(id)d resource:(id)resource;
- (BKEndOfBookCardViewControllerDelegate)delegate;
- (BSUIFeedNavigationController)cardNavigationController;
- (BSUIFeedViewController)currentFeedViewController;
- (CGSize)cardSize;
- (id)_optionsForUIScene:(BOOL)scene;
- (id)serializeUpSellData;
- (unint64_t)supportedInterfaceOrientations;
- (void)_anchorCloseButton:(id)button toView:(id)view;
- (void)bc_closeAssetWithCardStackViewController:(id)controller completion:(id)completion;
- (void)bc_closeToAssetWithCardStackViewController:(id)controller completion:(id)completion;
- (void)closeCard;
- (void)navigationController:(id)controller willShowViewController:(id)viewController animated:(BOOL)animated;
- (void)updateCardSize;
- (void)viewDidLoad;
- (void)viewWillLayoutSubviews;
- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
@end

@implementation BKEndOfBookCardViewController

- (BKEndOfBookCardViewController)initWithStoreID:(id)d resource:(id)resource
{
  dCopy = d;
  resourceCopy = resource;
  v11.receiver = self;
  v11.super_class = BKEndOfBookCardViewController;
  v8 = [(BKEndOfBookCardViewController *)&v11 init];
  v9 = v8;
  if (v8)
  {
    [(BKEndOfBookCardViewController *)v8 setStoreID:dCopy];
    [(BKEndOfBookCardViewController *)v9 setResource:resourceCopy];
    [(BKEndOfBookCardViewController *)v9 setDefinesPresentationContext:1];
    [(BKEndOfBookCardViewController *)v9 setPreferredContentSize:540.0, 746.0];
    [(BKEndOfBookCardViewController *)v9 setModalPresentationStyle:2];
  }

  return v9;
}

- (void)viewDidLoad
{
  v27.receiver = self;
  v27.super_class = BKEndOfBookCardViewController;
  [(BKEndOfBookCardViewController *)&v27 viewDidLoad];
  v3 = [BSUIFeedViewController alloc];
  options = [(BKEndOfBookCardViewController *)self options];
  v5 = [v3 initWithOptions:options];

  v6 = [[BSUIFeedNavigationController alloc] initWithOptions:0];
  v29 = v5;
  v7 = [NSArray arrayWithObjects:&v29 count:1];
  [v6 setViewControllers:v7];

  [(BKEndOfBookCardViewController *)self addChildViewController:v6];
  view = [(BKEndOfBookCardViewController *)self view];
  [view bounds];
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;
  view2 = [v6 view];
  [view2 setFrame:{v10, v12, v14, v16}];

  view3 = [(BKEndOfBookCardViewController *)self view];
  view4 = [v6 view];
  [view3 addSubview:view4];

  [v6 didMoveToParentViewController:self];
  [v6 setDelegate:self];
  cardNavigationController = self->_cardNavigationController;
  self->_cardNavigationController = v6;
  v21 = v6;

  if (_UISolariumEnabled())
  {
    v22 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:24 target:self action:"_closeButtonTapped:"];
    [v22 _accessibilitySetSortPriority:999];
    v28 = v22;
    closeButton = [NSArray arrayWithObjects:&v28 count:1];

    [v5 setExtraRightItems:closeButton];
    v21 = v22;
  }

  else
  {
    v24 = [UIButton buttonWithType:7];
    view5 = [(BKEndOfBookCardViewController *)self view];
    [view5 addSubview:v24];

    view6 = [(BKEndOfBookCardViewController *)self view];
    [(BKEndOfBookCardViewController *)self _anchorCloseButton:v24 toView:view6];

    [(UIView *)v24 addTarget:self action:"_closeButtonTapped:" forControlEvents:64];
    [(UIView *)v24 _accessibilitySetSortPriority:999];
    closeButton = self->_closeButton;
    self->_closeButton = v24;
  }
}

- (id)_optionsForUIScene:(BOOL)scene
{
  sceneCopy = scene;
  upSellData = [(BKEndOfBookCardViewController *)self upSellData];

  v6 = &_s19EngagementCollector15BMPropertyValueC4withACSgAA08PropertyD0OSg_tcfc_ptr;
  if (upSellData)
  {
    v23 = sceneCopy;
    v26[0] = BAUpSellLocationKey;
    upSellData5 = &_s19EngagementCollector15BMPropertyValueC4withACSgAA08PropertyD0OSg_tcfc_ptr;
    upSellData2 = [(BKEndOfBookCardViewController *)self upSellData];
    v9 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [upSellData2 location]);
    v27[0] = v9;
    v26[1] = BAUpSellVariantKey;
    upSellData3 = [(BKEndOfBookCardViewController *)self upSellData];
    v11 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [upSellData3 variant]);
    v27[1] = v11;
    v26[2] = BAUpSellVariantVersionKey;
    upSellData4 = [(BKEndOfBookCardViewController *)self upSellData];
    variantVersion = [upSellData4 variantVersion];
    if (variantVersion)
    {
      upSellData5 = [(BKEndOfBookCardViewController *)self upSellData];
      [upSellData5 variantVersion];
    }

    else
    {
      +[NSNull null];
    }
    v14 = ;
    v27[2] = v14;
    upSellData = [NSDictionary dictionaryWithObjects:v27 forKeys:v26 count:3];
    if (variantVersion)
    {

      v14 = upSellData5;
    }

    v6 = &_s19EngagementCollector15BMPropertyValueC4withACSgAA08PropertyD0OSg_tcfc_ptr;
    sceneCopy = v23;
  }

  v24[0] = BSUIFeedOptionsKeyContextMenuProvider;
  if (sceneCopy)
  {
    +[NSNull null];
  }

  else
  {
    +[BKContextMenuProvider sharedProvider];
  }
  v15 = ;
  v25[0] = v15;
  v25[1] = &__kCFBooleanTrue;
  v24[1] = @"end-of-book-card";
  v24[2] = @"storeId";
  storeID = [(BKEndOfBookCardViewController *)self storeID];
  v25[2] = storeID;
  v24[3] = @"resource";
  resource = [(BKEndOfBookCardViewController *)self resource];
  v18 = resource;
  if (!resource)
  {
    v18 = +[NSNull null];
  }

  v25[3] = v18;
  v24[4] = @"upSellData";
  serializeUpSellData = [(BKEndOfBookCardViewController *)self serializeUpSellData];
  v25[4] = serializeUpSellData;
  v24[5] = @"rawUpSellData";
  v20 = upSellData;
  if (!upSellData)
  {
    v20 = +[NSNull null];
  }

  v25[5] = v20;
  v21 = [v6[471] dictionaryWithObjects:v25 forKeys:v24 count:6];
  if (!upSellData)
  {
  }

  if (!resource)
  {
  }

  return v21;
}

- (id)serializeUpSellData
{
  selfCopy = self;
  v12[0] = BAUpSellLocationKey;
  upSellData = [(BKEndOfBookCardViewController *)self upSellData];
  v4 = +[BAUtilities stringFromUpSellLocation:](BAUtilities, "stringFromUpSellLocation:", [upSellData location]);
  v13[0] = v4;
  v12[1] = BAUpSellVariantKey;
  upSellData2 = [selfCopy upSellData];
  v6 = +[BAUtilities stringFromUpSellVariant:](BAUtilities, "stringFromUpSellVariant:", [upSellData2 variant]);
  v13[1] = v6;
  v12[2] = BAUpSellVariantVersionKey;
  upSellData3 = [selfCopy upSellData];
  variantVersion = [upSellData3 variantVersion];
  if (variantVersion)
  {
    selfCopy = [selfCopy upSellData];
    [selfCopy variantVersion];
  }

  else
  {
    +[NSNull null];
  }
  v9 = ;
  v13[2] = v9;
  v10 = [NSDictionary dictionaryWithObjects:v13 forKeys:v12 count:3];
  if (variantVersion)
  {

    v9 = selfCopy;
  }

  return v10;
}

- (void)viewWillLayoutSubviews
{
  if (([(BKEndOfBookCardViewController *)self isBeingPresented]& 1) == 0 && ([(BKEndOfBookCardViewController *)self isBeingDismissed]& 1) == 0)
  {

    [(BKEndOfBookCardViewController *)self updateCardSize];
  }
}

- (unint64_t)supportedInterfaceOrientations
{
  if (!isPad())
  {
    return 2;
  }

  v4.receiver = self;
  v4.super_class = BKEndOfBookCardViewController;
  return [(BKEndOfBookCardViewController *)&v4 supportedInterfaceOrientations];
}

- (BSUIFeedNavigationController)cardNavigationController
{
  [(BKEndOfBookCardViewController *)self loadViewIfNeeded];
  cardNavigationController = self->_cardNavigationController;

  return cardNavigationController;
}

- (CGSize)cardSize
{
  cardNavigationController = [(BKEndOfBookCardViewController *)self cardNavigationController];
  view = [cardNavigationController view];
  [view bounds];
  v5 = v4;
  v7 = v6;

  v8 = v5;
  v9 = v7;
  result.height = v9;
  result.width = v8;
  return result;
}

- (void)updateCardSize
{
  view = [(BKEndOfBookCardViewController *)self view];
  [view bounds];
  CGRectGetCenterNoRounding();
  v5 = v4;
  v7 = v6;
  cardNavigationController = [(BKEndOfBookCardViewController *)self cardNavigationController];
  view2 = [cardNavigationController view];
  [view2 setCenter:{v5, v7}];

  cardNavigationController2 = [(BKEndOfBookCardViewController *)self cardNavigationController];
  view3 = [cardNavigationController2 view];
  [view3 bounds];
  view4 = [(BKEndOfBookCardViewController *)self view];
  [view4 bounds];
  CGRectMakeWithOriginSize();
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;
  cardNavigationController3 = [(BKEndOfBookCardViewController *)self cardNavigationController];
  view5 = [cardNavigationController3 view];
  [view5 setBounds:{v13, v15, v17, v19}];
}

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  height = size.height;
  width = size.width;
  v9.receiver = self;
  v9.super_class = BKEndOfBookCardViewController;
  coordinatorCopy = coordinator;
  [(BKEndOfBookCardViewController *)&v9 viewWillTransitionToSize:coordinatorCopy withTransitionCoordinator:width, height];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1000E8508;
  v8[3] = &unk_100A04410;
  v8[4] = self;
  [coordinatorCopy animateAlongsideTransition:v8 completion:0];
}

- (void)closeCard
{
  delegate = [(BKEndOfBookCardViewController *)self delegate];
  v8 = delegate;
  if (delegate)
  {
    [delegate endOfBookCardViewControllerDidFinish:self];
  }

  else
  {
    cardNavigationController = [(BKEndOfBookCardViewController *)self cardNavigationController];
    currentFeedViewController = [cardNavigationController currentFeedViewController];
    presentingViewController = [(BKEndOfBookCardViewController *)self presentingViewController];
    [currentFeedViewController cardStackViewController:0 parentCardWillDismissWithReason:1 targetViewController:presentingViewController];

    presentingViewController2 = [(BKEndOfBookCardViewController *)self presentingViewController];
    [presentingViewController2 dismissViewControllerAnimated:1 completion:0];
  }
}

- (void)_anchorCloseButton:(id)button toView:(id)view
{
  viewCopy = view;
  buttonCopy = button;
  [buttonCopy setTranslatesAutoresizingMaskIntoConstraints:0];
  topAnchor = [buttonCopy topAnchor];
  topAnchor2 = [viewCopy topAnchor];
  v9 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:16.0];
  v14[0] = v9;
  trailingAnchor = [buttonCopy trailingAnchor];

  trailingAnchor2 = [viewCopy trailingAnchor];

  v12 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:-16.0];
  v14[1] = v12;
  v13 = [NSArray arrayWithObjects:v14 count:2];
  [NSLayoutConstraint activateConstraints:v13];
}

- (BCSheetTransitioningCardContent)transitioningCardContent
{
  cardNavigationController = [(BKEndOfBookCardViewController *)self cardNavigationController];
  viewControllers = [cardNavigationController viewControllers];
  v5 = [viewControllers count];

  if (v5 == 1)
  {
    cardNavigationController2 = [(BKEndOfBookCardViewController *)self cardNavigationController];
    v7 = [cardNavigationController2 im_firstVisibleChildConformingToProtocol:&OBJC_PROTOCOL___BCSheetTransitioningCardContent];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)bc_closeToAssetWithCardStackViewController:(id)controller completion:(id)completion
{
  completionCopy = completion;
  controllerCopy = controller;
  delegate = [(BKEndOfBookCardViewController *)self delegate];
  [delegate endOfBookCardViewControllerWantsToCloseToAsset:self cardStackViewController:controllerCopy completion:completionCopy];
}

- (void)bc_closeAssetWithCardStackViewController:(id)controller completion:(id)completion
{
  completionCopy = completion;
  controllerCopy = controller;
  delegate = [(BKEndOfBookCardViewController *)self delegate];
  [delegate endOfBookCardViewControllerWantsToCloseAsset:self cardStackViewController:controllerCopy completion:completionCopy];
}

- (BSUIFeedViewController)currentFeedViewController
{
  cardNavigationController = [(BKEndOfBookCardViewController *)self cardNavigationController];
  currentFeedViewController = [cardNavigationController currentFeedViewController];

  return currentFeedViewController;
}

- (void)navigationController:(id)controller willShowViewController:(id)viewController animated:(BOOL)animated
{
  viewControllerCopy = viewController;
  controllerCopy = controller;
  cardNavigationController = [(BKEndOfBookCardViewController *)self cardNavigationController];
  childViewControllers = [cardNavigationController childViewControllers];
  firstObject = [childViewControllers firstObject];

  transitionCoordinator = [controllerCopy transitionCoordinator];

  if (transitionCoordinator)
  {
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_1000E8A60;
    v15[3] = &unk_100A06F50;
    v15[4] = self;
    v16 = firstObject != viewControllerCopy;
    [transitionCoordinator animateAlongsideTransition:v15 completion:0];
  }

  else
  {
    if (firstObject == viewControllerCopy)
    {
      v13 = 1.0;
    }

    else
    {
      v13 = 0.0;
    }

    closeButton = [(BKEndOfBookCardViewController *)self closeButton];
    [closeButton setAlpha:v13];
  }
}

- (BKEndOfBookCardViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end