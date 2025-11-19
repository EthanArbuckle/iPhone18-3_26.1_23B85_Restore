@interface CitySelectorSection
- ($39B11F04546F9E5B2C1D7F3BC68BA281)configuration;
- (CitySelectorSection)initWithSectionKind:(int64_t)a3 usingMaxWidth:(double)a4 usingTraitEnvironment:(id)a5;
- (id)layoutForSectionUsingTraitsEnvironment:(id)a3 usingWidth:(double)a4;
- (id)layoutSectionForCompactCollectionsUsingTraitsEnvironment:(id)a3 usingWidth:(double)a4;
- (id)layoutSectionForWorldwideUsingTraitsEnvironment:(id)a3 usingWidth:(double)a4;
- (void)initializeSizeControllerUsingTraitEnvironment:(id)a3;
- (void)setConfiguration:(id *)a3;
- (void)setupConfiguration;
@end

@implementation CitySelectorSection

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

- (id)layoutSectionForWorldwideUsingTraitsEnvironment:(id)a3 usingWidth:(double)a4
{
  v6 = a3;
  v7 = [(CitySelectorSection *)self sizeController];
  [v7 sectionInsets];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;

  v16 = ceil((a4 - (v15 + v11)) * 0.437317784);
  v17 = [NSCollectionLayoutDimension absoluteDimension:?];
  v18 = [NSCollectionLayoutDimension absoluteDimension:v16];
  v19 = [NSCollectionLayoutSize sizeWithWidthDimension:v17 heightDimension:v18];

  v20 = [NSCollectionLayoutItem itemWithLayoutSize:v19];
  v21 = [NSCollectionLayoutDimension absoluteDimension:v16];
  v22 = [NSCollectionLayoutDimension fractionalWidthDimension:1.0];
  v23 = [NSCollectionLayoutSize sizeWithWidthDimension:v22 heightDimension:v21];

  [(CitySelectorSection *)self configuration];
  v24 = [NSCollectionLayoutGroup horizontalGroupWithLayoutSize:v23 subitem:v20 count:v30];

  v25 = [(CitySelectorSection *)self sizeController];
  [v25 minimumInterItemSpacing];
  v26 = [NSCollectionLayoutSpacing fixedSpacing:?];
  [v24 setInterItemSpacing:v26];

  v27 = [NSCollectionLayoutSection sectionWithGroup:v24];
  v28 = [(CitySelectorSection *)self sizeController];
  [v28 minimumInterItemSpacing];
  [v27 setInterGroupSpacing:?];

  [v27 setContentInsets:{v9, v11, v13, v15}];

  return v27;
}

- (id)layoutSectionForCompactCollectionsUsingTraitsEnvironment:(id)a3 usingWidth:(double)a4
{
  v39 = a3;
  v6 = [(CitySelectorSection *)self sizeController];
  [v6 sizeForCollectionWithMaxCollectionsWidth:a4];
  v8 = v7;
  v10 = v9;

  v11 = [(CitySelectorSection *)self sizeController];
  [v11 sectionInsets];
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;

  v20 = [NSCollectionLayoutDimension absoluteDimension:v8];
  v21 = [NSCollectionLayoutDimension absoluteDimension:v10];
  v22 = [NSCollectionLayoutSize sizeWithWidthDimension:v20 heightDimension:v21];

  v23 = [NSCollectionLayoutItem itemWithLayoutSize:v22];
  v24 = [NSCollectionLayoutDimension estimatedDimension:260.0];
  v25 = [NSCollectionLayoutDimension fractionalWidthDimension:1.0];
  v26 = [NSCollectionLayoutSize sizeWithWidthDimension:v25 heightDimension:v24];

  [(CitySelectorSection *)self configuration];
  v27 = [NSCollectionLayoutGroup horizontalGroupWithLayoutSize:v26 subitem:v23 count:v40];

  v28 = [(CitySelectorSection *)self sizeController];
  [v28 minimumInterItemSpacing];
  v29 = [NSCollectionLayoutSpacing fixedSpacing:?];
  [v27 setInterItemSpacing:v29];

  v30 = [NSCollectionLayoutSection sectionWithGroup:v27];
  v31 = [(CitySelectorSection *)self sizeController];
  [v31 minimumInterItemSpacing];
  [v30 setInterGroupSpacing:?];

  [v30 setContentInsets:{v13, v15, v17, v19}];
  v32 = [NSCollectionLayoutDimension fractionalWidthDimension:1.0];
  v33 = [NSCollectionLayoutDimension absoluteDimension:40.0];
  v34 = [NSCollectionLayoutSize sizeWithWidthDimension:v32 heightDimension:v33];

  v35 = +[GuidesGenericSectionHeader reuseIdentifier];
  v36 = [NSCollectionLayoutBoundarySupplementaryItem boundarySupplementaryItemWithLayoutSize:v34 elementKind:v35 alignment:1];

  v42 = v36;
  v37 = [NSArray arrayWithObjects:&v42 count:1];
  [v30 setBoundarySupplementaryItems:v37];

  return v30;
}

- (void)initializeSizeControllerUsingTraitEnvironment:(id)a3
{
  v4 = self->_kind == 1;
  if (self->_kind == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  v6 = a3;
  v7 = [[MKPlaceCompactCollectionSizeController alloc] initWithCollectionsConfiguration:v4 usingTraitCollections:v5 inContext:{v6, 0}];

  sizeController = self->_sizeController;
  self->_sizeController = v7;
}

- (void)setupConfiguration
{
  v3 = [(CitySelectorSection *)self kind];
  v4 = @"Worldwide";
  v5 = @"CompactCollection";
  v6 = 2;
  if (v3)
  {
    v5 = 0;
    v6 = @"Worldwide";
    v7 = @"Worldwide";
  }

  else
  {
    v7 = 0;
  }

  if (v3 == 1)
  {
    v8 = 1;
  }

  else
  {
    v4 = v5;
    v8 = v6;
  }

  v10[0] = v8;
  v10[1] = v4;
  if (v3 == 1)
  {
    v9 = 1;
  }

  else
  {
    v9 = v7;
  }

  v10[2] = 0;
  v10[3] = v9;
  if (self)
  {
    [(CitySelectorSection *)self setConfiguration:v10];
  }
}

- (id)layoutForSectionUsingTraitsEnvironment:(id)a3 usingWidth:(double)a4
{
  v7 = a3;
  v8 = [(CitySelectorSection *)self kind];
  if (v8 == 1)
  {
    v9 = [(CitySelectorSection *)self layoutSectionForWorldwideUsingTraitsEnvironment:v7 usingWidth:a4];
  }

  else
  {
    if (v8)
    {
      goto LABEL_6;
    }

    v9 = [(CitySelectorSection *)self layoutSectionForCompactCollectionsUsingTraitsEnvironment:v7 usingWidth:a4];
  }

  v4 = v9;
LABEL_6:

  return v4;
}

- (CitySelectorSection)initWithSectionKind:(int64_t)a3 usingMaxWidth:(double)a4 usingTraitEnvironment:(id)a5
{
  v7 = a5;
  v11.receiver = self;
  v11.super_class = CitySelectorSection;
  v8 = [(CitySelectorSection *)&v11 init];
  v9 = v8;
  if (v8)
  {
    v8->_kind = a3;
    [(CitySelectorSection *)v8 setupConfiguration];
    [(CitySelectorSection *)v9 initializeSizeControllerUsingTraitEnvironment:v7];
  }

  return v9;
}

@end