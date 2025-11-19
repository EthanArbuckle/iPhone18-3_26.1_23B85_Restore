@interface UIUndoGestureInteractionAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (void)setUndoHUDType:(int64_t)a3 visibility:(BOOL)a4;
@end

@implementation UIUndoGestureInteractionAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  location[2] = a1;
  location[1] = a2;
  v4 = location;
  obj = 0;
  location[0] = 0;
  objc_storeStrong(location, a3);
  [location[0] validateClass:@"UIUndoGestureInteraction" hasInstanceMethod:@"setUndoHUDType:visibility:" withFullSignature:{"v", "q", "B", 0}];
  objc_storeStrong(v4, obj);
}

- (void)setUndoHUDType:(int64_t)a3 visibility:(BOOL)a4
{
  v8 = self;
  v7 = a2;
  v6 = a3;
  v5 = a4;
  v4.receiver = self;
  v4.super_class = UIUndoGestureInteractionAccessibility;
  [(UIUndoGestureInteractionAccessibility *)&v4 setUndoHUDType:a3 visibility:a4];
  UIAccessibilityPostNotification(*MEMORY[0x29EDC7ED8], 0);
}

@end