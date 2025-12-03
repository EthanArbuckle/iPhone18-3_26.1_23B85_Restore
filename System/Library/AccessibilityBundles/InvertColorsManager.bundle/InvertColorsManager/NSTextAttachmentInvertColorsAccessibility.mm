@interface NSTextAttachmentInvertColorsAccessibility
- (void)setImage:(id)image;
@end

@implementation NSTextAttachmentInvertColorsAccessibility

- (void)setImage:(id)image
{
  imageCopy = image;
  if (([(NSTextAttachmentInvertColorsAccessibility *)self _accessibilityBoolValueForKey:@"IsInvertingImage"]& 1) == 0)
  {
    v5 = [AXInvertColorsAppHelper invertImage:imageCopy];

    if (v5)
    {
      [(NSTextAttachmentInvertColorsAccessibility *)self _accessibilitySetBoolValue:UIAccessibilityIsInvertColorsEnabled() forKey:@"InvertState"];
      imageCopy = v5;
    }

    else
    {
      imageCopy = 0;
    }
  }

  v6.receiver = self;
  v6.super_class = NSTextAttachmentInvertColorsAccessibility;
  [(NSTextAttachmentInvertColorsAccessibility *)&v6 setImage:imageCopy];
}

@end