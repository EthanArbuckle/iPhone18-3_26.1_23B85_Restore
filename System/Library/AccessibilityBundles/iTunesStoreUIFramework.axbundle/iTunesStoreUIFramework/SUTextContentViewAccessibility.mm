@interface SUTextContentViewAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)_accessibilityPlaceholderValue:(BOOL)a3;
- (id)accessibilityValue;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)layoutSubviews;
@end

@implementation SUTextContentViewAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"SUTextContentView" hasInstanceMethod:@"layoutSubviews" withFullSignature:{"v", 0}];
  [v3 validateClass:@"SUTextContentView" hasInstanceVariable:@"_placeholderLabel" withType:"UILabel"];
  [v3 validateClass:@"SUTextContentView" hasInstanceMethod:@"placeholder" withFullSignature:{"@", 0}];
}

- (id)_accessibilityPlaceholderValue:(BOOL)a3
{
  objc_opt_class();
  v5 = [(SUTextContentViewAccessibility *)self safeValueForKey:@"_placeholderLabel"];
  v6 = __UIAccessibilityCastAsClass();

  v7 = [v6 superview];
  if (v7)
  {
    if (([v6 isHidden] & 1) == 0)
    {
      [v6 alpha];
      if (v8 > 0.01)
      {

LABEL_6:
        v9 = [v6 accessibilityLabel];
        v10 = [MEMORY[0x29EDBD7E8] axAttributedStringWithString:v9];

        [v10 setAttribute:*MEMORY[0x29EDB8F00] forKey:*MEMORY[0x29EDBD970]];
        goto LABEL_8;
      }
    }
  }

  if (a3)
  {
    goto LABEL_6;
  }

  v10 = 0;
LABEL_8:

  return v10;
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v4.receiver = self;
  v4.super_class = SUTextContentViewAccessibility;
  [(SUTextContentViewAccessibility *)&v4 _accessibilityLoadAccessibilityInformation];
  v3 = [(SUTextContentViewAccessibility *)self safeValueForKey:@"_placeholderLabel"];
  [v3 setIsAccessibilityElement:0];
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = SUTextContentViewAccessibility;
  [(SUTextContentViewAccessibility *)&v3 layoutSubviews];
  [(SUTextContentViewAccessibility *)self _accessibilityLoadAccessibilityInformation];
}

- (id)accessibilityValue
{
  [(SUTextContentViewAccessibility *)self _accessibilityLoadAccessibilityInformation];
  v7.receiver = self;
  v7.super_class = SUTextContentViewAccessibility;
  v3 = [(SUTextContentViewAccessibility *)&v7 accessibilityValue];
  if ([v3 length])
  {
    v4 = v3;
  }

  else
  {
    v4 = [(SUTextContentViewAccessibility *)self _accessibilityPlaceholderValue:0];
  }

  v5 = v4;

  return v5;
}

@end