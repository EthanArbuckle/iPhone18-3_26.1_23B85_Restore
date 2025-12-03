@interface CertInfoCertificateHeaderCellAccessibility
- (id)accessibilityLabel;
@end

@implementation CertInfoCertificateHeaderCellAccessibility

- (id)accessibilityLabel
{
  v3 = [(CertInfoCertificateHeaderCellAccessibility *)self safeValueForKey:@"_titleLabel"];
  v4 = [(CertInfoCertificateHeaderCellAccessibility *)self safeValueForKey:@"_subtitleLabel"];
  v5 = [(CertInfoCertificateHeaderCellAccessibility *)self safeValueForKey:@"_trustedLabel"];
  accessibilityLabel = [v5 accessibilityLabel];

  textColor = [v4 textColor];
  redColor = [MEMORY[0x29EDC7A00] redColor];
  v9 = [textColor isEqual:redColor];

  accessibilityLabel2 = [v3 accessibilityLabel];
  accessibilityLabel3 = [v4 accessibilityLabel];
  if (v9)
  {
    v14 = accessibilityLocalizedString(@"expired");
    v12 = __UIAXStringForVariables();
  }

  else
  {
    v12 = __UIAXStringForVariables();
  }

  return v12;
}

@end