@interface OBPrivacyLinkButtonAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (BOOL)accessibilityActivate;
- (id)_accessibilitySupplementaryFooterViews;
- (id)accessibilityLabel;
- (id)automationElements;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)layoutSubviews;
@end

@implementation OBPrivacyLinkButtonAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"OBPrivacyLinkButton" isKindOfClass:@"UIButton"];
  [v3 validateClass:@"OBPrivacyLinkButton" hasInstanceMethod:@"textView" withFullSignature:{"@", 0}];
  [v3 validateClass:@"OBPrivacyLinkButton" hasInstanceVariable:@"_iconView" withType:"UIImageView"];
}

- (BOOL)accessibilityActivate
{
  v8 = 0;
  objc_opt_class();
  v3 = __UIAccessibilityCastAsClass();
  v4 = v3;
  if (v3)
  {
    [v3 sendActionsForControlEvents:0x2000];
    v5 = 1;
  }

  else
  {
    v7.receiver = self;
    v7.super_class = OBPrivacyLinkButtonAccessibility;
    v5 = [(OBPrivacyLinkButtonAccessibility *)&v7 accessibilityActivate];
  }

  return v5;
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = OBPrivacyLinkButtonAccessibility;
  [(OBPrivacyLinkButtonAccessibility *)&v3 layoutSubviews];
  [(OBPrivacyLinkButtonAccessibility *)self _accessibilityLoadAccessibilityInformation];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v7.receiver = self;
  v7.super_class = OBPrivacyLinkButtonAccessibility;
  [(OBPrivacyLinkButtonAccessibility *)&v7 _accessibilityLoadAccessibilityInformation];
  v3 = [(OBPrivacyLinkButtonAccessibility *)self safeUIViewForKey:@"_iconView"];
  objc_opt_class();
  v4 = __UIAccessibilityCastAsClass();
  v5 = [v4 image];

  if (v5)
  {
    v6 = accessibilityLocalizedString(@"privacy.icon");
    [v4 setAccessibilityLabel:v6];

    [v4 setIsAccessibilityElement:1];
    [v4 setAccessibilityTraits:*MEMORY[0x29EDBDB40]];
  }
}

- (id)automationElements
{
  v2 = MEMORY[0x29EDB8D80];
  v3 = [(OBPrivacyLinkButtonAccessibility *)self safeUIViewForKey:@"_iconView"];
  v4 = [v2 axArrayByIgnoringNilElementsWithCount:{1, v3}];

  return v4;
}

- (id)accessibilityLabel
{
  v3 = [(OBPrivacyLinkButtonAccessibility *)self safeUIViewForKey:@"textView"];
  v4 = [v3 accessibilityValue];

  if ([v4 length])
  {
    v5 = v4;
  }

  else
  {
    v8.receiver = self;
    v8.super_class = OBPrivacyLinkButtonAccessibility;
    v5 = [(OBPrivacyLinkButtonAccessibility *)&v8 accessibilityLabel];
  }

  v6 = v5;

  return v6;
}

- (id)_accessibilitySupplementaryFooterViews
{
  v3 = MEMORY[0x29EDB8DE8];
  v8.receiver = self;
  v8.super_class = OBPrivacyLinkButtonAccessibility;
  v4 = [(OBPrivacyLinkButtonAccessibility *)&v8 _accessibilitySupplementaryFooterViews];
  v5 = [v3 arrayWithArray:v4];

  v6 = [(OBPrivacyLinkButtonAccessibility *)self safeUIViewForKey:@"iconView"];
  if (v6)
  {
    [v5 axSafelyAddObject:v6];
  }

  return v5;
}

@end