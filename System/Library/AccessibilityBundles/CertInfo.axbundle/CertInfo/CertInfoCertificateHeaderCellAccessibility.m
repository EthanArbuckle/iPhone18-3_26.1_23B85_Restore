@interface CertInfoCertificateHeaderCellAccessibility
- (id)accessibilityLabel;
@end

@implementation CertInfoCertificateHeaderCellAccessibility

- (id)accessibilityLabel
{
  v3 = [(CertInfoCertificateHeaderCellAccessibility *)self safeValueForKey:@"_titleLabel"];
  v4 = [(CertInfoCertificateHeaderCellAccessibility *)self safeValueForKey:@"_subtitleLabel"];
  v5 = [(CertInfoCertificateHeaderCellAccessibility *)self safeValueForKey:@"_trustedLabel"];
  v6 = [v5 accessibilityLabel];

  v7 = [v4 textColor];
  v8 = [MEMORY[0x29EDC7A00] redColor];
  v9 = [v7 isEqual:v8];

  v10 = [v3 accessibilityLabel];
  v11 = [v4 accessibilityLabel];
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