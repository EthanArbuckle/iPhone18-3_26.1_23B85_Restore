@interface TUIRatingsBox
+ (CGSize)imageSizeForSize:(unint64_t)size;
+ (CGSize)starSizeForSize:(unint64_t)size;
+ (CGSize)starSizeForSize:(unint64_t)size layoutSize:(CGSize)layoutSize;
+ (double)spacingForSize:(unint64_t)size;
+ (double)spacingForSize:(unint64_t)size layoutSize:(CGSize)layoutSize;
+ (id)starRatingImage:(unint64_t)image size:(unint64_t)size fromCache:(id)cache withScale:(double)scale;
+ (id)starRatingImageNameFromKind:(unint64_t)kind;
+ (unint64_t)backgroundKindFromString:(id)string;
+ (unint64_t)sizeFromWidth:(id *)width;
- (TUIRatingsBox)init;
- (double)rating;
- (void)setRating:(double)rating;
@end

@implementation TUIRatingsBox

- (TUIRatingsBox)init
{
  v3.receiver = self;
  v3.super_class = TUIRatingsBox;
  result = [(TUIStatefulElementBox *)&v3 init];
  if (result)
  {
    result->super.super.super._storage._data = TUIRatingsBoxStorageDataset | 1;
  }

  return result;
}

- (void)setRating:(double)rating
{
  ratingCopy = rating;
  if (ratingCopy == 0.0)
  {
    v5 = TUI::Util::PartialStruct::Storage::dataForKey(&self->super.super.super._storage, 0x25u);
    if (!v5)
    {
      return;
    }

    DataForKey = v5;
    TUI::Util::PartialStruct::Storage::markAsDefault(&self->super.super.super._storage._data, 0x25u);
  }

  else
  {
    DataForKey = TUI::Util::PartialStruct::Storage::allocateDataForKey(&self->super.super.super._storage, 0x25u, 4uLL, 1);
    if (!DataForKey)
    {
      return;
    }
  }

  *DataForKey = ratingCopy;
}

- (double)rating
{
  v2 = TUI::Util::PartialStruct::Storage::dataForKey(&self->super.super.super._storage, 0x25u);
  if (v2)
  {
    return *v2;
  }

  else
  {
    return 0.0;
  }
}

+ (unint64_t)sizeFromWidth:(id *)width
{
  v3 = *&width;
  [TUIRatingsBox imageSizeForSize:0];
  result = 0;
  if (v5 < v3)
  {
    [TUIRatingsBox imageSizeForSize:1];
    if (v6 >= v3)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }

  return result;
}

+ (double)spacingForSize:(unint64_t)size
{
  result = 4.0;
  if (size == 1)
  {
    result = 9.0;
  }

  if (size == 2)
  {
    return 13.0;
  }

  return result;
}

+ (CGSize)starSizeForSize:(unint64_t)size
{
  v3 = 12.0;
  if (size == 1)
  {
    v3 = 24.0;
  }

  if (size == 2)
  {
    v3 = 36.0;
  }

  v4 = v3;
  result.height = v4;
  result.width = v3;
  return result;
}

+ (CGSize)imageSizeForSize:(unint64_t)size
{
  [TUIRatingsBox starSizeForSize:?];
  v5 = v4;
  v7 = v6 * 5.0;
  [TUIRatingsBox spacingForSize:size];
  v9 = v7 + v8 * 4.0;
  v10 = v5;
  result.height = v10;
  result.width = v9;
  return result;
}

+ (double)spacingForSize:(unint64_t)size layoutSize:(CGSize)layoutSize
{
  height = layoutSize.height;
  width = layoutSize.width;
  [self spacingForSize:?];
  v9 = v8;
  [self imageSizeForSize:size];
  v11 = width / v10;
  v13 = height / v12;
  if (v11 >= v13)
  {
    v11 = v13;
  }

  return v9 * v11;
}

+ (CGSize)starSizeForSize:(unint64_t)size layoutSize:(CGSize)layoutSize
{
  height = layoutSize.height;
  width = layoutSize.width;
  [self starSizeForSize:?];
  v9 = v8;
  v11 = v10;
  [self imageSizeForSize:size];
  v13 = width / v12;
  v15 = height / v14;
  if (v13 < v15)
  {
    v15 = v13;
  }

  v16 = v9 * v15;
  v17 = v11 * v15;
  result.height = v17;
  result.width = v16;
  return result;
}

+ (id)starRatingImageNameFromKind:(unint64_t)kind
{
  if (kind > 2)
  {
    v4 = 0;
  }

  else
  {
    v4 = [[NSString alloc] initWithFormat:off_25EDD8[kind]];
  }

  return v4;
}

+ (id)starRatingImage:(unint64_t)image size:(unint64_t)size fromCache:(id)cache withScale:(double)scale
{
  cacheCopy = cache;
  v10 = [objc_opt_class() starRatingImageNameFromKind:image];
  [objc_opt_class() starSizeForSize:size];
  v12 = v11;
  if (UIAccessibilityIsBoldTextEnabled())
  {
    v13 = 7;
  }

  else
  {
    v13 = 0;
  }

  LOBYTE(v17) = 1;
  v14 = [cacheCopy symbolImageWithName:v10 compatibleWithFontSize:v13 weight:0 scale:0 renderingMode:0 colors:0 style:v12 contentsScale:scale layoutDirection:UIEdgeInsetsZero.top insets:UIEdgeInsetsZero.left baseline:{UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right, 0, v17}];
  newImageWithoutContentInsets = [v14 newImageWithoutContentInsets];

  return newImageWithoutContentInsets;
}

+ (unint64_t)backgroundKindFromString:(id)string
{
  if ([string isEqualToString:@"solid"])
  {
    return 2;
  }

  else
  {
    return 0;
  }
}

@end