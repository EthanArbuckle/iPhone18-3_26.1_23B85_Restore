@interface VideosUI_RootSideBarControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
@end

@implementation VideosUI_RootSideBarControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"VideosUI.RootSideBarController" hasSwiftField:@"delegate" withSwiftType:"Optional<RootSideBarControllerDelegate>"];
  [v3 validateClass:@"VideosUI.RootSplitViewController" hasSwiftField:@"pillView" withSwiftType:"RootSideBarPillView"];
}

@end