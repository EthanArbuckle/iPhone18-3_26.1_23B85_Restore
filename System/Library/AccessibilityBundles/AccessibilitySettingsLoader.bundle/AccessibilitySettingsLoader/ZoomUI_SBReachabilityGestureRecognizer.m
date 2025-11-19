@interface ZoomUI_SBReachabilityGestureRecognizer
- (void)touchesBegan:(id)a3 withEvent:(id)a4;
@end

@implementation ZoomUI_SBReachabilityGestureRecognizer

- (void)touchesBegan:(id)a3 withEvent:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [v7 anyObject];
  [v8 setAccessibilityIdentifier:@"AXSBReachabilityTouch"];

  v9.receiver = self;
  v9.super_class = ZoomUI_SBReachabilityGestureRecognizer;
  [(ZoomUI_SBReachabilityGestureRecognizer *)&v9 touchesBegan:v7 withEvent:v6];
}

@end