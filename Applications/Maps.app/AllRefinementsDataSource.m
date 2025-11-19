@interface AllRefinementsDataSource
- (AllRefinementsDataSource)initWithCollectionView:(id)a3 viewModel:(id)a4 scrollViewDelegate:(id)a5 selectionSequenceNumber:(id)a6 analyticsDelegate:(id)a7 viewModelDelegate:(id)a8;
- (AllRefinementsViewModelDelegate)viewModelDelegate;
- (ResultRefinementsAnalytics)analyticsDelegate;
- (double)getMaxWidth;
- (id)layoutSectionForSectionIndex:(int64_t)a3 layoutEnvironment:(id)a4;
- (void)displayRefinements;
- (void)reloadCollectionView:(id)a3;
- (void)scrollViewDidScroll:(id)a3;
- (void)scrollViewWillBeginDragging:(id)a3;
- (void)scrollViewWillEndDragging:(id)a3 withVelocity:(CGPoint)a4 targetContentOffset:(CGPoint *)a5;
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

- (void)scrollViewDidScroll:(id)a3
{
  v4 = a3;
  v5 = [(AllRefinementsDataSource *)self scrollViewDelegate];
  [v5 scrollViewDidScroll:v4];
}

- (void)scrollViewWillEndDragging:(id)a3 withVelocity:(CGPoint)a4 targetContentOffset:(CGPoint *)a5
{
  y = a4.y;
  x = a4.x;
  v9 = a3;
  v10 = [(AllRefinementsDataSource *)self scrollViewDelegate];
  [v10 scrollViewWillEndDragging:v9 withVelocity:a5 targetContentOffset:{x, y}];
}

- (void)scrollViewWillBeginDragging:(id)a3
{
  v4 = a3;
  v5 = [(AllRefinementsDataSource *)self scrollViewDelegate];
  [v5 scrollViewWillBeginDragging:v4];
}

- (double)getMaxWidth
{
  v3 = [(AllRefinementsDataSource *)self sizeController];
  [v3 multiSelectSectionContentInsets];
  v5 = v4;
  v6 = [(AllRefinementsDataSource *)self sizeController];
  [v6 multiSelectSectionContentInsets];
  v8 = v7;
  v9 = [(AllRefinementsDataSource *)self sizeController];
  [v9 multiSelectBackgroundContentInsets];
  v11 = v10;
  v12 = [(AllRefinementsDataSource *)self sizeController];
  [v12 multiSelectBackgroundContentInsets];
  v14 = v13;

  v15 = [(AllRefinementsDataSource *)self collectionView];
  [v15 frame];
  v16 = CGRectGetWidth(v18) - (v14 + v11 + v5 + v8);

  return v16;
}

- (id)layoutSectionForSectionIndex:(int64_t)a3 layoutEnvironment:(id)a4
{
  v6 = a4;
  v7 = [(AllRefinementsDataSource *)self viewModel];
  v8 = [v7 sections];
  v9 = [v8 objectAtIndex:a3];

  v10 = [v9 type];
  if (v10 == 2)
  {
    v87 = [[_UICollectionViewListLayoutSectionConfiguration alloc] initWithAppearanceStyle:0 layoutEnvironment:v6];
    [v87 setSeparatorStyle:1];
    [v87 setEstimatedRowHeight:44.0];
    objc_initWeak(&location, v9);
    v125[0] = _NSConcreteStackBlock;
    v125[1] = 3221225472;
    v125[2] = sub_100F32758;
    v125[3] = &unk_10165D6A8;
    objc_copyWeak(&v126, &location);
    [v87 setSeparatorInsetProvider:v125];
    v7 = [[_UICollectionViewListLayoutSection alloc] initWithConfiguration:v87 layoutEnvironment:v6];
    v88 = [(AllRefinementsDataSource *)self sizeController];
    [v88 togglesSectionContentInsets];
    v90 = v89;
    v92 = v91;
    v94 = v93;
    v96 = v95;

    [v7 setContentInsets:{v90, v92, v94, v96}];
    v97 = +[AllRefinementsSectionBackground decorationViewKind];
    v98 = [NSCollectionLayoutDecorationItem backgroundDecorationItemWithElementKind:v97];

    v99 = [(AllRefinementsDataSource *)self sizeController];
    v100 = [v9 displayName];
    v101 = [(AllRefinementsDataSource *)self collectionView];
    [v99 headerHeightWithTitle:v100 collectionView:v101];
    v103 = v102;

    if (v103 > 0.0)
    {
      v104 = [NSCollectionLayoutDimension fractionalWidthDimension:1.0];
      v105 = [NSCollectionLayoutDimension estimatedDimension:v103];
      v106 = [NSCollectionLayoutSize sizeWithWidthDimension:v104 heightDimension:v105];

      v107 = [NSCollectionLayoutBoundarySupplementaryItem boundarySupplementaryItemWithLayoutSize:v106 elementKind:UICollectionElementKindSectionHeader alignment:2];
      v108 = [(AllRefinementsDataSource *)self sizeController];
      [v108 togglesHeaderLeadingAdjustment];
      [v107 setContentInsets:{0.0, v109, 0.0, 0.0}];

      v131 = v107;
      v110 = [NSArray arrayWithObjects:&v131 count:1];
      [v7 setBoundarySupplementaryItems:v110];
    }

    v111 = [(AllRefinementsDataSource *)self sizeController];
    [v111 togglesBackgroundContentInsets];
    v113 = v112;
    v115 = v114;
    v117 = v116;
    v119 = v118;

    [v98 setContentInsets:{v113 + v103, v115, v117, v119}];
    v130 = v98;
    v120 = [NSArray arrayWithObjects:&v130 count:1];
    [v7 setDecorationItems:v120];

    objc_destroyWeak(&v126);
    objc_destroyWeak(&location);
  }

  else if (v10 == 1)
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

    v51 = [(AllRefinementsDataSource *)self sizeController];
    [v51 multiSelectPaddingBetweenCells];
    v52 = [NSCollectionLayoutSpacing fixedSpacing:?];
    [v50 setInterItemSpacing:v52];

    v7 = [NSCollectionLayoutSection sectionWithGroup:v50];
    v53 = [(AllRefinementsDataSource *)self sizeController];
    [v53 multiSelectPaddingBetweenCells];
    [v7 setInterGroupSpacing:?];

    v54 = [(AllRefinementsDataSource *)self sizeController];
    [v54 multiSelectSectionContentInsets];
    v56 = v55;
    v58 = v57;
    v60 = v59;
    v62 = v61;

    [v7 setContentInsets:{v56, v58, v60, v62}];
    v63 = +[AllRefinementsSectionBackground decorationViewKind];
    v64 = [NSCollectionLayoutDecorationItem backgroundDecorationItemWithElementKind:v63];

    v65 = [(AllRefinementsDataSource *)self sizeController];
    v66 = [v9 displayName];
    v67 = [(AllRefinementsDataSource *)self collectionView];
    [v65 headerHeightWithTitle:v66 collectionView:v67];
    v69 = v68;

    if (v69 > 0.0)
    {
      v70 = [NSCollectionLayoutDimension fractionalWidthDimension:1.0];
      v71 = [NSCollectionLayoutDimension estimatedDimension:v69];
      v72 = [NSCollectionLayoutSize sizeWithWidthDimension:v70 heightDimension:v71];

      v73 = [NSCollectionLayoutBoundarySupplementaryItem boundarySupplementaryItemWithLayoutSize:v72 elementKind:UICollectionElementKindSectionHeader alignment:2];
      v74 = [(AllRefinementsDataSource *)self sizeController];
      [v74 multiSelectHeaderLeadingAdjustment];
      [v73 setContentInsets:{0.0, v75, 0.0, 0.0}];

      v133 = v73;
      v76 = [NSArray arrayWithObjects:&v133 count:1];
      [v7 setBoundarySupplementaryItems:v76];
    }

    v77 = [(AllRefinementsDataSource *)self sizeController];
    [v77 multiSelectBackgroundContentInsets];
    v79 = v78;
    v81 = v80;
    v83 = v82;
    v85 = v84;

    [v64 setContentInsets:{v79 + v69, v81, v83, v85}];
    v132 = v64;
    v86 = [NSArray arrayWithObjects:&v132 count:1];
    [v7 setDecorationItems:v86];
  }

  else if (!v10)
  {
    objc_initWeak(&location, v9);
    v11 = [[_UICollectionViewListLayoutSectionConfiguration alloc] initWithAppearanceStyle:0 layoutEnvironment:v6];
    [v11 setSeparatorStyle:1];
    [v11 setEstimatedRowHeight:44.0];
    v127[0] = _NSConcreteStackBlock;
    v127[1] = 3221225472;
    v127[2] = sub_100F326BC;
    v127[3] = &unk_10165D6A8;
    objc_copyWeak(&v128, &location);
    [v11 setSeparatorInsetProvider:v127];
    v7 = [[_UICollectionViewListLayoutSection alloc] initWithConfiguration:v11 layoutEnvironment:v6];
    v12 = [(AllRefinementsDataSource *)self sizeController];
    [v12 togglesSectionContentInsets];
    v14 = v13;
    v16 = v15;
    v18 = v17;
    v20 = v19;

    [v7 setContentInsets:{v14, v16, v18, v20}];
    v21 = +[AllRefinementsSectionBackground decorationViewKind];
    v22 = [NSCollectionLayoutDecorationItem backgroundDecorationItemWithElementKind:v21];

    v23 = [(AllRefinementsDataSource *)self sizeController];
    v24 = [v9 displayName];
    v25 = [(AllRefinementsDataSource *)self collectionView];
    [v23 headerHeightWithTitle:v24 collectionView:v25];
    v27 = v26;

    if (v27 > 0.0)
    {
      v28 = [NSCollectionLayoutDimension fractionalWidthDimension:1.0];
      v29 = [NSCollectionLayoutDimension estimatedDimension:v27];
      v30 = [NSCollectionLayoutSize sizeWithWidthDimension:v28 heightDimension:v29];

      v31 = [NSCollectionLayoutBoundarySupplementaryItem boundarySupplementaryItemWithLayoutSize:v30 elementKind:UICollectionElementKindSectionHeader alignment:2];
      v32 = [(AllRefinementsDataSource *)self sizeController];
      [v32 togglesHeaderLeadingAdjustment];
      [v31 setContentInsets:{0.0, v33, 0.0, 0.0}];

      v136 = v31;
      v34 = [NSArray arrayWithObjects:&v136 count:1];
      [v7 setBoundarySupplementaryItems:v34];
    }

    v35 = [(AllRefinementsDataSource *)self sizeController];
    [v35 togglesBackgroundContentInsets];
    v37 = v36;
    v39 = v38;
    v41 = v40;
    v43 = v42;

    [v22 setContentInsets:{v37 + v27, v39, v41, v43}];
    v135 = v22;
    v44 = [NSArray arrayWithObjects:&v135 count:1];
    [v7 setDecorationItems:v44];

    objc_destroyWeak(&v128);
    objc_destroyWeak(&location);
  }

  return v7;
}

- (void)displayRefinements
{
  v3 = objc_alloc_init(NSDiffableDataSourceSnapshot);
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v25 = self;
  v4 = [(AllRefinementsDataSource *)self viewModel];
  v5 = [v4 sections];

  v6 = [v5 countByEnumeratingWithState:&v26 objects:v31 count:16];
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
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v26 + 1) + 8 * i);
        v11 = [v10 identifier];
        v30 = v11;
        v12 = [NSArray arrayWithObjects:&v30 count:1];
        [v3 appendSectionsWithIdentifiers:v12];

        v13 = [v10 type];
        if (v13 == 2)
        {
          v16 = v10;
          v17 = +[NSMutableArray array];
          v18 = [v16 openNow];

          if (v18)
          {
            v19 = [v16 openNow];
            [v17 addObject:v19];
          }

          v20 = [v16 openAt];

          if (v20)
          {
            v21 = [v16 openAt];
            [v17 addObject:v21];
          }

          v22 = [v16 identifier];
          [v3 appendItemsWithIdentifiers:v17 intoSectionWithIdentifier:v22];
        }

        else
        {
          if (v13 == 1)
          {
            v14 = v10;
            v15 = [v14 elements];
          }

          else
          {
            if (v13)
            {
              continue;
            }

            v14 = v10;
            v15 = [v14 toggles];
          }

          v16 = v15;
          v17 = [v14 identifier];

          [v3 appendItemsWithIdentifiers:v16 intoSectionWithIdentifier:v17];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v26 objects:v31 count:16];
    }

    while (v7);
  }

  v23 = [(AllRefinementsDataSource *)v25 collectionViewDiffableDataSource];
  [v23 applySnapshot:v3 animatingDifferences:0];

  v24 = [(AllRefinementsDataSource *)v25 collectionView];
  [v24 layoutIfNeeded];
}

- (void)reloadCollectionView:(id)a3
{
  [(AllRefinementsDataSource *)self setViewModel:a3];

  [(AllRefinementsDataSource *)self displayRefinements];
}

- (void)setupDataSource
{
  v3 = [(AllRefinementsDataSource *)self collectionView];
  v4 = objc_opt_class();
  v5 = +[NonSelectableCollectionViewListCell reuseIdentifier];
  [v3 registerClass:v4 forCellWithReuseIdentifier:v5];

  v6 = [(AllRefinementsDataSource *)self collectionView];
  v7 = objc_opt_class();
  v8 = +[_TtC4Maps36AllRefinementsMultiSelectElementCell reuseIdentifier];
  [v6 registerClass:v7 forCellWithReuseIdentifier:v8];

  if (MapsFeature_IsEnabled_SearchAndDiscovery())
  {
    v9 = [(AllRefinementsDataSource *)self collectionView];
    v10 = objc_opt_class();
    v11 = +[_TtC4Maps24AllRefinementsOpenAtCell reuseIdentifier];
    [v9 registerClass:v10 forCellWithReuseIdentifier:v11];
  }

  v12 = [(AllRefinementsDataSource *)self collectionView];
  v13 = objc_opt_class();
  v14 = +[AllRefinementsHeaderView reuseIdentifier];
  [v12 registerClass:v13 forSupplementaryViewOfKind:UICollectionElementKindSectionHeader withReuseIdentifier:v14];

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
  v16 = [(AllRefinementsDataSource *)self collectionView];
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_100F32E70;
  v21[3] = &unk_10165D658;
  objc_copyWeak(&v22, &location);
  v21[4] = v24;
  v21[5] = v26;
  v17 = [v15 initWithCollectionView:v16 cellProvider:v21];
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

- (AllRefinementsDataSource)initWithCollectionView:(id)a3 viewModel:(id)a4 scrollViewDelegate:(id)a5 selectionSequenceNumber:(id)a6 analyticsDelegate:(id)a7 viewModelDelegate:(id)a8
{
  v29 = a3;
  v28 = a4;
  v15 = a5;
  v16 = a6;
  v17 = a7;
  v18 = a8;
  v30.receiver = self;
  v30.super_class = AllRefinementsDataSource;
  v19 = [(AllRefinementsDataSource *)&v30 init];
  v20 = v19;
  if (v19)
  {
    objc_storeStrong(&v19->_collectionView, a3);
    [(UICollectionView *)v20->_collectionView setDelegate:v20, v28, v29];
    objc_storeStrong(&v20->_viewModel, a4);
    v21 = objc_alloc_init(AllRefinementsSizeController);
    sizeController = v20->_sizeController;
    v20->_sizeController = v21;

    objc_storeStrong(&v20->_scrollViewDelegate, a5);
    objc_storeStrong(&v20->_selectionSequenceNumber, a6);
    v23 = objc_alloc_init(AllRefinementsTogglesCellLogicController);
    togglesLogicController = v20->_togglesLogicController;
    v20->_togglesLogicController = v23;

    v25 = objc_alloc_init(AllRefinementsMultiSelectCellLogicController);
    multiSelectLogicController = v20->_multiSelectLogicController;
    v20->_multiSelectLogicController = v25;

    objc_storeWeak(&v20->_analyticsDelegate, v17);
    objc_storeWeak(&v20->_viewModelDelegate, v18);
    [(AllRefinementsDataSource *)v20 setupDataSource];
  }

  return v20;
}

@end