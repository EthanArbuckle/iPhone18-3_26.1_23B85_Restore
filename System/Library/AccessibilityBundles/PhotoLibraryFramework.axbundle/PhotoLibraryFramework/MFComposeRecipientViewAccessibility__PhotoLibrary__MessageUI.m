@interface MFComposeRecipientViewAccessibility__PhotoLibrary__MessageUI
+ (void)_accessibilityPerformValidations:(id)a3;
- (MFComposeRecipientViewAccessibility__PhotoLibrary__MessageUI)initWithFrame:(CGRect)a3;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)setLabel:(id)a3;
@end

@implementation MFComposeRecipientViewAccessibility__PhotoLibrary__MessageUI

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"MFComposeRecipientView" hasInstanceVariable:@"_labelView" withType:"MFHeaderLabelView"];
  [v3 validateClass:@"MFComposeHeaderView" hasInstanceMethod:@"label" withFullSignature:{"@", 0}];
  [v3 validateClass:@"MFComposeRecipientView" hasInstanceVariable:@"_textField" withType:"_MFMailRecipientTextField"];
  [v3 validateClass:@"MFComposeRecipientView" hasInstanceMethod:@"setLabel:" withFullSignature:{"v", "@", 0}];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v6.receiver = self;
  v6.super_class = MFComposeRecipientViewAccessibility__PhotoLibrary__MessageUI;
  [(MFComposeRecipientViewAccessibility__PhotoLibrary__MessageUI *)&v6 _accessibilityLoadAccessibilityInformation];
  v3 = [(MFComposeRecipientViewAccessibility__PhotoLibrary__MessageUI *)self safeValueForKey:@"_textField"];
  v4 = [(MFComposeRecipientViewAccessibility__PhotoLibrary__MessageUI *)self safeValueForKey:@"label"];
  [v3 setAccessibilityLabel:v4];

  v5 = [(MFComposeRecipientViewAccessibility__PhotoLibrary__MessageUI *)self safeValueForKey:@"_labelView"];
  [v5 setIsAccessibilityElement:0];
}

- (MFComposeRecipientViewAccessibility__PhotoLibrary__MessageUI)initWithFrame:(CGRect)a3
{
  v5.receiver = self;
  v5.super_class = MFComposeRecipientViewAccessibility__PhotoLibrary__MessageUI;
  v3 = [(MFComposeRecipientViewAccessibility__PhotoLibrary__MessageUI *)&v5 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  [(MFComposeRecipientViewAccessibility__PhotoLibrary__MessageUI *)v3 _accessibilityLoadAccessibilityInformation];

  return v3;
}

- (void)setLabel:(id)a3
{
  v4.receiver = self;
  v4.super_class = MFComposeRecipientViewAccessibility__PhotoLibrary__MessageUI;
  [(MFComposeRecipientViewAccessibility__PhotoLibrary__MessageUI *)&v4 setLabel:a3];
  [(MFComposeRecipientViewAccessibility__PhotoLibrary__MessageUI *)self _accessibilityLoadAccessibilityInformation];
}

@end