@interface NPLPersonViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (BOOL)_accessibilityIsAddPersonSlot;
- (BOOL)isAccessibilityElement;
- (id)_accessibilityPeopleViewController;
- (id)accessibilityHint;
- (id)accessibilityLabel;
- (id)accessibilityValue;
- (int64_t)_accessibilityStyle;
- (unint64_t)accessibilityTraits;
- (void)accessibilityDecrement;
- (void)accessibilityIncrement;
@end

@implementation NPLPersonViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"NPLPersonView" hasInstanceMethod:@"person" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"NPLPersonView" hasInstanceMethod:@"position" withFullSignature:{"Q", 0}];
  [validationsCopy validateClass:@"NPLPersonView" hasInstanceVariable:@"_style" withType:"q"];
  [validationsCopy validateClass:@"FKPerson" hasInstanceMethod:@"displayName" withFullSignature:{"@", 0}];
}

- (BOOL)isAccessibilityElement
{
  if (![(NPLPersonViewAccessibility *)self _accessibilityShouldEmptySlotsBeIgnored])
  {
    return 1;
  }

  v3 = [(NPLPersonViewAccessibility *)self safeValueForKey:@"person"];
  if (v3)
  {
    v4 = 1;
  }

  else
  {
    v4 = [(NPLPersonViewAccessibility *)self _accessibilityStyle]!= 0;
  }

  return v4;
}

- (id)accessibilityLabel
{
  if ([(NPLPersonViewAccessibility *)self _accessibilityIsAddPersonSlot])
  {
    v3 = accessibilityLocalizedString(@"people.add.person");
  }

  else
  {
    v4 = [(NPLPersonViewAccessibility *)self safeValueForKey:@"person"];
    v3 = [v4 safeValueForKey:@"displayName"];
  }

  return v3;
}

- (id)accessibilityValue
{
  if ([(NPLPersonViewAccessibility *)self _accessibilityEditingFriendsDialViewAllowed])
  {
    [(NPLPersonViewAccessibility *)self safeUnsignedIntegerForKey:@"position"];
    v3 = accessibilityLocalizedString(@"dial.person.position");
    v4 = AXFormatInteger();
    v5 = [NSString stringWithFormat:v3, v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (unint64_t)accessibilityTraits
{
  v5.receiver = self;
  v5.super_class = NPLPersonViewAccessibility;
  v3 = UIAccessibilityTraitButton | [(NPLPersonViewAccessibility *)&v5 accessibilityTraits];
  if ([(NPLPersonViewAccessibility *)self _accessibilityEditingFriendsDialViewAllowed]&& ![(NPLPersonViewAccessibility *)self _accessibilityIsAddPersonSlot])
  {
    v3 |= UIAccessibilityTraitAdjustable;
  }

  return v3;
}

- (void)accessibilityIncrement
{
  v3 = [(NPLPersonViewAccessibility *)self safeUnsignedIntegerForKey:@"position"];
  _accessibilityPeopleViewController = [(NPLPersonViewAccessibility *)self _accessibilityPeopleViewController];
  [_accessibilityPeopleViewController _accessibilitySwapPeopleAtIndex:v3 andIndex:(v3 + 1) % 0xC];
}

- (void)accessibilityDecrement
{
  v3 = [(NPLPersonViewAccessibility *)self safeUnsignedIntegerForKey:@"position"];
  v4 = v3;
  if (v3)
  {
    v5 = v3 - 1;
  }

  else
  {
    v5 = 11;
  }

  _accessibilityPeopleViewController = [(NPLPersonViewAccessibility *)self _accessibilityPeopleViewController];
  [_accessibilityPeopleViewController _accessibilitySwapPeopleAtIndex:v4 andIndex:v5];
}

- (id)accessibilityHint
{
  if ([(NPLPersonViewAccessibility *)self _accessibilityEditingFriendsDialViewAllowed])
  {
    if ([(NPLPersonViewAccessibility *)self _accessibilityIsAddPersonSlot])
    {
      v3 = 0;
      goto LABEL_11;
    }

    v6 = @"reorder.person.hint";
  }

  else
  {
    _accessibilityStyle = [(NPLPersonViewAccessibility *)self _accessibilityStyle];
    v5 = @"person.hint";
    if (_accessibilityStyle == 2)
    {
      v5 = @"person.triple.tap.hint";
    }

    if (_accessibilityStyle == 1)
    {
      v6 = @"person.crown.hint";
    }

    else
    {
      v6 = v5;
    }
  }

  v3 = accessibilityLocalizedString(v6);
LABEL_11:

  return v3;
}

- (int64_t)_accessibilityStyle
{
  result = [(NPLPersonViewAccessibility *)self safeIvarForKey:@"_style"];
  if (result)
  {
    return *result;
  }

  return result;
}

- (BOOL)_accessibilityIsAddPersonSlot
{
  v2 = [(NPLPersonViewAccessibility *)self safeValueForKey:@"person"];
  v3 = v2 == 0;

  return v3;
}

- (id)_accessibilityPeopleViewController
{
  v2 = [(NPLPersonViewAccessibility *)self _accessibilityFindAncestor:&__block_literal_global_0 startWithSelf:0];
  _accessibilityViewController = [v2 _accessibilityViewController];

  return _accessibilityViewController;
}

BOOL __64__NPLPersonViewAccessibility__accessibilityPeopleViewController__block_invoke(id a1, id a2)
{
  v2 = [a2 _accessibilityViewController];
  AXSafeClassFromString();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

@end