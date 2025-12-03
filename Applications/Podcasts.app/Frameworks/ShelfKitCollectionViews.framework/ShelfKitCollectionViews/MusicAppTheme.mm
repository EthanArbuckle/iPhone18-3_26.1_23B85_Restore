@interface MusicAppTheme
+ (id)addButtonImageWithPointSize:(double)size traitCollection:(id)collection;
+ (id)cloudDownloadImageForTintColor:(id)color pointSize:(double)size traitCollection:(id)collection;
+ (id)pauseButtonImageWithTraitCollection:(id)collection;
+ (id)resumeButtonImageWithTraitCollection:(id)collection;
+ (id)stopButtonImageWithTraitCollection:(id)collection;
@end

@implementation MusicAppTheme

+ (id)stopButtonImageWithTraitCollection:(id)collection
{
  collectionCopy = collection;
  v4 = [UIImageSymbolConfiguration configurationWithPointSize:8.0];
  v5 = [UIImage systemImageNamed:@"square.fill" compatibleWithTraitCollection:collectionCopy];

  v6 = [v5 imageWithSymbolConfiguration:v4];
  v7 = [v6 imageWithRenderingMode:2];

  return v7;
}

+ (id)pauseButtonImageWithTraitCollection:(id)collection
{
  collectionCopy = collection;
  v4 = [UIImageSymbolConfiguration configurationWithPointSize:8.0];
  v5 = [UIImage systemImageNamed:@"pause.fill" compatibleWithTraitCollection:collectionCopy];

  v6 = [v5 imageWithSymbolConfiguration:v4];
  v7 = [v6 imageWithRenderingMode:2];

  return v7;
}

+ (id)resumeButtonImageWithTraitCollection:(id)collection
{
  collectionCopy = collection;
  v4 = [UIImageSymbolConfiguration configurationWithPointSize:12.0];
  v5 = [UIImage systemImageNamed:@"arrow.down" compatibleWithTraitCollection:collectionCopy];

  v6 = [v5 imageWithSymbolConfiguration:v4];
  v7 = [v6 imageWithRenderingMode:2];

  return v7;
}

+ (id)addButtonImageWithPointSize:(double)size traitCollection:(id)collection
{
  collectionCopy = collection;
  v6 = [UIImageSymbolConfiguration configurationWithPointSize:6 weight:size];
  v7 = [UIImage systemImageNamed:@"plus" compatibleWithTraitCollection:collectionCopy];

  v8 = [v7 imageWithSymbolConfiguration:v6];
  v9 = [v8 imageWithRenderingMode:2];

  return v9;
}

+ (id)cloudDownloadImageForTintColor:(id)color pointSize:(double)size traitCollection:(id)collection
{
  collectionCopy = collection;
  colorCopy = color;
  v9 = [UIImageSymbolConfiguration configurationWithPointSize:size];
  v10 = [UIImage systemImageNamed:@"icloud.and.arrow.down" compatibleWithTraitCollection:collectionCopy];

  v11 = [v10 imageWithSymbolConfiguration:v9];
  v12 = [v11 flattenedImageWithColor:colorCopy];

  return v12;
}

@end