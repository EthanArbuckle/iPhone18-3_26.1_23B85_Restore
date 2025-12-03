@interface AXSB_SBSpotlightMultiplexingViewController
+ (void)_accessibilityPerformValidations:(id)validations;
@end

@implementation AXSB_SBSpotlightMultiplexingViewController

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"SBSpotlightMultiplexingViewController" hasInstanceMethod:@"viewWillAppear:" withFullSignature:{"v", "B", 0}];
  [validationsCopy validateClass:@"SBSpotlightMultiplexingViewController" hasInstanceMethod:@"viewWillDisappear:" withFullSignature:{"v", "B", 0}];
}

@end