@interface NSCollectionLayoutSize
+ (NSCollectionLayoutSize)layoutSizeWithFractionalWidth:(double)width fractionalHeight:(double)height;
+ (NSCollectionLayoutSize)layoutSizeWithFractionalWidth:(double)width fractionalHeightUsingWidth:(double)usingWidth;
+ (NSCollectionLayoutSize)layoutSizeWithFractionalWidth:(double)width height:(double)height;
@end

@implementation NSCollectionLayoutSize

+ (NSCollectionLayoutSize)layoutSizeWithFractionalWidth:(double)width fractionalHeight:(double)height
{
  v5 = [NSCollectionLayoutDimension fractionalWidthDimension:width];
  v6 = [NSCollectionLayoutDimension fractionalHeightDimension:height];
  v7 = [NSCollectionLayoutSize sizeWithWidthDimension:v5 heightDimension:v6];

  return v7;
}

+ (NSCollectionLayoutSize)layoutSizeWithFractionalWidth:(double)width fractionalHeightUsingWidth:(double)usingWidth
{
  v5 = [NSCollectionLayoutDimension fractionalWidthDimension:width];
  v6 = [NSCollectionLayoutDimension fractionalWidthDimension:usingWidth];
  v7 = [NSCollectionLayoutSize sizeWithWidthDimension:v5 heightDimension:v6];

  return v7;
}

+ (NSCollectionLayoutSize)layoutSizeWithFractionalWidth:(double)width height:(double)height
{
  v5 = [NSCollectionLayoutDimension fractionalWidthDimension:width];
  v6 = [NSCollectionLayoutDimension absoluteDimension:height];
  v7 = [NSCollectionLayoutSize sizeWithWidthDimension:v5 heightDimension:v6];

  return v7;
}

@end