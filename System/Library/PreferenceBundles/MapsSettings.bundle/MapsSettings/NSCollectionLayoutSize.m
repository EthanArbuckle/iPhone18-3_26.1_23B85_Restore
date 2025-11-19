@interface NSCollectionLayoutSize
+ (NSCollectionLayoutSize)layoutSizeWithFractionalWidth:(double)a3 fractionalHeight:(double)a4;
+ (NSCollectionLayoutSize)layoutSizeWithFractionalWidth:(double)a3 fractionalHeightUsingWidth:(double)a4;
+ (NSCollectionLayoutSize)layoutSizeWithFractionalWidth:(double)a3 height:(double)a4;
@end

@implementation NSCollectionLayoutSize

+ (NSCollectionLayoutSize)layoutSizeWithFractionalWidth:(double)a3 fractionalHeight:(double)a4
{
  v5 = [NSCollectionLayoutDimension fractionalWidthDimension:a3];
  v6 = [NSCollectionLayoutDimension fractionalHeightDimension:a4];
  v7 = [NSCollectionLayoutSize sizeWithWidthDimension:v5 heightDimension:v6];

  return v7;
}

+ (NSCollectionLayoutSize)layoutSizeWithFractionalWidth:(double)a3 fractionalHeightUsingWidth:(double)a4
{
  v5 = [NSCollectionLayoutDimension fractionalWidthDimension:a3];
  v6 = [NSCollectionLayoutDimension fractionalWidthDimension:a4];
  v7 = [NSCollectionLayoutSize sizeWithWidthDimension:v5 heightDimension:v6];

  return v7;
}

+ (NSCollectionLayoutSize)layoutSizeWithFractionalWidth:(double)a3 height:(double)a4
{
  v5 = [NSCollectionLayoutDimension fractionalWidthDimension:a3];
  v6 = [NSCollectionLayoutDimension absoluteDimension:a4];
  v7 = [NSCollectionLayoutSize sizeWithWidthDimension:v5 heightDimension:v6];

  return v7;
}

@end