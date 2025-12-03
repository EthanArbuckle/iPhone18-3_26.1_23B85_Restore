@interface ZoomUI_SBReachabilityGestureRecognizer
- (void)touchesBegan:(id)began withEvent:(id)event;
@end

@implementation ZoomUI_SBReachabilityGestureRecognizer

- (void)touchesBegan:(id)began withEvent:(id)event
{
  eventCopy = event;
  beganCopy = began;
  anyObject = [beganCopy anyObject];
  [anyObject setAccessibilityIdentifier:@"AXSBReachabilityTouch"];

  v9.receiver = self;
  v9.super_class = ZoomUI_SBReachabilityGestureRecognizer;
  [(ZoomUI_SBReachabilityGestureRecognizer *)&v9 touchesBegan:beganCopy withEvent:eventCopy];
}

@end