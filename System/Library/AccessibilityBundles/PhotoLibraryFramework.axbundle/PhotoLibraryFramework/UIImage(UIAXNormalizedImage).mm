@interface UIImage(UIAXNormalizedImage)
- (id)normalizedImageWithScale:()UIAXNormalizedImage;
@end

@implementation UIImage(UIAXNormalizedImage)

- (id)normalizedImageWithScale:()UIAXNormalizedImage
{
  [self size];
  v4 = a2;
  v6 = v5 * a2;
  [self size];
  v8 = v7 * v4;
  [self scale];
  v10 = v9;
  v17.width = v6;
  v17.height = v8;
  UIGraphicsBeginImageContextWithOptions(v17, 0, v10);
  [self size];
  v12 = v11 * v4;
  [self size];
  [self drawInRect:{0.0, 0.0, v12, v13 * v4}];
  v14 = UIGraphicsGetImageFromCurrentImageContext();
  UIGraphicsEndImageContext();

  return v14;
}

@end