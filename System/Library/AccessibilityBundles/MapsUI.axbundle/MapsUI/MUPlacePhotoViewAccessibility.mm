@interface MUPlacePhotoViewAccessibility
- (id)accessibilityLabel;
@end

@implementation MUPlacePhotoViewAccessibility

- (id)accessibilityLabel
{
  v12 = 0;
  objc_opt_class();
  v3 = [(MUPlacePhotoViewAccessibility *)self safeValueForKey:@"imageView"];
  v4 = __UIAccessibilityCastAsClass();

  image = [v4 image];

  cGImage = [image CGImage];
  if (cGImage)
  {
    DataProvider = CGImageGetDataProvider(cGImage);
    v8 = CGImageSourceCreateWithDataProvider(DataProvider, 0);
    accessibilityLabel = MAImageCaptioningCopyCaptionWithSource();
    if (v8)
    {
      CFRelease(v8);
    }
  }

  else
  {
    v11.receiver = self;
    v11.super_class = MUPlacePhotoViewAccessibility;
    accessibilityLabel = [(MUPlacePhotoViewAccessibility *)&v11 accessibilityLabel];
  }

  return accessibilityLabel;
}

@end