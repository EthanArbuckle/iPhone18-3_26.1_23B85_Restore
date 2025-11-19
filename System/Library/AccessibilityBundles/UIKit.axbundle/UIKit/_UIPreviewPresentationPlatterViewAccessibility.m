@interface _UIPreviewPresentationPlatterViewAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (BOOL)accessibilityPerformEscape;
@end

@implementation _UIPreviewPresentationPlatterViewAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  location[2] = a1;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  objc_storeStrong(location, 0);
}

- (BOOL)accessibilityPerformEscape
{
  v3 = [MEMORY[0x29EDBA068] defaultCenter];
  [v3 postNotificationName:@"accessibilityDismissActionSheet" object:0];
  MEMORY[0x29EDC9740](v3);
  return 1;
}

@end