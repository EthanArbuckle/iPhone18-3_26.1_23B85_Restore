@interface GuidesHomeSection
- ($39B11F04546F9E5B2C1D7F3BC68BA281)configuration;
- (GuidesHomeSection)initWithSectionKind:(int64_t)kind usingMaxWidth:(double)width usingTraitEnvironment:(id)environment count:(unint64_t)count;
- (id)description;
- (id)headerItem;
- (id)layoutForPublishersListSectionUsingLayoutEnvironment:(id)environment shouldAddSupplementaryHeaderView:(BOOL)view objectsCount:(unint64_t)count;
- (id)layoutForSectionUsingTraitsEnvironment:(id)environment usingWidth:(double)width shouldAddSupplementaryHeaderView:(BOOL)view;
- (id)layoutSectionForCompactCollectionsUsingTraitsEnvironment:(id)environment usingWidth:(double)width shouldAddSupplementaryHeaderView:(BOOL)view;
- (id)layoutSectionForCuratedCollectionsListUsingLayoutEnvironment:(id)environment shouldAddSupplementaryHeaderView:(BOOL)view objectsCount:(unint64_t)count;
- (id)layoutSectionForCuratedCollectionsUsingTraitsEnvironment:(id)environment usingWidth:(double)width shouldAddSupplementaryHeaderView:(BOOL)view;
- (id)layoutSectionForFeaturedGuideUsingTraitsEnvironment:(id)environment usingWidth:(double)width featuredGuideTitle:(id)title;
- (id)layoutSectionForFiltersUsingFilters:(id)filters traitsEnvironment:(id)environment width:(double)width shouldAddSupplementaryHeaderView:(BOOL)view;
- (id)layoutSectionForLoadingUsingTraitEnvironment:(id)environment;
- (void)setConfiguration:(id *)configuration;
- (void)setupConfiguration;
@end

@implementation GuidesHomeSection

- (void)setConfiguration:(id *)configuration
{
  self->_configuration.rowCount = configuration->var0;
  var1 = configuration->var1;
  configuration->var1 = 0;
  sectionIdentifier = self->_configuration.sectionIdentifier;
  self->_configuration.sectionIdentifier = var1;

  *&self->_configuration.cellKind = *&configuration->var2;
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
  sectionTitle = [(GuidesHomeSection *)self sectionTitle];
  v5 = [NSString stringWithFormat:@"Section: (%@). Items: (%lu). Title: (%@)", v7, v3, sectionTitle];

  return v5;
}

- (id)layoutForSectionUsingTraitsEnvironment:(id)environment usingWidth:(double)width shouldAddSupplementaryHeaderView:(BOOL)view
{
  viewCopy = view;
  environmentCopy = environment;
  kind = [(GuidesHomeSection *)self kind];
  switch(kind)
  {
    case 7:
      v10 = [(GuidesHomeSection *)self layoutSectionForLoadingUsingTraitEnvironment:environmentCopy];
      goto LABEL_7;
    case 3:
      v10 = [(GuidesHomeSection *)self layoutSectionForCuratedCollectionsUsingTraitsEnvironment:environmentCopy usingWidth:viewCopy shouldAddSupplementaryHeaderView:width];
      goto LABEL_7;
    case 2:
      v10 = [(GuidesHomeSection *)self layoutSectionForCompactCollectionsUsingTraitsEnvironment:environmentCopy usingWidth:viewCopy shouldAddSupplementaryHeaderView:width];
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
  kind = [(GuidesHomeSection *)self kind];
  if (kind > 7)
  {
    v6 = 0;
  }

  else
  {
    v6 = *(&off_101656520 + kind);
    v4 = qword_101215E10[kind];
    v5 = qword_101215E50[kind];
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
  sectionTitle = [(GuidesHomeSection *)self sectionTitle];
  if (sectionTitle && (v4 = sectionTitle, [(GuidesHomeSection *)self maxWidth], v6 = v5, v4, v6 > 0.0))
  {
    v7 = [UIFont preferredFontForTextStyle:UIFontTextStyleTitle3];
    v8 = [v7 _mapkit_fontWithWeight:UIFontWeightSemibold];

    v21 = NSFontAttributeName;
    v22 = v8;
    v9 = [NSDictionary dictionaryWithObjects:&v22 forKeys:&v21 count:1];
    v10 = [NSAttributedString alloc];
    sectionTitle2 = [(GuidesHomeSection *)self sectionTitle];
    v12 = [v10 initWithString:sectionTitle2 attributes:v9];

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

- (id)layoutForPublishersListSectionUsingLayoutEnvironment:(id)environment shouldAddSupplementaryHeaderView:(BOOL)view objectsCount:(unint64_t)count
{
  viewCopy = view;
  environmentCopy = environment;
  v9 = [[_UICollectionViewListLayoutSectionConfiguration alloc] initWithAppearanceStyle:viewCopy layoutEnvironment:environmentCopy];
  traitCollection = [environmentCopy traitCollection];
  v11 = [traitCollection userInterfaceIdiom] != 5;

  [v9 setSeparatorStyle:v11];
  +[TwoLineCollectionViewListCell estimatedCellHeight];
  [v9 setEstimatedRowHeight:?];
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_100E60BC4;
  v18[3] = &unk_101656500;
  v18[4] = count;
  [v9 setSeparatorInsetProvider:v18];
  [v9 setHeaderTopPadding:16.0];
  [v9 setSectionHeaderHeight:_UICollectionViewListLayoutSectionAutomaticDimension];
  _separatorConfiguration = [v9 _separatorConfiguration];
  v13 = [_separatorConfiguration copy];

  [v9 _setSeparatorConfiguration:v13];
  v14 = [[_UICollectionViewListLayoutSection alloc] initWithConfiguration:v9 layoutEnvironment:environmentCopy];
  [v14 setContentInsets:{0.0, 16.0, 0.0, 0.0}];
  if (viewCopy)
  {
    headerItem = [(GuidesHomeSection *)self headerItem];
    v19 = headerItem;
    v16 = [NSArray arrayWithObjects:&v19 count:1];
    [v14 setBoundarySupplementaryItems:v16];
  }

  return v14;
}

- (id)layoutSectionForLoadingUsingTraitEnvironment:(id)environment
{
  v3 = [NSCollectionLayoutSize layoutSizeWithFractionalWidth:environment fractionalHeight:1.0, 1.0];
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

- (id)layoutSectionForCuratedCollectionsListUsingLayoutEnvironment:(id)environment shouldAddSupplementaryHeaderView:(BOOL)view objectsCount:(unint64_t)count
{
  viewCopy = view;
  environmentCopy = environment;
  v9 = [[_UICollectionViewListLayoutSectionConfiguration alloc] initWithAppearanceStyle:viewCopy layoutEnvironment:environmentCopy];
  traitCollection = [environmentCopy traitCollection];
  v11 = [traitCollection userInterfaceIdiom] != 5;

  [v9 setSeparatorStyle:v11];
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_100E60FB0;
  v18[3] = &unk_101656500;
  v18[4] = count;
  [v9 setSeparatorInsetProvider:v18];
  [v9 setHeaderTopPadding:0.0];
  _separatorConfiguration = [v9 _separatorConfiguration];
  v13 = [_separatorConfiguration copy];

  [v9 _setSeparatorConfiguration:v13];
  v14 = [[_UICollectionViewListLayoutSection alloc] initWithConfiguration:v9 layoutEnvironment:environmentCopy];
  [v14 setContentInsets:{0.0, 16.0, 0.0, 0.0}];
  if ([(GuidesHomeSection *)self kind]== 4 && viewCopy)
  {
    headerItem = [(GuidesHomeSection *)self headerItem];
    v19 = headerItem;
    v16 = [NSArray arrayWithObjects:&v19 count:1];
    [v14 setBoundarySupplementaryItems:v16];
  }

  return v14;
}

- (id)layoutSectionForCuratedCollectionsUsingTraitsEnvironment:(id)environment usingWidth:(double)width shouldAddSupplementaryHeaderView:(BOOL)view
{
  viewCopy = view;
  environmentCopy = environment;
  v9 = [[MKPlaceCollectionsSizeController alloc] initWithCollectionsConfiguration:0 isSingleCollection:1 usingTraitCollections:-[GuidesHomeSection count](self inContext:{"count") == 1, environmentCopy, 8}];

  [(GuidesHomeSection *)self setCollectionsSizeController:v9];
  collectionsSizeController = [(GuidesHomeSection *)self collectionsSizeController];
  [collectionsSizeController sizeForCollectionWithMaxCollectionsWidth:width];
  v12 = v11;
  v14 = v13;

  collectionsSizeController2 = [(GuidesHomeSection *)self collectionsSizeController];
  [collectionsSizeController2 sectionInsets];
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v23 = v22;

  v24 = v12 * [(GuidesHomeSection *)self count];
  collectionsSizeController3 = [(GuidesHomeSection *)self collectionsSizeController];
  [collectionsSizeController3 minimumInterItemSpacing];
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

  collectionsSizeController4 = [(GuidesHomeSection *)self collectionsSizeController];
  [collectionsSizeController4 minimumInterItemSpacing];
  v38 = [NSCollectionLayoutSpacing fixedSpacing:?];
  [v36 setInterItemSpacing:v38];

  v39 = [NSCollectionLayoutSection sectionWithGroup:v36];
  [v39 setOrthogonalScrollingBehavior:1];
  collectionsSizeController5 = [(GuidesHomeSection *)self collectionsSizeController];
  [collectionsSizeController5 minimumInterItemSpacing];
  [v39 setInterGroupSpacing:?];

  [v39 setContentInsets:{v17, v19, v21, v23}];
  if (viewCopy)
  {
    headerItem = [(GuidesHomeSection *)self headerItem];
    [headerItem setContentInsets:{-8.0, 16.0, -8.0, 16.0}];
    [v39 setSupplementariesFollowContentInsets:0];
    v44 = headerItem;
    v42 = [NSArray arrayWithObjects:&v44 count:1];
    [v39 setBoundarySupplementaryItems:v42];
  }

  return v39;
}

- (id)layoutSectionForCompactCollectionsUsingTraitsEnvironment:(id)environment usingWidth:(double)width shouldAddSupplementaryHeaderView:(BOOL)view
{
  viewCopy = view;
  environmentCopy = environment;
  v9 = [[MKPlaceCompactCollectionSizeController alloc] initWithCollectionsConfiguration:1 usingTraitCollections:1 inContext:{environmentCopy, 2}];

  compactCollectionsSizeController = self->_compactCollectionsSizeController;
  self->_compactCollectionsSizeController = v9;

  compactCollectionsSizeController = [(GuidesHomeSection *)self compactCollectionsSizeController];
  [compactCollectionsSizeController sizeForCollectionWithMaxCollectionsWidth:width];
  v13 = v12;
  v15 = v14;

  compactCollectionsSizeController2 = [(GuidesHomeSection *)self compactCollectionsSizeController];
  [compactCollectionsSizeController2 sectionInsets];
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v24 = v23;

  v25 = v13 * [(GuidesHomeSection *)self count];
  compactCollectionsSizeController3 = [(GuidesHomeSection *)self compactCollectionsSizeController];
  [compactCollectionsSizeController3 minimumInterItemSpacing];
  v28 = v25 + v27 * ([(GuidesHomeSection *)self count]- 1);

  v29 = [NSCollectionLayoutDimension absoluteDimension:v13];
  v30 = [NSCollectionLayoutDimension absoluteDimension:v15];
  v31 = [NSCollectionLayoutSize sizeWithWidthDimension:v29 heightDimension:v30];

  v32 = [NSCollectionLayoutItem itemWithLayoutSize:v31];
  v33 = [NSCollectionLayoutDimension estimatedDimension:200.0];
  v34 = [NSCollectionLayoutDimension absoluteDimension:v28];
  v35 = [NSCollectionLayoutSize sizeWithWidthDimension:v34 heightDimension:v33];

  v36 = [NSCollectionLayoutGroup horizontalGroupWithLayoutSize:v35 subitem:v32 count:[(GuidesHomeSection *)self count]];
  compactCollectionsSizeController4 = [(GuidesHomeSection *)self compactCollectionsSizeController];
  [compactCollectionsSizeController4 minimumInterItemSpacing];
  v38 = [NSCollectionLayoutSpacing fixedSpacing:?];
  [v36 setInterItemSpacing:v38];

  v39 = [NSCollectionLayoutSection sectionWithGroup:v36];
  [v39 setOrthogonalScrollingBehavior:1];
  compactCollectionsSizeController5 = [(GuidesHomeSection *)self compactCollectionsSizeController];
  [compactCollectionsSizeController5 minimumInterItemSpacing];
  [v39 setInterGroupSpacing:?];

  [v39 setContentInsets:{v18, v20, v22, v24}];
  if (viewCopy)
  {
    headerItem = [(GuidesHomeSection *)self headerItem];
    [headerItem setContentInsets:{0.0, 16.0, 0.0, 16.0}];
    [v39 setSupplementariesFollowContentInsets:0];
    v48 = headerItem;
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

- (id)layoutSectionForFiltersUsingFilters:(id)filters traitsEnvironment:(id)environment width:(double)width shouldAddSupplementaryHeaderView:(BOOL)view
{
  viewCopy = view;
  filtersCopy = filters;
  environmentCopy = environment;
  v11 = [[CollectionsFilterSizeController alloc] initWithCollectionsFilterDisplayStyle:0 inContext:2];
  filtersSizeController = self->_filtersSizeController;
  self->_filtersSizeController = v11;

  filtersSizeController = [(GuidesHomeSection *)self filtersSizeController];
  [filtersSizeController insetForFilterAtIndex:0];
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
  selfCopy = self;
  v43 = &v44;
  v22 = [[NSMutableArray alloc] initWithCapacity:{objc_msgSend(filtersCopy, "count")}];
  v42 = v22;
  [filtersCopy enumerateObjectsUsingBlock:&v37];
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
  if (viewCopy)
  {
    headerItem = [(GuidesHomeSection *)self headerItem];
    [headerItem setContentInsets:{-8.0, 16.0, -8.0, 16.0}];
    [v30 setSupplementariesFollowContentInsets:0];
    v49 = headerItem;
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

- (id)layoutSectionForFeaturedGuideUsingTraitsEnvironment:(id)environment usingWidth:(double)width featuredGuideTitle:(id)title
{
  [GuideHomeHeaderView maximumRequiredHeightWithFeaturedGuideTitle:title maxWidth:?];
  v7 = v6;
  v8 = [NSCollectionLayoutDimension absoluteDimension:width];
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

- (GuidesHomeSection)initWithSectionKind:(int64_t)kind usingMaxWidth:(double)width usingTraitEnvironment:(id)environment count:(unint64_t)count
{
  v14.receiver = self;
  v14.super_class = GuidesHomeSection;
  v9 = [(GuidesHomeSection *)&v14 init:kind];
  v10 = v9;
  if (v9)
  {
    v9->_kind = kind;
    v9->_maxWidth = width;
    v11 = +[NSUUID UUID];
    sectionIdentifier = v10->_sectionIdentifier;
    v10->_sectionIdentifier = v11;

    v10->_count = count;
    v10->_contentType = 0;
    [(GuidesHomeSection *)v10 setupConfiguration];
  }

  return v10;
}

@end