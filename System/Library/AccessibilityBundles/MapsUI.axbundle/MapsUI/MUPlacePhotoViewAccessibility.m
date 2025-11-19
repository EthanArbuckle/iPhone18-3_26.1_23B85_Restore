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

  v5 = [v4 image];

  v6 = [v5 CGImage];
  if (v6)
  {
    DataProvider = CGImageGetDataProvider(v6);
    v8 = CGImageSourceCreateWithDataProvider(DataProvider, 0);
    v9 = MAImageCaptioningCopyCaptionWithSource();
    if (v8)
    {
      CFRelease(v8);
    }
  }

  else
  {
    v11.receiver = self;
    v11.super_class = MUPlacePhotoViewAccessibility;
    v9 = [(MUPlacePhotoViewAccessibility *)&v11 accessibilityLabel];
  }

  return v9;
}

@end