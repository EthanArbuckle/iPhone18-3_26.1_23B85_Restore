@interface HWHandwritingItemColectionViewCellAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)accessibilityCustomActions;
- (id)accessibilityHint;
- (id)accessibilityLabel;
- (void)_axDelete;
@end

@implementation HWHandwritingItemColectionViewCellAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"HWHandwritingItemColectionViewCell" hasInstanceMethod:@"editing" withFullSignature:{"B", 0}];
  [validationsCopy validateClass:@"HWHandwritingItemColectionViewCell" hasInstanceMethod:@"deleteButton" withFullSignature:{"@", 0}];
}

- (id)accessibilityLabel
{
  v3 = accessibilityLocalizedString(@"handwritten.item");
  if ([(HWHandwritingItemColectionViewCellAccessibility *)self safeBoolForKey:@"editing"])
  {
    v6 = accessibilityLocalizedString(@"editing");
    v4 = __UIAXStringForVariables();

    v3 = v4;
  }

  return v3;
}

- (id)accessibilityHint
{
  if ([(HWHandwritingItemColectionViewCellAccessibility *)self safeBoolForKey:@"editing"])
  {
    v2 = @"handwritten.item.editing.hint";
  }

  else
  {
    v2 = @"handwritten.item.hint";
  }

  v3 = accessibilityLocalizedString(v2);

  return v3;
}

- (id)accessibilityCustomActions
{
  array = [MEMORY[0x29EDB8DE8] array];
  if ([(HWHandwritingItemColectionViewCellAccessibility *)self safeBoolForKey:@"editing"])
  {
    v4 = objc_alloc(MEMORY[0x29EDC78E0]);
    v5 = accessibilityLocalizedString(@"handwritten.item.delete.action");
    v6 = [v4 initWithName:v5 target:self selector:sel__axDelete];

    [v6 setSortPriority:*MEMORY[0x29EDC72F8]];
    [array addObject:v6];
  }

  return array;
}

- (void)_axDelete
{
  v2 = [(HWHandwritingItemColectionViewCellAccessibility *)self safeValueForKey:@"deleteButton"];
  [v2 accessibilityActivate];
}

@end