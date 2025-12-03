@interface _UIPreviewPresentationContainerViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (BOOL)accessibilityPerformEscape;
- (id)accessibilityElements;
@end

@implementation _UIPreviewPresentationContainerViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  location[2] = self;
  location[1] = a2;
  v6 = location;
  obj = 0;
  location[0] = 0;
  objc_storeStrong(location, validations);
  v3 = @"_UIPreviewPresentationContainerView";
  v4 = "@";
  [location[0] validateClass:0 hasInstanceMethod:? withFullSignature:?];
  [location[0] validateClass:v3 hasInstanceMethod:@"contentView" withFullSignature:{v4, 0}];
  objc_storeStrong(v6, obj);
}

- (id)accessibilityElements
{
  selfCopy = self;
  v9[1] = a2;
  v9[0] = [MEMORY[0x29EDB8DE8] array];
  v4 = v9[0];
  v5 = [(_UIPreviewPresentationContainerViewAccessibility *)selfCopy safeValueForKey:@"platterView"];
  [v4 axSafelyAddObject:?];
  *&v2 = MEMORY[0x29EDC9740](v5).n128_u64[0];
  v6 = v9[0];
  v7 = [(_UIPreviewPresentationContainerViewAccessibility *)selfCopy safeValueForKey:@"contentView", v2];
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
  defaultCenter = [MEMORY[0x29EDBA068] defaultCenter];
  [defaultCenter postNotificationName:@"accessibilityDismissActionSheet" object:0];
  MEMORY[0x29EDC9740](defaultCenter);
  return 1;
}

@end