@interface MailActionsViewController
- (BOOL)_cardActionIsUnflag:(id)a3;
- (BOOL)_insertActions:(id)a3 after:(id)a4;
- (BOOL)collectionView:(id)a3 canPerformPrimaryActionForItemAtIndexPath:(id)a4;
- (BOOL)collectionView:(id)a3 shouldHighlightItemAtIndexPath:(id)a4;
- (BOOL)useActionSheetStyleCard;
- (MailActionsViewController)initWithDelegate:(id)a3 messageHeaderView:(id)a4 didDismissHandler:(id)a5;
- (MailActionsViewDelegate)delegate;
- (NSArray)sectionData;
- (double)_bottomInsetForCollectionView;
- (double)_maxLabelWidthInSection:(id)a3;
- (double)_topInsetForCollectionView;
- (double)approximateHeightForActionSheetStyleCard;
- (double)approximateHeightNeededForAccessibilityContentSizeCategory;
- (id)compositionalLayout;
- (void)_configureCollectionViewIfNeeded;
- (void)_configureNavigationTitleViewIfNeeded;
- (void)_expandRecategorizationHeader:(id)a3;
- (void)_loadData;
- (void)_performDataSourceUpdate:(id)a3;
- (void)_reloadRecategorizationHeaderCellForAction:(id)a3;
- (void)_updateFlagCardActionCell:(BOOL)a3;
- (void)collectionView:(id)a3 performPrimaryActionForItemAtIndexPath:(id)a4;
- (void)loadView;
- (void)mailActionCatchUpFeedbackCell:(id)a3 didTapOnFeedbackType:(int64_t)a4;
- (void)mailActionFlagColorCell:(id)a3 didTapOnFlagColor:(id)a4;
- (void)reloadFlagItem;
- (void)scrollViewDidScroll:(id)a3;
- (void)traitCollectionDidChange:(id)a3;
- (void)updateHeaderDisplayMetrics:(id)a3;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewDidLayoutSubviews;
- (void)viewLayoutMarginsDidChange;
- (void)viewSafeAreaInsetsDidChange;
- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4;
@end

@implementation MailActionsViewController

- (MailActionsViewController)initWithDelegate:(id)a3 messageHeaderView:(id)a4 didDismissHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v16.receiver = self;
  v16.super_class = MailActionsViewController;
  v11 = [(MailActionsViewController *)&v16 initWithNibName:0 bundle:0];
  v12 = v11;
  if (v11)
  {
    objc_storeWeak(&v11->_delegate, v8);
    objc_storeStrong(&v12->_messageHeaderView, a4);
    v13 = objc_retainBlock(v10);
    didDismissHandler = v12->_didDismissHandler;
    v12->_didDismissHandler = v13;
  }

  return v12;
}

- (void)viewDidDisappear:(BOOL)a3
{
  v6.receiver = self;
  v6.super_class = MailActionsViewController;
  [(MailActionsViewController *)&v6 viewDidDisappear:a3];
  v4 = [(MailActionsViewController *)self didDismissHandler];
  v5 = v4;
  if (v4)
  {
    (*(v4 + 16))(v4);
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
    v3 = [(MailActionsViewController *)self messageHeaderView];
    v4 = [v3 avatarView];
    v5 = [v4 window];

    if (v5)
    {
      v6 = [(MailActionsViewController *)self messageHeaderView];
      v7 = [v6 avatarView];
      v8 = [v7 superview];
      v9 = [(MailActionsViewController *)self messageHeaderView];
      v10 = [v9 avatarView];
      [v10 frame];
      v12 = v11;
      v14 = v13;
      v16 = v15;
      v18 = v17;
      v19 = [(MailActionsViewController *)self messageHeaderView];
      [v8 convertRect:v19 toView:{v12, v14, v16, v18}];
      v21 = v20;

      v22 = [(MailActionsViewController *)self messageHeaderViewTopConstraint];
      [v22 setConstant:-v21];
    }

    else
    {
      v22 = [(MailActionsViewController *)self messageHeaderViewTopConstraint];
      [v22 setConstant:0.0];
    }

    v23 = [(MailActionsViewController *)self view];
    [v23 layoutMargins];
    v25 = v24;
    v26 = [(MailActionsViewController *)self titleView];
    [v26 layoutMargins];
    v28 = v27;
    v29 = [(MailActionsViewController *)self messageHeaderViewLeadingConstraint];
    [v29 setConstant:v25 - v28];
  }
}

- (void)reloadFlagItem
{
  v15 = [(MailActionsViewController *)self flagCardAction];
  [v15 setAccessibilityIdentifier:MSAccessibilityIdentifierActionsViewControllerFlag];
  if (v15)
  {
    v3 = [(MailActionsViewController *)self flagColorCardAction];
    if ([v3 count])
    {
      v4 = [(MailActionsViewController *)self collectionViewDataSource];
      v5 = [v3 firstObject];
      v6 = [v4 indexPathForItemIdentifier:v5];

      v7 = [(MailActionsViewController *)self collectionView];
      v8 = [v7 cellForItemAtIndexPath:v6];

      v9 = [(MailActionsViewController *)self _cardActionIsUnflag:v15];
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

    v11 = [(MailActionsViewController *)self collectionView];
    v12 = [(MailActionsViewController *)self collectionViewDataSource];
    v13 = [v12 indexPathForItemIdentifier:v15];
    v14 = [v11 cellForItemAtIndexPath:v13];

    [v14 setCardAction:v15];
  }
}

- (void)_reloadRecategorizationHeaderCellForAction:(id)a3
{
  v8 = a3;
  [v8 setAccessibilityIdentifier:MSAccessibilityIdentifierActionsViewControllerRecategorization];
  if (v8)
  {
    v4 = [(MailActionsViewController *)self collectionView];
    v5 = [(MailActionsViewController *)self collectionViewDataSource];
    v6 = [v5 indexPathForItemIdentifier:v8];
    v7 = [v4 cellForItemAtIndexPath:v6];

    [v7 setCardAction:v8];
  }
}

- (BOOL)_cardActionIsUnflag:(id)a3
{
  v3 = [a3 imageName];
  v4 = [v3 isEqualToString:MFImageGlyphUnflag];

  return v4;
}

- (double)_bottomInsetForCollectionView
{
  v3 = [(MailActionsViewController *)self view];
  [v3 layoutMargins];
  v5 = v4;
  v6 = [(MailActionsViewController *)self view];
  [v6 safeAreaInsets];
  v8 = v5 + v7;

  return v8;
}

- (BOOL)useActionSheetStyleCard
{
  v2 = [(MailActionsViewController *)self sectionData];
  v3 = [v2 count] == 1;

  return v3;
}

- (double)approximateHeightForActionSheetStyleCard
{
  v3 = [(MailActionsViewController *)self useActionSheetStyleCard];
  result = 0.0;
  if (v3)
  {
    v5 = [(MailActionsViewController *)self messageHeaderView];
    [v5 frame];
    Height = CGRectGetHeight(v24);

    [(MailActionsViewController *)self _topInsetForCollectionView];
    v8 = v7;
    v9 = [(MailActionsViewController *)self traitCollection];
    v10 = [v9 preferredContentSizeCategory];
    IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(v10);

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

    v18 = [(MailActionsViewController *)self sectionData];
    v19 = [v18 firstObject];
    v20 = [v19 actions];
    v21 = Height + 0.0 + v8 + [v20 count] * v13;

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
  v3 = [(MailActionsViewController *)self traitCollection];
  v4 = [v3 preferredContentSizeCategory];
  IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(v4);

  result = 0.0;
  if (IsAccessibilityCategory)
  {
    v7 = [(MailActionsViewController *)self sectionData];
    v8 = [v7 firstObject];
    v9 = [v8 actions];
    v10 = [v9 count];

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
    v16 = [(MailActionsViewController *)self messageHeaderView];
    [v16 frame];
    Height = CGRectGetHeight(v18);

    return v15 + v13 * (v10 - 1) + v10 * v12 + Height;
  }

  return result;
}

- (void)_loadData
{
  v4 = [(MailActionsViewController *)self dataSource];
  if (v4)
  {
    v3 = [(MailActionsViewController *)self sectionData];
    [(MailActionsViewController *)self _performDataSourceUpdate:v3];
  }
}

- (NSArray)sectionData
{
  v3 = [(MailActionsViewController *)self dataSource];
  v4 = v3;
  sectionData = self->_sectionData;
  if (sectionData)
  {
    v6 = 1;
  }

  else
  {
    v6 = v3 == 0;
  }

  if (!v6)
  {
    v7 = [v3 sectionDataForMailActionsViewController:self];
    v8 = self->_sectionData;
    self->_sectionData = v7;

    sectionData = self->_sectionData;
  }

  v9 = sectionData;

  return sectionData;
}

- (void)_configureCollectionViewIfNeeded
{
  v3 = [(MailActionsViewController *)self collectionView];

  if (!v3)
  {
    v46 = [(MailActionsViewController *)self view];
    v4 = [UICollectionView alloc];
    [v46 bounds];
    v6 = v5;
    v8 = v7;
    v10 = v9;
    v12 = v11;
    v13 = [(MailActionsViewController *)self compositionalLayout];
    v14 = [v4 initWithFrame:v13 collectionViewLayout:{v6, v8, v10, v12}];

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
    [v46 addSubview:v14];
    if (MUISolariumFeatureEnabled())
    {
      v45 = [v14 topAnchor];
      v44 = [v46 topAnchor];
      v40 = [v45 constraintEqualToAnchor:?];
      v51[0] = v40;
      v43 = [v14 leadingAnchor];
      v42 = [v46 leadingAnchor];
      v39 = [v43 constraintEqualToAnchor:?];
      v51[1] = v39;
      v41 = [v14 bottomAnchor];
      v30 = [v46 bottomAnchor];
      v31 = [v41 constraintEqualToAnchor:v30];
      v51[2] = v31;
      v32 = [v14 trailingAnchor];
      v33 = [v46 trailingAnchor];
      v34 = [v32 constraintEqualToAnchor:v33];
      v51[3] = v34;
      v35 = [NSArray arrayWithObjects:v51 count:4];
      [NSLayoutConstraint activateConstraints:v35];
    }

    else
    {
      v45 = [v46 safeAreaLayoutGuide];
      v44 = [v14 topAnchor];
      v40 = [v45 topAnchor];
      v43 = [v44 constraintEqualToAnchor:?];
      v50[0] = v43;
      v42 = [v14 leadingAnchor];
      v39 = [v45 leadingAnchor];
      v41 = [v42 constraintEqualToAnchor:?];
      v50[1] = v41;
      v30 = [v14 bottomAnchor];
      v31 = [v45 bottomAnchor];
      v32 = [v30 constraintEqualToAnchor:v31];
      v50[2] = v32;
      v33 = [v14 trailingAnchor];
      v34 = [v45 trailingAnchor];
      v35 = [v33 constraintEqualToAnchor:v34];
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

- (double)_maxLabelWidthInSection:(id)a3
{
  v4 = a3;
  v5 = +[MailActionCell preferredFontForHorizontalTitle];
  v6 = [(MailActionsViewController *)self collectionViewDataSource];
  v7 = [v6 snapshot];
  v8 = [v7 itemIdentifiersInSectionWithIdentifier:v4];

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

        v15 = [*(*(&v19 + 1) + 8 * i) shortTitle];
        [v15 sizeWithAttributes:v9];
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

- (void)_performDataSourceUpdate:(id)a3
{
  v6 = self;
  v3 = a3;
  v7 = v3;
  v4 = [EFScheduler mainThreadScheduler:_NSConcreteStackBlock];
  [v4 performBlock:&v5];
}

- (void)_expandRecategorizationHeader:(id)a3
{
  v5 = a3;
  v4 = [v5 children];
  [v5 setIsExpanded:{-[MailActionsViewController _insertActions:after:](self, "_insertActions:after:", v4, v5)}];

  [(MailActionsViewController *)self _reloadRecategorizationHeaderCellForAction:v5];
}

- (BOOL)_insertActions:(id)a3 after:(id)a4
{
  v6 = a3;
  v7 = a4;
  v17 = 0;
  v18 = &v17;
  v19 = 0x2020000000;
  v20 = 0;
  v8 = v6;
  v13 = v8;
  v9 = v7;
  v14 = v9;
  v15 = self;
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
  v3 = [(MailActionsViewController *)self collectionView];
  v4 = [v3 collectionViewLayout];
  [v4 invalidateLayout];
}

- (void)traitCollectionDidChange:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = MailActionsViewController;
  [(MailActionsViewController *)&v12 traitCollectionDidChange:v4];
  [(MailActionsViewController *)self _loadData];
  v5 = [(MailActionsViewController *)self collectionView];
  v6 = [v5 collectionViewLayout];
  [v6 invalidateLayout];

  v7 = [(MailActionsViewController *)self messageHeaderView];
  v8 = [v7 displayMetrics];
  [MailActionViewHeader defaultHeightWithDisplayMetrics:v8];
  v10 = v9;
  v11 = [(MailActionsViewController *)self titleView];
  [v11 setHeight:v10];
}

- (void)viewSafeAreaInsetsDidChange
{
  v10.receiver = self;
  v10.super_class = MailActionsViewController;
  [(MailActionsViewController *)&v10 viewSafeAreaInsetsDidChange];
  v3 = [(MailActionsViewController *)self view];
  v4 = [(MailActionsViewController *)self collectionView];

  if (v4)
  {
    v5 = [(MailActionsViewController *)self collectionView];
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

    [v3 layoutMargins];
    v8 = v7;
    [v3 safeAreaInsets];
    [v5 setContentInset:{v6, 0.0, v8 + v9, 0.0}];
  }

  [v3 setNeedsLayout];
}

- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4
{
  height = a3.height;
  width = a3.width;
  v7 = a4;
  v9.receiver = self;
  v9.super_class = MailActionsViewController;
  [(MailActionsViewController *)&v9 viewWillTransitionToSize:v7 withTransitionCoordinator:width, height];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1000C6C64;
  v8[3] = &unk_10064CC00;
  v8[4] = self;
  [v7 animateAlongsideTransition:v8 completion:0];
}

- (void)collectionView:(id)a3 performPrimaryActionForItemAtIndexPath:(id)a4
{
  v5 = a4;
  v6 = [(MailActionsViewController *)self collectionViewDataSource];
  v7 = [v6 itemIdentifierForIndexPath:v5];

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
    v10 = [(MailActionsViewController *)self didDismissHandler];
    [v8 setDismissHandler:v10];

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

- (void)_updateFlagCardActionCell:(BOOL)a3
{
  v3 = a3;
  v5 = [(MailActionsViewController *)self flagCardAction];
  v6 = &MFImageGlyphFlag;
  if (!v3)
  {
    v6 = &MFImageGlyphUnflag;
  }

  v12 = v5;
  [v5 setImageName:*v6];
  v7 = [(MailActionsViewController *)self dataSource];
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    v9 = [(MailActionsViewController *)self dataSource];
    v10 = [v9 messageCountForMailActionsViewController:self];
  }

  else
  {
    v10 = 1;
  }

  v11 = [MFFlagTriageInteraction titleForFlagAction:v3 messageCount:v10];
  [v12 setTitle:v11];

  [(MailActionsViewController *)self reloadFlagItem];
}

- (BOOL)collectionView:(id)a3 canPerformPrimaryActionForItemAtIndexPath:(id)a4
{
  v5 = a4;
  v6 = [(MailActionsViewController *)self collectionViewDataSource];
  v7 = [v6 itemIdentifierForIndexPath:v5];

  objc_opt_class();
  LOBYTE(v6) = objc_opt_isKindOfClass();
  objc_opt_class();
  LOBYTE(v6) = v6 | objc_opt_isKindOfClass();

  return (v6 & 1) == 0;
}

- (BOOL)collectionView:(id)a3 shouldHighlightItemAtIndexPath:(id)a4
{
  v5 = a4;
  v6 = [(MailActionsViewController *)self collectionViewDataSource];
  v7 = [v6 itemIdentifierForIndexPath:v5];

  objc_opt_class();
  LODWORD(v6) = objc_opt_isKindOfClass();
  objc_opt_class();
  v8 = ((v6 | objc_opt_isKindOfClass()) & 1) == 0 && ([v7 handlerEnabled] & 1) != 0;

  return v8;
}

- (void)_configureNavigationTitleViewIfNeeded
{
  v3 = [(MailActionsViewController *)self titleView];

  if (!v3)
  {
    v39 = [(MailActionsViewController *)self messageHeaderView];
    [v39 setTranslatesAutoresizingMaskIntoConstraints:0];
    v4 = [[_UINavigationBarTitleView alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
    [v4 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v4 setPreservesSuperviewLayoutMargins:1];
    [v4 setHideStandardTitle:1];
    [v39 frame];
    [v4 setHeight:CGRectGetHeight(v41)];
    v5 = +[UIColor clearColor];
    [v4 setBackgroundColor:v5];

    [v4 addSubview:v39];
    v6 = [(MailActionsViewController *)self navigationItem];
    [v6 setTitleView:v4];

    [(MailActionsViewController *)self setTitleView:v4];
    if (!MUISolariumFeatureEnabled() || (+[UIDevice mf_isPadIdiom]& 1) == 0)
    {
      v7 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:24 target:self action:"dismissSelf"];
      v8 = [(MailActionsViewController *)self navigationItem];
      [v8 setRightBarButtonItem:v7];
    }

    v9 = objc_opt_new();
    if (MUISolariumFeatureEnabled())
    {
      v10 = [v39 topAnchor];
      v11 = [v4 topAnchor];
      v12 = [v10 constraintEqualToAnchor:v11 constant:0.0];
      [(MailActionsViewController *)self setMessageHeaderViewTopConstraint:v12];

      v13 = [(MailActionsViewController *)self messageHeaderViewTopConstraint];
      [v9 addObject:v13];

      v14 = [v39 leadingAnchor];
      v15 = [v4 layoutMarginsGuide];
      v16 = [v15 leadingAnchor];
      v17 = [v14 constraintEqualToAnchor:v16 constant:0.0];
      [(MailActionsViewController *)self setMessageHeaderViewLeadingConstraint:v17];

      v18 = [(MailActionsViewController *)self messageHeaderViewLeadingConstraint];
      [v9 addObject:v18];

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
      v20 = [v39 leadingAnchor];
      v21 = [v4 layoutMarginsGuide];
      v22 = [v21 leadingAnchor];
      v23 = [v20 constraintEqualToAnchor:v22];
      [v9 addObject:v23];

      v19 = 24.0;
    }

    v24 = [v39 trailingAnchor];
    v25 = [v4 layoutMarginsGuide];
    v26 = [v25 trailingAnchor];
    v27 = [v24 constraintEqualToAnchor:v26 constant:-v19];
    [v9 addObject:v27];

    v28 = [v39 heightAnchor];
    v29 = [v4 heightAnchor];
    v30 = [v28 constraintEqualToAnchor:v29];
    [v9 addObject:v30];

    v31 = [v39 centerYAnchor];
    v32 = [v4 centerYAnchor];
    v33 = [v31 constraintEqualToAnchor:v32];
    [v9 addObject:v33];

    [NSLayoutConstraint activateConstraints:v9];
    v34 = [(MailActionsViewController *)self navigationItem];
    [v34 _setManualScrollEdgeAppearanceEnabled:1];

    v35 = objc_alloc_init(UINavigationBarAppearance);
    [v35 configureWithDefaultBackground];
    v36 = +[UIColor separatorColor];
    [v35 setShadowColor:v36];

    v37 = [(MailActionsViewController *)self navigationItem];
    [v37 setStandardAppearance:v35];

    v38 = [(MailActionsViewController *)self navigationItem];
    [v38 _setManualScrollEdgeAppearanceProgress:0.0];
  }
}

- (void)scrollViewDidScroll:(id)a3
{
  v11 = a3;
  if ((MUISolariumFeatureEnabled() & 1) == 0)
  {
    v4 = [(MailActionsViewController *)self collectionView];

    if (v4 == v11)
    {
      v5 = [(MailActionsViewController *)self messageHeaderView];
      [v5 frame];
      Height = CGRectGetHeight(v13);

      [v11 contentOffset];
      if (v7 <= -Height)
      {
        v10 = [(MailActionsViewController *)self navigationItem];
        [v10 _setManualScrollEdgeAppearanceProgress:0.0];
      }

      else
      {
        [v11 contentOffset];
        v9 = v8;
        v10 = [(MailActionsViewController *)self navigationItem];
        [v10 _setManualScrollEdgeAppearanceProgress:{fmin((Height + v9) * 10.0, 100.0) / 100.0}];
      }
    }
  }
}

- (void)updateHeaderDisplayMetrics:(id)a3
{
  v5 = a3;
  v4 = [(MailActionsViewController *)self messageHeaderView];
  [v4 setDisplayMetrics:v5];
}

- (void)mailActionFlagColorCell:(id)a3 didTapOnFlagColor:(id)a4
{
  v12 = a3;
  v6 = a4;
  [v12 selectColor:v6];
  v7 = [(MailActionsViewController *)self collectionView];
  v8 = [v7 indexPathForCell:v12];

  v9 = [(MailActionsViewController *)self collectionViewDataSource];
  v10 = [v9 itemIdentifierForIndexPath:v8];

  v11 = [v10 flagColor];

  if (v11 != v6)
  {
    [v10 setFlagColor:v6];
    [v10 executeHandler];
  }

  [(MailActionsViewController *)self _updateFlagCardActionCell:0];
}

- (void)mailActionCatchUpFeedbackCell:(id)a3 didTapOnFeedbackType:(int64_t)a4
{
  v10 = a3;
  v6 = [(MailActionsViewController *)self collectionView];
  v7 = [v6 indexPathForCell:v10];

  v8 = [(MailActionsViewController *)self collectionViewDataSource];
  v9 = [v8 itemIdentifierForIndexPath:v7];

  [v9 setSelectedFeedbackType:a4];
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