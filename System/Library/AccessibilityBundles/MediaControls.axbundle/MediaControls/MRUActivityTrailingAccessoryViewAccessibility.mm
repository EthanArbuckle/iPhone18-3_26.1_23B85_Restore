@interface MRUActivityTrailingAccessoryViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (void)setRouteImage:(id)image;
@end

@implementation MRUActivityTrailingAccessoryViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"MRUActivityTrailingAccessoryView" hasInstanceMethod:@"setRouteImage:" withFullSignature:{"v", "@", 0}];
  [validationsCopy validateClass:@"MRUActivityNowPlayingView"];
}

- (void)setRouteImage:(id)image
{
  v6.receiver = self;
  v6.super_class = MRUActivityTrailingAccessoryViewAccessibility;
  [(MRUActivityTrailingAccessoryViewAccessibility *)&v6 setRouteImage:image];
  v4 = [(MRUActivityTrailingAccessoryViewAccessibility *)self _accessibilityAncestorIsKindOf:NSClassFromString(&cfstr_Mruactivitynow.isa)];
  v5 = v4;
  if (v4)
  {
    [v4 _accessibilityLoadAccessibilityInformation];
  }
}

@end