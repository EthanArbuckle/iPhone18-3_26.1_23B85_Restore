@interface MRUActivityNowPlayingViewControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (void)updateNowPlayingInfo;
@end

@implementation MRUActivityNowPlayingViewControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"MRUActivityNowPlayingViewController" hasInstanceMethod:@"updateNowPlayingInfo" withFullSignature:{"v", 0}];
  [validationsCopy validateClass:@"UIWindowScene" hasInstanceMethod:@"systemApertureElementContext" withFullSignature:{"@", 0}];
  [validationsCopy validateProtocol:@"SBUISystemApertureElementContext" hasRequiredInstanceMethod:@"setElementNeedsUpdate"];
  [validationsCopy validateClass:@"MRUActivityNowPlayingViewController" isKindOfClass:@"UIViewController"];
}

- (void)updateNowPlayingInfo
{
  v4.receiver = self;
  v4.super_class = MRUActivityNowPlayingViewControllerAccessibility;
  [(MRUActivityNowPlayingViewControllerAccessibility *)&v4 updateNowPlayingInfo];
  v3 = [(MRUActivityNowPlayingViewControllerAccessibility *)self safeValueForKey:@"systemApertureElementContext"];
  [v3 setElementNeedsUpdate];
}

@end