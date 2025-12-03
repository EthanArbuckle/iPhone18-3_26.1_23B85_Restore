@interface AllCollectionsSection
- ($39B11F04546F9E5B2C1D7F3BC68BA281)configuration;
- (AllCollectionsSection)initWithSectionIndex:(int64_t)index usingMaxWidth:(double)width usingTraitEnvironment:(id)environment;
- (id)layoutForSectionUsingTraitsEnvironment:(id)environment usingWidth:(double)width;
- (id)layoutSectionForCollectionsUsingTraitsEnvironment:(id)environment usingWidth:(double)width;
- (id)layoutSectionForLoadingUsingTraitEnvironment:(id)environment;
- (void)setConfiguration:(id *)configuration;
- (void)setupConfiguration;
@end

@implementation AllCollectionsSection

- (void)setConfiguration:(id *)configuration
{
  self->_configuration.columnCount = configuration->var0;
  var1 = configuration->var1;
  configuration->var1 = 0;
  sectionIdentifier = self->_configuration.sectionIdentifier;
  self->_configuration.sectionIdentifier = var1;

  *&self->_configuration.cellKind = *&configuration->var2;
}

- ($39B11F04546F9E5B2C1D7F3BC68BA281)configuration
{
  sectionIdentifier = self->_configuration.sectionIdentifier;
  retstr->var0 = self->_configuration.columnCount;
  result = sectionIdentifier;
  retstr->var1 = result;
  *&retstr->var2 = *&self->_configuration.cellKind;
  return result;
}

- (id)layoutSectionForLoadingUsingTraitEnvironment:(id)environment
{
  v3 = [NSCollectionLayoutSize layoutSizeWithFractionalWidth:environment fractionalHeight:1.0, 1.0];
  v4 = [NSCollectionLayoutItem itemWithLayoutSize:v3];
  [v4 setContentInsets:{NSDirectionalEdgeInsetsZero.top, NSDirectionalEdgeInsetsZero.leading, NSDirectionalEdgeInsetsZero.bottom, NSDirectionalEdgeInsetsZero.trailing}];
  v5 = [NSCollectionLayoutDimension estimatedDimension:100.0];
  v6 = [NSCollectionLayoutDimension fractionalWidthDimension:1.0];
  v7 = [NSCollectionLayoutSize sizeWithWidthDimension:v6 heightDimension:v5];

  v12 = v4;
  v8 = [NSArray arrayWithObjects:&v12 count:1];
  v9 = [NSCollectionLayoutGroup verticalGroupWithLayoutSize:v7 subitems:v8];

  v10 = [NSCollectionLayoutSection sectionWithGroup:v9];

  return v10;
}

- (id)layoutSectionForCollectionsUsingTraitsEnvironment:(id)environment usingWidth:(double)width
{
  environmentCopy = environment;
  collectionsSizeController = [(AllCollectionsSection *)self collectionsSizeController];
  [collectionsSizeController sizeForCollectionWithMaxCollectionsWidth:width];
  v9 = v8;
  v11 = v10;

  collectionsSizeController2 = [(AllCollectionsSection *)self collectionsSizeController];
  [collectionsSizeController2 sectionInsets];
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;

  v21 = [NSCollectionLayoutDimension absoluteDimension:v9];
  v22 = [NSCollectionLayoutDimension absoluteDimension:v11];
  v23 = [NSCollectionLayoutSize sizeWithWidthDimension:v21 heightDimension:v22];

  v45 = v23;
  v24 = [NSCollectionLayoutItem itemWithLayoutSize:v23];
  v25 = [NSCollectionLayoutDimension estimatedDimension:260.0];
  v26 = [NSCollectionLayoutDimension fractionalWidthDimension:1.0];
  v27 = [NSCollectionLayoutSize sizeWithWidthDimension:v26 heightDimension:v25];

  v44 = v24;
  v48 = v24;
  v28 = [NSArray arrayWithObjects:&v48 count:1];
  v29 = [NSCollectionLayoutGroup verticalGroupWithLayoutSize:v27 subitems:v28];

  v30 = [NSCollectionLayoutSection sectionWithGroup:v29];
  collectionsSizeController3 = [(AllCollectionsSection *)self collectionsSizeController];
  [collectionsSizeController3 minimumInterItemSpacing];
  [v30 setInterGroupSpacing:?];

  [v30 setContentInsets:{v14, v16, v18, v20}];
  v32 = sub_10000FA08(environmentCopy);

  v33 = [NSCollectionLayoutDimension fractionalWidthDimension:1.0];
  if (v32 == 5)
  {
    [CollectionsFilterMenu defaultHeightForDisplayStyle:1 inContext:1];
    v34 = [NSCollectionLayoutDimension absoluteDimension:?];
    v35 = [NSCollectionLayoutSize sizeWithWidthDimension:v33 heightDimension:v34];

    v36 = +[CollectionsFilterMenu reuseIdentifier];
    v37 = [NSCollectionLayoutBoundarySupplementaryItem boundarySupplementaryItemWithLayoutSize:v35 elementKind:v36 alignment:1];

    v47 = v37;
    v38 = [NSArray arrayWithObjects:&v47 count:1];
    [v30 setBoundarySupplementaryItems:v38];
  }

  else
  {
    filtersSizeController = [(AllCollectionsSection *)self filtersSizeController];
    [filtersSizeController defaultHeight];
    v40 = [NSCollectionLayoutDimension absoluteDimension:?];
    v35 = [NSCollectionLayoutSize sizeWithWidthDimension:v33 heightDimension:v40];

    v41 = +[CollectionsFilterCarouselView reuseIdentifier];
    v37 = [NSCollectionLayoutBoundarySupplementaryItem boundarySupplementaryItemWithLayoutSize:v35 elementKind:v41 alignment:1];

    v46 = v37;
    v42 = [NSArray arrayWithObjects:&v46 count:1];
    [v30 setBoundarySupplementaryItems:v42];

    [v30 setSupplementariesFollowContentInsets:0];
  }

  return v30;
}

- (id)layoutForSectionUsingTraitsEnvironment:(id)environment usingWidth:(double)width
{
  environmentCopy = environment;
  kind = [(AllCollectionsSection *)self kind];
  if (kind == 1)
  {
    v9 = [(AllCollectionsSection *)self layoutSectionForLoadingUsingTraitEnvironment:environmentCopy];
  }

  else
  {
    if (kind)
    {
      goto LABEL_6;
    }

    v9 = [(AllCollectionsSection *)self layoutSectionForCollectionsUsingTraitsEnvironment:environmentCopy usingWidth:width];
  }

  v4 = v9;
LABEL_6:

  return v4;
}

- (void)setupConfiguration
{
  kind = self->_kind;
  v3 = @"LoadingSection";
  v4 = @"CollectionsSection";
  v5 = 1;
  if (kind)
  {
    v4 = 0;
    v5 = self->_kind;
  }

  if (kind != 1)
  {
    v3 = v4;
  }

  v7[0] = 1;
  v7[1] = v3;
  if (kind == 1)
  {
    v6 = 0;
  }

  else
  {
    v6 = v5;
  }

  v7[2] = kind;
  v7[3] = v6;
  [(AllCollectionsSection *)self setConfiguration:v7];
}

- (AllCollectionsSection)initWithSectionIndex:(int64_t)index usingMaxWidth:(double)width usingTraitEnvironment:(id)environment
{
  environmentCopy = environment;
  v16.receiver = self;
  v16.super_class = AllCollectionsSection;
  v8 = [(AllCollectionsSection *)&v16 init];
  v9 = v8;
  if (v8)
  {
    if (index > 1)
    {
      v14 = 0;
      goto LABEL_6;
    }

    v8->_kind = index;
    [(AllCollectionsSection *)v8 setupConfiguration];
    v10 = [[MKPlaceCollectionsSizeController alloc] initWithDefaultCollectionsConfigurationUsingTraitCollections:environmentCopy inContext:5];
    collectionsSizeController = v9->_collectionsSizeController;
    v9->_collectionsSizeController = v10;

    v12 = [[CollectionsFilterSizeController alloc] initWithCollectionsFilterDisplayStyle:0 inContext:1];
    filtersSizeController = v9->_filtersSizeController;
    v9->_filtersSizeController = v12;
  }

  v14 = v9;
LABEL_6:

  return v14;
}

@end