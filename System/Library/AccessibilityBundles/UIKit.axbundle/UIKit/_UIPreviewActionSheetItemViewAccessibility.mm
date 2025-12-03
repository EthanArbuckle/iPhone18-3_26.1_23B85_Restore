@interface _UIPreviewActionSheetItemViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)accessibilityLabel;
@end

@implementation _UIPreviewActionSheetItemViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  location[2] = self;
  location[1] = a2;
  v5 = location;
  obj = 0;
  location[0] = 0;
  objc_storeStrong(location, validations);
  v3 = "@";
  [location[0] validateClass:@"_UIPreviewActionSheetItemView" hasInstanceMethod:@"action" withFullSignature:0];
  [location[0] validateClass:@"UIPreviewMenuItem" hasInstanceMethod:@"title" withFullSignature:{v3, 0}];
  objc_storeStrong(v5, obj);
}

- (id)accessibilityLabel
{
  selfCopy = self;
  v8 = a2;
  v7 = 0;
  objc_opt_class();
  v4 = [(_UIPreviewActionSheetItemViewAccessibility *)selfCopy safeValueForKey:@"action"];
  v3 = [v4 safeValueForKey:@"title"];
  v6 = __UIAccessibilityCastAsClass();
  MEMORY[0x29EDC9740](v3);
  MEMORY[0x29EDC9740](v4);
  v5 = MEMORY[0x29EDC9748](v6);
  objc_storeStrong(&v6, 0);

  return v5;
}

@end