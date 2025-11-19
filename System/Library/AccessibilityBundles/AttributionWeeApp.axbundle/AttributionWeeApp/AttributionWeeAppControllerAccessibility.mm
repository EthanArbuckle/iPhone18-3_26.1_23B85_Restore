@interface AttributionWeeAppControllerAccessibility
- (id)_stocksAttributionAttributionString;
@end

@implementation AttributionWeeAppControllerAccessibility

- (id)_stocksAttributionAttributionString
{
  AXCaptureImageAttachmentSetYahooLogo = 1;
  v4.receiver = self;
  v4.super_class = AttributionWeeAppControllerAccessibility;
  v2 = [(AttributionWeeAppControllerAccessibility *)&v4 _stocksAttributionAttributionString];
  AXCaptureImageAttachmentSetYahooLogo = 0;

  return v2;
}

@end