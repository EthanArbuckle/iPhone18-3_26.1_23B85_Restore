@interface _UIPreviewPresentationPlatterViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (BOOL)accessibilityPerformEscape;
@end

@implementation _UIPreviewPresentationPlatterViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, validations);
  objc_storeStrong(location, 0);
}

- (BOOL)accessibilityPerformEscape
{
  defaultCenter = [MEMORY[0x29EDBA068] defaultCenter];
  [defaultCenter postNotificationName:@"accessibilityDismissActionSheet" object:0];
  MEMORY[0x29EDC9740](defaultCenter);
  return 1;
}

@end