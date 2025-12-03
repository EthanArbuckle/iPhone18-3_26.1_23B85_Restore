@interface AVMobileTitlebarViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (AVMobileTitlebarViewAccessibility)initWithFrame:(CGRect)frame;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)layoutSubviews;
@end

@implementation AVMobileTitlebarViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"AVMobileTitlebarView" isKindOfClass:@"UIView"];
  [validationsCopy validateClass:@"UIView" hasInstanceMethod:@"initWithFrame:" withFullSignature:{"@", "{CGRect={CGPoint=dd}{CGSize=dd}}", 0}];
  [validationsCopy validateClass:@"AVMobileTitlebarView" hasInstanceVariable:@"_titleLabel" withType:"UILabel"];
  [validationsCopy validateClass:@"AVMobileTitlebarView" hasInstanceVariable:@"_subtitleLabel" withType:"UILabel"];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v10.receiver = self;
  v10.super_class = AVMobileTitlebarViewAccessibility;
  [(AVMobileTitlebarViewAccessibility *)&v10 _accessibilityLoadAccessibilityInformation];
  objc_initWeak(&location, self);
  v3 = [(AVMobileTitlebarViewAccessibility *)self safeValueForKey:@"titleLabel"];
  v7[0] = MEMORY[0x29EDCA5F8];
  v7[1] = 3221225472;
  v7[2] = __79__AVMobileTitlebarViewAccessibility__accessibilityLoadAccessibilityInformation__block_invoke;
  v7[3] = &unk_29F298F00;
  objc_copyWeak(&v8, &location);
  [v3 _setAccessibilityLabelBlock:v7];

  v4 = [(AVMobileTitlebarViewAccessibility *)self safeValueForKey:@"subtitleLabel"];
  v5[0] = MEMORY[0x29EDCA5F8];
  v5[1] = 3221225472;
  v5[2] = __79__AVMobileTitlebarViewAccessibility__accessibilityLoadAccessibilityInformation__block_invoke_2;
  v5[3] = &unk_29F298F00;
  objc_copyWeak(&v6, &location);
  [v4 _setAccessibilityLabelBlock:v5];

  objc_destroyWeak(&v6);
  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);
}

id __79__AVMobileTitlebarViewAccessibility__accessibilityLoadAccessibilityInformation__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  objc_opt_class();
  v2 = [WeakRetained safeValueForKey:@"titleLabel"];
  v3 = __UIAccessibilityCastAsClass();

  v4 = [v3 text];

  return v4;
}

id __79__AVMobileTitlebarViewAccessibility__accessibilityLoadAccessibilityInformation__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  objc_opt_class();
  v2 = [WeakRetained safeValueForKey:@"subtitleLabel"];
  v3 = __UIAccessibilityCastAsClass();

  v4 = [v3 text];

  return v4;
}

- (AVMobileTitlebarViewAccessibility)initWithFrame:(CGRect)frame
{
  v5.receiver = self;
  v5.super_class = AVMobileTitlebarViewAccessibility;
  v3 = [(AVMobileTitlebarViewAccessibility *)&v5 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  [(AVMobileTitlebarViewAccessibility *)v3 _accessibilityLoadAccessibilityInformation];

  return v3;
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = AVMobileTitlebarViewAccessibility;
  [(AVMobileTitlebarViewAccessibility *)&v3 layoutSubviews];
  [(AVMobileTitlebarViewAccessibility *)self _accessibilityLoadAccessibilityInformation];
}

@end