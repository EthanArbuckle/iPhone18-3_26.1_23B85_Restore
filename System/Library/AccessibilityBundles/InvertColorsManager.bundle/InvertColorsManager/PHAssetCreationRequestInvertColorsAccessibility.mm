@interface PHAssetCreationRequestInvertColorsAccessibility
+ (id)creationRequestForAssetFromScreenshotImage:(id)a3;
@end

@implementation PHAssetCreationRequestInvertColorsAccessibility

+ (id)creationRequestForAssetFromScreenshotImage:(id)a3
{
  v4 = a3;
  if (UIAccessibilityIsInvertColorsEnabled())
  {
    v5 = [AXInvertColorsAppHelper invertImage:v4];

    v4 = v5;
  }

  v8.receiver = a1;
  v8.super_class = &OBJC_METACLASS___PHAssetCreationRequestInvertColorsAccessibility;
  v6 = objc_msgSendSuper2(&v8, "creationRequestForAssetFromScreenshotImage:", v4);

  return v6;
}

@end