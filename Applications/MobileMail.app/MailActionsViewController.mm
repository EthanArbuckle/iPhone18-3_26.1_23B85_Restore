@interface MailActionsViewController
- (BOOL)_cardActionIsUnflag:(id)unflag;
- (BOOL)_insertActions:(id)actions after:(id)after;
- (BOOL)collectionView:(id)view canPerformPrimaryActionForItemAtIndexPath:(id)path;
- (BOOL)collectionView:(id)view shouldHighlightItemAtIndexPath:(id)path;
- (BOOL)useActionSheetStyleCard;
- (MailActionsViewController)initWithDelegate:(id)delegate messageHeaderView:(id)view didDismissHandler:(id)handler;
- (MailActionsViewDelegate)delegate;
- (NSArray)sectionData;
- (double)_bottomInsetForCollectionView;
- (double)_maxLabelWidthInSection:(id)section;
- (double)_topInsetForCollectionView;
- (double)approximateHeightForActionSheetStyleCard;
- (double)approximateHeightNeededForAccessibilityContentSizeCategory;
- (id)compositionalLayout;
- (void)_configureCollectionViewIfNeeded;
- (void)_configureNavigationTitleViewIfNeeded;
- (void)_expandRecategorizationHeader:(id)header;
- (void)_loadData;
- (void)_performDataSourceUpdate:(id)update;
- (void)_reloadRecategorizationHeaderCellForAction:(id)action;
- (void)_updateFlagCardActionCell:(BOOL)cell;
- (void)collectionView:(id)view performPrimaryActionForItemAtIndexPath:(id)path;
- (void)loadView;
- (void)mailActionCatchUpFeedbackCell:(id)cell didTapOnFeedbackType:(int64_t)type;
- (void)mailActionFlagColorCell:(id)cell didTapOnFlagColor:(id)color;
- (void)reloadFlagItem;
- (void)scrollViewDidScroll:(id)scroll;
- (void)traitCollectionDidChange:(id)change;
- (void)updateHeaderDisplayMetrics:(id)metrics;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLayoutSubviews;
- (void)viewLayoutMarginsDidChange;
- (void)viewSafeAreaInsetsDidChange;
- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
@end

@implementation MailActionsViewController

- (MailActionsViewController)initWithDelegate:(id)delegate messageHeaderView:(id)view didDismissHandler:(id)handler
{
  delegateCopy = delegate;
  viewCopy = view;
  handlerCopy = handler;
  v16.receiver = self;
  v16.super_class = MailActionsViewController;
  v11 = [(MailActionsViewController *)&v16 initWithNibName:0 bundle:0];
  v12 = v11;
  if (v11)
  {
    objc_storeWeak(&v11->_delegate, delegateCopy);
    objc_storeStrong(&v12->_messageHeaderView, view);
    v13 = objc_retainBlock(handlerCopy);
    didDismissHandler = v12->_didDismissHandler;
    v12->_didDismissHandler = v13;
  }

  return v12;
}

- (void)viewDidDisappear:(BOOL)disappear
{
  v6.receiver = self;
  v6.super_class = MailActionsViewController;
  [(MailActionsViewController *)&v6 viewDidDisappear:disappear];
  didDismissHandler = [(MailActionsViewController *)self didDismissHandler];
  v5 = didDismissHandler;
  if (didDismissHandler)
  {
    (*(didDismissHandler + 16))(didDismissHandler);
  }

  [(MailActionsViewController *)self setDidDismissHandler:0];
}

- (void)loadView
{
  v4 = objc_alloc_init(UIView);
  v3 = +[UIColor clearColor];
  [v4 setBackgroundColor:v3];

  [(MailActionsViewController *)self setView:v4];
  [(MailActionsViewController *)self _configureNavigationTitleViewIfNeeded];
  [(MailActionsViewController *)self _configureCollectionViewIfNeeded];
  [(MailActionsViewController *)self _loadData];
}

- (void)viewDidLayoutSubviews
{
  v30.receiver = self;
  v30.super_class = MailActionsViewController;
  [(MailActionsViewController *)&v30 viewDidLayoutSubviews];
  if (MUISolariumFeatureEnabled())
  {
    messageHeaderView = [(MailActionsViewController *)self messageHeaderView];
    avatarView = [messageHeaderView avatarView];
    window = [avatarView window];

    if (window)
    {
      messageHeaderView2 = [(MailActionsViewController *)self messageHeaderView];
      avatarView2 = [messageHeaderView2 avatarView];
      superview = [avatarView2 superview];
      messageHeaderView3 = [(MailActionsViewController *)self messageHeaderView];
      avatarView3 = [messageHeaderView3 avatarView];
      [avatarView3 frame];
      v12 = v11;
      v14 = v13;
      v16 = v15;
      v18 = v17;
      messageHeaderView4 = [(MailActionsViewController *)self messageHeaderView];
      [superview convertRect:messageHeaderView4 toView:{v12, v14, v16, v18}];
      v21 = v20;

      messageHeaderViewTopConstraint = [(MailActionsViewController *)self messageHeaderViewTopConstraint];
      [messageHeaderViewTopConstraint setConstant:-v21];
    }

    else
    {
      messageHeaderViewTopConstraint = [(MailActionsViewController *)self messageHeaderViewTopConstraint];
      [messageHeaderViewTopConstraint setConstant:0.0];
    }

    view = [(MailActionsViewController *)self view];
    [view layoutMargins];
    v25 = v24;
    titleView = [(MailActionsViewController *)self titleView];
    [titleView layoutMargins];
    v28 = v27;
    messageHeaderViewLeadingConstraint = [(MailActionsViewController *)self messageHeaderViewLeadingConstraint];
    [messageHeaderViewLeadingConstraint setConstant:v25 - v28];
  }
}

- (void)reloadFlagItem
{
  flagCardAction = [(MailActionsViewController *)self flagCardAction];
  [flagCardAction setAccessibilityIdentifier:MSAccessibilityIdentifierActionsViewControllerFlag];
  if (flagCardAction)
  {
    flagColorCardAction = [(MailActionsViewController *)self flagColorCardAction];
    if ([flagColorCardAction count])
    {
      collectionViewDataSource = [(MailActionsViewController *)self collectionViewDataSource];
      firstObject = [flagColorCardAction firstObject];
      v6 = [collectionViewDataSource indexPathForItemIdentifier:firstObject];

      collectionView = [(MailActionsViewController *)self collectionView];
      v8 = [collectionView cellForItemAtIndexPath:v6];

      v9 = [(MailActionsViewController *)self _cardActionIsUnflag:flagCardAction];
      if (v9)
      {
        v10 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", +[MFFlagTriageInteraction defaultColor]);
      }

      else
      {
        v10 = 0;
      }

      [v8 selectColor:v10];
      if (v9)
      {
      }
    }

    collectionView2 = [(MailActionsViewController *)self collectionView];
    collectionViewDataSource2 = [(MailActionsViewController *)self collectionViewDataSource];
    v13 = [collectionViewDataSource2 indexPathForItemIdentifier:flagCardAction];
    v14 = [collectionView2 cellForItemAtIndexPath:v13];

    [v14 setCardAction:flagCardAction];
  }
}

- (void)_reloadRecategorizationHeaderCellForAction:(id)action
{
  actionCopy = action;
  [actionCopy setAccessibilityIdentifier:MSAccessibilityIdentifierActionsViewControllerRecategorization];
  if (actionCopy)
  {
    collectionView = [(MailActionsViewController *)self collectionView];
    collectionViewDataSource = [(MailActionsViewController *)self collectionViewDataSource];
    v6 = [collectionViewDataSource indexPathForItemIdentifier:actionCopy];
    v7 = [collectionView cellForItemAtIndexPath:v6];

    [v7 setCardAction:actionCopy];
  }
}

- (BOOL)_cardActionIsUnflag:(id)unflag
{
  imageName = [unflag imageName];
  v4 = [imageName isEqualToString:MFImageGlyphUnflag];

  return v4;
}

- (double)_bottomInsetForCollectionView
{
  view = [(MailActionsViewController *)self view];
  [view layoutMargins];
  v5 = v4;
  view2 = [(MailActionsViewController *)self view];
  [view2 safeAreaInsets];
  v8 = v5 + v7;

  return v8;
}

- (BOOL)useActionSheetStyleCard
{
  sectionData = [(MailActionsViewController *)self sectionData];
  v3 = [sectionData count] == 1;

  return v3;
}

- (double)approximateHeightForActionSheetStyleCard
{
  useActionSheetStyleCard = [(MailActionsViewController *)self useActionSheetStyleCard];
  result = 0.0;
  if (useActionSheetStyleCard)
  {
    messageHeaderView = [(MailActionsViewController *)self messageHeaderView];
    [messageHeaderView frame];
    Height = CGRectGetHeight(v24);

    [(MailActionsViewController *)self _topInsetForCollectionView];
    v8 = v7;
    traitCollection = [(MailActionsViewController *)self traitCollection];
    preferredContentSizeCategory = [traitCollection preferredContentSizeCategory];
    IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(preferredContentSizeCategory);

    if (IsAccessibilityCategory)
    {
      +[MailActionCell approximateHeightForAccessibilityContentSizeCategory];
      v13 = v12;
    }

    else
    {
      v14 = objc_opt_new();
      [v14 topToFirstBaselineSpacingInMailActionCardVerticalGroup];
      v16 = v15;
      [v14 bottomToLastBaselineInMailActionCardVerticalGroup];
      v13 = v16 + v17;
    }

    sectionData = [(MailActionsViewController *)self sectionData];
    firstObject = [sectionData firstObject];
    actions = [firstObject actions];
    v21 = Height + 0.0 + v8 + [actions count] * v13;

    if (self)
    {
      v22 = MUISolariumFeatureEnabled();
      v23 = 8.0;
      if (v22)
      {
        v23 = 10.0;
      }
    }

    else
    {
      v23 = 0.0;
    }

    return v21 + v23;
  }

  return result;
}

- (double)approximateHeightNeededForAccessibilityContentSizeCategory
{
  traitCollection = [(MailActionsViewController *)self traitCollection];
  preferredContentSizeCategory = [traitCollection preferredContentSizeCategory];
  IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(preferredContentSizeCategory);

  result = 0.0;
  if (IsAccessibilityCategory)
  {
    sectionData = [(MailActionsViewController *)self sectionData];
    firstObject = [sectionData firstObject];
    actions = [firstObject actions];
    v10 = [actions count];

    +[MailActionCell approximateHeightForAccessibilityContentSizeCategory];
    v12 = v11;
    if (self)
    {
      if (MUISolariumFeatureEnabled())
      {
        v13 = 10.0;
      }

      else
      {
        v13 = 8.0;
      }
    }

    else
    {
      v13 = 0.0;
    }

    [(MailActionsViewController *)self _topInsetForCollectionView];
    v15 = v14;
    messageHeaderView = [(MailActionsViewController *)self messageHeaderView];
    [messageHeaderView frame];
    Height = CGRectGetHeight(v18);

    return v15 + v13 * (v10 - 1) + v10 * v12 + Height;
  }

  return result;
}

- (void)_loadData
{
  dataSource = [(MailActionsViewController *)self dataSource];
  if (dataSource)
  {
    sectionData = [(MailActionsViewController *)self sectionData];
    [(MailActionsViewController *)self _performDataSourceUpdate:sectionData];
  }
}

- (NSArray)sectionData
{
  dataSource = [(MailActionsViewController *)self dataSource];
  v4 = dataSource;
  sectionData = self->_sectionData;
  if (sectionData)
  {
    v6 = 1;
  }

  else
  {
    v6 = dataSource == 0;
  }

  if (!v6)
  {
    v7 = [dataSource sectionDataForMailActionsViewController:self];
    v8 = self->_sectionData;
    self->_sectionData = v7;

    sectionData = self->_sectionData;
  }

  v9 = sectionData;

  return sectionData;
}

- (void)_configureCollectionViewIfNeeded
{
  collectionView = [(MailActionsViewController *)self collectionView];

  if (!collectionView)
  {
    view = [(MailActionsViewController *)self view];
    v4 = [UICollectionView alloc];
    [view bounds];
    v6 = v5;
    v8 = v7;
    v10 = v9;
    v12 = v11;
    compositionalLayout = [(MailActionsViewController *)self compositionalLayout];
    v14 = [v4 initWithFrame:compositionalLayout collectionViewLayout:{v6, v8, v10, v12}];

    [v14 setDelegate:self];
    [v14 setDelaysContentTouches:0];
    [v14 setAllowsSelection:0];
    [(MailActionsViewController *)self setContentScrollView:v14 forEdge:15];
    [v14 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v14 setAlwaysBounceVertical:1];
    [(MailActionsViewController *)self _topInsetForCollectionView];
    v16 = v15;
    [(MailActionsViewController *)self _bottomInsetForCollectionView];
    [v14 setContentInset:{v16, 0.0, v17, 0.0}];
    [v14 setShowsVerticalScrollIndicator:0];
    [v14 _setVisibleRectEdgeInsets:{0.0, 0.0, -400.0, 0.0}];
    v18 = objc_opt_class();
    v19 = +[MailActionCell reusableIdentifier];
    [v14 registerClass:v18 forCellWithReuseIdentifier:v19];

    v20 = objc_opt_class();
    v21 = +[MailActionHorizontalGroupedCell reusableIdentifier];
    [v14 registerClass:v20 forCellWithReuseIdentifier:v21];

    v22 = objc_opt_class();
    v23 = +[MailActionVerticalGroupedCell reusableIdentifier];
    [v14 registerClass:v22 forCellWithReuseIdentifier:v23];

    v24 = objc_opt_class();
    v25 = +[MailActionFlagColorCell reusableIdentifier];
    [v14 registerClass:v24 forCellWithReuseIdentifier:v25];

    v26 = objc_opt_class();
    v27 = +[_TtC10MobileMail29MailActionCatchUpFeedbackCell reusableIdentifier];
    [v14 registerClass:v26 forCellWithReuseIdentifier:v27];

    if (EMBlackPearlIsFeatureEnabled())
    {
      v28 = objc_opt_class();
      v29 = +[MailActionRecategorizationHeaderCell reusableIdentifier];
      [v14 registerClass:v28 forCellWithReuseIdentifier:v29];
    }

    [v14 setAccessibilityIdentifier:MSAccessibilityIdentifierActionsViewController];
    [(MailActionsViewController *)self setCollectionView:v14];
    [view addSubview:v14];
    if (MUISolariumFeatureEnabled())
    {
      topAnchor = [v14 topAnchor];
      topAnchor2 = [view topAnchor];
      v45TopAnchor = [topAnchor constraintEqualToAnchor:?];
      v51[0] = v45TopAnchor;
      leadingAnchor = [v14 leadingAnchor];
      leadingAnchor2 = [view leadingAnchor];
      leadingAnchor3 = [leadingAnchor constraintEqualToAnchor:?];
      v51[1] = leadingAnchor3;
      bottomAnchor = [v14 bottomAnchor];
      bottomAnchor2 = [view bottomAnchor];
      bottomAnchor3 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
      v51[2] = bottomAnchor3;
      trailingAnchor = [v14 trailingAnchor];
      trailingAnchor2 = [view trailingAnchor];
      trailingAnchor3 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
      v51[3] = trailingAnchor3;
      v35 = [NSArray arrayWithObjects:v51 count:4];
      [NSLayoutConstraint activateConstraints:v35];
    }

    else
    {
      topAnchor = [view safeAreaLayoutGuide];
      topAnchor2 = [v14 topAnchor];
      v45TopAnchor = [topAnchor topAnchor];
      leadingAnchor = [topAnchor2 constraintEqualToAnchor:?];
      v50[0] = leadingAnchor;
      leadingAnchor2 = [v14 leadingAnchor];
      leadingAnchor3 = [topAnchor leadingAnchor];
      bottomAnchor = [leadingAnchor2 constraintEqualToAnchor:?];
      v50[1] = bottomAnchor;
      bottomAnchor2 = [v14 bottomAnchor];
      bottomAnchor3 = [topAnchor bottomAnchor];
      trailingAnchor = [bottomAnchor2 constraintEqualToAnchor:bottomAnchor3];
      v50[2] = trailingAnchor;
      trailingAnchor2 = [v14 trailingAnchor];
      trailingAnchor3 = [topAnchor trailingAnchor];
      v35 = [trailingAnchor2 constraintEqualToAnchor:trailingAnchor3];
      v50[3] = v35;
      v36 = [NSArray arrayWithObjects:v50 count:4];
      [NSLayoutConstraint activateConstraints:v36];
    }

    objc_initWeak(&location, self);
    v47[0] = _NSConcreteStackBlock;
    v47[1] = 3221225472;
    v47[2] = sub_1000C4668;
    v47[3] = &unk_10064F330;
    objc_copyWeak(&v48, &location);
    v37 = objc_retainBlock(v47);
    v38 = [[UICollectionViewDiffableDataSource alloc] initWithCollectionView:v14 cellProvider:v37];
    [(MailActionsViewController *)self setCollectionViewDataSource:v38];

    objc_destroyWeak(&v48);
    objc_destroyWeak(&location);
  }
}

- (id)compositionalLayout
{
  objc_initWeak(&location, self);
  v6 = _NSConcreteStackBlock;
  v7 = 3221225472;
  v8 = sub_1000C4B50;
  v9 = &unk_10064F3F8;
  objc_copyWeak(&v10, &location);
  v2 = objc_retainBlock(&v6);
  v3 = [UICollectionViewCompositionalLayout alloc];
  v4 = [v3 initWithSectionProvider:{v2, v6, v7, v8, v9}];

  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);

  return v4;
}

- (double)_maxLabelWidthInSection:(id)section
{
  sectionCopy = section;
  v5 = +[MailActionCell preferredFontForHorizontalTitle];
  collectionViewDataSource = [(MailActionsViewController *)self collectionViewDataSource];
  snapshot = [collectionViewDataSource snapshot];
  v8 = [snapshot itemIdentifiersInSectionWithIdentifier:sectionCopy];

  v24 = NSFontAttributeName;
  v25 = v5;
  v9 = [NSDictionary dictionaryWithObjects:&v25 forKeys:&v24 count:1];
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v10 = v8;
  v11 = [v10 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v11)
  {
    v12 = *v20;
    v13 = 0.0;
    do
    {
      for (i = 0; i != v11; i = i + 1)
      {
        if (*v20 != v12)
        {
          objc_enumerationMutation(v10);
        }

        shortTitle = [*(*(&v19 + 1) + 8 * i) shortTitle];
        [shortTitle sizeWithAttributes:v9];
        v17 = v16;

        v13 = fmax(v17, v13);
      }

      v11 = [v10 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v11);
  }

  else
  {
    v13 = 0.0;
  }

  return ceil(v13);
}

- (void)_performDataSourceUpdate:(id)update
{
  selfCopy = self;
  updateCopy = update;
  v7 = updateCopy;
  v4 = [EFScheduler mainThreadScheduler:_NSConcreteStackBlock];
  [v4 performBlock:&v5];
}

- (void)_expandRecategorizationHeader:(id)header
{
  headerCopy = header;
  children = [headerCopy children];
  [headerCopy setIsExpanded:{-[MailActionsViewController _insertActions:after:](self, "_insertActions:after:", children, headerCopy)}];

  [(MailActionsViewController *)self _reloadRecategorizationHeaderCellForAction:headerCopy];
}

- (BOOL)_insertActions:(id)actions after:(id)after
{
  actionsCopy = actions;
  afterCopy = after;
  v17 = 0;
  v18 = &v17;
  v19 = 0x2020000000;
  v20 = 0;
  v8 = actionsCopy;
  v13 = v8;
  v9 = afterCopy;
  v14 = v9;
  selfCopy = self;
  v16 = &v17;
  v10 = [EFScheduler mainThreadScheduler:_NSConcreteStackBlock];
  [v10 performBlock:&v12];

  LOBYTE(v10) = *(v18 + 24);
  _Block_object_dispose(&v17, 8);

  return v10;
}

- (void)viewLayoutMarginsDidChange
{
  v5.receiver = self;
  v5.super_class = MailActionsViewController;
  [(MailActionsViewController *)&v5 viewLayoutMarginsDidChange];
  collectionView = [(MailActionsViewController *)self collectionView];
  collectionViewLayout = [collectionView collectionViewLayout];
  [collectionViewLayout invalidateLayout];
}

- (void)traitCollectionDidChange:(id)change
{
  changeCopy = change;
  v12.receiver = self;
  v12.super_class = MailActionsViewController;
  [(MailActionsViewController *)&v12 traitCollectionDidChange:changeCopy];
  [(MailActionsViewController *)self _loadData];
  collectionView = [(MailActionsViewController *)self collectionView];
  collectionViewLayout = [collectionView collectionViewLayout];
  [collectionViewLayout invalidateLayout];

  messageHeaderView = [(MailActionsViewController *)self messageHeaderView];
  displayMetrics = [messageHeaderView displayMetrics];
  [MailActionViewHeader defaultHeightWithDisplayMetrics:displayMetrics];
  v10 = v9;
  titleView = [(MailActionsViewController *)self titleView];
  [titleView setHeight:v10];
}

- (void)viewSafeAreaInsetsDidChange
{
  v10.receiver = self;
  v10.super_class = MailActionsViewController;
  [(MailActionsViewController *)&v10 viewSafeAreaInsetsDidChange];
  view = [(MailActionsViewController *)self view];
  collectionView = [(MailActionsViewController *)self collectionView];

  if (collectionView)
  {
    collectionView2 = [(MailActionsViewController *)self collectionView];
    if (self)
    {
      if (MUISolariumFeatureEnabled())
      {
        v6 = 20.0;
      }

      else
      {
        v6 = 16.0;
      }
    }

    else
    {
      v6 = 0.0;
    }

    [view layoutMargins];
    v8 = v7;
    [view safeAreaInsets];
    [collectionView2 setContentInset:{v6, 0.0, v8 + v9, 0.0}];
  }

  [view setNeedsLayout];
}

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  height = size.height;
  width = size.width;
  coordinatorCopy = coordinator;
  v9.receiver = self;
  v9.super_class = MailActionsViewController;
  [(MailActionsViewController *)&v9 viewWillTransitionToSize:coordinatorCopy withTransitionCoordinator:width, height];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1000C6C64;
  v8[3] = &unk_10064CC00;
  v8[4] = self;
  [coordinatorCopy animateAlongsideTransition:v8 completion:0];
}

- (void)collectionView:(id)view performPrimaryActionForItemAtIndexPath:(id)path
{
  pathCopy = path;
  collectionViewDataSource = [(MailActionsViewController *)self collectionViewDataSource];
  v7 = [collectionViewDataSource itemIdentifierForIndexPath:pathCopy];

  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_1000C6F20;
  v13[3] = &unk_10064C660;
  v13[4] = self;
  v8 = v7;
  v14 = v8;
  v9 = objc_retainBlock(v13);
  if ([v8 shouldDeferDismissHandler])
  {
    didDismissHandler = [(MailActionsViewController *)self didDismissHandler];
    [v8 setDismissHandler:didDismissHandler];

    [(MailActionsViewController *)self setDidDismissHandler:0];
  }

  if ([v8 shouldDismissCardBeforeExecuteHandler])
  {
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_1000C71A4;
    v11[3] = &unk_10064C598;
    v12 = v9;
    [(MailActionsViewController *)self dismissViewControllerAnimated:1 completion:v11];
  }

  else
  {
    (v9[2])(v9);
  }
}

- (void)_updateFlagCardActionCell:(BOOL)cell
{
  cellCopy = cell;
  flagCardAction = [(MailActionsViewController *)self flagCardAction];
  v6 = &MFImageGlyphFlag;
  if (!cellCopy)
  {
    v6 = &MFImageGlyphUnflag;
  }

  v12 = flagCardAction;
  [flagCardAction setImageName:*v6];
  dataSource = [(MailActionsViewController *)self dataSource];
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    dataSource2 = [(MailActionsViewController *)self dataSource];
    v10 = [dataSource2 messageCountForMailActionsViewController:self];
  }

  else
  {
    v10 = 1;
  }

  v11 = [MFFlagTriageInteraction titleForFlagAction:cellCopy messageCount:v10];
  [v12 setTitle:v11];

  [(MailActionsViewController *)self reloadFlagItem];
}

- (BOOL)collectionView:(id)view canPerformPrimaryActionForItemAtIndexPath:(id)path
{
  pathCopy = path;
  collectionViewDataSource = [(MailActionsViewController *)self collectionViewDataSource];
  v7 = [collectionViewDataSource itemIdentifierForIndexPath:pathCopy];

  objc_opt_class();
  LOBYTE(collectionViewDataSource) = objc_opt_isKindOfClass();
  objc_opt_class();
  LOBYTE(collectionViewDataSource) = collectionViewDataSource | objc_opt_isKindOfClass();

  return (collectionViewDataSource & 1) == 0;
}

- (BOOL)collectionView:(id)view shouldHighlightItemAtIndexPath:(id)path
{
  pathCopy = path;
  collectionViewDataSource = [(MailActionsViewController *)self collectionViewDataSource];
  v7 = [collectionViewDataSource itemIdentifierForIndexPath:pathCopy];

  objc_opt_class();
  LODWORD(collectionViewDataSource) = objc_opt_isKindOfClass();
  objc_opt_class();
  v8 = ((collectionViewDataSource | objc_opt_isKindOfClass()) & 1) == 0 && ([v7 handlerEnabled] & 1) != 0;

  return v8;
}

- (void)_configureNavigationTitleViewIfNeeded
{
  titleView = [(MailActionsViewController *)self titleView];

  if (!titleView)
  {
    messageHeaderView = [(MailActionsViewController *)self messageHeaderView];
    [messageHeaderView setTranslatesAutoresizingMaskIntoConstraints:0];
    v4 = [[_UINavigationBarTitleView alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
    [v4 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v4 setPreservesSuperviewLayoutMargins:1];
    [v4 setHideStandardTitle:1];
    [messageHeaderView frame];
    [v4 setHeight:CGRectGetHeight(v41)];
    v5 = +[UIColor clearColor];
    [v4 setBackgroundColor:v5];

    [v4 addSubview:messageHeaderView];
    navigationItem = [(MailActionsViewController *)self navigationItem];
    [navigationItem setTitleView:v4];

    [(MailActionsViewController *)self setTitleView:v4];
    if (!MUISolariumFeatureEnabled() || (+[UIDevice mf_isPadIdiom]& 1) == 0)
    {
      v7 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:24 target:self action:"dismissSelf"];
      navigationItem2 = [(MailActionsViewController *)self navigationItem];
      [navigationItem2 setRightBarButtonItem:v7];
    }

    v9 = objc_opt_new();
    if (MUISolariumFeatureEnabled())
    {
      topAnchor = [messageHeaderView topAnchor];
      topAnchor2 = [v4 topAnchor];
      v12 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:0.0];
      [(MailActionsViewController *)self setMessageHeaderViewTopConstraint:v12];

      messageHeaderViewTopConstraint = [(MailActionsViewController *)self messageHeaderViewTopConstraint];
      [v9 addObject:messageHeaderViewTopConstraint];

      leadingAnchor = [messageHeaderView leadingAnchor];
      layoutMarginsGuide = [v4 layoutMarginsGuide];
      leadingAnchor2 = [layoutMarginsGuide leadingAnchor];
      v17 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:0.0];
      [(MailActionsViewController *)self setMessageHeaderViewLeadingConstraint:v17];

      messageHeaderViewLeadingConstraint = [(MailActionsViewController *)self messageHeaderViewLeadingConstraint];
      [v9 addObject:messageHeaderViewLeadingConstraint];

      if (+[UIDevice mf_isPadIdiom])
      {
        v19 = 0.0;
      }

      else
      {
        v19 = 48.0;
      }
    }

    else
    {
      leadingAnchor3 = [messageHeaderView leadingAnchor];
      layoutMarginsGuide2 = [v4 layoutMarginsGuide];
      leadingAnchor4 = [layoutMarginsGuide2 leadingAnchor];
      v23 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4];
      [v9 addObject:v23];

      v19 = 24.0;
    }

    trailingAnchor = [messageHeaderView trailingAnchor];
    layoutMarginsGuide3 = [v4 layoutMarginsGuide];
    trailingAnchor2 = [layoutMarginsGuide3 trailingAnchor];
    v27 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:-v19];
    [v9 addObject:v27];

    heightAnchor = [messageHeaderView heightAnchor];
    heightAnchor2 = [v4 heightAnchor];
    v30 = [heightAnchor constraintEqualToAnchor:heightAnchor2];
    [v9 addObject:v30];

    centerYAnchor = [messageHeaderView centerYAnchor];
    centerYAnchor2 = [v4 centerYAnchor];
    v33 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
    [v9 addObject:v33];

    [NSLayoutConstraint activateConstraints:v9];
    navigationItem3 = [(MailActionsViewController *)self navigationItem];
    [navigationItem3 _setManualScrollEdgeAppearanceEnabled:1];

    v35 = objc_alloc_init(UINavigationBarAppearance);
    [v35 configureWithDefaultBackground];
    v36 = +[UIColor separatorColor];
    [v35 setShadowColor:v36];

    navigationItem4 = [(MailActionsViewController *)self navigationItem];
    [navigationItem4 setStandardAppearance:v35];

    navigationItem5 = [(MailActionsViewController *)self navigationItem];
    [navigationItem5 _setManualScrollEdgeAppearanceProgress:0.0];
  }
}

- (void)scrollViewDidScroll:(id)scroll
{
  scrollCopy = scroll;
  if ((MUISolariumFeatureEnabled() & 1) == 0)
  {
    collectionView = [(MailActionsViewController *)self collectionView];

    if (collectionView == scrollCopy)
    {
      messageHeaderView = [(MailActionsViewController *)self messageHeaderView];
      [messageHeaderView frame];
      Height = CGRectGetHeight(v13);

      [scrollCopy contentOffset];
      if (v7 <= -Height)
      {
        navigationItem = [(MailActionsViewController *)self navigationItem];
        [navigationItem _setManualScrollEdgeAppearanceProgress:0.0];
      }

      else
      {
        [scrollCopy contentOffset];
        v9 = v8;
        navigationItem = [(MailActionsViewController *)self navigationItem];
        [navigationItem _setManualScrollEdgeAppearanceProgress:{fmin((Height + v9) * 10.0, 100.0) / 100.0}];
      }
    }
  }
}

- (void)updateHeaderDisplayMetrics:(id)metrics
{
  metricsCopy = metrics;
  messageHeaderView = [(MailActionsViewController *)self messageHeaderView];
  [messageHeaderView setDisplayMetrics:metricsCopy];
}

- (void)mailActionFlagColorCell:(id)cell didTapOnFlagColor:(id)color
{
  cellCopy = cell;
  colorCopy = color;
  [cellCopy selectColor:colorCopy];
  collectionView = [(MailActionsViewController *)self collectionView];
  v8 = [collectionView indexPathForCell:cellCopy];

  collectionViewDataSource = [(MailActionsViewController *)self collectionViewDataSource];
  v10 = [collectionViewDataSource itemIdentifierForIndexPath:v8];

  flagColor = [v10 flagColor];

  if (flagColor != colorCopy)
  {
    [v10 setFlagColor:colorCopy];
    [v10 executeHandler];
  }

  [(MailActionsViewController *)self _updateFlagCardActionCell:0];
}

- (void)mailActionCatchUpFeedbackCell:(id)cell didTapOnFeedbackType:(int64_t)type
{
  cellCopy = cell;
  collectionView = [(MailActionsViewController *)self collectionView];
  v7 = [collectionView indexPathForCell:cellCopy];

  collectionViewDataSource = [(MailActionsViewController *)self collectionViewDataSource];
  v9 = [collectionViewDataSource itemIdentifierForIndexPath:v7];

  [v9 setSelectedFeedbackType:type];
  [v9 executeHandler];
}

- (MailActionsViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (double)_topInsetForCollectionView
{
  if (!self)
  {
    return 0.0;
  }

  v2 = MUISolariumFeatureEnabled();
  result = 16.0;
  if (v2)
  {
    return 20.0;
  }

  return result;
}

@end