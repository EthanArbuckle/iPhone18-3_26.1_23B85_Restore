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
  v6 = [v5 integerValue];

  if (v6 < 1)
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
  v12 = [v11 bytes];
  v13 = *(v12 + 32);
  v14 = *(v12 + 8);
  v15 = *(v12 + 16);
  v16 = *(v12 + 24);
  v17 = v14;
  v18 = v13;
  v19 = __UIAXStringForVariables();

  return v19;
}

@end