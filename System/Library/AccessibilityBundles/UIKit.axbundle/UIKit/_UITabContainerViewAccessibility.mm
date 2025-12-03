@interface _UITabContainerViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (BOOL)accessibilityViewIsModal;
- (void)updateEditModeAppearanceAnimated:(BOOL)animated;
@end

@implementation _UITabContainerViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  location[2] = self;
  location[1] = a2;
  v6 = location;
  obj = 0;
  location[0] = 0;
  objc_storeStrong(location, validations);
  v3 = @"_UITabContainerView";
  v4 = "B";
  [location[0] validateClass:0 hasInstanceMethod:? withFullSignature:?];
  [location[0] validateClass:v3 hasInstanceMethod:@"updateEditModeAppearanceAnimated:" withFullSignature:{"v", v4, 0}];
  [location[0] validateClass:v3 hasInstanceMethod:@"tabModel" withFullSignature:{"@", 0}];
  [location[0] validateClass:@"_UITabModel" hasInstanceMethod:@"isEditing" withFullSignature:{v4, 0}];
  objc_storeStrong(v6, obj);
}

- (BOOL)accessibilityViewIsModal
{
  selfCopy = self;
  v6 = a2;
  v4 = [(_UITabContainerViewAccessibility *)self safeValueForKey:@"tabModel"];
  if ([v4 safeBoolForKey:@"isEditing"])
  {
    accessibilityViewIsModal = [(_UITabContainerViewAccessibility *)selfCopy safeBoolForKey:@"_isShowingSidebar"];
  }

  else
  {
    v5.receiver = selfCopy;
    v5.super_class = _UITabContainerViewAccessibility;
    accessibilityViewIsModal = [(_UITabContainerViewAccessibility *)&v5 accessibilityViewIsModal];
  }

  MEMORY[0x29EDC9740](v4);
  return accessibilityViewIsModal != 0;
}

- (void)updateEditModeAppearanceAnimated:(BOOL)animated
{
  selfCopy = self;
  v8 = a2;
  animatedCopy = animated;
  v6.receiver = self;
  v6.super_class = _UITabContainerViewAccessibility;
  [(_UITabContainerViewAccessibility *)&v6 updateEditModeAppearanceAnimated:animated];
  v4 = MEMORY[0x29EDCA578];
  v3 = MEMORY[0x29EDCA578];
  v5 = v4;
  dispatch_async(v5, &__block_literal_global_2);
  MEMORY[0x29EDC9740](v5);
}

@end