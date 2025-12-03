@interface MailRecategorizationViewController
- (MFTriageInteractionDelegate)delegate;
- (MailRecategorizationViewController)initWithMessageHeaderView:(id)view messageListItem:(id)item completion:(id)completion;
- (id)_compositionalLayout;
- (void)_configureCollectionViewIfNeeded;
- (void)_configureNavigationTitleViewIfNeeded;
- (void)_loadData;
- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path;
- (void)loadView;
- (void)scrollViewDidScroll:(id)scroll;
- (void)updateHeaderConstraintsForLayoutChange;
- (void)updateSizeForLayoutChange;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
@end

@implementation MailRecategorizationViewController

- (MailRecategorizationViewController)initWithMessageHeaderView:(id)view messageListItem:(id)item completion:(id)completion
{
  viewCopy = view;
  itemCopy = item;
  completionCopy = completion;
  v19.receiver = self;
  v19.super_class = MailRecategorizationViewController;
  v12 = [(MailRecategorizationViewController *)&v19 initWithNibName:0 bundle:0];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_messageHeaderView, view);
    objc_storeStrong(&v13->_messageListItem, item);
    v14 = [UICollectionViewCellRegistration registrationWithCellClass:objc_opt_class() configurationHandler:&stru_100650E38];
    cellRegistration = v13->_cellRegistration;
    v13->_cellRegistration = v14;

    v16 = objc_retainBlock(completionCopy);
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
  presentingViewController = [(MailRecategorizationViewController *)self presentingViewController];
  v10[0] = objc_opt_class();
  v10[1] = objc_opt_class();
  v4 = [NSArray arrayWithObjects:v10 count:2];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1001257E0;
  v6[3] = &unk_100650498;
  objc_copyWeak(&v7, &location);
  v5 = [presentingViewController registerForTraitChanges:v4 withHandler:v6];

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

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  height = size.height;
  width = size.width;
  coordinatorCopy = coordinator;
  v9.receiver = self;
  v9.super_class = MailRecategorizationViewController;
  [(MailRecategorizationViewController *)&v9 viewWillTransitionToSize:coordinatorCopy withTransitionCoordinator:width, height];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100125A18;
  v8[3] = &unk_10064CC00;
  v8[4] = self;
  [coordinatorCopy animateAlongsideTransition:v8 completion:0];
}

- (void)updateSizeForLayoutChange
{
  sheetPresentationController = [(MailRecategorizationViewController *)self sheetPresentationController];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100125B44;
  v5[3] = &unk_10064C7E8;
  v5[4] = self;
  [sheetPresentationController animateChanges:v5];

  collectionView = [(MailRecategorizationViewController *)self collectionView];
  [collectionView contentSize];
  [(MailRecategorizationViewController *)self setPreferredContentSize:388.0];
}

- (void)updateHeaderConstraintsForLayoutChange
{
  if (MUISolariumFeatureEnabled())
  {
    messageHeaderView = [(MailRecategorizationViewController *)self messageHeaderView];
    avatarView = [messageHeaderView avatarView];
    window = [avatarView window];

    if (window)
    {
      messageHeaderView2 = [(MailRecategorizationViewController *)self messageHeaderView];
      avatarView2 = [messageHeaderView2 avatarView];
      superview = [avatarView2 superview];
      messageHeaderView3 = [(MailRecategorizationViewController *)self messageHeaderView];
      avatarView3 = [messageHeaderView3 avatarView];
      [avatarView3 frame];
      v10 = v9;
      v12 = v11;
      v14 = v13;
      v16 = v15;
      messageHeaderView4 = [(MailRecategorizationViewController *)self messageHeaderView];
      [superview convertRect:messageHeaderView4 toView:{v10, v12, v14, v16}];
      v19 = v18;

      messageHeaderViewTopConstraint = [(MailRecategorizationViewController *)self messageHeaderViewTopConstraint];
      [messageHeaderViewTopConstraint setConstant:-v19];
    }

    else
    {
      messageHeaderViewTopConstraint = [(MailRecategorizationViewController *)self messageHeaderViewTopConstraint];
      [messageHeaderViewTopConstraint setConstant:0.0];
    }

    view = [(MailRecategorizationViewController *)self view];
    [view layoutMargins];
    v21 = v20;
    titleView = [(MailRecategorizationViewController *)self titleView];
    [titleView layoutMargins];
    v24 = v23;
    messageHeaderViewLeadingConstraint = [(MailRecategorizationViewController *)self messageHeaderViewLeadingConstraint];
    [messageHeaderViewLeadingConstraint setConstant:v21 - v24];
  }
}

- (void)_configureNavigationTitleViewIfNeeded
{
  titleView = [(MailRecategorizationViewController *)self titleView];

  if (!titleView)
  {
    messageHeaderView = [(MailRecategorizationViewController *)self messageHeaderView];
    [messageHeaderView setTranslatesAutoresizingMaskIntoConstraints:0];
    v5 = [[_UINavigationBarTitleView alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
    [v5 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v5 setPreservesSuperviewLayoutMargins:1];
    [v5 setHideStandardTitle:1];
    [messageHeaderView frame];
    [v5 setHeight:CGRectGetHeight(v42)];
    v6 = +[UIColor clearColor];
    [v5 setBackgroundColor:v6];

    [v5 addSubview:messageHeaderView];
    navigationItem = [(MailRecategorizationViewController *)self navigationItem];
    [navigationItem setTitleView:v5];

    [(MailRecategorizationViewController *)self setTitleView:v5];
    v40 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:24 target:self action:"_dismissSelf"];
    navigationItem2 = [(MailRecategorizationViewController *)self navigationItem];
    [navigationItem2 setRightBarButtonItem:v40];

    if (messageHeaderView && v5)
    {
      v39 = +[NSMutableArray array];
      if (MUISolariumFeatureEnabled())
      {
        topAnchor = [messageHeaderView topAnchor];
        topAnchor2 = [v5 topAnchor];
        v11 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:0.0];
        [(MailRecategorizationViewController *)self setMessageHeaderViewTopConstraint:v11];

        messageHeaderViewTopConstraint = [(MailRecategorizationViewController *)self messageHeaderViewTopConstraint];
        [v39 addObject:messageHeaderViewTopConstraint];

        leadingAnchor = [messageHeaderView leadingAnchor];
        layoutMarginsGuide = [v5 layoutMarginsGuide];
        leadingAnchor2 = [layoutMarginsGuide leadingAnchor];
        v16 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:0.0];
        [(MailRecategorizationViewController *)self setMessageHeaderViewLeadingConstraint:v16];

        messageHeaderViewLeadingConstraint = [(MailRecategorizationViewController *)self messageHeaderViewLeadingConstraint];
        [v39 addObject:messageHeaderViewLeadingConstraint];

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
        leadingAnchor3 = [messageHeaderView leadingAnchor];
        layoutMarginsGuide2 = [v5 layoutMarginsGuide];
        leadingAnchor4 = [layoutMarginsGuide2 leadingAnchor];
        v22 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4];
        [v39 addObject:v22];

        v18 = 24.0;
      }

      trailingAnchor = [messageHeaderView trailingAnchor];
      layoutMarginsGuide3 = [v5 layoutMarginsGuide];
      trailingAnchor2 = [layoutMarginsGuide3 trailingAnchor];
      v35 = [trailingAnchor constraintEqualToAnchor:-v18 constant:?];
      v41[0] = v35;
      heightAnchor = [messageHeaderView heightAnchor];
      heightAnchor2 = [v5 heightAnchor];
      v25 = [heightAnchor constraintEqualToAnchor:heightAnchor2];
      v41[1] = v25;
      centerYAnchor = [messageHeaderView centerYAnchor];
      centerYAnchor2 = [v5 centerYAnchor];
      v28 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
      v41[2] = v28;
      v29 = [NSArray arrayWithObjects:v41 count:3];
      [v39 addObjectsFromArray:v29];

      [NSLayoutConstraint activateConstraints:v39];
    }

    navigationItem3 = [(MailRecategorizationViewController *)self navigationItem];
    [navigationItem3 _setManualScrollEdgeAppearanceEnabled:1];

    v31 = objc_alloc_init(UINavigationBarAppearance);
    [v31 configureWithDefaultBackground];
    v32 = +[UIColor separatorColor];
    [v31 setShadowColor:v32];

    navigationItem4 = [(MailRecategorizationViewController *)self navigationItem];
    [navigationItem4 setStandardAppearance:v31];

    navigationItem5 = [(MailRecategorizationViewController *)self navigationItem];
    [navigationItem5 _setManualScrollEdgeAppearanceProgress:0.0];
  }
}

- (void)scrollViewDidScroll:(id)scroll
{
  scrollCopy = scroll;
  if ((MUISolariumFeatureEnabled() & 1) == 0)
  {
    collectionView = [(MailRecategorizationViewController *)self collectionView];

    if (collectionView == scrollCopy)
    {
      [scrollCopy bounds];
      v6 = v5;
      view = [(MailRecategorizationViewController *)self view];
      [view frame];
      v9 = v6 > v8;

      [scrollCopy setBounces:v9];
      messageHeaderView = [(MailRecategorizationViewController *)self messageHeaderView];
      [messageHeaderView frame];
      Height = CGRectGetHeight(v18);

      [scrollCopy contentOffset];
      if (v12 > -Height)
      {
        [scrollCopy contentOffset];
        v14 = v13;
        navigationItem = [(MailRecategorizationViewController *)self navigationItem];
        [navigationItem _setManualScrollEdgeAppearanceProgress:{fmin((Height + v14) * 10.0, 100.0) / 100.0}];
      }
    }
  }
}

- (void)_configureCollectionViewIfNeeded
{
  collectionView = [(MailRecategorizationViewController *)self collectionView];

  if (!collectionView)
  {
    view = [(MailRecategorizationViewController *)self view];
    v4 = [UICollectionView alloc];
    [view bounds];
    v6 = v5;
    v8 = v7;
    v10 = v9;
    v12 = v11;
    _compositionalLayout = [(MailRecategorizationViewController *)self _compositionalLayout];
    v14 = [v4 initWithFrame:_compositionalLayout collectionViewLayout:{v6, v8, v10, v12}];

    [v14 setDelegate:self];
    [(MailRecategorizationViewController *)self setContentScrollView:v14 forEdge:15];
    [v14 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v14 setAlwaysBounceVertical:1];
    [v14 setShowsVerticalScrollIndicator:0];
    [(MailRecategorizationViewController *)self setCollectionView:v14];
    [view addSubview:v14];
    [v14 mf_pinToView:view usingLayoutMargins:0];
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
  collectionView = [(MailRecategorizationViewController *)self collectionView];
  v6 = [(MailRecategorizationDataSource *)v4 initWithCollectionView:collectionView cellProvider:v3];

  delegate = [(MailRecategorizationViewController *)self delegate];
  [(MailRecategorizationDataSource *)v6 setDelegate:delegate];

  messageListItem = [(MailRecategorizationViewController *)self messageListItem];
  completion = [(MailRecategorizationViewController *)self completion];
  [(MailRecategorizationDataSource *)v6 updateDataSourceWithMessageListItem:messageListItem completion:completion];

  [(MailRecategorizationViewController *)self setDataSource:v6];
}

- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path
{
  pathCopy = path;
  dataSource = [(MailRecategorizationViewController *)self dataSource];
  v6 = [dataSource cardActionAtIndexPath:pathCopy];

  [v6 executeHandlerIfEnabled];
}

- (MFTriageInteractionDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end