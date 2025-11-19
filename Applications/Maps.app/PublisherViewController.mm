@interface PublisherViewController
- (GEOPublisher)publisher;
- (PublisherViewController)initWithPublisherId:(id)a3 numberOfCollections:(unint64_t)a4 withTraits:(id)a5;
- (PublisherViewControllerDelegate)actionDelegate;
- (ShareDelegate)shareDelegate;
- (double)heightForLayout:(unint64_t)a3;
- (void)activateConstraints;
- (void)activateConstraintsForViewPinnedBelowHeader:(id)a3;
- (void)activateDefaultHeaderConstraints;
- (void)addCollectionView;
- (void)addDefaultHeaderView;
- (void)addErrorView;
- (void)addLoadingView;
- (void)addPublisherHeaderView;
- (void)didChangeLayout:(unint64_t)a3;
- (void)didSelectAllGuidesMenuItem;
- (void)didSelectAppItem;
- (void)didSelectShareFromView:(id)a3;
- (void)didSelectWebsiteItem;
- (void)handleDismissAction:(id)a3;
- (void)onTransitionFromState:(int64_t)a3 toState:(int64_t)a4;
- (void)removeCollectionView;
- (void)removeDefaultHeaderView;
- (void)removeErrorView;
- (void)removeLoadingView;
- (void)resetCollectionViewLayout;
- (void)routeToCuratedCollection:(id)a3;
- (void)scrollViewDidScroll:(id)a3;
- (void)scrollViewWillEndDragging:(id)a3 withVelocity:(CGPoint)a4 targetContentOffset:(CGPoint *)a5;
- (void)traitCollectionDidChange:(id)a3;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidLoad;
- (void)viewWillDisappear:(BOOL)a3;
- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4;
- (void)willDismissByGesture;
@end

@implementation PublisherViewController

- (PublisherViewControllerDelegate)actionDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_actionDelegate);

  return WeakRetained;
}

- (ShareDelegate)shareDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_shareDelegate);

  return WeakRetained;
}

- (void)didSelectAppItem
{
  v11 = objc_alloc_init(NSNumberFormatter);
  [v11 setNumberStyle:1];
  v3 = [(PublisherViewController *)self publisher];
  v4 = [v3 publisherAttribution];
  v5 = [v4 applicationAdamId];
  v6 = [v11 numberFromString:v5];

  v7 = [[LSApplicationRecord alloc] initWithStoreItemIdentifier:objc_msgSend(v6 error:{"longLongValue"), 0}];
  v8 = [v7 applicationState];
  LODWORD(v5) = [v8 isInstalled];

  if (v5)
  {
    v9 = +[LSApplicationWorkspace defaultWorkspace];
    v10 = [v7 bundleIdentifier];
    [v9 openApplicationWithBundleID:v10];
  }

  else
  {
    v9 = [(PublisherViewController *)self actionDelegate];
    [v9 publisherViewController:self openAppWithAdamId:v6];
  }
}

- (void)didSelectWebsiteItem
{
  v3 = [(PublisherViewController *)self publisher];
  v4 = [v3 publisherAttribution];
  v6 = [v4 websiteURL];

  v5 = [(PublisherViewController *)self actionDelegate];
  [v5 publisherViewController:self openURL:v6];
}

- (void)didSelectShareFromView:(id)a3
{
  v4 = a3;
  v5 = [CuratedCollectionShareItemSource alloc];
  v6 = [(PublisherViewController *)self publisher];
  v9 = [(CuratedCollectionShareItemSource *)v5 initWithPublisher:v6];

  v7 = [MUPresentationOptions optionsWithSender:v4];

  v8 = [(PublisherViewController *)self shareDelegate];
  [v8 shareItem:v9 presentationOptions:v7 completion:0];
}

- (void)didSelectAllGuidesMenuItem
{
  if (sub_10000FA08(self) == 5)
  {
    v3 = [(PublisherViewController *)self actionDelegate];
    [v3 publisherViewControllerShowAllGuides:self];
  }
}

- (void)routeToCuratedCollection:(id)a3
{
  v4 = a3;
  v5 = [(PublisherViewController *)self actionDelegate];
  [v5 publisherViewController:self showCuratedGuide:v4];
}

- (void)resetCollectionViewLayout
{
  v3 = [(PublisherViewController *)self collectionView];
  v4 = [v3 collectionViewLayout];
  [v4 invalidateLayout];

  v5 = objc_alloc_init(UICollectionViewFlowLayout);
  [(PublisherViewController *)self setFlowLayout:v5];

  v6 = [(PublisherViewController *)self flowLayout];
  [v6 setScrollDirection:0];

  v8 = [(PublisherViewController *)self flowLayout];
  v7 = [(PublisherViewController *)self collectionView];
  [v7 setCollectionViewLayout:v8];
}

- (void)scrollViewDidScroll:(id)a3
{
  v4 = a3;
  v5 = [(ContaineeViewController *)self cardPresentationController];
  [v5 cardHeight];
  v7 = v6;
  [(PublisherViewController *)self actualCardHeight];
  v9 = v8;

  if (v7 >= v9)
  {
    [v4 contentOffset];
    v11 = v10;
    v12 = [(PublisherViewController *)self headerHeightConstraint];
    [v12 constant];
    v14 = v13 - v11;

    v15 = [(PublisherViewController *)self publisherHeaderView];
    [v15 maximumRequiredHeight];
    v17 = v16;

    v18 = [(PublisherViewController *)self publisherHeaderView];
    [v18 minimumRequiredHeight];
    v20 = v19;

    if (v14 <= v17)
    {
      v22 = [(PublisherViewController *)self publisherHeaderView];
      [v22 headerHeightChangedWithNewYOffset:v11];

      if (v14 >= v20)
      {
        [v4 contentOffset];
        [v4 setContentOffset:?];
        v20 = v14;
      }
    }

    else
    {
      v21 = [(PublisherViewController *)self publisherHeaderView];
      [v21 headerHeightChangedWithNewYOffset:v11];

      v26.receiver = self;
      v26.super_class = PublisherViewController;
      [(ContaineeViewController *)&v26 scrollViewDidScroll:v4];
      v20 = v17;
    }

    v23 = [(PublisherViewController *)self headerHeightConstraint];
    [v23 setConstant:v20];

    v24 = [(PublisherViewController *)self publisherHeaderView];
    v25 = [(PublisherViewController *)self headerHeightConstraint];
    [v25 constant];
    [v24 adjustLogoImageViewTopConstraint:?];
  }

  else
  {
    v27.receiver = self;
    v27.super_class = PublisherViewController;
    [(ContaineeViewController *)&v27 scrollViewDidScroll:v4];
  }
}

- (void)scrollViewWillEndDragging:(id)a3 withVelocity:(CGPoint)a4 targetContentOffset:(CGPoint *)a5
{
  y = a4.y;
  v9.receiver = self;
  v9.super_class = PublisherViewController;
  [(ContaineeViewController *)&v9 scrollViewWillEndDragging:a3 withVelocity:a5 targetContentOffset:a4.x];
  v7 = [(PublisherViewController *)self analyticsManager];
  v8 = v7;
  if (y > 0.0)
  {
    [v7 publisherCollectionsScrolledDown];
  }

  else
  {
    [v7 publisherCollectionsScrolledUp];
  }
}

- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4
{
  height = a3.height;
  width = a3.width;
  v10.receiver = self;
  v10.super_class = PublisherViewController;
  v7 = a4;
  [(ContaineeViewController *)&v10 viewWillTransitionToSize:v7 withTransitionCoordinator:width, height];
  v8[4] = self;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100F37860;
  v9[3] = &unk_101661710;
  v9[4] = self;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100F37868;
  v8[3] = &unk_101661710;
  [v7 animateAlongsideTransition:v9 completion:v8];
}

- (void)traitCollectionDidChange:(id)a3
{
  v16.receiver = self;
  v16.super_class = PublisherViewController;
  v4 = a3;
  [(MapsThemeViewController *)&v16 traitCollectionDidChange:v4];
  v5 = [(PublisherViewController *)self traitCollection:v16.receiver];
  v6 = [v5 preferredContentSizeCategory];
  v7 = [v4 preferredContentSizeCategory];

  v8 = sub_10008FB5C(v6, v7);
  if (v8)
  {
    v9 = [(PublisherViewController *)self collectionView];
    v10 = [v9 collectionViewLayout];
    [v10 invalidateLayout];

    v11 = objc_alloc_init(UICollectionViewFlowLayout);
    [(PublisherViewController *)self setFlowLayout:v11];

    v12 = [(PublisherViewController *)self flowLayout];
    [v12 setScrollDirection:0];

    v13 = [(PublisherViewController *)self flowLayout];
    v14 = [(PublisherViewController *)self collectionView];
    [v14 setCollectionViewLayout:v13];

    v15 = [(PublisherViewController *)self collectionView];
    [v15 reloadData];
  }
}

- (void)removeCollectionView
{
  v3 = [(PublisherViewController *)self collectionView];

  if (v3)
  {
    v4 = [(PublisherViewController *)self collectionView];
    [v4 removeFromSuperview];

    [(PublisherViewController *)self setCollectionView:0];

    [(PublisherViewController *)self setDataSource:0];
  }
}

- (void)removeErrorView
{
  v3 = [(PublisherViewController *)self errorView];

  if (v3)
  {
    v4 = [(PublisherViewController *)self errorView];
    [v4 removeFromSuperview];

    [(PublisherViewController *)self setErrorView:0];
  }
}

- (void)addErrorView
{
  v3 = [(PublisherViewController *)self errorView];

  if (!v3)
  {
    v4 = [(PublisherViewController *)self dataSource];
    [v4 clearPublisherData];

    v5 = objc_alloc_init(ErrorModeView);
    [(PublisherViewController *)self setErrorView:v5];

    v6 = [(PublisherViewController *)self apiController];
    v7 = [v6 publisherResult];
    v8 = [v7 publisher];
    LODWORD(v5) = [v8 isSuppressed];
    v9 = +[NSBundle mainBundle];
    v10 = v9;
    if (v5)
    {
      v11 = @"[Brooklyn] Error Mode featue unavailable";
    }

    else
    {
      v11 = @"[Brooklyn] Error Mode title";
    }

    v12 = [v9 localizedStringForKey:v11 value:@"localized string not found" table:0];

    v13 = +[NSBundle mainBundle];
    v14 = [v13 localizedStringForKey:@"[Brooklyn] Error Mode message" value:@"localized string not found" table:0];

    v15 = MKCurrentNetworkConnectionFailureDiagnosis();
    v16 = [(PublisherViewController *)self errorView];
    v17 = v16;
    if (v15)
    {
      [v16 setTitle:v12 andMessage:v14];

      objc_initWeak(&location, self);
      v18 = [(PublisherViewController *)self errorView];
      v19 = +[NSBundle mainBundle];
      v20 = [v19 localizedStringForKey:@"Try Again [Brooklyn]" value:@"localized string not found" table:0];
      v21 = +[UIColor systemGray5Color];
      v28 = _NSConcreteStackBlock;
      v29 = 3221225472;
      v30 = sub_100F37E68;
      v31 = &unk_10165D828;
      objc_copyWeak(&v32, &location);
      [v18 setButtonTitle:v20 glyphName:@"arrow.clockwise" backgroundColor:v21 handler:&v28];

      objc_destroyWeak(&v32);
      objc_destroyWeak(&location);
    }

    else
    {
      v22 = [UIFont preferredFontForTextStyle:UIFontTextStyleSubhead];
      [v17 setTitleLabelFont:v22];

      v23 = [(PublisherViewController *)self errorView];
      [v23 setTitle:v12 andMessage:0];
    }

    v24 = [(PublisherViewController *)self errorView:v28];
    [v24 setTranslatesAutoresizingMaskIntoConstraints:0];

    v25 = [(ContaineeViewController *)self contentView];
    v26 = [(PublisherViewController *)self errorView];
    [v25 addSubview:v26];

    v27 = [(PublisherViewController *)self errorView];
    [(PublisherViewController *)self activateConstraintsForViewPinnedBelowHeader:v27];
  }
}

- (void)removeLoadingView
{
  v3 = [(PublisherViewController *)self loadingView];

  if (v3)
  {
    v4 = [(PublisherViewController *)self loadingView];
    [v4 removeFromSuperview];

    [(PublisherViewController *)self setLoadingView:0];
  }
}

- (void)addLoadingView
{
  objc_initWeak(&location, self);
  v2 = dispatch_time(0, 200000000);
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_100F38048;
  v3[3] = &unk_101661B98;
  objc_copyWeak(&v4, &location);
  dispatch_after(v2, &_dispatch_main_q, v3);
  objc_destroyWeak(&v4);
  objc_destroyWeak(&location);
}

- (void)activateConstraintsForViewPinnedBelowHeader:(id)a3
{
  v4 = a3;
  v5 = [(PublisherViewController *)self publisherHeaderView];
  if (v5)
  {
    [(PublisherViewController *)self publisherHeaderView];
  }

  else
  {
    [(ContaineeViewController *)self headerView];
  }
  v18 = ;

  v21 = [v4 leadingAnchor];
  v22 = [(ContaineeViewController *)self contentView];
  v20 = [v22 leadingAnchor];
  v19 = [v21 constraintEqualToAnchor:v20];
  v23[0] = v19;
  v16 = [v4 trailingAnchor];
  v17 = [(ContaineeViewController *)self contentView];
  v6 = [v17 trailingAnchor];
  v7 = [v16 constraintEqualToAnchor:v6];
  v23[1] = v7;
  v8 = [v4 topAnchor];
  v9 = [v18 bottomAnchor];
  v10 = [v8 constraintEqualToAnchor:v9];
  v23[2] = v10;
  v11 = [v4 bottomAnchor];

  v12 = [(ContaineeViewController *)self contentView];
  v13 = [v12 bottomAnchor];
  v14 = [v11 constraintEqualToAnchor:v13];
  v23[3] = v14;
  v15 = [NSArray arrayWithObjects:v23 count:4];
  [NSLayoutConstraint activateConstraints:v15];
}

- (void)removeDefaultHeaderView
{
  v3 = [(ContaineeViewController *)self headerView];
  [v3 removeFromSuperview];

  v24 = [(ContaineeViewController *)self contentView];
  v22 = [v24 topAnchor];
  v23 = [(PublisherViewController *)self view];
  v21 = [v23 topAnchor];
  v20 = [v22 constraintEqualToAnchor:v21];
  v25[0] = v20;
  v19 = [(ContaineeViewController *)self contentView];
  v17 = [v19 leadingAnchor];
  v18 = [(PublisherViewController *)self view];
  v16 = [v18 leadingAnchor];
  v15 = [v17 constraintEqualToAnchor:v16];
  v25[1] = v15;
  v14 = [(ContaineeViewController *)self contentView];
  v4 = [v14 trailingAnchor];
  v5 = [(PublisherViewController *)self view];
  v6 = [v5 trailingAnchor];
  v7 = [v4 constraintEqualToAnchor:v6];
  v25[2] = v7;
  v8 = [(ContaineeViewController *)self contentView];
  v9 = [v8 bottomAnchor];
  v10 = [(PublisherViewController *)self view];
  v11 = [v10 bottomAnchor];
  v12 = [v9 constraintEqualToAnchor:v11];
  v25[3] = v12;
  v13 = [NSArray arrayWithObjects:v25 count:4];
  [NSLayoutConstraint activateConstraints:v13];
}

- (void)activateDefaultHeaderConstraints
{
  v23 = [(PublisherViewController *)self defaultHeaderView];
  v21 = [v23 topAnchor];
  v22 = [(ContaineeViewController *)self headerView];
  v20 = [v22 topAnchor];
  v19 = [v21 constraintEqualToAnchor:v20];
  v24[0] = v19;
  v18 = [(PublisherViewController *)self defaultHeaderView];
  v16 = [v18 leadingAnchor];
  v17 = [(ContaineeViewController *)self headerView];
  v15 = [v17 leadingAnchor];
  v14 = [v16 constraintEqualToAnchor:v15];
  v24[1] = v14;
  v13 = [(PublisherViewController *)self defaultHeaderView];
  v3 = [v13 trailingAnchor];
  v4 = [(ContaineeViewController *)self headerView];
  v5 = [v4 trailingAnchor];
  v6 = [v3 constraintEqualToAnchor:v5];
  v24[2] = v6;
  v7 = [(PublisherViewController *)self defaultHeaderView];
  v8 = [v7 bottomAnchor];
  v9 = [(ContaineeViewController *)self headerView];
  v10 = [v9 bottomAnchor];
  v11 = [v8 constraintEqualToAnchor:v10];
  v24[3] = v11;
  v12 = [NSArray arrayWithObjects:v24 count:4];
  [NSLayoutConstraint activateConstraints:v12];
}

- (void)addDefaultHeaderView
{
  v3 = [(PublisherViewController *)self defaultHeaderView];

  if (!v3)
  {
    v4 = [[ContainerHeaderView alloc] initWithFrame:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
    [(PublisherViewController *)self setDefaultHeaderView:v4];

    v5 = [(PublisherViewController *)self defaultHeaderView];
    [v5 setTranslatesAutoresizingMaskIntoConstraints:0];

    v6 = [(PublisherViewController *)self defaultHeaderView];
    LODWORD(v7) = 1148846080;
    [v6 setContentCompressionResistancePriority:1 forAxis:v7];

    v8 = [(PublisherViewController *)self defaultHeaderView];
    [v8 setDelegate:self];

    v9 = [(PublisherViewController *)self defaultHeaderView];
    [v9 setHairLineAlpha:0.0];

    v10 = [(PublisherViewController *)self defaultHeaderView];
    [v10 setHeaderSize:2];

    v12 = [(ContaineeViewController *)self headerView];
    v11 = [(PublisherViewController *)self defaultHeaderView];
    [v12 addSubview:v11];
  }
}

- (void)activateConstraints
{
  v3 = [(PublisherViewController *)self publisherHeaderView];
  v4 = [v3 heightAnchor];
  v5 = [(PublisherViewController *)self publisherHeaderView];
  [v5 maximumRequiredHeight];
  v6 = [v4 constraintEqualToConstant:?];
  [(PublisherViewController *)self setHeaderHeightConstraint:v6];

  v45 = objc_alloc_init(NSMutableArray);
  v43 = [(PublisherViewController *)self collectionView];
  v39 = [v43 leadingAnchor];
  v41 = [(ContaineeViewController *)self contentView];
  v37 = [v41 leadingAnchor];
  v35 = [v39 constraintEqualToAnchor:v37];
  v47[0] = v35;
  v33 = [(PublisherViewController *)self collectionView];
  v29 = [v33 trailingAnchor];
  v31 = [(ContaineeViewController *)self contentView];
  v28 = [v31 trailingAnchor];
  v27 = [v29 constraintEqualToAnchor:v28];
  v47[1] = v27;
  v26 = [(PublisherViewController *)self collectionView];
  v25 = [v26 topAnchor];
  v7 = [(PublisherViewController *)self publisherHeaderView];
  v8 = [v7 bottomAnchor];
  v9 = [v25 constraintEqualToAnchor:v8];
  v47[2] = v9;
  v10 = [(PublisherViewController *)self collectionView];
  v11 = [v10 bottomAnchor];
  v12 = [(ContaineeViewController *)self contentView];
  v13 = [v12 bottomAnchor];
  v14 = [v11 constraintEqualToAnchor:v13];
  v47[3] = v14;
  v15 = [NSArray arrayWithObjects:v47 count:4];
  [v45 addObjectsFromArray:v15];

  v44 = [(PublisherViewController *)self publisherHeaderView];
  v40 = [v44 topAnchor];
  v42 = [(ContaineeViewController *)self contentView];
  v38 = [v42 topAnchor];
  v36 = [v40 constraintEqualToAnchor:v38];
  v46[0] = v36;
  v34 = [(PublisherViewController *)self publisherHeaderView];
  v30 = [v34 leadingAnchor];
  v32 = [(ContaineeViewController *)self contentView];
  v16 = [v32 leadingAnchor];
  v17 = [v30 constraintEqualToAnchor:v16];
  v46[1] = v17;
  v18 = [(PublisherViewController *)self publisherHeaderView];
  v19 = [v18 trailingAnchor];
  v20 = [(ContaineeViewController *)self contentView];
  v21 = [v20 trailingAnchor];
  v22 = [v19 constraintEqualToAnchor:v21];
  v46[2] = v22;
  v23 = [(PublisherViewController *)self headerHeightConstraint];
  v46[3] = v23;
  v24 = [NSArray arrayWithObjects:v46 count:4];
  [v45 addObjectsFromArray:v24];

  [NSLayoutConstraint activateConstraints:v45];
}

- (void)addCollectionView
{
  v3 = objc_alloc_init(NSMutableArray);
  v4 = [(PublisherViewController *)self apiController];
  v5 = [v4 collectionResults];
  v46[0] = _NSConcreteStackBlock;
  v46[1] = 3221225472;
  v46[2] = sub_100F39348;
  v46[3] = &unk_10165D7E0;
  v6 = v3;
  v47 = v6;
  [v5 enumerateObjectsUsingBlock:v46];

  v7 = [(PublisherViewController *)self apiController];
  v8 = [v7 publisherViewIdentifiers];

  v9 = [(PublisherViewController *)self collectionView];

  if (v9)
  {
    v10 = [(PublisherViewController *)self dataSource];
    [v10 updateCollections:v6 usingBatchIdentifiers:v8];
  }

  else
  {
    v11 = objc_alloc_init(UICollectionViewFlowLayout);
    [(PublisherViewController *)self setFlowLayout:v11];

    v12 = [(PublisherViewController *)self flowLayout];
    [v12 setScrollDirection:0];

    v13 = [UICollectionView alloc];
    v14 = [(ContaineeViewController *)self contentView];
    [v14 frame];
    v16 = v15;
    v18 = v17;
    v20 = v19;
    v22 = v21;
    v23 = [(PublisherViewController *)self flowLayout];
    v24 = [v13 initWithFrame:v23 collectionViewLayout:{v16, v18, v20, v22}];
    [(PublisherViewController *)self setCollectionView:v24];

    v25 = [(PublisherViewController *)self apiController];
    v10 = [v25 publisherViewResultFilters];

    v26 = [PublisherViewDataSource alloc];
    v27 = [(PublisherViewController *)self collectionView];
    v28 = [(PublisherViewController *)self apiController];
    v29 = [(PublisherViewController *)self analyticsManager];
    v30 = [(PublisherViewController *)self publisherHeaderView];
    v31 = [v30 actionManager];
    v32 = [(PublisherViewDataSource *)v26 initWithCollectionView:v27 usingCuratedCollections:v6 usingPlaceCollectionIds:v8 withResultFilters:v10 withAPIController:v28 withCollectionRoutingDelegate:self usingAnalyticsManager:v29 usingPublisherActionsManager:v31];
    [(PublisherViewController *)self setDataSource:v32];

    v33 = [(PublisherViewController *)self dataSource];
    [v33 setDelegate:self];

    v34 = [(PublisherViewController *)self collectionView];
    [v34 setBounces:1];

    v35 = [(PublisherViewController *)self collectionView];
    [v35 setAlwaysBounceVertical:1];

    v36 = [(PublisherViewController *)self collectionView];
    [v36 setTranslatesAutoresizingMaskIntoConstraints:0];

    v37 = +[UIColor clearColor];
    v38 = [(PublisherViewController *)self collectionView];
    [v38 setBackgroundColor:v37];

    v39 = [(ContaineeViewController *)self contentView];
    v40 = [(PublisherViewController *)self collectionView];
    v41 = [(PublisherViewController *)self publisherHeaderView];
    [v39 insertSubview:v40 belowSubview:v41];
  }

  objc_initWeak(&location, self);
  v42 = [(PublisherViewController *)self dataSource];
  v43[0] = _NSConcreteStackBlock;
  v43[1] = 3221225472;
  v43[2] = sub_100F393C4;
  v43[3] = &unk_101661B98;
  objc_copyWeak(&v44, &location);
  [v42 displayCollections:v43];

  objc_destroyWeak(&v44);
  objc_destroyWeak(&location);
}

- (void)addPublisherHeaderView
{
  v3 = [(PublisherViewController *)self publisherHeaderView];

  if (!v3)
  {
    v4 = [(PublisherViewController *)self publisher];
    [v4 publisherAttribution];

    v23 = [(PublisherViewController *)self publisher];
    v5 = [PublisherAnalyticsManager alloc];
    v6 = [v23 identifier];
    v7 = [v23 publisherAttribution];
    v8 = [(PublisherAnalyticsManager *)v5 initWithPublisherId:v6 usingAttribution:v7];
    [(PublisherViewController *)self setAnalyticsManager:v8];

    v9 = [PublisherHeaderView alloc];
    v10 = [v23 publisherAttribution];
    v11 = [(PublisherViewController *)self analyticsManager];
    v12 = [(PublisherHeaderView *)v9 initWithDelegate:self usingPublisherAttribution:v10 usingAnalyticsManager:v11];
    [(PublisherViewController *)self setPublisherHeaderView:v12];

    v13 = +[UIColor clearColor];
    v14 = [(PublisherViewController *)self publisherHeaderView];
    [v14 setBackgroundColor:v13];

    v15 = [(PublisherViewController *)self publisherHeaderView];
    [v15 setTranslatesAutoresizingMaskIntoConstraints:0];

    v16 = [(PublisherViewController *)self publisherHeaderView];
    LODWORD(v17) = 1148846080;
    [v16 setContentCompressionResistancePriority:0 forAxis:v17];

    v18 = [(PublisherViewController *)self publisherHeaderView];
    LODWORD(v19) = 1148846080;
    [v18 setContentHuggingPriority:0 forAxis:v19];

    v20 = [(ContaineeViewController *)self contentView];
    v21 = [(PublisherViewController *)self publisherHeaderView];
    [v20 addSubview:v21];

    v22 = [(PublisherViewController *)self analyticsManager];
    [v22 publisherTrayRevealed];
  }
}

- (void)onTransitionFromState:(int64_t)a3 toState:(int64_t)a4
{
  v7 = sub_100F398D0();
  v8 = os_signpost_id_generate(v7);

  v9 = sub_100F398D0();
  v10 = v9;
  if (v8 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v9))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v10, OS_SIGNPOST_INTERVAL_BEGIN, v8, "DisplayingPublisherView", "", buf, 2u);
  }

  if (a3 > 1)
  {
    if (a3 == 2)
    {
      if (a4 != 1)
      {
        goto LABEL_19;
      }
    }

    else
    {
      if (a3 != 3 || a4 != 1)
      {
        goto LABEL_19;
      }

      [(PublisherViewController *)self removeErrorView];
    }

    [(PublisherViewController *)self addLoadingView];
    goto LABEL_19;
  }

  if (a3)
  {
    if (a3 == 1)
    {
      if (a4 == 3)
      {
        [(PublisherViewController *)self removeLoadingView];
        [(PublisherViewController *)self removeCollectionView];
        [(PublisherViewController *)self addErrorView];
      }

      else if (a4 == 2)
      {
        [(PublisherViewController *)self removeLoadingView];
        [(PublisherViewController *)self removeDefaultHeaderView];
        [(PublisherViewController *)self addPublisherHeaderView];
        [(PublisherViewController *)self addCollectionView];
        [(PublisherViewController *)self activateConstraints];
      }
    }
  }

  else if (a4 == 1)
  {
    [(PublisherViewController *)self addLoadingView];
    [(PublisherViewController *)self addDefaultHeaderView];
    [(PublisherViewController *)self activateDefaultHeaderConstraints];
  }

LABEL_19:
  v11 = sub_100F398D0();
  v12 = v11;
  if (v8 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v11))
  {
    *v13 = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v12, OS_SIGNPOST_INTERVAL_END, v8, "DisplayingPublisherView", "", v13, 2u);
  }
}

- (void)handleDismissAction:(id)a3
{
  v4 = a3;
  v5 = [(PublisherViewController *)self apiController];
  [v5 cancelFetchingPublisher];

  v6 = [(PublisherViewController *)self dataSource];
  [v6 dismissedCollections];

  v7.receiver = self;
  v7.super_class = PublisherViewController;
  [(ContaineeViewController *)&v7 handleDismissAction:v4];
}

- (double)heightForLayout:(unint64_t)a3
{
  v5 = sub_10000FA08(self);
  if (a3 != 1 || (result = -1.0, v5 != 5))
  {
    v7.receiver = self;
    v7.super_class = PublisherViewController;
    [(ContaineeViewController *)&v7 heightForLayout:a3];
  }

  return result;
}

- (GEOPublisher)publisher
{
  v2 = [(PublisherViewController *)self apiController];
  v3 = [v2 publisherResult];
  v4 = [v3 publisher];

  return v4;
}

- (void)didChangeLayout:(unint64_t)a3
{
  v11.receiver = self;
  v11.super_class = PublisherViewController;
  [(ContaineeViewController *)&v11 didChangeLayout:a3];
  v4 = [(PublisherViewController *)self collectionView];

  if (v4)
  {
    [(PublisherViewController *)self resetCollectionViewLayout];
    v5 = [(PublisherViewController *)self collectionView];
    [v5 setContentOffset:{CGPointZero.x, CGPointZero.y}];

    v6 = [(PublisherViewController *)self publisherHeaderView];
    [v6 maximumRequiredHeight];
    v8 = v7;
    v9 = [(PublisherViewController *)self headerHeightConstraint];
    [v9 setConstant:v8];

    v10 = [(PublisherViewController *)self publisherHeaderView];
    [v10 resetLogoHeight];
  }
}

- (void)willDismissByGesture
{
  v4.receiver = self;
  v4.super_class = PublisherViewController;
  [(ContaineeViewController *)&v4 willDismissByGesture];
  v3 = [(PublisherViewController *)self actionDelegate];
  [v3 publisherViewControllerClearSearch:self];
}

- (void)viewWillDisappear:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = PublisherViewController;
  [(ContaineeViewController *)&v5 viewWillDisappear:a3];
  v4 = [(PublisherViewController *)self apiController];
  [v4 cancelFetchingPublisher];
}

- (void)viewDidAppear:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = PublisherViewController;
  [(PublisherViewController *)&v5 viewDidAppear:a3];
  v4 = [(ContaineeViewController *)self cardPresentationController];
  [v4 cardHeight];
  [(PublisherViewController *)self setActualCardHeight:?];
}

- (void)viewDidLoad
{
  v12.receiver = self;
  v12.super_class = PublisherViewController;
  [(ContaineeViewController *)&v12 viewDidLoad];
  v3 = [(PublisherViewController *)self view];
  [v3 setAccessibilityIdentifier:@"PublisherView"];

  objc_initWeak(&location, self);
  v4 = [PublisherAPIController alloc];
  v5 = [(PublisherViewController *)self publisherId];
  objc_copyWeak(&v10, &location);
  v6 = [(PublisherViewController *)self traits:_NSConcreteStackBlock];
  v7 = [(PublisherAPIController *)v4 initWithPublisherId:v5 usingOnStateChangeHandler:&v9 usingTraits:v6];
  [(PublisherViewController *)self setApiController:v7];

  v8 = [(PublisherViewController *)self apiController];
  [v8 fetchPublisherViewForKeywordFilter:0 addressFilter:0 onCompletion:&stru_10165D7B8];

  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);
}

- (PublisherViewController)initWithPublisherId:(id)a3 numberOfCollections:(unint64_t)a4 withTraits:(id)a5
{
  v9 = a3;
  v10 = a5;
  v18.receiver = self;
  v18.super_class = PublisherViewController;
  v11 = [(PublisherViewController *)&v18 initWithNibName:0 bundle:0];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_publisherId, a3);
    v12->_numberOfCollections = a4;
    objc_storeStrong(&v12->_traits, a5);
    v13 = sub_10000FA08(v12);
    v14 = [(ContaineeViewController *)v12 cardPresentationController];
    v15 = v14;
    if (v13 == 5)
    {
      [v14 setAllowResizeInFloatingStyle:1];

      v16 = [(ContaineeViewController *)v12 cardPresentationController];
      [v16 setDefaultContaineeLayout:3];
    }

    else
    {
      [v14 setPresentedModally:1];

      v16 = [(ContaineeViewController *)v12 cardPresentationController];
      [v16 setTakesAvailableHeight:1];
    }
  }

  return v12;
}

@end