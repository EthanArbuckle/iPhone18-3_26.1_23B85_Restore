@interface MFMailboxFilterPickerControlAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (CGRect)accessibilityFrame;
- (id)accessibilityLabel;
- (id)accessibilityValue;
@end

@implementation MFMailboxFilterPickerControlAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"MFMailboxFilterPickerControl" hasInstanceVariable:@"_titleLabel" withType:"UILabel"];
  [validationsCopy validateClass:@"MFMailboxFilterPickerControl" hasInstanceVariable:@"_filtersLabel" withType:"UILabel"];
}

- (id)accessibilityLabel
{
  v2 = [(MFMailboxFilterPickerControlAccessibility *)self safeValueForKey:@"_titleLabel"];
  accessibilityLabel = [v2 accessibilityLabel];

  return accessibilityLabel;
}

- (id)accessibilityValue
{
  v2 = [(MFMailboxFilterPickerControlAccessibility *)self safeValueForKey:@"_filtersLabel"];
  accessibilityLabel = [v2 accessibilityLabel];

  return accessibilityLabel;
}

- (CGRect)accessibilityFrame
{
  v3 = [(MFMailboxFilterPickerControlAccessibility *)self safeValueForKey:@"_titleLabel"];
  [v3 accessibilityFrame];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v12 = [(MFMailboxFilterPickerControlAccessibility *)self safeValueForKey:@"_filtersLabel"];
  [v12 accessibilityFrame];
  v28.origin.x = v13;
  v28.origin.y = v14;
  v28.size.width = v15;
  v28.size.height = v16;
  v25.origin.x = v5;
  v25.origin.y = v7;
  v25.size.width = v9;
  v25.size.height = v11;
  v26 = CGRectUnion(v25, v28);
  x = v26.origin.x;
  y = v26.origin.y;
  width = v26.size.width;
  height = v26.size.height;

  v21 = x;
  v22 = y;
  v23 = width;
  v24 = height;
  result.size.height = v24;
  result.size.width = v23;
  result.origin.y = v22;
  result.origin.x = v21;
  return result;
}

@end