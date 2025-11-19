@interface GuidesHomeSection
- ($39B11F04546F9E5B2C1D7F3BC68BA281)configuration;
- (GuidesHomeSection)initWithSectionKind:(int64_t)a3 usingMaxWidth:(double)a4 usingTraitEnvironment:(id)a5 count:(unint64_t)a6;
- (id)description;
- (id)headerItem;
- (id)layoutForPublishersListSectionUsingLayoutEnvironment:(id)a3 shouldAddSupplementaryHeaderView:(BOOL)a4 objectsCount:(unint64_t)a5;
- (id)layoutForSectionUsingTraitsEnvironment:(id)a3 usingWidth:(double)a4 shouldAddSupplementaryHeaderView:(BOOL)a5;
- (id)layoutSectionForCompactCollectionsUsingTraitsEnvironment:(id)a3 usingWidth:(double)a4 shouldAddSupplementaryHeaderView:(BOOL)a5;
- (id)layoutSectionForCuratedCollectionsListUsingLayoutEnvironment:(id)a3 shouldAddSupplementaryHeaderView:(BOOL)a4 objectsCount:(unint64_t)a5;
- (id)layoutSectionForCuratedCollectionsUsingTraitsEnvironment:(id)a3 usingWidth:(double)a4 shouldAddSupplementaryHeaderView:(BOOL)a5;
- (id)layoutSectionForFeaturedGuideUsingTraitsEnvironment:(id)a3 usingWidth:(double)a4 featuredGuideTitle:(id)a5;
- (id)layoutSectionForFiltersUsingFilters:(id)a3 traitsEnvironment:(id)a4 width:(double)a5 shouldAddSupplementaryHeaderView:(BOOL)a6;
- (id)layoutSectionForLoadingUsingTraitEnvironment:(id)a3;
- (void)setConfiguration:(id *)a3;
- (void)setupConfiguration;
@end

@implementation GuidesHomeSection

- (void)setConfiguration:(id *)a3
{
  self->_configuration.rowCount = a3->var0;
  var1 = a3->var1;
  a3->var1 = 0;
  sectionIdentifier = self->_configuration.sectionIdentifier;
  self->_configuration.sectionIdentifier = var1;

  *&self->_configuration.cellKind = *&a3->var2;
}

- ($39B11F04546F9E5B2C1D7F3BC68BA281)configuration
{
  sectionIdentifier = self->_configuration.sectionIdentifier;
  retstr->var0 = self->_configuration.rowCount;
  result = sectionIdentifier;
  retstr->var1 = result;
  *&retstr->var2 = *&self->_configuration.cellKind;
  return result;
}

- (id)description
{
  [(GuidesHomeSection *)self configuration];
  v3 = [(GuidesHomeSection *)self count];
  v4 = [(GuidesHomeSection *)self sectionTitle];
  v5 = [NSString stringWithFormat:@"Section: (%@). Items: (%lu). Title: (%@)", v7, v3, v4];

  return v5;
}

- (id)layoutForSectionUsingTraitsEnvironment:(id)a3 usingWidth:(double)a4 shouldAddSupplementaryHeaderView:(BOOL)a5
{
  v5 = a5;
  v8 = a3;
  v9 = [(GuidesHomeSection *)self kind];
  switch(v9)
  {
    case 7:
      v10 = [(GuidesHomeSection *)self layoutSectionForLoadingUsingTraitEnvironment:v8];
      goto LABEL_7;
    case 3:
      v10 = [(GuidesHomeSection *)self layoutSectionForCuratedCollectionsUsingTraitsEnvironment:v8 usingWidth:v5 shouldAddSupplementaryHeaderView:a4];
      goto LABEL_7;
    case 2:
      v10 = [(GuidesHomeSection *)self layoutSectionForCompactCollectionsUsingTraitsEnvironment:v8 usingWidth:v5 shouldAddSupplementaryHeaderView:a4];
LABEL_7:
      v11 = v10;
      goto LABEL_9;
  }

  v11 = 0;
LABEL_9:

  return v11;
}

- (void)setupConfiguration
{
  v3 = [(GuidesHomeSection *)self kind];
  if (v3 > 7)
  {
    v6 = 0;
  }

  else
  {
    v6 = *(&off_101656520 + v3);
    v4 = qword_101215E10[v3];
    v5 = qword_101215E50[v3];
  }

  v7[0] = 1;
  v7[1] = v6;
  v7[2] = v4;
  v7[3] = v5;
  if (self)
  {
    [(GuidesHomeSection *)self setConfiguration:v7];
  }
}

- (id)headerItem
{
  v3 = [(GuidesHomeSection *)self sectionTitle];
  if (v3 && (v4 = v3, [(GuidesHomeSection *)self maxWidth], v6 = v5, v4, v6 > 0.0))
  {
    v7 = [UIFont preferredFontForTextStyle:UIFontTextStyleTitle3];
    v8 = [v7 _mapkit_fontWithWeight:UIFontWeightSemibold];

    v21 = NSFontAttributeName;
    v22 = v8;
    v9 = [NSDictionary dictionaryWithObjects:&v22 forKeys:&v21 count:1];
    v10 = [NSAttributedString alloc];
    v11 = [(GuidesHomeSection *)self sectionTitle];
    v12 = [v10 initWithString:v11 attributes:v9];

    [(GuidesHomeSection *)self maxWidth];
    [v12 boundingRectWithSize:1 options:0 context:?];
    v14 = fmax(v13, 40.0);
  }

  else
  {
    v14 = 40.0;
  }

  v15 = [NSCollectionLayoutDimension fractionalWidthDimension:1.0];
  v16 = [NSCollectionLayoutDimension absoluteDimension:v14];
  v17 = [NSCollectionLayoutSize sizeWithWidthDimension:v15 heightDimension:v16];

  v18 = +[GuidesGenericSectionHeader reuseIdentifier];
  v19 = [NSCollectionLayoutBoundarySupplementaryItem boundarySupplementaryItemWithLayoutSize:v17 elementKind:v18 alignment:1];

  return v19;
}

- (id)layoutForPublishersListSectionUsingLayoutEnvironment:(id)a3 shouldAddSupplementaryHeaderView:(BOOL)a4 objectsCount:(unint64_t)a5
{
  v6 = a4;
  v8 = a3;
  v9 = [[_UICollectionViewListLayoutSectionConfiguration alloc] initWithAppearanceStyle:v6 layoutEnvironment:v8];
  v10 = [v8 traitCollection];
  v11 = [v10 userInterfaceIdiom] != 5;

  [v9 setSeparatorStyle:v11];
  +[TwoLineCollectionViewListCell estimatedCellHeight];
  [v9 setEstimatedRowHeight:?];
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_100E60BC4;
  v18[3] = &unk_101656500;
  v18[4] = a5;
  [v9 setSeparatorInsetProvider:v18];
  [v9 setHeaderTopPadding:16.0];
  [v9 setSectionHeaderHeight:_UICollectionViewListLayoutSectionAutomaticDimension];
  v12 = [v9 _separatorConfiguration];
  v13 = [v12 copy];

  [v9 _setSeparatorConfiguration:v13];
  v14 = [[_UICollectionViewListLayoutSection alloc] initWithConfiguration:v9 layoutEnvironment:v8];
  [v14 setContentInsets:{0.0, 16.0, 0.0, 0.0}];
  if (v6)
  {
    v15 = [(GuidesHomeSection *)self headerItem];
    v19 = v15;
    v16 = [NSArray arrayWithObjects:&v19 count:1];
    [v14 setBoundarySupplementaryItems:v16];
  }

  return v14;
}

- (id)layoutSectionForLoadingUsingTraitEnvironment:(id)a3
{
  v3 = [NSCollectionLayoutSize layoutSizeWithFractionalWidth:a3 fractionalHeight:1.0, 1.0];
  v4 = [NSCollectionLayoutItem itemWithLayoutSize:v3];
  [v4 setContentInsets:{NSDirectionalEdgeInsetsZero.top, NSDirectionalEdgeInsetsZero.leading, NSDirectionalEdgeInsetsZero.bottom, NSDirectionalEdgeInsetsZero.trailing}];
  [objc_opt_class() loadingSectionHeight];
  v5 = [NSCollectionLayoutDimension estimatedDimension:?];
  v6 = [NSCollectionLayoutDimension fractionalWidthDimension:1.0];
  v7 = [NSCollectionLayoutSize sizeWithWidthDimension:v6 heightDimension:v5];

  v12 = v4;
  v8 = [NSArray arrayWithObjects:&v12 count:1];
  v9 = [NSCollectionLayoutGroup verticalGroupWithLayoutSize:v7 subitems:v8];

  v10 = [NSCollectionLayoutSection sectionWithGroup:v9];

  return v10;
}

- (id)layoutSectionForCuratedCollectionsListUsingLayoutEnvironment:(id)a3 shouldAddSupplementaryHeaderView:(BOOL)a4 objectsCount:(unint64_t)a5
{
  v6 = a4;
  v8 = a3;
  v9 = [[_UICollectionViewListLayoutSectionConfiguration alloc] initWithAppearanceStyle:v6 layoutEnvironment:v8];
  v10 = [v8 traitCollection];
  v11 = [v10 userInterfaceIdiom] != 5;

  [v9 setSeparatorStyle:v11];
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_100E60FB0;
  v18[3] = &unk_101656500;
  v18[4] = a5;
  [v9 setSeparatorInsetProvider:v18];
  [v9 setHeaderTopPadding:0.0];
  v12 = [v9 _separatorConfiguration];
  v13 = [v12 copy];

  [v9 _setSeparatorConfiguration:v13];
  v14 = [[_UICollectionViewListLayoutSection alloc] initWithConfiguration:v9 layoutEnvironment:v8];
  [v14 setContentInsets:{0.0, 16.0, 0.0, 0.0}];
  if ([(GuidesHomeSection *)self kind]== 4 && v6)
  {
    v15 = [(GuidesHomeSection *)self headerItem];
    v19 = v15;
    v16 = [NSArray arrayWithObjects:&v19 count:1];
    [v14 setBoundarySupplementaryItems:v16];
  }

  return v14;
}

- (id)layoutSectionForCuratedCollectionsUsingTraitsEnvironment:(id)a3 usingWidth:(double)a4 shouldAddSupplementaryHeaderView:(BOOL)a5
{
  v5 = a5;
  v8 = a3;
  v9 = [[MKPlaceCollectionsSizeController alloc] initWithCollectionsConfiguration:0 isSingleCollection:1 usingTraitCollections:-[GuidesHomeSection count](self inContext:{"count") == 1, v8, 8}];

  [(GuidesHomeSection *)self setCollectionsSizeController:v9];
  v10 = [(GuidesHomeSection *)self collectionsSizeController];
  [v10 sizeForCollectionWithMaxCollectionsWidth:a4];
  v12 = v11;
  v14 = v13;

  v15 = [(GuidesHomeSection *)self collectionsSizeController];
  [v15 sectionInsets];
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v23 = v22;

  v24 = v12 * [(GuidesHomeSection *)self count];
  v25 = [(GuidesHomeSection *)self collectionsSizeController];
  [v25 minimumInterItemSpacing];
  v27 = v24 + v26 * ([(GuidesHomeSection *)self count]- 1);

  v28 = [NSCollectionLayoutDimension absoluteDimension:v12];
  v29 = [NSCollectionLayoutDimension absoluteDimension:v14];
  v30 = [NSCollectionLayoutSize sizeWithWidthDimension:v28 heightDimension:v29];

  v31 = [NSCollectionLayoutItem itemWithLayoutSize:v30];
  v32 = [NSCollectionLayoutDimension estimatedDimension:v14];
  v33 = [NSCollectionLayoutDimension absoluteDimension:v27];
  v34 = [NSCollectionLayoutSize sizeWithWidthDimension:v33 heightDimension:v32];

  v45 = v31;
  v35 = [NSArray arrayWithObjects:&v45 count:1];
  v36 = [NSCollectionLayoutGroup horizontalGroupWithLayoutSize:v34 subitems:v35];

  v37 = [(GuidesHomeSection *)self collectionsSizeController];
  [v37 minimumInterItemSpacing];
  v38 = [NSCollectionLayoutSpacing fixedSpacing:?];
  [v36 setInterItemSpacing:v38];

  v39 = [NSCollectionLayoutSection sectionWithGroup:v36];
  [v39 setOrthogonalScrollingBehavior:1];
  v40 = [(GuidesHomeSection *)self collectionsSizeController];
  [v40 minimumInterItemSpacing];
  [v39 setInterGroupSpacing:?];

  [v39 setContentInsets:{v17, v19, v21, v23}];
  if (v5)
  {
    v41 = [(GuidesHomeSection *)self headerItem];
    [v41 setContentInsets:{-8.0, 16.0, -8.0, 16.0}];
    [v39 setSupplementariesFollowContentInsets:0];
    v44 = v41;
    v42 = [NSArray arrayWithObjects:&v44 count:1];
    [v39 setBoundarySupplementaryItems:v42];
  }

  return v39;
}

- (id)layoutSectionForCompactCollectionsUsingTraitsEnvironment:(id)a3 usingWidth:(double)a4 shouldAddSupplementaryHeaderView:(BOOL)a5
{
  v5 = a5;
  v8 = a3;
  v9 = [[MKPlaceCompactCollectionSizeController alloc] initWithCollectionsConfiguration:1 usingTraitCollections:1 inContext:{v8, 2}];

  compactCollectionsSizeController = self->_compactCollectionsSizeController;
  self->_compactCollectionsSizeController = v9;

  v11 = [(GuidesHomeSection *)self compactCollectionsSizeController];
  [v11 sizeForCollectionWithMaxCollectionsWidth:a4];
  v13 = v12;
  v15 = v14;

  v16 = [(GuidesHomeSection *)self compactCollectionsSizeController];
  [v16 sectionInsets];
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v24 = v23;

  v25 = v13 * [(GuidesHomeSection *)self count];
  v26 = [(GuidesHomeSection *)self compactCollectionsSizeController];
  [v26 minimumInterItemSpacing];
  v28 = v25 + v27 * ([(GuidesHomeSection *)self count]- 1);

  v29 = [NSCollectionLayoutDimension absoluteDimension:v13];
  v30 = [NSCollectionLayoutDimension absoluteDimension:v15];
  v31 = [NSCollectionLayoutSize sizeWithWidthDimension:v29 heightDimension:v30];

  v32 = [NSCollectionLayoutItem itemWithLayoutSize:v31];
  v33 = [NSCollectionLayoutDimension estimatedDimension:200.0];
  v34 = [NSCollectionLayoutDimension absoluteDimension:v28];
  v35 = [NSCollectionLayoutSize sizeWithWidthDimension:v34 heightDimension:v33];

  v36 = [NSCollectionLayoutGroup horizontalGroupWithLayoutSize:v35 subitem:v32 count:[(GuidesHomeSection *)self count]];
  v37 = [(GuidesHomeSection *)self compactCollectionsSizeController];
  [v37 minimumInterItemSpacing];
  v38 = [NSCollectionLayoutSpacing fixedSpacing:?];
  [v36 setInterItemSpacing:v38];

  v39 = [NSCollectionLayoutSection sectionWithGroup:v36];
  [v39 setOrthogonalScrollingBehavior:1];
  v40 = [(GuidesHomeSection *)self compactCollectionsSizeController];
  [v40 minimumInterItemSpacing];
  [v39 setInterGroupSpacing:?];

  [v39 setContentInsets:{v18, v20, v22, v24}];
  if (v5)
  {
    v41 = [(GuidesHomeSection *)self headerItem];
    [v41 setContentInsets:{0.0, 16.0, 0.0, 16.0}];
    [v39 setSupplementariesFollowContentInsets:0];
    v48 = v41;
    v42 = [NSArray arrayWithObjects:&v48 count:1];
    [v39 setBoundarySupplementaryItems:v42];
  }

  v43 = +[CompactGuidesSectionBackground decorationViewKind];
  v44 = [NSCollectionLayoutDecorationItem backgroundDecorationItemWithElementKind:v43];

  v47 = v44;
  v45 = [NSArray arrayWithObjects:&v47 count:1];
  [v39 setDecorationItems:v45];

  return v39;
}

- (id)layoutSectionForFiltersUsingFilters:(id)a3 traitsEnvironment:(id)a4 width:(double)a5 shouldAddSupplementaryHeaderView:(BOOL)a6
{
  v6 = a6;
  v9 = a3;
  v10 = a4;
  v11 = [[CollectionsFilterSizeController alloc] initWithCollectionsFilterDisplayStyle:0 inContext:2];
  filtersSizeController = self->_filtersSizeController;
  self->_filtersSizeController = v11;

  v13 = [(GuidesHomeSection *)self filtersSizeController];
  [v13 insetForFilterAtIndex:0];
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;

  v44 = 0;
  v45 = &v44;
  v46 = 0x2020000000;
  v47 = 0;
  v37 = _NSConcreteStackBlock;
  v38 = 3221225472;
  v39 = sub_100E61B64;
  v40 = &unk_1016564E0;
  v41 = self;
  v43 = &v44;
  v22 = [[NSMutableArray alloc] initWithCapacity:{objc_msgSend(v9, "count")}];
  v42 = v22;
  [v9 enumerateObjectsUsingBlock:&v37];
  v23 = [v22 count];
  [(CollectionsFilterSizeController *)self->_filtersSizeController minimumLineSpacingForSectionAtIndex:0];
  v45[3] = v45[3] + v24 * (v23 - 1);
  v25 = [NSCollectionLayoutDimension absoluteDimension:?];
  [(CollectionsFilterSizeController *)self->_filtersSizeController defaultHeight];
  v26 = [NSCollectionLayoutDimension absoluteDimension:?];
  v27 = [NSCollectionLayoutSize sizeWithWidthDimension:v25 heightDimension:v26];

  v28 = [NSCollectionLayoutGroup horizontalGroupWithLayoutSize:v27 subitems:v22];
  [(CollectionsFilterSizeController *)self->_filtersSizeController minimumInterItemSpacingForSectionAtIndex:0];
  v29 = [NSCollectionLayoutSpacing fixedSpacing:?];
  [v28 setInterItemSpacing:v29];

  v30 = [NSCollectionLayoutSection sectionWithGroup:v28];
  [v30 setContentInsets:{v15, v17, v19, v21}];
  [v30 setOrthogonalScrollingBehavior:1];
  if (v6)
  {
    v31 = [(GuidesHomeSection *)self headerItem];
    [v31 setContentInsets:{-8.0, 16.0, -8.0, 16.0}];
    [v30 setSupplementariesFollowContentInsets:0];
    v49 = v31;
    v32 = [NSArray arrayWithObjects:&v49 count:1];
    [v30 setBoundarySupplementaryItems:v32];
  }

  v33 = +[GuidesSectionBackground decorationViewKind];
  v34 = [NSCollectionLayoutDecorationItem backgroundDecorationItemWithElementKind:v33];

  v48 = v34;
  v35 = [NSArray arrayWithObjects:&v48 count:1];
  [v30 setDecorationItems:v35];

  _Block_object_dispose(&v44, 8);

  return v30;
}

- (id)layoutSectionForFeaturedGuideUsingTraitsEnvironment:(id)a3 usingWidth:(double)a4 featuredGuideTitle:(id)a5
{
  [GuideHomeHeaderView maximumRequiredHeightWithFeaturedGuideTitle:a5 maxWidth:?];
  v7 = v6;
  v8 = [NSCollectionLayoutDimension absoluteDimension:a4];
  v9 = [NSCollectionLayoutDimension absoluteDimension:v7];
  v10 = [NSCollectionLayoutSize sizeWithWidthDimension:v8 heightDimension:v9];

  v11 = [NSCollectionLayoutItem itemWithLayoutSize:v10];
  v12 = [NSCollectionLayoutDimension estimatedDimension:v7];
  v13 = [NSCollectionLayoutDimension fractionalWidthDimension:1.0];
  v14 = [NSCollectionLayoutSize sizeWithWidthDimension:v13 heightDimension:v12];

  v15 = [NSCollectionLayoutGroup verticalGroupWithLayoutSize:v14 subitem:v11 count:1];
  v16 = [NSCollectionLayoutSection sectionWithGroup:v15];
  [v16 setContentInsets:{NSDirectionalEdgeInsetsZero.top, NSDirectionalEdgeInsetsZero.leading, NSDirectionalEdgeInsetsZero.bottom, NSDirectionalEdgeInsetsZero.trailing}];

  return v16;
}

- (GuidesHomeSection)initWithSectionKind:(int64_t)a3 usingMaxWidth:(double)a4 usingTraitEnvironment:(id)a5 count:(unint64_t)a6
{
  v14.receiver = self;
  v14.super_class = GuidesHomeSection;
  v9 = [(GuidesHomeSection *)&v14 init:a3];
  v10 = v9;
  if (v9)
  {
    v9->_kind = a3;
    v9->_maxWidth = a4;
    v11 = +[NSUUID UUID];
    sectionIdentifier = v10->_sectionIdentifier;
    v10->_sectionIdentifier = v11;

    v10->_count = a6;
    v10->_contentType = 0;
    [(GuidesHomeSection *)v10 setupConfiguration];
  }

  return v10;
}

@end