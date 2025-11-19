@interface _UITabContainerViewAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (BOOL)accessibilityViewIsModal;
- (void)updateEditModeAppearanceAnimated:(BOOL)a3;
@end

@implementation _UITabContainerViewAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  location[2] = a1;
  location[1] = a2;
  v6 = location;
  obj = 0;
  location[0] = 0;
  objc_storeStrong(location, a3);
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
  v7 = self;
  v6 = a2;
  v4 = [(_UITabContainerViewAccessibility *)self safeValueForKey:@"tabModel"];
  if ([v4 safeBoolForKey:@"isEditing"])
  {
    v3 = [(_UITabContainerViewAccessibility *)v7 safeBoolForKey:@"_isShowingSidebar"];
  }

  else
  {
    v5.receiver = v7;
    v5.super_class = _UITabContainerViewAccessibility;
    v3 = [(_UITabContainerViewAccessibility *)&v5 accessibilityViewIsModal];
  }

  MEMORY[0x29EDC9740](v4);
  return v3 != 0;
}

- (void)updateEditModeAppearanceAnimated:(BOOL)a3
{
  v9 = self;
  v8 = a2;
  v7 = a3;
  v6.receiver = self;
  v6.super_class = _UITabContainerViewAccessibility;
  [(_UITabContainerViewAccessibility *)&v6 updateEditModeAppearanceAnimated:a3];
  v4 = MEMORY[0x29EDCA578];
  v3 = MEMORY[0x29EDCA578];
  v5 = v4;
  dispatch_async(v5, &__block_literal_global_2);
  MEMORY[0x29EDC9740](v5);
}

@end