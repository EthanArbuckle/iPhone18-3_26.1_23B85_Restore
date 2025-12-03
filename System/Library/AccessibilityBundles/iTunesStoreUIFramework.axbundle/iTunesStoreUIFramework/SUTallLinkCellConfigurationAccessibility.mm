@interface SUTallLinkCellConfigurationAccessibility
- (id)accessibilityLabel;
@end

@implementation SUTallLinkCellConfigurationAccessibility

- (id)accessibilityLabel
{
  [self _accessibilityReloadMediaStrings];
  v3 = [(SUTallLinkCellConfigurationAccessibility *)self safeValueForKey:@"_representedObject"];
  v4 = [v3 safeValueForKey:@"reviewStatistics"];
  v5 = [v4 safeValueForKey:@"numberOfUserRatings"];
  integerValue = [v5 integerValue];

  if (integerValue < 1)
  {
    v10 = 0;
  }

  else
  {
    v7 = [v4 safeValueForKey:@"averageUserRating"];
    [v7 floatValue];
    v9 = v8;

    v10 = starStringForStarCount(v9);
  }

  v11 = [(SUTallLinkCellConfigurationAccessibility *)self safeValueForKey:@"_accessibilityStringsArrayPointer"];
  bytes = [v11 bytes];
  v13 = *(bytes + 32);
  v14 = *(bytes + 8);
  v15 = *(bytes + 16);
  v16 = *(bytes + 24);
  v17 = v14;
  v18 = v13;
  v19 = __UIAXStringForVariables();

  return v19;
}

@end