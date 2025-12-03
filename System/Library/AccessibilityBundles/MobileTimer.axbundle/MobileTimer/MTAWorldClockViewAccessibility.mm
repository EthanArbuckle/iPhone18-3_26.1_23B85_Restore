@interface MTAWorldClockViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (BOOL)_accessibilityElementShouldBeInvalid;
- (BOOL)_axDeleteClock;
- (BOOL)isAccessibilityElement;
- (id)accessibilityCustomActions;
- (id)accessibilityLabel;
@end

@implementation MTAWorldClockViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"MTAWorldClockView" hasInstanceMethod:@"cityNameLabel" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"MTAWorldClockView" hasInstanceMethod:@"timeZoneOffsetLabel" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"MTAWorldClockView" hasInstanceMethod:@"sunriseLabel" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"MTAWorldClockView" hasInstanceMethod:@"sunsetLabel" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"MTAWorldClockCollectionCell" hasInstanceMethod:@"deleteTapped:" withFullSignature:{"v", "@", 0}];
}

- (id)accessibilityLabel
{
  v3 = [(MTAWorldClockViewAccessibility *)self safeValueForKey:@"cityNameLabel"];
  accessibilityLabel = [v3 accessibilityLabel];

  v5 = [(MTAWorldClockViewAccessibility *)self safeValueForKey:@"analogClock"];
  accessibilityLabel2 = [v5 accessibilityLabel];

  v7 = [(MTAWorldClockViewAccessibility *)self safeValueForKey:@"timeZoneOffsetLabel"];
  accessibilityLabel3 = [v7 accessibilityLabel];

  v9 = [(MTAWorldClockViewAccessibility *)self safeValueForKey:@"sunriseLabel"];
  accessibilityLabel4 = [v9 accessibilityLabel];

  v11 = [(MTAWorldClockViewAccessibility *)self safeValueForKey:@"sunsetLabel"];
  accessibilityLabel5 = [v11 accessibilityLabel];

  v13 = __UIAXStringForVariables();

  return v13;
}

- (BOOL)isAccessibilityElement
{
  _accessibilityElementShouldBeInvalid = [(MTAWorldClockViewAccessibility *)self _accessibilityElementShouldBeInvalid];
  v4 = [(MTAWorldClockViewAccessibility *)self _accessibilityAncestorIsKindOf:MEMORY[0x29C2E1AE0](@"FullScreenWorldClockCollectionCell")];

  return v4 == 0 && !_accessibilityElementShouldBeInvalid;
}

- (BOOL)_accessibilityElementShouldBeInvalid
{
  MEMORY[0x29C2E1AE0](@"MTAWorldClockCollectionCell", a2);
  v3 = [(MTAWorldClockViewAccessibility *)self _accessibilityAncestorIsKindOf:objc_opt_class()];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 safeValueForKey:@"alpha"];
    [v5 floatValue];
    if (v6 <= 0.0)
    {
      bOOLValue = 1;
    }

    else
    {
      v7 = [(MTAWorldClockViewAccessibility *)self safeValueForKey:@"isHidden"];
      bOOLValue = [v7 BOOLValue];
    }
  }

  else
  {
    bOOLValue = 0;
  }

  return bOOLValue;
}

- (id)accessibilityCustomActions
{
  v3 = MEMORY[0x29EDB8DE8];
  v10.receiver = self;
  v10.super_class = MTAWorldClockViewAccessibility;
  accessibilityCustomActions = [(MTAWorldClockViewAccessibility *)&v10 accessibilityCustomActions];
  v5 = [v3 arrayWithArray:accessibilityCustomActions];

  v6 = objc_alloc(MEMORY[0x29EDC78E0]);
  v7 = accessibilityLocalizedString(@"clock.delete");
  v8 = [v6 initWithName:v7 target:self selector:sel__axDeleteClock];

  [v8 setSortPriority:*MEMORY[0x29EDC72F8]];
  [v5 addObject:v8];

  return v5;
}

- (BOOL)_axDeleteClock
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  v2 = [(MTAWorldClockViewAccessibility *)self _accessibilityAncestorIsKindOf:MEMORY[0x29C2E1AE0](@"MTAWorldClockCollectionCell", a2)];
  v3 = v2;
  if (v2)
  {
    v6 = v2;
    AXPerformSafeBlock();
  }

  v4 = *(v8 + 24);

  _Block_object_dispose(&v7, 8);
  return v4;
}

uint64_t __48__MTAWorldClockViewAccessibility__axDeleteClock__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) deleteTapped:0];
  *(*(*(a1 + 40) + 8) + 24) = 1;
  return result;
}

@end