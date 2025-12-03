@interface SUTextContentViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)_accessibilityPlaceholderValue:(BOOL)value;
- (id)accessibilityValue;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)layoutSubviews;
@end

@implementation SUTextContentViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"SUTextContentView" hasInstanceMethod:@"layoutSubviews" withFullSignature:{"v", 0}];
  [validationsCopy validateClass:@"SUTextContentView" hasInstanceVariable:@"_placeholderLabel" withType:"UILabel"];
  [validationsCopy validateClass:@"SUTextContentView" hasInstanceMethod:@"placeholder" withFullSignature:{"@", 0}];
}

- (id)_accessibilityPlaceholderValue:(BOOL)value
{
  objc_opt_class();
  v5 = [(SUTextContentViewAccessibility *)self safeValueForKey:@"_placeholderLabel"];
  v6 = __UIAccessibilityCastAsClass();

  superview = [v6 superview];
  if (superview)
  {
    if (([v6 isHidden] & 1) == 0)
    {
      [v6 alpha];
      if (v8 > 0.01)
      {

LABEL_6:
        accessibilityLabel = [v6 accessibilityLabel];
        v10 = [MEMORY[0x29EDBD7E8] axAttributedStringWithString:accessibilityLabel];

        [v10 setAttribute:*MEMORY[0x29EDB8F00] forKey:*MEMORY[0x29EDBD970]];
        goto LABEL_8;
      }
    }
  }

  if (value)
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
  accessibilityValue = [(SUTextContentViewAccessibility *)&v7 accessibilityValue];
  if ([accessibilityValue length])
  {
    v4 = accessibilityValue;
  }

  else
  {
    v4 = [(SUTextContentViewAccessibility *)self _accessibilityPlaceholderValue:0];
  }

  v5 = v4;

  return v5;
}

@end