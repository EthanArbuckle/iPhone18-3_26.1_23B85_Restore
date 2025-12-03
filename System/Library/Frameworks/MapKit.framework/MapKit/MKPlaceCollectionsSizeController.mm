@interface MKPlaceCollectionsSizeController
- ($0AC6E346AE4835514AAA8AC86D8F4844)collectionsConfiguration;
- (CGSize)sizeForCollectionWithMaxCollectionsWidth:(double)width;
- (MKPlaceCollectionsSizeController)initWithCollectionsConfiguration:(id)configuration isSingleCollection:(BOOL)collection usingTraitCollections:(id)collections inContext:(int64_t)context;
- (UIEdgeInsets)sectionInset;
- (double)minimumInterItemSpacing;
@end

@implementation MKPlaceCollectionsSizeController

- ($0AC6E346AE4835514AAA8AC86D8F4844)collectionsConfiguration
{
  collectionsPerRow = self->_collectionsConfiguration.collectionsPerRow;
  displayStyle = self->_collectionsConfiguration.displayStyle;
  result.var1 = collectionsPerRow;
  result.var0 = displayStyle;
  return result;
}

- (UIEdgeInsets)sectionInset
{
  top = self->_sectionInset.top;
  left = self->_sectionInset.left;
  bottom = self->_sectionInset.bottom;
  right = self->_sectionInset.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (double)minimumInterItemSpacing
{
  isMarzipan = [(MKPlaceCollectionsSizeController *)self isMarzipan];
  result = 10.0;
  if (isMarzipan)
  {
    return 8.0;
  }

  return result;
}

- (CGSize)sizeForCollectionWithMaxCollectionsWidth:(double)width
{
  [(MKPlaceCollectionsSizeController *)self sectionInset];
  v6 = v5;
  [(MKPlaceCollectionsSizeController *)self sectionInset];
  v8 = v7;
  [(MKPlaceCollectionsSizeController *)self collectionsConfiguration];
  v10 = v9;
  collectionsConfiguration = [(MKPlaceCollectionsSizeController *)self collectionsConfiguration];
  if (collectionsConfiguration == 2)
  {
    isSingleCollection = self->_isSingleCollection;
    [(MKPlaceCollectionsSizeController *)self sectionInset];
    v19 = v18;
    [(MKPlaceCollectionsSizeController *)self sectionInset];
    v21 = v19 + v20;
    if (isSingleCollection)
    {
      v6 = width - v21;
LABEL_12:
      [(MKPlaceCollectionsSizeController *)self defaultCollectionHeight];
      v12 = v27;
      goto LABEL_13;
    }

    [(MKPlaceCollectionsSizeController *)self collectionsConfiguration];
    v23 = (v22 - 1);
    [(MKPlaceCollectionsSizeController *)self minimumInterItemSpacing];
    v14 = width - (v21 + v23 * v24);
    [(MKPlaceCollectionsSizeController *)self collectionsConfiguration];
    v6 = v14 / v25;
    v16 = 0.65;
    goto LABEL_10;
  }

  v12 = v10;
  v13 = (v6 + v8) * v10;
  if (collectionsConfiguration == 1)
  {
    v14 = width - v13;
    [(MKPlaceCollectionsSizeController *)self collectionsConfiguration];
    v6 = v14 / v15;
    v16 = 0.524781341;
LABEL_10:
    v12 = ceil(v14 * v16) + 10.0;
    goto LABEL_13;
  }

  if (!collectionsConfiguration)
  {
    if (self->_isSingleCollection)
    {
      v6 = width - v13;
    }

    else
    {
      [(MKPlaceCollectionsSizeController *)self defaultCollectionWidth];
      v6 = v26;
    }

    goto LABEL_12;
  }

LABEL_13:
  v28 = v6;
  result.height = v12;
  result.width = v28;
  return result;
}

- (MKPlaceCollectionsSizeController)initWithCollectionsConfiguration:(id)configuration isSingleCollection:(BOOL)collection usingTraitCollections:(id)collections inContext:(int64_t)context
{
  collectionCopy = collection;
  var1 = configuration.var1;
  var0 = configuration.var0;
  collectionsCopy = collections;
  v22.receiver = self;
  v22.super_class = MKPlaceCollectionsSizeController;
  v12 = [(MKPlaceCollectionsSizeController *)&v22 init];
  v13 = v12;
  if (!v12)
  {
    goto LABEL_17;
  }

  v12->_collectionsConfiguration.displayStyle = var0;
  v12->_collectionsConfiguration.collectionsPerRow = var1;
  v12->_isSingleCollection = collectionCopy;
  traitCollection = [collectionsCopy traitCollection];
  v13->_isMarzipan = [traitCollection userInterfaceIdiom] == 5;

  if ((var0 - 1) < 2)
  {
    v15 = 16.0;
    v16 = 8.0;
    if (!v13->_isMarzipan)
    {
      v16 = 16.0;
    }

    goto LABEL_5;
  }

  if (var0)
  {
    goto LABEL_13;
  }

  if (context <= 5)
  {
    if (context != 1)
    {
      if (context != 3)
      {
        if (context == 4)
        {
          v15 = 15.0;
          v17 = 16.0;
          v16 = 12.0;
          goto LABEL_6;
        }

LABEL_25:
        v15 = 16.0;
        v16 = 10.0;
        v17 = 10.0;
        goto LABEL_6;
      }

      if ((MapsFeature_IsEnabled_Maps269() & 1) == 0)
      {
        goto LABEL_25;
      }

LABEL_24:
      v15 = 16.0;
      v17 = 8.0;
      v16 = 0.0;
      goto LABEL_6;
    }

LABEL_22:
    v15 = 16.0;
    v16 = 0.0;
    v17 = 0.0;
    goto LABEL_6;
  }

  if (context == 6)
  {
    goto LABEL_22;
  }

  if (context == 7)
  {
    goto LABEL_24;
  }

  if (context != 8)
  {
    goto LABEL_25;
  }

  v15 = 16.0;
  v16 = 6.0;
LABEL_5:
  v17 = 16.0;
LABEL_6:
  [(MKPlaceCollectionsSizeController *)v13 setSectionInset:v16, v15, v17, v15];
LABEL_13:
  IsEnabled_Maps269 = MapsFeature_IsEnabled_Maps269();
  v19 = 244.0;
  if (IsEnabled_Maps269 ^ 1 | collectionCopy)
  {
    v19 = 180.0;
    v20 = 280.0;
  }

  else
  {
    v20 = 192.0;
  }

  [(MKPlaceCollectionsSizeController *)v13 setDefaultCollectionHeight:v19];
  [(MKPlaceCollectionsSizeController *)v13 setDefaultCollectionWidth:v20];
LABEL_17:

  return v13;
}

@end