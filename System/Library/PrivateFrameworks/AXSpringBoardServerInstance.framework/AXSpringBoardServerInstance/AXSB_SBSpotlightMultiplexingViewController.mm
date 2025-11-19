@interface AXSB_SBSpotlightMultiplexingViewController
+ (void)_accessibilityPerformValidations:(id)a3;
@end

@implementation AXSB_SBSpotlightMultiplexingViewController

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"SBSpotlightMultiplexingViewController" hasInstanceMethod:@"viewWillAppear:" withFullSignature:{"v", "B", 0}];
  [v3 validateClass:@"SBSpotlightMultiplexingViewController" hasInstanceMethod:@"viewWillDisappear:" withFullSignature:{"v", "B", 0}];
}

@end