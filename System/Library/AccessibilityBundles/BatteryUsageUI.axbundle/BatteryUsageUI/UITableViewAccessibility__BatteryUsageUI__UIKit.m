@interface UITableViewAccessibility__BatteryUsageUI__UIKit
+ (void)_accessibilityPerformValidations:(id)a3;
- (CGRect)_accessibilityBoundsOfCellsToLoad;
- (CGRect)_visibleBounds;
@end

@implementation UITableViewAccessibility__BatteryUsageUI__UIKit

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"BatteryUIController"];
  [v3 validateClass:@"UITableView" hasInstanceMethod:@"_visibleBounds" withFullSignature:{"{CGRect={CGPoint=dd}{CGSize=dd}}", 0}];
}

- (CGRect)_accessibilityBoundsOfCellsToLoad
{
  [(UITableViewAccessibility__BatteryUsageUI__UIKit *)self bounds];

  return CGRectInset(*&v2, v4 * -2.0, v5 * -2.0);
}

- (CGRect)_visibleBounds
{
  v21.receiver = self;
  v21.super_class = UITableViewAccessibility__BatteryUsageUI__UIKit;
  [(UITableViewAccessibility__BatteryUsageUI__UIKit *)&v21 _visibleBounds];
  x = v3;
  y = v5;
  width = v7;
  height = v9;
  v11 = [(UITableViewAccessibility__BatteryUsageUI__UIKit *)self safeValueForKey:@"delegate"];
  MEMORY[0x29C2CCC70](@"BatteryUIController");
  if ((objc_opt_isKindOfClass() & 1) != 0 && UIAccessibilityIsVoiceOverRunning())
  {
    v12 = [(UITableViewAccessibility__BatteryUsageUI__UIKit *)self isAccessibilityOpaqueElementProvider];

    if (v12)
    {
      [(UITableViewAccessibility__BatteryUsageUI__UIKit *)self _accessibilityBoundsOfCellsToLoad];
      v25.origin.x = v13;
      v25.origin.y = v14;
      v25.size.width = v15;
      v25.size.height = v16;
      v22.origin.x = x;
      v22.origin.y = y;
      v22.size.width = width;
      v22.size.height = height;
      v23 = CGRectUnion(v22, v25);
      x = v23.origin.x;
      y = v23.origin.y;
      width = v23.size.width;
      height = v23.size.height;
    }
  }

  else
  {
  }

  v17 = x;
  v18 = y;
  v19 = width;
  v20 = height;
  result.size.height = v20;
  result.size.width = v19;
  result.origin.y = v18;
  result.origin.x = v17;
  return result;
}

@end