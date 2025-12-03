@interface VideosUI_RootSideBarControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
@end

@implementation VideosUI_RootSideBarControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"VideosUI.RootSideBarController" hasSwiftField:@"delegate" withSwiftType:"Optional<RootSideBarControllerDelegate>"];
  [validationsCopy validateClass:@"VideosUI.RootSplitViewController" hasSwiftField:@"pillView" withSwiftType:"RootSideBarPillView"];
}

@end