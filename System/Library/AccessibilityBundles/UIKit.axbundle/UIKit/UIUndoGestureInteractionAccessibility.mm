@interface UIUndoGestureInteractionAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (void)setUndoHUDType:(int64_t)type visibility:(BOOL)visibility;
@end

@implementation UIUndoGestureInteractionAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  location[2] = self;
  location[1] = a2;
  v4 = location;
  obj = 0;
  location[0] = 0;
  objc_storeStrong(location, validations);
  [location[0] validateClass:@"UIUndoGestureInteraction" hasInstanceMethod:@"setUndoHUDType:visibility:" withFullSignature:{"v", "q", "B", 0}];
  objc_storeStrong(v4, obj);
}

- (void)setUndoHUDType:(int64_t)type visibility:(BOOL)visibility
{
  selfCopy = self;
  v7 = a2;
  typeCopy = type;
  visibilityCopy = visibility;
  v4.receiver = self;
  v4.super_class = UIUndoGestureInteractionAccessibility;
  [(UIUndoGestureInteractionAccessibility *)&v4 setUndoHUDType:type visibility:visibility];
  UIAccessibilityPostNotification(*MEMORY[0x29EDC7ED8], 0);
}

@end