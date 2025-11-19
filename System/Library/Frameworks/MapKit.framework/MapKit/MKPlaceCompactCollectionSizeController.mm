@interface MKPlaceCompactCollectionSizeController
- ($0AC6E346AE4835514AAA8AC86D8F4844)configuration;
- (CGSize)sizeForCollectionWithMaxCollectionsWidth:(double)a3;
- (MKPlaceCompactCollectionSizeController)initWithCollectionsConfiguration:(id)a3 usingTraitCollections:(id)a4 inContext:(int64_t)a5;
- (UIEdgeInsets)sectionInset;
@end

@implementation MKPlaceCompactCollectionSizeController

- ($0AC6E346AE4835514AAA8AC86D8F4844)configuration
{
  collectionsPerRow = self->_configuration.collectionsPerRow;
  displayStyle = self->_configuration.displayStyle;
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

- (CGSize)sizeForCollectionWithMaxCollectionsWidth:(double)a3
{
  [(MKPlaceCompactCollectionSizeController *)self sectionInset];
  v7 = v6;
  [(MKPlaceCompactCollectionSizeController *)self sectionInset];
  v9 = v8;
  [(MKPlaceCompactCollectionSizeController *)self configuration];
  v11 = v10;
  v12 = [(MKPlaceCompactCollectionSizeController *)self configuration];
  if (v12 == 1)
  {
    [(MKPlaceCompactCollectionSizeController *)self defaultCompactCollectionWidth];
    v3 = v16;
    [(MKPlaceCompactCollectionSizeController *)self defaultCompactCollectionHeight];
    v13 = v17;
  }

  else if (!v12)
  {
    v14 = a3 - (v7 + v9) * (v11 - 1);
    [(MKPlaceCompactCollectionSizeController *)self configuration];
    v3 = v14 / v15;
    v13 = ceil(v14 * 0.3) + 10.0;
  }

  v18 = v3;
  result.height = v13;
  result.width = v18;
  return result;
}

- (MKPlaceCompactCollectionSizeController)initWithCollectionsConfiguration:(id)a3 usingTraitCollections:(id)a4 inContext:(int64_t)a5
{
  var1 = a3.var1;
  var0 = a3.var0;
  v16.receiver = self;
  v16.super_class = MKPlaceCompactCollectionSizeController;
  v8 = [(MKPlaceCompactCollectionSizeController *)&v16 init:a3.var0];
  v9 = v8;
  if (v8)
  {
    v8->_configuration.displayStyle = var0;
    v8->_configuration.collectionsPerRow = var1;
    v10 = 6.0;
    v8->_context = a5;
    switch(a5)
    {
      case 0:
        v11 = 16.0;
        v14 = 10.0;
        v12 = 166.0;
        v13 = 114.0;
        goto LABEL_8;
      case 2:
        v11 = 16.0;
        v14 = 30.0;
        v12 = 150.0;
        v13 = 200.0;
        goto LABEL_8;
      case 1:
        v11 = 16.0;
        v10 = 0.0;
        v12 = 150.0;
        v13 = 200.0;
        v14 = 0.0;
LABEL_8:
        [(MKPlaceCompactCollectionSizeController *)v8 setDefaultCompactCollectionHeight:v13];
        [(MKPlaceCompactCollectionSizeController *)v9 setDefaultCompactCollectionWidth:v12];
        [(MKPlaceCompactCollectionSizeController *)v9 setSectionInset:v10, v11, v14, v11];
        break;
    }
  }

  return v9;
}

@end