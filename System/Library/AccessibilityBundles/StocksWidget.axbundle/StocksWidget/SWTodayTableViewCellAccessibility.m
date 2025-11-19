@interface SWTodayTableViewCellAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (unint64_t)accessibilityTraits;
@end

@implementation SWTodayTableViewCellAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"SWTodayTableViewCell" isKindOfClass:@"UITableViewCell"];
  [v3 validateClass:@"SWTodayTableViewController" hasInstanceMethod:@"clipView" withFullSignature:{"@", 0}];
}

- (unint64_t)accessibilityTraits
{
  v23 = 0;
  objc_opt_class();
  v3 = __UIAccessibilityCastAsClass();
  v4 = [v3 _tableView];
  v5 = [v4 dataSource];

  v6 = [v5 safeValueForKey:@"clipView"];
  [v6 accessibilityFrame];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  [(SWTodayTableViewCellAccessibility *)self accessibilityFrame];
  v26.origin.x = v15;
  v26.origin.y = v16;
  v26.size.width = v17;
  v26.size.height = v18;
  v24.origin.x = v8;
  v24.origin.y = v10;
  v24.size.width = v12;
  v24.size.height = v14;
  v25 = CGRectIntersection(v24, v26);
  if (v25.size.width < 2.0 || v25.size.height < 2.0)
  {
    v20 = *MEMORY[0x29EDC7578];
  }

  else
  {
    v22.receiver = self;
    v22.super_class = SWTodayTableViewCellAccessibility;
    v20 = [(SWTodayTableViewCellAccessibility *)&v22 accessibilityTraits];
  }

  return v20;
}

@end