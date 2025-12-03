@interface MFComposeRecipientViewAccessibility__PhotoLibrary__MessageUI
+ (void)_accessibilityPerformValidations:(id)validations;
- (MFComposeRecipientViewAccessibility__PhotoLibrary__MessageUI)initWithFrame:(CGRect)frame;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)setLabel:(id)label;
@end

@implementation MFComposeRecipientViewAccessibility__PhotoLibrary__MessageUI

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"MFComposeRecipientView" hasInstanceVariable:@"_labelView" withType:"MFHeaderLabelView"];
  [validationsCopy validateClass:@"MFComposeHeaderView" hasInstanceMethod:@"label" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"MFComposeRecipientView" hasInstanceVariable:@"_textField" withType:"_MFMailRecipientTextField"];
  [validationsCopy validateClass:@"MFComposeRecipientView" hasInstanceMethod:@"setLabel:" withFullSignature:{"v", "@", 0}];
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

- (MFComposeRecipientViewAccessibility__PhotoLibrary__MessageUI)initWithFrame:(CGRect)frame
{
  v5.receiver = self;
  v5.super_class = MFComposeRecipientViewAccessibility__PhotoLibrary__MessageUI;
  v3 = [(MFComposeRecipientViewAccessibility__PhotoLibrary__MessageUI *)&v5 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  [(MFComposeRecipientViewAccessibility__PhotoLibrary__MessageUI *)v3 _accessibilityLoadAccessibilityInformation];

  return v3;
}

- (void)setLabel:(id)label
{
  v4.receiver = self;
  v4.super_class = MFComposeRecipientViewAccessibility__PhotoLibrary__MessageUI;
  [(MFComposeRecipientViewAccessibility__PhotoLibrary__MessageUI *)&v4 setLabel:label];
  [(MFComposeRecipientViewAccessibility__PhotoLibrary__MessageUI *)self _accessibilityLoadAccessibilityInformation];
}

@end