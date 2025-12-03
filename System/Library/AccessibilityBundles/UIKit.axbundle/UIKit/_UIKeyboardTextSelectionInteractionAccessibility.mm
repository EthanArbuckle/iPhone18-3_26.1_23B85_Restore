@interface _UIKeyboardTextSelectionInteractionAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (void)beginTwoFingerCursorPanWithTranslation:(CGPoint)translation executionContext:(id)context;
- (void)endTwoFingerPanWithExecutionContext:(id)context;
- (void)updateTwoFingerPanWithTranslation:(CGPoint)translation executionContext:(id)context;
@end

@implementation _UIKeyboardTextSelectionInteractionAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  location[2] = self;
  location[1] = a2;
  v8 = location;
  v7 = 0;
  location[0] = 0;
  objc_storeStrong(location, validations);
  v3 = "{CGPoint=dd}";
  v4 = "@";
  v5 = @"_UIKeyboardTextSelectionInteraction";
  v6 = "v";
  [location[0] validateClass:"{CGPoint=dd}" hasInstanceMethod:"@" withFullSignature:0];
  [location[0] validateClass:v5 hasInstanceMethod:@"updateTwoFingerPanWithTranslation:executionContext:" withFullSignature:{v6, v3, v4, 0}];
  [location[0] validateClass:v5 hasInstanceMethod:@"endTwoFingerPanWithExecutionContext:" withFullSignature:{v6, v4, 0}];
  objc_storeStrong(v8, v7);
}

- (void)beginTwoFingerCursorPanWithTranslation:(CGPoint)translation executionContext:(id)context
{
  translationCopy = translation;
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, context);
  v4.receiver = selfCopy;
  v4.super_class = _UIKeyboardTextSelectionInteractionAccessibility;
  [(_UIKeyboardTextSelectionInteractionAccessibility *)&v4 beginTwoFingerCursorPanWithTranslation:location[0] executionContext:translationCopy.x, translationCopy.y];
  UIAccessibilityPostNotification(0x43Au, 0);
  objc_storeStrong(location, 0);
}

- (void)updateTwoFingerPanWithTranslation:(CGPoint)translation executionContext:(id)context
{
  translationCopy = translation;
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, context);
  v4.receiver = selfCopy;
  v4.super_class = _UIKeyboardTextSelectionInteractionAccessibility;
  [(_UIKeyboardTextSelectionInteractionAccessibility *)&v4 updateTwoFingerPanWithTranslation:location[0] executionContext:translationCopy.x, translationCopy.y];
  if (!(++updateTwoFingerPanWithTranslation_executionContext__count % 3))
  {
    UIAccessibilityPostNotification(0x439u, 0);
    updateTwoFingerPanWithTranslation_executionContext__count = 0;
  }

  objc_storeStrong(location, 0);
}

- (void)endTwoFingerPanWithExecutionContext:(id)context
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, context);
  v3.receiver = selfCopy;
  v3.super_class = _UIKeyboardTextSelectionInteractionAccessibility;
  [(_UIKeyboardTextSelectionInteractionAccessibility *)&v3 endTwoFingerPanWithExecutionContext:location[0]];
  UIAccessibilityPostNotification(0x43Bu, 0);
  objc_storeStrong(location, 0);
}

@end