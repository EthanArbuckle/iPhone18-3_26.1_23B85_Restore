@interface CKNavigationButtonViewAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (CGRect)accessibilityFrame;
- (id)accessibilityLabel;
- (unint64_t)accessibilityTraits;
@end

@implementation CKNavigationButtonViewAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"CKNavigationButtonView" hasInstanceMethod:@"iconImageView" withFullSignature:{"@", 0}];
  [v3 validateClass:@"CKNavigationButtonView" hasInstanceMethod:@"textLabel" withFullSignature:{"@", 0}];
}

- (id)accessibilityLabel
{
  v2 = [(CKNavigationButtonViewAccessibility *)self safeValueForKey:@"textLabel"];
  v3 = [v2 accessibilityLabel];

  return v3;
}

- (CGRect)accessibilityFrame
{
  v3 = [(CKNavigationButtonViewAccessibility *)self safeValueForKey:@"iconImageView"];
  [v3 accessibilityFrame];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  v12 = [(CKNavigationButtonViewAccessibility *)self safeValueForKey:@"textLabel"];
  [v12 accessibilityFrame];
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;

  v21 = v5;
  v22 = v7;
  v23 = v9;
  v24 = v11;
  v25 = v14;
  v26 = v16;
  v27 = v18;
  v28 = v20;

  return CGRectUnion(*&v21, *&v25);
}

- (unint64_t)accessibilityTraits
{
  v3.receiver = self;
  v3.super_class = CKNavigationButtonViewAccessibility;
  return *MEMORY[0x29EDC7F70] | [(CKNavigationButtonViewAccessibility *)&v3 accessibilityTraits];
}

@end