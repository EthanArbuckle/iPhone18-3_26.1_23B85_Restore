@interface MRUActivityTrailingAccessoryViewAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (void)setRouteImage:(id)a3;
@end

@implementation MRUActivityTrailingAccessoryViewAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"MRUActivityTrailingAccessoryView" hasInstanceMethod:@"setRouteImage:" withFullSignature:{"v", "@", 0}];
  [v3 validateClass:@"MRUActivityNowPlayingView"];
}

- (void)setRouteImage:(id)a3
{
  v6.receiver = self;
  v6.super_class = MRUActivityTrailingAccessoryViewAccessibility;
  [(MRUActivityTrailingAccessoryViewAccessibility *)&v6 setRouteImage:a3];
  v4 = [(MRUActivityTrailingAccessoryViewAccessibility *)self _accessibilityAncestorIsKindOf:NSClassFromString(&cfstr_Mruactivitynow.isa)];
  v5 = v4;
  if (v4)
  {
    [v4 _accessibilityLoadAccessibilityInformation];
  }
}

@end