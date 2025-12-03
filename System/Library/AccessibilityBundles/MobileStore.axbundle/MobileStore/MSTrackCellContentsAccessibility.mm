@interface MSTrackCellContentsAccessibility
- (id)accessibilityLabel;
@end

@implementation MSTrackCellContentsAccessibility

- (id)accessibilityLabel
{
  v3 = [(MSTrackCellContentsAccessibility *)self safeValueForKey:@"_item"];
  accessibilityLabel = [v3 accessibilityLabel];
  v5 = [v3 safeValueForKey:@"artistName"];
  v6 = [v3 safeValueForKey:@"contentRating"];
  v7 = [v6 safeValueForKey:@"isExplicitContent"];
  bOOLValue = [v7 BOOLValue];

  if (bOOLValue)
  {
    v9 = accessibilityLocalizedString(@"explicit.content");
  }

  else
  {
    v9 = 0;
  }

  v12 = [(MSTrackCellContentsAccessibility *)self safeValueForKey:@"_accessibilityVideoIconString"];
  v10 = __UIAXStringForVariables();

  return v10;
}

@end