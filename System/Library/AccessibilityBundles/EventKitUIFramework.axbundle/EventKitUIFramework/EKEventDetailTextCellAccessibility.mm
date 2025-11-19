@interface EKEventDetailTextCellAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (CGRect)_accessibilityBoundsForRange:(_NSRange)a3;
- (CGRect)_accessibilityChargedLineBoundsForRange:(_NSRange)a3;
- (_NSRange)_accessibilityRangeForLineNumberAndColumn:(id)a3;
- (id)_accessibilityDataDetectorScheme:(CGPoint)a3;
- (id)_accessibilityInternalTextLinks;
- (id)_accessibilityLineNumberAndColumnForPoint:(CGPoint)a3;
- (id)accessibilityValue;
@end

@implementation EKEventDetailTextCellAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"EKEventDetailTextCell" hasInstanceVariable:@"_textView" withType:"UITextView"];
  [v3 validateClass:@"EKEventDetailTextCell" hasInstanceVariable:@"_title" withType:"NSString"];
}

- (id)accessibilityValue
{
  v2 = [(EKEventDetailTextCellAccessibility *)self safeUIViewForKey:@"_textView"];
  v3 = [v2 accessibilityValue];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = [v2 accessibilityLabel];
  }

  v6 = v5;

  return v6;
}

- (id)_accessibilityDataDetectorScheme:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v6 = [(EKEventDetailTextCellAccessibility *)self safeValueForKey:@"_textView"];
  [(EKEventDetailTextCellAccessibility *)self convertPoint:v6 toView:x, y];
  v8 = v7;
  v10 = v9;

  v11 = [(EKEventDetailTextCellAccessibility *)self safeValueForKey:@"_textView"];
  v12 = [v11 _accessibilityDataDetectorScheme:{v8, v10}];

  return v12;
}

- (id)_accessibilityLineNumberAndColumnForPoint:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v5 = [(EKEventDetailTextCellAccessibility *)self safeValueForKey:@"_textView"];
  v6 = [v5 _accessibilityLineNumberAndColumnForPoint:{x, y}];

  return v6;
}

- (_NSRange)_accessibilityRangeForLineNumberAndColumn:(id)a3
{
  v4 = a3;
  v5 = [(EKEventDetailTextCellAccessibility *)self safeValueForKey:@"_textView"];
  v6 = [v5 _accessibilityRangeForLineNumberAndColumn:v4];
  v8 = v7;

  v9 = v6;
  v10 = v8;
  result.length = v10;
  result.location = v9;
  return result;
}

- (CGRect)_accessibilityChargedLineBoundsForRange:(_NSRange)a3
{
  length = a3.length;
  location = a3.location;
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

- (CGRect)_accessibilityBoundsForRange:(_NSRange)a3
{
  length = a3.length;
  location = a3.location;
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
  v3 = [v2 _accessibilityInternalTextLinks];

  return v3;
}

@end