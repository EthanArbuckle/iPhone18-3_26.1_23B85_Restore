@interface NMBUIMediaTableCellAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (BOOL)_axIsShowingControl;
- (CGPoint)accessibilityActivationPoint;
- (id)accessibilityValue;
- (unint64_t)accessibilityTraits;
@end

@implementation NMBUIMediaTableCellAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"NMBUIMediaTableCell" isKindOfClass:@"PSControlTableCell"];
  [validationsCopy validateClass:@"PSControlTableCell" hasInstanceMethod:@"control" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"NMBUIMediaTableCell" isKindOfClass:@"PSTableCell"];
  [validationsCopy validateClass:@"PSTableCell" hasInstanceMethod:@"titleLabel" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"NMBUIMediaTableCell" isKindOfClass:@"UITableViewCell"];
  [validationsCopy validateClass:@"UITableViewCell" hasInstanceMethod:@"detailTextLabel" withFullSignature:{"@", 0}];
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
  accessibilityTraits = [(NMBUIMediaTableCellAccessibility *)&v7 accessibilityTraits];
  if ([(NMBUIMediaTableCellAccessibility *)self _axIsShowingControl])
  {
    v4 = kAXToggleTrait;
    v5 = [(NMBUIMediaTableCellAccessibility *)self safeValueForKey:@"control"];
    accessibilityTraits |= v4 | [v5 accessibilityTraits];
  }

  return accessibilityTraits;
}

- (id)accessibilityValue
{
  if ([(NMBUIMediaTableCellAccessibility *)self _axIsShowingControl])
  {
    v3 = [(NMBUIMediaTableCellAccessibility *)self safeValueForKey:@"control"];
    accessibilityValue = [v3 accessibilityValue];
  }

  else
  {
    v6.receiver = self;
    v6.super_class = NMBUIMediaTableCellAccessibility;
    accessibilityValue = [(NMBUIMediaTableCellAccessibility *)&v6 accessibilityValue];
  }

  return accessibilityValue;
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
    arrangedSubviews = [v4 arrangedSubviews];
    v7 = [arrangedSubviews countByEnumeratingWithState:&v11 objects:v16 count:16];
    if (v7)
    {
      v8 = *v12;
      while (2)
      {
        for (i = 0; i != v7; i = i + 1)
        {
          if (*v12 != v8)
          {
            objc_enumerationMutation(arrangedSubviews);
          }

          if (*(*(&v11 + 1) + 8 * i) == v5)
          {
            LOBYTE(v7) = 1;
            goto LABEL_12;
          }
        }

        v7 = [arrangedSubviews countByEnumeratingWithState:&v11 objects:v16 count:16];
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