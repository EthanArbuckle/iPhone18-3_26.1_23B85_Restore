@interface ICNoteSearchCollectionView
- (id)attachmentSectionForLayoutEnvironment:(id)a3;
- (id)createLayout;
- (void)setHeaderOfSectionLayout:(id)a3;
@end

@implementation ICNoteSearchCollectionView

- (void)setHeaderOfSectionLayout:(id)a3
{
  v4 = a3;
  v5 = [(ICNoteBrowseCollectionView *)self headerLayoutItemWithEstimatedHeight:50.0];
  if (+[UIDevice ic_isVision]&& ![(ICNoteBrowseCollectionView *)self noteContainerViewMode])
  {
    [v4 contentInsets];
    [v5 setContentInsets:?];
  }

  v7 = v5;
  v6 = [NSArray arrayWithObjects:&v7 count:1];
  [v4 setBoundarySupplementaryItems:v6];
}

- (id)createLayout
{
  objc_initWeak(&location, self);
  v6 = _NSConcreteStackBlock;
  v7 = 3221225472;
  v8 = sub_1000DB2F0;
  v9 = &unk_1006480B8;
  objc_copyWeak(&v10, &location);
  v2 = objc_retainBlock(&v6);
  v3 = [UICollectionViewCompositionalLayout alloc];
  v4 = [v3 initWithSectionProvider:{v2, v6, v7, v8, v9}];

  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);

  return v4;
}

- (id)attachmentSectionForLayoutEnvironment:(id)a3
{
  v4 = a3;
  +[ICSearchAttachmentResultsCollectionViewCell itemSize];
  v6 = v5;
  v7 = [v4 container];

  [v7 effectiveContentSize];
  v9 = v8;

  v10 = fmax(ceil(v9 / 450.0), 1.0);
  v11 = 16.0 / v9;
  if (v10 <= 1)
  {
    v11 = 0.0;
  }

  v36 = [NSCollectionLayoutDimension fractionalWidthDimension:1.0 / v10 - v11];
  v35 = [NSCollectionLayoutDimension estimatedDimension:v6];
  v12 = [NSCollectionLayoutSize sizeWithWidthDimension:v36 heightDimension:v35];
  v13 = [NSCollectionLayoutItem itemWithLayoutSize:v12];
  v14 = [NSCollectionLayoutDimension fractionalWidthDimension:1.0];
  v15 = [NSCollectionLayoutDimension estimatedDimension:v6];
  v16 = [NSCollectionLayoutSize sizeWithWidthDimension:v14 heightDimension:v15];
  v38 = v13;
  v17 = [NSArray arrayWithObjects:&v38 count:1];
  v18 = [NSCollectionLayoutGroup horizontalGroupWithLayoutSize:v16 subitems:v17];

  v19 = [NSCollectionLayoutSpacing flexibleSpacing:16.0];
  [v18 setInterItemSpacing:v19];

  v20 = [NSCollectionLayoutSection sectionWithGroup:v18];
  [v20 setInterGroupSpacing:16.0];
  v21 = [(ICNoteBrowseCollectionView *)self headerLayoutItemWithEstimatedHeight:50.0];
  v37 = v21;
  v22 = [NSArray arrayWithObjects:&v37 count:1];
  [v20 setBoundarySupplementaryItems:v22];

  [v20 contentInsets];
  v24 = v23;
  v26 = v25;
  [(ICNoteSearchCollectionView *)self directionalLayoutMargins];
  v28 = v27;
  [(ICNoteSearchCollectionView *)self ic_directionalSafeAreaInsets];
  v30 = v28 - v29;
  [(ICNoteSearchCollectionView *)self directionalLayoutMargins];
  v32 = v31;
  [(ICNoteSearchCollectionView *)self ic_directionalSafeAreaInsets];
  [v20 setContentInsets:{v24, v30, v26, v32 - v33}];

  return v20;
}

@end