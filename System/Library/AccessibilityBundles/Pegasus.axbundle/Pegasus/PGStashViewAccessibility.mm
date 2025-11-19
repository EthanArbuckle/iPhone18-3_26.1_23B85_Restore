@interface PGStashViewAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (CGRect)accessibilityFrame;
- (PGStashViewAccessibility)initWithFrame:(CGRect)a3;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)_axMarkupBackdropView;
@end

@implementation PGStashViewAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"PGBackdropView" isKindOfClass:@"UIView"];
  [v3 validateClass:@"PGStashView" isKindOfClass:@"UIView"];
  [v3 validateClass:@"PGStashView" hasInstanceVariable:@"_backdropView" withType:"PGBackdropView"];
  [v3 validateClass:@"PGStashView" hasInstanceMethod:@"initWithFrame:" withFullSignature:{"@", "{CGRect={CGPoint=dd}{CGSize=dd}}", 0}];
}

- (PGStashViewAccessibility)initWithFrame:(CGRect)a3
{
  v6.receiver = self;
  v6.super_class = PGStashViewAccessibility;
  v3 = [(PGStashViewAccessibility *)&v6 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    [(PGStashViewAccessibility *)v3 _axMarkupBackdropView];
  }

  return v4;
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v3.receiver = self;
  v3.super_class = PGStashViewAccessibility;
  [(PGStashViewAccessibility *)&v3 _accessibilityLoadAccessibilityInformation];
  [(PGStashViewAccessibility *)self _axMarkupBackdropView];
}

- (void)_axMarkupBackdropView
{
  v4 = [(PGStashViewAccessibility *)self safeValueForKey:@"_backdropView"];
  v2 = accessibilityLocalizedString(@"pip.stash.view");
  [v4 setAccessibilityLabel:v2];

  v3 = accessibilityLocalizedString(@"pip.stash.stashed");
  [v4 setAccessibilityValue:v3];

  [v4 setAccessibilityTraits:*MEMORY[0x29EDC7F70]];
  [v4 setIsAccessibilityElement:1];
}

- (CGRect)accessibilityFrame
{
  v3 = [(PGStashViewAccessibility *)self safeUIViewForKey:@"_backdropView"];
  v24.receiver = self;
  v24.super_class = PGStashViewAccessibility;
  [(PGStashViewAccessibility *)&v24 accessibilityFrame];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  [v3 accessibilityFrame];
  v28.origin.x = v12;
  v28.origin.y = v13;
  v28.size.width = v14;
  v28.size.height = v15;
  v25.origin.x = v5;
  v25.origin.y = v7;
  v25.size.width = v9;
  v25.size.height = v11;
  v26 = CGRectUnion(v25, v28);
  x = v26.origin.x;
  y = v26.origin.y;
  width = v26.size.width;
  height = v26.size.height;

  v20 = x;
  v21 = y;
  v22 = width;
  v23 = height;
  result.size.height = v23;
  result.size.width = v22;
  result.origin.y = v21;
  result.origin.x = v20;
  return result;
}

@end