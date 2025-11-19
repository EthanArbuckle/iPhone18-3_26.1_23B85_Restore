@interface _UISearchTokenAttachmentAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)accessibilityLabel;
@end

@implementation _UISearchTokenAttachmentAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  location[2] = a1;
  location[1] = a2;
  v5 = location;
  obj = 0;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = "@";
  [location[0] validateClass:@"_UISearchTokenAttachment" hasInstanceMethod:@"_viewProvider" withFullSignature:0];
  [location[0] validateClass:@"NSTextAttachmentViewProvider" hasInstanceMethod:@"view" withFullSignature:{v3, 0}];
  objc_storeStrong(v5, obj);
}

- (id)accessibilityLabel
{
  v4 = [(_UISearchTokenAttachmentAccessibility *)self safeValueForKey:@"_viewProvider"];
  v3 = [v4 safeValueForKey:@"view"];
  v5 = [v3 accessibilityLabel];
  MEMORY[0x29EDC9740](v3);
  MEMORY[0x29EDC9740](v4);

  return v5;
}

@end