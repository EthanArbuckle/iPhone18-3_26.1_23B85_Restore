@interface _UIFocusEventRecognizerAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (BOOL)_moveWithEvent:(id)event;
@end

@implementation _UIFocusEventRecognizerAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, validations);
  [location[0] validateClass:"Q" hasInstanceMethod:"q" withFullSignature:0];
  [location[0] validateClass:@"_UIFocusEventRecognizer" hasInstanceMethod:@"owningView" withFullSignature:0];
  [location[0] validateClass:@"_UIFocusEventRecognizer" hasInstanceMethod:@"_moveWithEvent:" withFullSignature:{"B", "@", 0}];
  [location[0] validateClass:@"UIEvent" hasInstanceMethod:@"_focusHeading" withFullSignature:{"Q", 0}];
  if (AXProcessIsPineBoard())
  {
    [location[0] validateClass:@"PBSceneLayoutWindow"];
  }

  objc_storeStrong(location, 0);
}

- (BOOL)_moveWithEvent:(id)event
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, event);
  v5.receiver = selfCopy;
  v5.super_class = _UIFocusEventRecognizerAccessibility;
  v4 = [(_UIFocusEventRecognizerAccessibility *)&v5 _moveWithEvent:location[0]];
  objc_storeStrong(location, 0);
  return v4;
}

@end