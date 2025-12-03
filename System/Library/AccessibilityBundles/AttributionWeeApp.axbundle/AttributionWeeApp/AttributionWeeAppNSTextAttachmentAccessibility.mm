@interface AttributionWeeAppNSTextAttachmentAccessibility
- (void)setImage:(id)image;
@end

@implementation AttributionWeeAppNSTextAttachmentAccessibility

- (void)setImage:(id)image
{
  imageCopy = image;
  v5.receiver = self;
  v5.super_class = AttributionWeeAppNSTextAttachmentAccessibility;
  [(AttributionWeeAppNSTextAttachmentAccessibility *)&v5 setImage:imageCopy];
  if (AXCaptureImageAttachmentSetYahooLogo == 1)
  {
    [imageCopy setAccessibilityLabel:@"Yahoo!"];
  }
}

@end