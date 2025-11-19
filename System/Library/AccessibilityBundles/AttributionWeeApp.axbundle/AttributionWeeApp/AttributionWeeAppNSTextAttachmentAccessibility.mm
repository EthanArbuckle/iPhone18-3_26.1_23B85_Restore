@interface AttributionWeeAppNSTextAttachmentAccessibility
- (void)setImage:(id)a3;
@end

@implementation AttributionWeeAppNSTextAttachmentAccessibility

- (void)setImage:(id)a3
{
  v4 = a3;
  v5.receiver = self;
  v5.super_class = AttributionWeeAppNSTextAttachmentAccessibility;
  [(AttributionWeeAppNSTextAttachmentAccessibility *)&v5 setImage:v4];
  if (AXCaptureImageAttachmentSetYahooLogo == 1)
  {
    [v4 setAccessibilityLabel:@"Yahoo!"];
  }
}

@end