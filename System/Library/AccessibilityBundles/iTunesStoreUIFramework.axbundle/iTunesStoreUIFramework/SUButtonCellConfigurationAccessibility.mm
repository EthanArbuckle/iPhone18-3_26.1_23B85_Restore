@interface SUButtonCellConfigurationAccessibility
- (id)accessibilityLabel;
@end

@implementation SUButtonCellConfigurationAccessibility

- (id)accessibilityLabel
{
  [self _accessibilityReloadMediaStrings];
  v3 = [(SUButtonCellConfigurationAccessibility *)self safeValueForKey:@"_accessibilityStringsArrayPointer"];
  v4 = *[v3 bytes];
  v5 = v4;

  return v4;
}

@end