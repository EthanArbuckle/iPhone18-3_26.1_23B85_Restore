@interface MailRecategorizationViewController
- (MFTriageInteractionDelegate)delegate;
- (MailRecategorizationViewController)initWithMessageHeaderView:(id)a3 messageListItem:(id)a4 completion:(id)a5;
- (id)_compositionalLayout;
- (void)_configureCollectionViewIfNeeded;
- (void)_configureNavigationTitleViewIfNeeded;
- (void)_loadData;
- (void)collectionView:(id)a3 didSelectItemAtIndexPath:(id)a4;
- (void)loadView;
- (void)scrollViewDidScroll:(id)a3;
- (void)updateHeaderConstraintsForLayoutChange;
- (void)updateSizeForLayoutChange;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4;
@end

@implementation MailRecategorizationViewController

- (MailRecategorizationViewController)initWithMessageHeaderView:(id)a3 messageListItem:(id)a4 completion:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v19.receiver = self;
  v19.super_class = MailRecategorizationViewController;
  v12 = [(MailRecategorizationViewController *)&v19 initWithNibName:0 bundle:0];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_messageHeaderView, a3);
    objc_storeStrong(&v13->_messageListItem, a4);
    v14 = [UICollectionViewCellRegistration registrationWithCellClass:objc_opt_class() configurationHandler:&stru_100650E38];
    cellRegistration = v13->_cellRegistration;
    v13->_cellRegistration = v14;

    v16 = objc_retainBlock(v11);
    completion = v13->_completion;
    v13->_completion = v16;
  }

  return v13;
}

- (void)loadView
{
  v4 = objc_alloc_init(UIView);
  v3 = +[UIColor clearColor];
  [v4 setBackgroundColor:v3];

  [(MailRecategorizationViewController *)self setView:v4];
}

- (void)viewDidLoad
{
  v9.receiver = self;
  v9.super_class = MailRecategorizationViewController;
  [(MailRecategorizationViewController *)&v9 viewDidLoad];
  [(MailRecategorizationViewController *)self _configureNavigationTitleViewIfNeeded];
  [(MailRecategorizationViewController *)self _configureCollectionViewIfNeeded];
  [(MailRecategorizationViewController *)self _loadData];
  objc_initWeak(&location, self);
  v3 = [(MailRecategorizationViewController *)self presentingViewController];
  v10[0] = objc_opt_class();
  v10[1] = objc_opt_class();
  v4 = [NSArray arrayWithObjects:v10 count:2];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1001257E0;
  v6[3] = &unk_100650498;
  objc_copyWeak(&v7, &location);
  v5 = [v3 registerForTraitChanges:v4 withHandler:v6];

  objc_destroyWeak(&v7);
  objc_destroyWeak(&location);
}

- (void)viewDidLayoutSubviews
{
  v3.receiver = self;
  v3.super_class = MailRecategorizationViewController;
  [(MailRecategorizationViewController *)&v3 viewDidLayoutSubviews];
  [(MailRecategorizationViewController *)self updateHeaderConstraintsForLayoutChange];
  [(MailRecategorizationViewController *)self updateSizeForLayoutChange];
}

- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4
{
  height = a3.height;
  width = a3.width;
  v7 = a4;
  v9.receiver = self;
  v9.super_class = MailRecategorizationViewController;
  [(MailRecategorizationViewController *)&v9 viewWillTransitionToSize:v7 withTransitionCoordinator:width, height];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100125A18;
  v8[3] = &unk_10064CC00;
  v8[4] = self;
  [v7 animateAlongsideTransition:v8 completion:0];
}

- (void)updateSizeForLayoutChange
{
  v3 = [(MailRecategorizationViewController *)self sheetPresentationController];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100125B44;
  v5[3] = &unk_10064C7E8;
  v5[4] = self;
  [v3 animateChanges:v5];

  v4 = [(MailRecategorizationViewController *)self collectionView];
  [v4 contentSize];
  [(MailRecategorizationViewController *)self setPreferredContentSize:388.0];
}

- (void)updateHeaderConstraintsForLayoutChange
{
  if (MUISolariumFeatureEnabled())
  {
    v26 = [(MailRecategorizationViewController *)self messageHeaderView];
    v3 = [v26 avatarView];
    v4 = [v3 window];

    if (v4)
    {
      v27 = [(MailRecategorizationViewController *)self messageHeaderView];
      v5 = [v27 avatarView];
      v6 = [v5 superview];
      v7 = [(MailRecategorizationViewController *)self messageHeaderView];
      v8 = [v7 avatarView];
      [v8 frame];
      v10 = v9;
      v12 = v11;
      v14 = v13;
      v16 = v15;
      v17 = [(MailRecategorizationViewController *)self messageHeaderView];
      [v6 convertRect:v17 toView:{v10, v12, v14, v16}];
      v19 = v18;

      v28 = [(MailRecategorizationViewController *)self messageHeaderViewTopConstraint];
      [v28 setConstant:-v19];
    }

    else
    {
      v28 = [(MailRecategorizationViewController *)self messageHeaderViewTopConstraint];
      [v28 setConstant:0.0];
    }

    v29 = [(MailRecategorizationViewController *)self view];
    [v29 layoutMargins];
    v21 = v20;
    v22 = [(MailRecategorizationViewController *)self titleView];
    [v22 layoutMargins];
    v24 = v23;
    v25 = [(MailRecategorizationViewController *)self messageHeaderViewLeadingConstraint];
    [v25 setConstant:v21 - v24];
  }
}

- (void)_configureNavigationTitleViewIfNeeded
{
  v3 = [(MailRecategorizationViewController *)self titleView];

  if (!v3)
  {
    v4 = [(MailRecategorizationViewController *)self messageHeaderView];
    [v4 setTranslatesAutoresizingMaskIntoConstraints:0];
    v5 = [[_UINavigationBarTitleView alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
    [v5 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v5 setPreservesSuperviewLayoutMargins:1];
    [v5 setHideStandardTitle:1];
    [v4 frame];
    [v5 setHeight:CGRectGetHeight(v42)];
    v6 = +[UIColor clearColor];
    [v5 setBackgroundColor:v6];

    [v5 addSubview:v4];
    v7 = [(MailRecategorizationViewController *)self navigationItem];
    [v7 setTitleView:v5];

    [(MailRecategorizationViewController *)self setTitleView:v5];
    v40 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:24 target:self action:"_dismissSelf"];
    v8 = [(MailRecategorizationViewController *)self navigationItem];
    [v8 setRightBarButtonItem:v40];

    if (v4 && v5)
    {
      v39 = +[NSMutableArray array];
      if (MUISolariumFeatureEnabled())
      {
        v9 = [v4 topAnchor];
        v10 = [v5 topAnchor];
        v11 = [v9 constraintEqualToAnchor:v10 constant:0.0];
        [(MailRecategorizationViewController *)self setMessageHeaderViewTopConstraint:v11];

        v12 = [(MailRecategorizationViewController *)self messageHeaderViewTopConstraint];
        [v39 addObject:v12];

        v13 = [v4 leadingAnchor];
        v14 = [v5 layoutMarginsGuide];
        v15 = [v14 leadingAnchor];
        v16 = [v13 constraintEqualToAnchor:v15 constant:0.0];
        [(MailRecategorizationViewController *)self setMessageHeaderViewLeadingConstraint:v16];

        v17 = [(MailRecategorizationViewController *)self messageHeaderViewLeadingConstraint];
        [v39 addObject:v17];

        if (+[UIDevice mf_isPadIdiom])
        {
          v18 = 0.0;
        }

        else
        {
          v18 = 48.0;
        }
      }

      else
      {
        v19 = [v4 leadingAnchor];
        v20 = [v5 layoutMarginsGuide];
        v21 = [v20 leadingAnchor];
        v22 = [v19 constraintEqualToAnchor:v21];
        [v39 addObject:v22];

        v18 = 24.0;
      }

      v38 = [v4 trailingAnchor];
      v37 = [v5 layoutMarginsGuide];
      v36 = [v37 trailingAnchor];
      v35 = [v38 constraintEqualToAnchor:-v18 constant:?];
      v41[0] = v35;
      v23 = [v4 heightAnchor];
      v24 = [v5 heightAnchor];
      v25 = [v23 constraintEqualToAnchor:v24];
      v41[1] = v25;
      v26 = [v4 centerYAnchor];
      v27 = [v5 centerYAnchor];
      v28 = [v26 constraintEqualToAnchor:v27];
      v41[2] = v28;
      v29 = [NSArray arrayWithObjects:v41 count:3];
      [v39 addObjectsFromArray:v29];

      [NSLayoutConstraint activateConstraints:v39];
    }

    v30 = [(MailRecategorizationViewController *)self navigationItem];
    [v30 _setManualScrollEdgeAppearanceEnabled:1];

    v31 = objc_alloc_init(UINavigationBarAppearance);
    [v31 configureWithDefaultBackground];
    v32 = +[UIColor separatorColor];
    [v31 setShadowColor:v32];

    v33 = [(MailRecategorizationViewController *)self navigationItem];
    [v33 setStandardAppearance:v31];

    v34 = [(MailRecategorizationViewController *)self navigationItem];
    [v34 _setManualScrollEdgeAppearanceProgress:0.0];
  }
}

- (void)scrollViewDidScroll:(id)a3
{
  v16 = a3;
  if ((MUISolariumFeatureEnabled() & 1) == 0)
  {
    v4 = [(MailRecategorizationViewController *)self collectionView];

    if (v4 == v16)
    {
      [v16 bounds];
      v6 = v5;
      v7 = [(MailRecategorizationViewController *)self view];
      [v7 frame];
      v9 = v6 > v8;

      [v16 setBounces:v9];
      v10 = [(MailRecategorizationViewController *)self messageHeaderView];
      [v10 frame];
      Height = CGRectGetHeight(v18);

      [v16 contentOffset];
      if (v12 > -Height)
      {
        [v16 contentOffset];
        v14 = v13;
        v15 = [(MailRecategorizationViewController *)self navigationItem];
        [v15 _setManualScrollEdgeAppearanceProgress:{fmin((Height + v14) * 10.0, 100.0) / 100.0}];
      }
    }
  }
}

- (void)_configureCollectionViewIfNeeded
{
  v3 = [(MailRecategorizationViewController *)self collectionView];

  if (!v3)
  {
    v15 = [(MailRecategorizationViewController *)self view];
    v4 = [UICollectionView alloc];
    [v15 bounds];
    v6 = v5;
    v8 = v7;
    v10 = v9;
    v12 = v11;
    v13 = [(MailRecategorizationViewController *)self _compositionalLayout];
    v14 = [v4 initWithFrame:v13 collectionViewLayout:{v6, v8, v10, v12}];

    [v14 setDelegate:self];
    [(MailRecategorizationViewController *)self setContentScrollView:v14 forEdge:15];
    [v14 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v14 setAlwaysBounceVertical:1];
    [v14 setShowsVerticalScrollIndicator:0];
    [(MailRecategorizationViewController *)self setCollectionView:v14];
    [v15 addSubview:v14];
    [v14 mf_pinToView:v15 usingLayoutMargins:0];
  }
}

- (id)_compositionalLayout
{
  v2 = [[UICollectionLayoutListConfiguration alloc] initWithAppearance:2];
  [v2 setFooterMode:1];
  [v2 setItemSeparatorHandler:&stru_100650EA0];
  v3 = [UICollectionViewCompositionalLayout alloc];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100126A7C;
  v7[3] = &unk_100650EC8;
  v4 = v2;
  v8 = v4;
  v5 = [v3 initWithSectionProvider:v7];

  return v5;
}

- (void)_loadData
{
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1004891C8;
  v10[3] = &unk_100650EF0;
  v10[4] = self;
  v3 = objc_retainBlock(v10);
  v4 = [MailRecategorizationDataSource alloc];
  v5 = [(MailRecategorizationViewController *)self collectionView];
  v6 = [(MailRecategorizationDataSource *)v4 initWithCollectionView:v5 cellProvider:v3];

  v7 = [(MailRecategorizationViewController *)self delegate];
  [(MailRecategorizationDataSource *)v6 setDelegate:v7];

  v8 = [(MailRecategorizationViewController *)self messageListItem];
  v9 = [(MailRecategorizationViewController *)self completion];
  [(MailRecategorizationDataSource *)v6 updateDataSourceWithMessageListItem:v8 completion:v9];

  [(MailRecategorizationViewController *)self setDataSource:v6];
}

- (void)collectionView:(id)a3 didSelectItemAtIndexPath:(id)a4
{
  v7 = a4;
  v5 = [(MailRecategorizationViewController *)self dataSource];
  v6 = [v5 cardActionAtIndexPath:v7];

  [v6 executeHandlerIfEnabled];
}

- (MFTriageInteractionDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end