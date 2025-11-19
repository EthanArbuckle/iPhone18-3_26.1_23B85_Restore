@interface AccountLinkCellAccessibility
- (CGRect)accessibilityFrame;
- (id)accessibilityLabel;
@end

@implementation AccountLinkCellAccessibility

- (CGRect)accessibilityFrame
{
  v2 = [(AccountLinkCellAccessibility *)self safeValueForKey:@"_linkButton"];
  [v2 accessibilityFrame];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;

  v11 = v4;
  v12 = v6;
  v13 = v8;
  v14 = v10;
  result.size.height = v14;
  result.size.width = v13;
  result.origin.y = v12;
  result.origin.x = v11;
  return result;
}

- (id)accessibilityLabel
{
  v2 = [(AccountLinkCellAccessibility *)self safeValueForKey:@"_linkButton"];
  v3 = [v2 titleForState:0];

  return v3;
}

@end