@interface AllRefinementsDataSource
- (AllRefinementsDataSource)initWithCollectionView:(id)view viewModel:(id)model scrollViewDelegate:(id)delegate selectionSequenceNumber:(id)number analyticsDelegate:(id)analyticsDelegate viewModelDelegate:(id)modelDelegate;
- (AllRefinementsViewModelDelegate)viewModelDelegate;
- (ResultRefinementsAnalytics)analyticsDelegate;
- (double)getMaxWidth;
- (id)layoutSectionForSectionIndex:(int64_t)index layoutEnvironment:(id)environment;
- (void)displayRefinements;
- (void)reloadCollectionView:(id)view;
- (void)scrollViewDidScroll:(id)scroll;
- (void)scrollViewWillBeginDragging:(id)dragging;
- (void)scrollViewWillEndDragging:(id)dragging withVelocity:(CGPoint)velocity targetContentOffset:(CGPoint *)offset;
- (void)setupDataSource;
@end

@implementation AllRefinementsDataSource

- (AllRefinementsViewModelDelegate)viewModelDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_viewModelDelegate);

  return WeakRetained;
}

- (ResultRefinementsAnalytics)analyticsDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_analyticsDelegate);

  return WeakRetained;
}

- (void)scrollViewDidScroll:(id)scroll
{
  scrollCopy = scroll;
  scrollViewDelegate = [(AllRefinementsDataSource *)self scrollViewDelegate];
  [scrollViewDelegate scrollViewDidScroll:scrollCopy];
}

- (void)scrollViewWillEndDragging:(id)dragging withVelocity:(CGPoint)velocity targetContentOffset:(CGPoint *)offset
{
  y = velocity.y;
  x = velocity.x;
  draggingCopy = dragging;
  scrollViewDelegate = [(AllRefinementsDataSource *)self scrollViewDelegate];
  [scrollViewDelegate scrollViewWillEndDragging:draggingCopy withVelocity:offset targetContentOffset:{x, y}];
}

- (void)scrollViewWillBeginDragging:(id)dragging
{
  draggingCopy = dragging;
  scrollViewDelegate = [(AllRefinementsDataSource *)self scrollViewDelegate];
  [scrollViewDelegate scrollViewWillBeginDragging:draggingCopy];
}

- (double)getMaxWidth
{
  sizeController = [(AllRefinementsDataSource *)self sizeController];
  [sizeController multiSelectSectionContentInsets];
  v5 = v4;
  sizeController2 = [(AllRefinementsDataSource *)self sizeController];
  [sizeController2 multiSelectSectionContentInsets];
  v8 = v7;
  sizeController3 = [(AllRefinementsDataSource *)self sizeController];
  [sizeController3 multiSelectBackgroundContentInsets];
  v11 = v10;
  sizeController4 = [(AllRefinementsDataSource *)self sizeController];
  [sizeController4 multiSelectBackgroundContentInsets];
  v14 = v13;

  collectionView = [(AllRefinementsDataSource *)self collectionView];
  [collectionView frame];
  v16 = CGRectGetWidth(v18) - (v14 + v11 + v5 + v8);

  return v16;
}

- (id)layoutSectionForSectionIndex:(int64_t)index layoutEnvironment:(id)environment
{
  environmentCopy = environment;
  viewModel = [(AllRefinementsDataSource *)self viewModel];
  sections = [viewModel sections];
  v9 = [sections objectAtIndex:index];

  type = [v9 type];
  if (type == 2)
  {
    v87 = [[_UICollectionViewListLayoutSectionConfiguration alloc] initWithAppearanceStyle:0 layoutEnvironment:environmentCopy];
    [v87 setSeparatorStyle:1];
    [v87 setEstimatedRowHeight:44.0];
    objc_initWeak(&location, v9);
    v125[0] = _NSConcreteStackBlock;
    v125[1] = 3221225472;
    v125[2] = sub_100F32758;
    v125[3] = &unk_10165D6A8;
    objc_copyWeak(&v126, &location);
    [v87 setSeparatorInsetProvider:v125];
    viewModel = [[_UICollectionViewListLayoutSection alloc] initWithConfiguration:v87 layoutEnvironment:environmentCopy];
    sizeController = [(AllRefinementsDataSource *)self sizeController];
    [sizeController togglesSectionContentInsets];
    v90 = v89;
    v92 = v91;
    v94 = v93;
    v96 = v95;

    [viewModel setContentInsets:{v90, v92, v94, v96}];
    v97 = +[AllRefinementsSectionBackground decorationViewKind];
    v98 = [NSCollectionLayoutDecorationItem backgroundDecorationItemWithElementKind:v97];

    sizeController2 = [(AllRefinementsDataSource *)self sizeController];
    displayName = [v9 displayName];
    collectionView = [(AllRefinementsDataSource *)self collectionView];
    [sizeController2 headerHeightWithTitle:displayName collectionView:collectionView];
    v103 = v102;

    if (v103 > 0.0)
    {
      v104 = [NSCollectionLayoutDimension fractionalWidthDimension:1.0];
      v105 = [NSCollectionLayoutDimension estimatedDimension:v103];
      v106 = [NSCollectionLayoutSize sizeWithWidthDimension:v104 heightDimension:v105];

      v107 = [NSCollectionLayoutBoundarySupplementaryItem boundarySupplementaryItemWithLayoutSize:v106 elementKind:UICollectionElementKindSectionHeader alignment:2];
      sizeController3 = [(AllRefinementsDataSource *)self sizeController];
      [sizeController3 togglesHeaderLeadingAdjustment];
      [v107 setContentInsets:{0.0, v109, 0.0, 0.0}];

      v131 = v107;
      v110 = [NSArray arrayWithObjects:&v131 count:1];
      [viewModel setBoundarySupplementaryItems:v110];
    }

    sizeController4 = [(AllRefinementsDataSource *)self sizeController];
    [sizeController4 togglesBackgroundContentInsets];
    v113 = v112;
    v115 = v114;
    v117 = v116;
    v119 = v118;

    [v98 setContentInsets:{v113 + v103, v115, v117, v119}];
    v130 = v98;
    v120 = [NSArray arrayWithObjects:&v130 count:1];
    [viewModel setDecorationItems:v120];

    objc_destroyWeak(&v126);
    objc_destroyWeak(&location);
  }

  else if (type == 1)
  {
    v45 = [NSCollectionLayoutDimension estimatedDimension:100.0];
    v46 = [NSCollectionLayoutDimension estimatedDimension:32.0];
    v124 = [NSCollectionLayoutSize sizeWithWidthDimension:v45 heightDimension:v46];

    v123 = [NSCollectionLayoutItem itemWithLayoutSize:v124];
    v47 = [NSCollectionLayoutDimension fractionalWidthDimension:1.0];
    v48 = [NSCollectionLayoutDimension estimatedDimension:32.0];
    v122 = [NSCollectionLayoutSize sizeWithWidthDimension:v47 heightDimension:v48];

    v134 = v123;
    v49 = [NSArray arrayWithObjects:&v134 count:1];
    v50 = [NSCollectionLayoutGroup horizontalGroupWithLayoutSize:v122 subitems:v49];

    sizeController5 = [(AllRefinementsDataSource *)self sizeController];
    [sizeController5 multiSelectPaddingBetweenCells];
    v52 = [NSCollectionLayoutSpacing fixedSpacing:?];
    [v50 setInterItemSpacing:v52];

    viewModel = [NSCollectionLayoutSection sectionWithGroup:v50];
    sizeController6 = [(AllRefinementsDataSource *)self sizeController];
    [sizeController6 multiSelectPaddingBetweenCells];
    [viewModel setInterGroupSpacing:?];

    sizeController7 = [(AllRefinementsDataSource *)self sizeController];
    [sizeController7 multiSelectSectionContentInsets];
    v56 = v55;
    v58 = v57;
    v60 = v59;
    v62 = v61;

    [viewModel setContentInsets:{v56, v58, v60, v62}];
    v63 = +[AllRefinementsSectionBackground decorationViewKind];
    v64 = [NSCollectionLayoutDecorationItem backgroundDecorationItemWithElementKind:v63];

    sizeController8 = [(AllRefinementsDataSource *)self sizeController];
    displayName2 = [v9 displayName];
    collectionView2 = [(AllRefinementsDataSource *)self collectionView];
    [sizeController8 headerHeightWithTitle:displayName2 collectionView:collectionView2];
    v69 = v68;

    if (v69 > 0.0)
    {
      v70 = [NSCollectionLayoutDimension fractionalWidthDimension:1.0];
      v71 = [NSCollectionLayoutDimension estimatedDimension:v69];
      v72 = [NSCollectionLayoutSize sizeWithWidthDimension:v70 heightDimension:v71];

      v73 = [NSCollectionLayoutBoundarySupplementaryItem boundarySupplementaryItemWithLayoutSize:v72 elementKind:UICollectionElementKindSectionHeader alignment:2];
      sizeController9 = [(AllRefinementsDataSource *)self sizeController];
      [sizeController9 multiSelectHeaderLeadingAdjustment];
      [v73 setContentInsets:{0.0, v75, 0.0, 0.0}];

      v133 = v73;
      v76 = [NSArray arrayWithObjects:&v133 count:1];
      [viewModel setBoundarySupplementaryItems:v76];
    }

    sizeController10 = [(AllRefinementsDataSource *)self sizeController];
    [sizeController10 multiSelectBackgroundContentInsets];
    v79 = v78;
    v81 = v80;
    v83 = v82;
    v85 = v84;

    [v64 setContentInsets:{v79 + v69, v81, v83, v85}];
    v132 = v64;
    v86 = [NSArray arrayWithObjects:&v132 count:1];
    [viewModel setDecorationItems:v86];
  }

  else if (!type)
  {
    objc_initWeak(&location, v9);
    v11 = [[_UICollectionViewListLayoutSectionConfiguration alloc] initWithAppearanceStyle:0 layoutEnvironment:environmentCopy];
    [v11 setSeparatorStyle:1];
    [v11 setEstimatedRowHeight:44.0];
    v127[0] = _NSConcreteStackBlock;
    v127[1] = 3221225472;
    v127[2] = sub_100F326BC;
    v127[3] = &unk_10165D6A8;
    objc_copyWeak(&v128, &location);
    [v11 setSeparatorInsetProvider:v127];
    viewModel = [[_UICollectionViewListLayoutSection alloc] initWithConfiguration:v11 layoutEnvironment:environmentCopy];
    sizeController11 = [(AllRefinementsDataSource *)self sizeController];
    [sizeController11 togglesSectionContentInsets];
    v14 = v13;
    v16 = v15;
    v18 = v17;
    v20 = v19;

    [viewModel setContentInsets:{v14, v16, v18, v20}];
    v21 = +[AllRefinementsSectionBackground decorationViewKind];
    v22 = [NSCollectionLayoutDecorationItem backgroundDecorationItemWithElementKind:v21];

    sizeController12 = [(AllRefinementsDataSource *)self sizeController];
    displayName3 = [v9 displayName];
    collectionView3 = [(AllRefinementsDataSource *)self collectionView];
    [sizeController12 headerHeightWithTitle:displayName3 collectionView:collectionView3];
    v27 = v26;

    if (v27 > 0.0)
    {
      v28 = [NSCollectionLayoutDimension fractionalWidthDimension:1.0];
      v29 = [NSCollectionLayoutDimension estimatedDimension:v27];
      v30 = [NSCollectionLayoutSize sizeWithWidthDimension:v28 heightDimension:v29];

      v31 = [NSCollectionLayoutBoundarySupplementaryItem boundarySupplementaryItemWithLayoutSize:v30 elementKind:UICollectionElementKindSectionHeader alignment:2];
      sizeController13 = [(AllRefinementsDataSource *)self sizeController];
      [sizeController13 togglesHeaderLeadingAdjustment];
      [v31 setContentInsets:{0.0, v33, 0.0, 0.0}];

      v136 = v31;
      v34 = [NSArray arrayWithObjects:&v136 count:1];
      [viewModel setBoundarySupplementaryItems:v34];
    }

    sizeController14 = [(AllRefinementsDataSource *)self sizeController];
    [sizeController14 togglesBackgroundContentInsets];
    v37 = v36;
    v39 = v38;
    v41 = v40;
    v43 = v42;

    [v22 setContentInsets:{v37 + v27, v39, v41, v43}];
    v135 = v22;
    v44 = [NSArray arrayWithObjects:&v135 count:1];
    [viewModel setDecorationItems:v44];

    objc_destroyWeak(&v128);
    objc_destroyWeak(&location);
  }

  return viewModel;
}

- (void)displayRefinements
{
  v3 = objc_alloc_init(NSDiffableDataSourceSnapshot);
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  selfCopy = self;
  viewModel = [(AllRefinementsDataSource *)self viewModel];
  sections = [viewModel sections];

  v6 = [sections countByEnumeratingWithState:&v26 objects:v31 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v27;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v27 != v8)
        {
          objc_enumerationMutation(sections);
        }

        v10 = *(*(&v26 + 1) + 8 * i);
        identifier = [v10 identifier];
        v30 = identifier;
        v12 = [NSArray arrayWithObjects:&v30 count:1];
        [v3 appendSectionsWithIdentifiers:v12];

        type = [v10 type];
        if (type == 2)
        {
          v16 = v10;
          identifier3 = +[NSMutableArray array];
          openNow = [v16 openNow];

          if (openNow)
          {
            openNow2 = [v16 openNow];
            [identifier3 addObject:openNow2];
          }

          openAt = [v16 openAt];

          if (openAt)
          {
            openAt2 = [v16 openAt];
            [identifier3 addObject:openAt2];
          }

          identifier2 = [v16 identifier];
          [v3 appendItemsWithIdentifiers:identifier3 intoSectionWithIdentifier:identifier2];
        }

        else
        {
          if (type == 1)
          {
            v14 = v10;
            elements = [v14 elements];
          }

          else
          {
            if (type)
            {
              continue;
            }

            v14 = v10;
            elements = [v14 toggles];
          }

          v16 = elements;
          identifier3 = [v14 identifier];

          [v3 appendItemsWithIdentifiers:v16 intoSectionWithIdentifier:identifier3];
        }
      }

      v7 = [sections countByEnumeratingWithState:&v26 objects:v31 count:16];
    }

    while (v7);
  }

  collectionViewDiffableDataSource = [(AllRefinementsDataSource *)selfCopy collectionViewDiffableDataSource];
  [collectionViewDiffableDataSource applySnapshot:v3 animatingDifferences:0];

  collectionView = [(AllRefinementsDataSource *)selfCopy collectionView];
  [collectionView layoutIfNeeded];
}

- (void)reloadCollectionView:(id)view
{
  [(AllRefinementsDataSource *)self setViewModel:view];

  [(AllRefinementsDataSource *)self displayRefinements];
}

- (void)setupDataSource
{
  collectionView = [(AllRefinementsDataSource *)self collectionView];
  v4 = objc_opt_class();
  v5 = +[NonSelectableCollectionViewListCell reuseIdentifier];
  [collectionView registerClass:v4 forCellWithReuseIdentifier:v5];

  collectionView2 = [(AllRefinementsDataSource *)self collectionView];
  v7 = objc_opt_class();
  v8 = +[_TtC4Maps36AllRefinementsMultiSelectElementCell reuseIdentifier];
  [collectionView2 registerClass:v7 forCellWithReuseIdentifier:v8];

  if (MapsFeature_IsEnabled_SearchAndDiscovery())
  {
    collectionView3 = [(AllRefinementsDataSource *)self collectionView];
    v10 = objc_opt_class();
    v11 = +[_TtC4Maps24AllRefinementsOpenAtCell reuseIdentifier];
    [collectionView3 registerClass:v10 forCellWithReuseIdentifier:v11];
  }

  collectionView4 = [(AllRefinementsDataSource *)self collectionView];
  v13 = objc_opt_class();
  v14 = +[AllRefinementsHeaderView reuseIdentifier];
  [collectionView4 registerClass:v13 forSupplementaryViewOfKind:UICollectionElementKindSectionHeader withReuseIdentifier:v14];

  v26[0] = 0;
  v26[1] = v26;
  v26[2] = 0x3032000000;
  v26[3] = sub_100F32E58;
  v26[4] = sub_100F32E68;
  v27 = 0;
  v24[0] = 0;
  v24[1] = v24;
  v24[2] = 0x3032000000;
  v24[3] = sub_100F32E58;
  v24[4] = sub_100F32E68;
  v25 = 0;
  objc_initWeak(&location, self);
  v15 = [UICollectionViewDiffableDataSource alloc];
  collectionView5 = [(AllRefinementsDataSource *)self collectionView];
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_100F32E70;
  v21[3] = &unk_10165D658;
  objc_copyWeak(&v22, &location);
  v21[4] = v24;
  v21[5] = v26;
  v17 = [v15 initWithCollectionView:collectionView5 cellProvider:v21];
  collectionViewDiffableDataSource = self->_collectionViewDiffableDataSource;
  self->_collectionViewDiffableDataSource = v17;

  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_100F33790;
  v19[3] = &unk_10165D680;
  objc_copyWeak(&v20, &location);
  [(UICollectionViewDiffableDataSource *)self->_collectionViewDiffableDataSource setSupplementaryViewProvider:v19];
  objc_destroyWeak(&v20);
  objc_destroyWeak(&v22);
  objc_destroyWeak(&location);
  _Block_object_dispose(v24, 8);

  _Block_object_dispose(v26, 8);
}

- (AllRefinementsDataSource)initWithCollectionView:(id)view viewModel:(id)model scrollViewDelegate:(id)delegate selectionSequenceNumber:(id)number analyticsDelegate:(id)analyticsDelegate viewModelDelegate:(id)modelDelegate
{
  viewCopy = view;
  modelCopy = model;
  delegateCopy = delegate;
  numberCopy = number;
  analyticsDelegateCopy = analyticsDelegate;
  modelDelegateCopy = modelDelegate;
  v30.receiver = self;
  v30.super_class = AllRefinementsDataSource;
  v19 = [(AllRefinementsDataSource *)&v30 init];
  v20 = v19;
  if (v19)
  {
    objc_storeStrong(&v19->_collectionView, view);
    [(UICollectionView *)v20->_collectionView setDelegate:v20, modelCopy, viewCopy];
    objc_storeStrong(&v20->_viewModel, model);
    v21 = objc_alloc_init(AllRefinementsSizeController);
    sizeController = v20->_sizeController;
    v20->_sizeController = v21;

    objc_storeStrong(&v20->_scrollViewDelegate, delegate);
    objc_storeStrong(&v20->_selectionSequenceNumber, number);
    v23 = objc_alloc_init(AllRefinementsTogglesCellLogicController);
    togglesLogicController = v20->_togglesLogicController;
    v20->_togglesLogicController = v23;

    v25 = objc_alloc_init(AllRefinementsMultiSelectCellLogicController);
    multiSelectLogicController = v20->_multiSelectLogicController;
    v20->_multiSelectLogicController = v25;

    objc_storeWeak(&v20->_analyticsDelegate, analyticsDelegateCopy);
    objc_storeWeak(&v20->_viewModelDelegate, modelDelegateCopy);
    [(AllRefinementsDataSource *)v20 setupDataSource];
  }

  return v20;
}

@end