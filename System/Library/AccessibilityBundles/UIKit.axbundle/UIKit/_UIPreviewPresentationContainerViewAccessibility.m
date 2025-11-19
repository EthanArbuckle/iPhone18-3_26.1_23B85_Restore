@interface _UIPreviewPresentationContainerViewAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (BOOL)accessibilityPerformEscape;
- (id)accessibilityElements;
@end

@implementation _UIPreviewPresentationContainerViewAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  location[2] = a1;
  location[1] = a2;
  v6 = location;
  obj = 0;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = @"_UIPreviewPresentationContainerView";
  v4 = "@";
  [location[0] validateClass:0 hasInstanceMethod:? withFullSignature:?];
  [location[0] validateClass:v3 hasInstanceMethod:@"contentView" withFullSignature:{v4, 0}];
  objc_storeStrong(v6, obj);
}

- (id)accessibilityElements
{
  v10 = self;
  v9[1] = a2;
  v9[0] = [MEMORY[0x29EDB8DE8] array];
  v4 = v9[0];
  v5 = [(_UIPreviewPresentationContainerViewAccessibility *)v10 safeValueForKey:@"platterView"];
  [v4 axSafelyAddObject:?];
  *&v2 = MEMORY[0x29EDC9740](v5).n128_u64[0];
  v6 = v9[0];
  v7 = [(_UIPreviewPresentationContainerViewAccessibility *)v10 safeValueForKey:@"contentView", v2];
  [v6 axSafelyAddObject:?];
  MEMORY[0x29EDC9740](v7);
  v8 = MEMORY[0x29EDC9748](v9[0]);
  objc_storeStrong(v9, 0);

  return v8;
}

- (BOOL)accessibilityPerformEscape
{
  UIAccessibilityPostNotification(*MEMORY[0x29EDC7438], MEMORY[0x29EDB8EA8]);
  AXPerformBlockOnMainThreadAfterDelay();
  v3 = [MEMORY[0x29EDBA068] defaultCenter];
  [v3 postNotificationName:@"accessibilityDismissActionSheet" object:0];
  MEMORY[0x29EDC9740](v3);
  return 1;
}

@end