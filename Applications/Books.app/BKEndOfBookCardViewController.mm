@interface BKEndOfBookCardViewController
- (BCSheetTransitioningCardContent)transitioningCardContent;
- (BKEndOfBookCardViewController)initWithStoreID:(id)a3 resource:(id)a4;
- (BKEndOfBookCardViewControllerDelegate)delegate;
- (BSUIFeedNavigationController)cardNavigationController;
- (BSUIFeedViewController)currentFeedViewController;
- (CGSize)cardSize;
- (id)_optionsForUIScene:(BOOL)a3;
- (id)serializeUpSellData;
- (unint64_t)supportedInterfaceOrientations;
- (void)_anchorCloseButton:(id)a3 toView:(id)a4;
- (void)bc_closeAssetWithCardStackViewController:(id)a3 completion:(id)a4;
- (void)bc_closeToAssetWithCardStackViewController:(id)a3 completion:(id)a4;
- (void)closeCard;
- (void)navigationController:(id)a3 willShowViewController:(id)a4 animated:(BOOL)a5;
- (void)updateCardSize;
- (void)viewDidLoad;
- (void)viewWillLayoutSubviews;
- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4;
@end

@implementation BKEndOfBookCardViewController

- (BKEndOfBookCardViewController)initWithStoreID:(id)a3 resource:(id)a4
{
  v6 = a3;
  v7 = a4;
  v11.receiver = self;
  v11.super_class = BKEndOfBookCardViewController;
  v8 = [(BKEndOfBookCardViewController *)&v11 init];
  v9 = v8;
  if (v8)
  {
    [(BKEndOfBookCardViewController *)v8 setStoreID:v6];
    [(BKEndOfBookCardViewController *)v9 setResource:v7];
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
  v4 = [(BKEndOfBookCardViewController *)self options];
  v5 = [v3 initWithOptions:v4];

  v6 = [[BSUIFeedNavigationController alloc] initWithOptions:0];
  v29 = v5;
  v7 = [NSArray arrayWithObjects:&v29 count:1];
  [v6 setViewControllers:v7];

  [(BKEndOfBookCardViewController *)self addChildViewController:v6];
  v8 = [(BKEndOfBookCardViewController *)self view];
  [v8 bounds];
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v17 = [v6 view];
  [v17 setFrame:{v10, v12, v14, v16}];

  v18 = [(BKEndOfBookCardViewController *)self view];
  v19 = [v6 view];
  [v18 addSubview:v19];

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
    v25 = [(BKEndOfBookCardViewController *)self view];
    [v25 addSubview:v24];

    v26 = [(BKEndOfBookCardViewController *)self view];
    [(BKEndOfBookCardViewController *)self _anchorCloseButton:v24 toView:v26];

    [(UIView *)v24 addTarget:self action:"_closeButtonTapped:" forControlEvents:64];
    [(UIView *)v24 _accessibilitySetSortPriority:999];
    closeButton = self->_closeButton;
    self->_closeButton = v24;
  }
}

- (id)_optionsForUIScene:(BOOL)a3
{
  v3 = a3;
  v5 = [(BKEndOfBookCardViewController *)self upSellData];

  v6 = &_s19EngagementCollector15BMPropertyValueC4withACSgAA08PropertyD0OSg_tcfc_ptr;
  if (v5)
  {
    v23 = v3;
    v26[0] = BAUpSellLocationKey;
    v7 = &_s19EngagementCollector15BMPropertyValueC4withACSgAA08PropertyD0OSg_tcfc_ptr;
    v8 = [(BKEndOfBookCardViewController *)self upSellData];
    v9 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v8 location]);
    v27[0] = v9;
    v26[1] = BAUpSellVariantKey;
    v10 = [(BKEndOfBookCardViewController *)self upSellData];
    v11 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v10 variant]);
    v27[1] = v11;
    v26[2] = BAUpSellVariantVersionKey;
    v12 = [(BKEndOfBookCardViewController *)self upSellData];
    v13 = [v12 variantVersion];
    if (v13)
    {
      v7 = [(BKEndOfBookCardViewController *)self upSellData];
      [v7 variantVersion];
    }

    else
    {
      +[NSNull null];
    }
    v14 = ;
    v27[2] = v14;
    v5 = [NSDictionary dictionaryWithObjects:v27 forKeys:v26 count:3];
    if (v13)
    {

      v14 = v7;
    }

    v6 = &_s19EngagementCollector15BMPropertyValueC4withACSgAA08PropertyD0OSg_tcfc_ptr;
    v3 = v23;
  }

  v24[0] = BSUIFeedOptionsKeyContextMenuProvider;
  if (v3)
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
  v16 = [(BKEndOfBookCardViewController *)self storeID];
  v25[2] = v16;
  v24[3] = @"resource";
  v17 = [(BKEndOfBookCardViewController *)self resource];
  v18 = v17;
  if (!v17)
  {
    v18 = +[NSNull null];
  }

  v25[3] = v18;
  v24[4] = @"upSellData";
  v19 = [(BKEndOfBookCardViewController *)self serializeUpSellData];
  v25[4] = v19;
  v24[5] = @"rawUpSellData";
  v20 = v5;
  if (!v5)
  {
    v20 = +[NSNull null];
  }

  v25[5] = v20;
  v21 = [v6[471] dictionaryWithObjects:v25 forKeys:v24 count:6];
  if (!v5)
  {
  }

  if (!v17)
  {
  }

  return v21;
}

- (id)serializeUpSellData
{
  v2 = self;
  v12[0] = BAUpSellLocationKey;
  v3 = [(BKEndOfBookCardViewController *)self upSellData];
  v4 = +[BAUtilities stringFromUpSellLocation:](BAUtilities, "stringFromUpSellLocation:", [v3 location]);
  v13[0] = v4;
  v12[1] = BAUpSellVariantKey;
  v5 = [v2 upSellData];
  v6 = +[BAUtilities stringFromUpSellVariant:](BAUtilities, "stringFromUpSellVariant:", [v5 variant]);
  v13[1] = v6;
  v12[2] = BAUpSellVariantVersionKey;
  v7 = [v2 upSellData];
  v8 = [v7 variantVersion];
  if (v8)
  {
    v2 = [v2 upSellData];
    [v2 variantVersion];
  }

  else
  {
    +[NSNull null];
  }
  v9 = ;
  v13[2] = v9;
  v10 = [NSDictionary dictionaryWithObjects:v13 forKeys:v12 count:3];
  if (v8)
  {

    v9 = v2;
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
  v2 = [(BKEndOfBookCardViewController *)self cardNavigationController];
  v3 = [v2 view];
  [v3 bounds];
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
  v3 = [(BKEndOfBookCardViewController *)self view];
  [v3 bounds];
  CGRectGetCenterNoRounding();
  v5 = v4;
  v7 = v6;
  v8 = [(BKEndOfBookCardViewController *)self cardNavigationController];
  v9 = [v8 view];
  [v9 setCenter:{v5, v7}];

  v22 = [(BKEndOfBookCardViewController *)self cardNavigationController];
  v10 = [v22 view];
  [v10 bounds];
  v11 = [(BKEndOfBookCardViewController *)self view];
  [v11 bounds];
  CGRectMakeWithOriginSize();
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v20 = [(BKEndOfBookCardViewController *)self cardNavigationController];
  v21 = [v20 view];
  [v21 setBounds:{v13, v15, v17, v19}];
}

- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4
{
  height = a3.height;
  width = a3.width;
  v9.receiver = self;
  v9.super_class = BKEndOfBookCardViewController;
  v7 = a4;
  [(BKEndOfBookCardViewController *)&v9 viewWillTransitionToSize:v7 withTransitionCoordinator:width, height];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1000E8508;
  v8[3] = &unk_100A04410;
  v8[4] = self;
  [v7 animateAlongsideTransition:v8 completion:0];
}

- (void)closeCard
{
  v3 = [(BKEndOfBookCardViewController *)self delegate];
  v8 = v3;
  if (v3)
  {
    [v3 endOfBookCardViewControllerDidFinish:self];
  }

  else
  {
    v4 = [(BKEndOfBookCardViewController *)self cardNavigationController];
    v5 = [v4 currentFeedViewController];
    v6 = [(BKEndOfBookCardViewController *)self presentingViewController];
    [v5 cardStackViewController:0 parentCardWillDismissWithReason:1 targetViewController:v6];

    v7 = [(BKEndOfBookCardViewController *)self presentingViewController];
    [v7 dismissViewControllerAnimated:1 completion:0];
  }
}

- (void)_anchorCloseButton:(id)a3 toView:(id)a4
{
  v5 = a4;
  v6 = a3;
  [v6 setTranslatesAutoresizingMaskIntoConstraints:0];
  v7 = [v6 topAnchor];
  v8 = [v5 topAnchor];
  v9 = [v7 constraintEqualToAnchor:v8 constant:16.0];
  v14[0] = v9;
  v10 = [v6 trailingAnchor];

  v11 = [v5 trailingAnchor];

  v12 = [v10 constraintEqualToAnchor:v11 constant:-16.0];
  v14[1] = v12;
  v13 = [NSArray arrayWithObjects:v14 count:2];
  [NSLayoutConstraint activateConstraints:v13];
}

- (BCSheetTransitioningCardContent)transitioningCardContent
{
  v3 = [(BKEndOfBookCardViewController *)self cardNavigationController];
  v4 = [v3 viewControllers];
  v5 = [v4 count];

  if (v5 == 1)
  {
    v6 = [(BKEndOfBookCardViewController *)self cardNavigationController];
    v7 = [v6 im_firstVisibleChildConformingToProtocol:&OBJC_PROTOCOL___BCSheetTransitioningCardContent];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)bc_closeToAssetWithCardStackViewController:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(BKEndOfBookCardViewController *)self delegate];
  [v8 endOfBookCardViewControllerWantsToCloseToAsset:self cardStackViewController:v7 completion:v6];
}

- (void)bc_closeAssetWithCardStackViewController:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(BKEndOfBookCardViewController *)self delegate];
  [v8 endOfBookCardViewControllerWantsToCloseAsset:self cardStackViewController:v7 completion:v6];
}

- (BSUIFeedViewController)currentFeedViewController
{
  v2 = [(BKEndOfBookCardViewController *)self cardNavigationController];
  v3 = [v2 currentFeedViewController];

  return v3;
}

- (void)navigationController:(id)a3 willShowViewController:(id)a4 animated:(BOOL)a5
{
  v7 = a4;
  v8 = a3;
  v9 = [(BKEndOfBookCardViewController *)self cardNavigationController];
  v10 = [v9 childViewControllers];
  v11 = [v10 firstObject];

  v12 = [v8 transitionCoordinator];

  if (v12)
  {
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_1000E8A60;
    v15[3] = &unk_100A06F50;
    v15[4] = self;
    v16 = v11 != v7;
    [v12 animateAlongsideTransition:v15 completion:0];
  }

  else
  {
    if (v11 == v7)
    {
      v13 = 1.0;
    }

    else
    {
      v13 = 0.0;
    }

    v14 = [(BKEndOfBookCardViewController *)self closeButton];
    [v14 setAlpha:v13];
  }
}

- (BKEndOfBookCardViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end