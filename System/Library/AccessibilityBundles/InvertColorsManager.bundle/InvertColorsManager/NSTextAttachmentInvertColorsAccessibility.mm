@interface NSTextAttachmentInvertColorsAccessibility
- (void)setImage:(id)a3;
@end

@implementation NSTextAttachmentInvertColorsAccessibility

- (void)setImage:(id)a3
{
  v4 = a3;
  if (([(NSTextAttachmentInvertColorsAccessibility *)self _accessibilityBoolValueForKey:@"IsInvertingImage"]& 1) == 0)
  {
    v5 = [AXInvertColorsAppHelper invertImage:v4];

    if (v5)
    {
      [(NSTextAttachmentInvertColorsAccessibility *)self _accessibilitySetBoolValue:UIAccessibilityIsInvertColorsEnabled() forKey:@"InvertState"];
      v4 = v5;
    }

    else
    {
      v4 = 0;
    }
  }

  v6.receiver = self;
  v6.super_class = NSTextAttachmentInvertColorsAccessibility;
  [(NSTextAttachmentInvertColorsAccessibility *)&v6 setImage:v4];
}

@end