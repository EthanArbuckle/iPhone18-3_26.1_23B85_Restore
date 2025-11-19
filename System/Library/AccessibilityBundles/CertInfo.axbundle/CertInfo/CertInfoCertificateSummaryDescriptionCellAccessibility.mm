@interface CertInfoCertificateSummaryDescriptionCellAccessibility
- (id)accessibilityLabel;
@end

@implementation CertInfoCertificateSummaryDescriptionCellAccessibility

- (id)accessibilityLabel
{
  v2 = [(CertInfoCertificateSummaryDescriptionCellAccessibility *)self safeValueForKey:@"_customContentView"];
  v3 = [v2 safeValueForKey:@"_labelsAndValues"];
  v4 = [v3 count];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    for (i = 0; i < v5; i += 2)
    {
      v8 = [v3 objectAtIndex:{i, v11, v12, v13}];
      v12 = [v3 objectAtIndex:i + 1];
      v13 = @"__AXStringForVariablesSentinel";
      v11 = v8;
      v9 = __UIAXStringForVariables();

      v6 = v9;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

@end