@interface NMBUIMediaTableCellAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (BOOL)_axIsShowingControl;
- (CGPoint)accessibilityActivationPoint;
- (id)accessibilityValue;
- (unint64_t)accessibilityTraits;
@end

@implementation NMBUIMediaTableCellAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"NMBUIMediaTableCell" isKindOfClass:@"PSControlTableCell"];
  [v3 validateClass:@"PSControlTableCell" hasInstanceMethod:@"control" withFullSignature:{"@", 0}];
  [v3 validateClass:@"NMBUIMediaTableCell" isKindOfClass:@"PSTableCell"];
  [v3 validateClass:@"PSTableCell" hasInstanceMethod:@"titleLabel" withFullSignature:{"@", 0}];
  [v3 validateClass:@"NMBUIMediaTableCell" isKindOfClass:@"UITableViewCell"];
  [v3 validateClass:@"UITableViewCell" hasInstanceMethod:@"detailTextLabel" withFullSignature:{"@", 0}];
}

- (CGPoint)accessibilityActivationPoint
{
  if ([(NMBUIMediaTableCellAccessibility *)self _axIsShowingControl]&& (v14 = 0, objc_opt_class(), [(NMBUIMediaTableCellAccessibility *)self safeValueForKey:@"control"], v3 = objc_claimAutoreleasedReturnValue(), __UIAccessibilityCastAsClass(), v4 = objc_claimAutoreleasedReturnValue(), v3, v4))
  {
    [v4 accessibilityActivationPoint];
    v6 = v5;
    v8 = v7;
  }

  else
  {
    v13.receiver = self;
    v13.super_class = NMBUIMediaTableCellAccessibility;
    [(NMBUIMediaTableCellAccessibility *)&v13 accessibilityActivationPoint];
    v6 = v9;
    v8 = v10;
  }

  v11 = v6;
  v12 = v8;
  result.y = v12;
  result.x = v11;
  return result;
}

- (unint64_t)accessibilityTraits
{
  v7.receiver = self;
  v7.super_class = NMBUIMediaTableCellAccessibility;
  v3 = [(NMBUIMediaTableCellAccessibility *)&v7 accessibilityTraits];
  if ([(NMBUIMediaTableCellAccessibility *)self _axIsShowingControl])
  {
    v4 = kAXToggleTrait;
    v5 = [(NMBUIMediaTableCellAccessibility *)self safeValueForKey:@"control"];
    v3 |= v4 | [v5 accessibilityTraits];
  }

  return v3;
}

- (id)accessibilityValue
{
  if ([(NMBUIMediaTableCellAccessibility *)self _axIsShowingControl])
  {
    v3 = [(NMBUIMediaTableCellAccessibility *)self safeValueForKey:@"control"];
    v4 = [v3 accessibilityValue];
  }

  else
  {
    v6.receiver = self;
    v6.super_class = NMBUIMediaTableCellAccessibility;
    v4 = [(NMBUIMediaTableCellAccessibility *)&v6 accessibilityValue];
  }

  return v4;
}

- (BOOL)_axIsShowingControl
{
  v15 = 0;
  objc_opt_class();
  v3 = [(NMBUIMediaTableCellAccessibility *)self safeValueForKey:@"accessoryView"];
  v4 = __UIAccessibilityCastAsClass();

  v5 = [(NMBUIMediaTableCellAccessibility *)self safeValueForKey:@"control"];
  if (v5)
  {
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    v6 = [v4 arrangedSubviews];
    v7 = [v6 countByEnumeratingWithState:&v11 objects:v16 count:16];
    if (v7)
    {
      v8 = *v12;
      while (2)
      {
        for (i = 0; i != v7; i = i + 1)
        {
          if (*v12 != v8)
          {
            objc_enumerationMutation(v6);
          }

          if (*(*(&v11 + 1) + 8 * i) == v5)
          {
            LOBYTE(v7) = 1;
            goto LABEL_12;
          }
        }

        v7 = [v6 countByEnumeratingWithState:&v11 objects:v16 count:16];
        if (v7)
        {
          continue;
        }

        break;
      }
    }

LABEL_12:
  }

  else
  {
    LOBYTE(v7) = 0;
  }

  return v7;
}

@end