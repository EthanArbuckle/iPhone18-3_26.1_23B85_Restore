@interface PHAssetCreationRequestInvertColorsAccessibility
+ (id)creationRequestForAssetFromScreenshotImage:(id)image;
@end

@implementation PHAssetCreationRequestInvertColorsAccessibility

+ (id)creationRequestForAssetFromScreenshotImage:(id)image
{
  imageCopy = image;
  if (UIAccessibilityIsInvertColorsEnabled())
  {
    v5 = [AXInvertColorsAppHelper invertImage:imageCopy];

    imageCopy = v5;
  }

  v8.receiver = self;
  v8.super_class = &OBJC_METACLASS___PHAssetCreationRequestInvertColorsAccessibility;
  v6 = objc_msgSendSuper2(&v8, "creationRequestForAssetFromScreenshotImage:", imageCopy);

  return v6;
}

@end