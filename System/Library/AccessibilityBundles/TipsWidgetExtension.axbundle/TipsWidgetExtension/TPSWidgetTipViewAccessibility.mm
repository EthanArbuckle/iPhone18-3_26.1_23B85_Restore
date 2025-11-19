@interface TPSWidgetTipViewAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (CGRect)accessibilityFrame;
@end

@implementation TPSWidgetTipViewAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"TPSWidgetTipView" hasInstanceMethod:@"tip" withFullSignature:{"@", 0}];
  [v3 validateClass:@"TPSWidgetTip" isKindOfClass:@"TPSTip"];
  [v3 validateClass:@"TPSWidgetTipView" hasInstanceMethod:@"updateTitleLabel" withFullSignature:{"v", 0}];
}

- (CGRect)accessibilityFrame
{
  v2 = [(TPSWidgetTipViewAccessibility *)self superview];
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

@end