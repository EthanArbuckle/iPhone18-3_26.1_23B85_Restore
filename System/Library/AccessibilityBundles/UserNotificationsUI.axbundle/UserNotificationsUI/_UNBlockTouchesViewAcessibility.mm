@interface _UNBlockTouchesViewAcessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (_UNBlockTouchesViewAcessibility)initWithFrame:(CGRect)frame;
- (void)_accessibilityLoadAccessibilityInformation;
@end

@implementation _UNBlockTouchesViewAcessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"_UNBlockTouchesView" isKindOfClass:@"UIView"];
  [validationsCopy validateClass:@"_UNBlockTouchesView" hasInstanceMethod:@"initWithFrame:" withFullSignature:{"@", "{CGRect={CGPoint=dd}{CGSize=dd}}", 0}];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v4.receiver = self;
  v4.super_class = _UNBlockTouchesViewAcessibility;
  [(_UNBlockTouchesViewAcessibility *)&v4 _accessibilityLoadAccessibilityInformation];
  layer = [(_UNBlockTouchesViewAcessibility *)self layer];
  [layer setAccessibilityIdentifier:@"NCBlockTouchesViewCALayer"];
}

- (_UNBlockTouchesViewAcessibility)initWithFrame:(CGRect)frame
{
  v5.receiver = self;
  v5.super_class = _UNBlockTouchesViewAcessibility;
  v3 = [(_UNBlockTouchesViewAcessibility *)&v5 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  [(_UNBlockTouchesViewAcessibility *)v3 _accessibilityLoadAccessibilityInformation];
  return v3;
}

@end