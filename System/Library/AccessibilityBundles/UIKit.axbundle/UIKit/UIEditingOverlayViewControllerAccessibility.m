@interface UIEditingOverlayViewControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (BOOL)accessibilityPerformEscape;
@end

@implementation UIEditingOverlayViewControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  location[2] = a1;
  location[1] = a2;
  v6 = location;
  obj = 0;
  location[0] = 0;
  objc_storeStrong(location, a3);
  [location[0] validateClass:@"UIEditingOverlayViewController" hasInstanceMethod:@"undoInteraction" withFullSignature:{"@", 0}];
  v4 = "B";
  v3 = @"UIUndoGestureInteraction";
  [location[0] validateClass:"B" hasInstanceMethod:0 withFullSignature:?];
  [location[0] validateClass:v3 hasInstanceMethod:@"currentInteractiveHUDVisible" withFullSignature:{v4, 0}];
  objc_storeStrong(v6, obj);
}

- (BOOL)accessibilityPerformEscape
{
  v6[2] = self;
  v6[1] = a2;
  v6[0] = [(UIEditingOverlayViewControllerAccessibility *)self safeValueForKey:@"undoInteraction"];
  v5 = [v6[0] safeBoolForKey:@"currentInteractiveHUDVisible"];
  if (v5)
  {
    v4 = MEMORY[0x29EDC9748](v6[0]);
    AXPerformSafeBlock();
    objc_storeStrong(&v4, 0);
  }

  v3 = v5;
  objc_storeStrong(v6, 0);
  return v3 & 1;
}

@end