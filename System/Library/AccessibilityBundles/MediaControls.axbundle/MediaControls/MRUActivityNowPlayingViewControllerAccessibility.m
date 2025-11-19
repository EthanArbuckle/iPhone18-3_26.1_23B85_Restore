@interface MRUActivityNowPlayingViewControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (void)updateNowPlayingInfo;
@end

@implementation MRUActivityNowPlayingViewControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"MRUActivityNowPlayingViewController" hasInstanceMethod:@"updateNowPlayingInfo" withFullSignature:{"v", 0}];
  [v3 validateClass:@"UIWindowScene" hasInstanceMethod:@"systemApertureElementContext" withFullSignature:{"@", 0}];
  [v3 validateProtocol:@"SBUISystemApertureElementContext" hasRequiredInstanceMethod:@"setElementNeedsUpdate"];
  [v3 validateClass:@"MRUActivityNowPlayingViewController" isKindOfClass:@"UIViewController"];
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