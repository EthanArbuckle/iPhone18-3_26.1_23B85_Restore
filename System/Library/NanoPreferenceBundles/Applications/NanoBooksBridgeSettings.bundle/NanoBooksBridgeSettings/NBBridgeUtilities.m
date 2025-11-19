@interface NBBridgeUtilities
+ (BOOL)isExplicitMaterialAllowed;
+ (CGSize)addAudiobookIconSize;
+ (CGSize)placeholderIconSize;
+ (id)audiobookArtworkPlaceholderImage;
@end

@implementation NBBridgeUtilities

+ (CGSize)addAudiobookIconSize
{
  v2 = 24.0;
  v3 = 24.0;
  result.height = v3;
  result.width = v2;
  return result;
}

+ (CGSize)placeholderIconSize
{
  v2 = 144.0;
  v3 = 144.0;
  result.height = v3;
  result.width = v2;
  return result;
}

+ (id)audiobookArtworkPlaceholderImage
{
  v2 = NBBundle();
  v3 = [UIImage imageNamed:@"MissingArtworkHeadphones" inBundle:v2];
  v4 = [v3 imageWithRenderingMode:2];

  +[NMBUIMediaTableCell artworkSize];
  v6 = v5;
  +[NMBUIMediaTableCell artworkSize];
  height = v13.height;
  v13.width = v6;
  UIGraphicsBeginImageContextWithOptions(v13, 1, 0.0);
  v8 = +[NBBridgeUtilities addAudiobookBackgroundColor];
  [v8 set];

  v14.origin.x = 0.0;
  v14.origin.y = 0.0;
  v14.size.width = v6;
  v14.size.height = height;
  UIRectFill(v14);
  v9 = +[NBBridgeUtilities placeholderTintColor];
  [v9 set];

  [v4 drawInRect:{0.0, 0.0, v6, height}];
  v10 = UIGraphicsGetImageFromCurrentImageContext();

  UIGraphicsEndImageContext();

  return v10;
}

+ (BOOL)isExplicitMaterialAllowed
{
  v2 = +[MCProfileConnection sharedConnection];
  v3 = [v2 effectiveBoolValueForSetting:MCFeatureBookstoreEroticaAllowed];

  return v3 != 2;
}

@end