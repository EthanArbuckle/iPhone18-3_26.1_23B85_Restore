@interface _UNBlockTouchesViewAcessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (_UNBlockTouchesViewAcessibility)initWithFrame:(CGRect)a3;
- (void)_accessibilityLoadAccessibilityInformation;
@end

@implementation _UNBlockTouchesViewAcessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"_UNBlockTouchesView" isKindOfClass:@"UIView"];
  [v3 validateClass:@"_UNBlockTouchesView" hasInstanceMethod:@"initWithFrame:" withFullSignature:{"@", "{CGRect={CGPoint=dd}{CGSize=dd}}", 0}];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v4.receiver = self;
  v4.super_class = _UNBlockTouchesViewAcessibility;
  [(_UNBlockTouchesViewAcessibility *)&v4 _accessibilityLoadAccessibilityInformation];
  v3 = [(_UNBlockTouchesViewAcessibility *)self layer];
  [v3 setAccessibilityIdentifier:@"NCBlockTouchesViewCALayer"];
}

- (_UNBlockTouchesViewAcessibility)initWithFrame:(CGRect)a3
{
  v5.receiver = self;
  v5.super_class = _UNBlockTouchesViewAcessibility;
  v3 = [(_UNBlockTouchesViewAcessibility *)&v5 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  [(_UNBlockTouchesViewAcessibility *)v3 _accessibilityLoadAccessibilityInformation];
  return v3;
}

@end