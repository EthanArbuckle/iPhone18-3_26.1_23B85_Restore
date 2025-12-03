@interface EKEventDetailTextCellAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (CGRect)_accessibilityBoundsForRange:(_NSRange)range;
- (CGRect)_accessibilityChargedLineBoundsForRange:(_NSRange)range;
- (_NSRange)_accessibilityRangeForLineNumberAndColumn:(id)column;
- (id)_accessibilityDataDetectorScheme:(CGPoint)scheme;
- (id)_accessibilityInternalTextLinks;
- (id)_accessibilityLineNumberAndColumnForPoint:(CGPoint)point;
- (id)accessibilityValue;
@end

@implementation EKEventDetailTextCellAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"EKEventDetailTextCell" hasInstanceVariable:@"_textView" withType:"UITextView"];
  [validationsCopy validateClass:@"EKEventDetailTextCell" hasInstanceVariable:@"_title" withType:"NSString"];
}

- (id)accessibilityValue
{
  v2 = [(EKEventDetailTextCellAccessibility *)self safeUIViewForKey:@"_textView"];
  accessibilityValue = [v2 accessibilityValue];
  v4 = accessibilityValue;
  if (accessibilityValue)
  {
    accessibilityLabel = accessibilityValue;
  }

  else
  {
    accessibilityLabel = [v2 accessibilityLabel];
  }

  v6 = accessibilityLabel;

  return v6;
}

- (id)_accessibilityDataDetectorScheme:(CGPoint)scheme
{
  y = scheme.y;
  x = scheme.x;
  v6 = [(EKEventDetailTextCellAccessibility *)self safeValueForKey:@"_textView"];
  [(EKEventDetailTextCellAccessibility *)self convertPoint:v6 toView:x, y];
  v8 = v7;
  v10 = v9;

  v11 = [(EKEventDetailTextCellAccessibility *)self safeValueForKey:@"_textView"];
  v12 = [v11 _accessibilityDataDetectorScheme:{v8, v10}];

  return v12;
}

- (id)_accessibilityLineNumberAndColumnForPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  v5 = [(EKEventDetailTextCellAccessibility *)self safeValueForKey:@"_textView"];
  v6 = [v5 _accessibilityLineNumberAndColumnForPoint:{x, y}];

  return v6;
}

- (_NSRange)_accessibilityRangeForLineNumberAndColumn:(id)column
{
  columnCopy = column;
  v5 = [(EKEventDetailTextCellAccessibility *)self safeValueForKey:@"_textView"];
  v6 = [v5 _accessibilityRangeForLineNumberAndColumn:columnCopy];
  v8 = v7;

  v9 = v6;
  v10 = v8;
  result.length = v10;
  result.location = v9;
  return result;
}

- (CGRect)_accessibilityChargedLineBoundsForRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  v5 = [(EKEventDetailTextCellAccessibility *)self safeValueForKey:@"_textView"];
  [v5 _accessibilityChargedLineBoundsForRange:{location, length}];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;

  v14 = v7;
  v15 = v9;
  v16 = v11;
  v17 = v13;
  result.size.height = v17;
  result.size.width = v16;
  result.origin.y = v15;
  result.origin.x = v14;
  return result;
}

- (CGRect)_accessibilityBoundsForRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  v5 = [(EKEventDetailTextCellAccessibility *)self safeValueForKey:@"_textView"];
  [v5 _accessibilityBoundsForRange:{location, length}];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;

  v14 = v7;
  v15 = v9;
  v16 = v11;
  v17 = v13;
  result.size.height = v17;
  result.size.width = v16;
  result.origin.y = v15;
  result.origin.x = v14;
  return result;
}

- (id)_accessibilityInternalTextLinks
{
  v2 = [(EKEventDetailTextCellAccessibility *)self safeValueForKey:@"_textView"];
  _accessibilityInternalTextLinks = [v2 _accessibilityInternalTextLinks];

  return _accessibilityInternalTextLinks;
}

@end