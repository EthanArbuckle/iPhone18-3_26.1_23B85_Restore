@interface SUShortLinkCellConfigurationAccessibility
- (id)accessibilityLabel;
@end

@implementation SUShortLinkCellConfigurationAccessibility

- (id)accessibilityLabel
{
  [self _accessibilityReloadMediaStrings];
  v3 = [(SUShortLinkCellConfigurationAccessibility *)self safeValueForKey:@"_accessibilityStringsArrayPointer"];
  v4 = [v3 bytes];
  v5 = *(v4 + 16);
  v6 = *(v4 + 8);
  v7 = *(v4 + 24);
  v8 = v5;
  v9 = __UIAXStringForVariables();

  return v9;
}

@end