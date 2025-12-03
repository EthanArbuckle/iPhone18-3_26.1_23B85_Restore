@interface SafariUIPageControlAccessibility
- (BOOL)_accessibilityAdjustInDirection:(BOOL)direction;
- (id)accessibilityValue;
- (unint64_t)accessibilityTraits;
- (void)accessibilityDecrement;
- (void)accessibilityIncrement;
@end

@implementation SafariUIPageControlAccessibility

- (unint64_t)accessibilityTraits
{
  v3.receiver = self;
  v3.super_class = SafariUIPageControlAccessibility;
  return *MEMORY[0x29EDC7F60] | [(SafariUIPageControlAccessibility *)&v3 accessibilityTraits];
}

- (BOOL)_accessibilityAdjustInDirection:(BOOL)direction
{
  directionCopy = direction;
  v5 = [(SafariUIPageControlAccessibility *)self safeValueForKey:@"currentPage"];
  integerValue = [v5 integerValue];

  v7 = [(SafariUIPageControlAccessibility *)self safeValueForKey:@"numberOfPages"];
  integerValue2 = [v7 integerValue];

  v9 = 0;
  v10 = integerValue - 1;
  if (directionCopy)
  {
    v10 = integerValue + 1;
  }

  if ((v10 & 0x8000000000000000) == 0 && v10 < integerValue2)
  {
    v12 = 0;
    v13 = &v12;
    v14 = 0x2020000000;
    v15 = 0;
    AXPerformSafeBlock();
    LastIncrementTime = CFAbsoluteTimeGetCurrent();
    v9 = *(v13 + 24);
    _Block_object_dispose(&v12, 8);
  }

  return v9 & 1;
}

void __68__SafariUIPageControlAccessibility__accessibilityAdjustInDirection___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _accessibilityAncestorIsKindOf:NSClassFromString(&cfstr_Pagedtabexpose.isa)];
  v4 = [v2 safeValueForKey:@"_scrollView"];

  if (v4)
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
  }

  MEMORY[0x29C2E0C60](*MEMORY[0x29EDC7F10]);
  if (*(a1 + 48))
  {
    v3 = 2;
  }

  else
  {
    v3 = 1;
  }

  [v4 accessibilityScroll:v3];
}

- (id)accessibilityValue
{
  if (CFAbsoluteTimeGetCurrent() - *&LastIncrementTime >= 0.1)
  {
    v5.receiver = self;
    v5.super_class = SafariUIPageControlAccessibility;
    accessibilityValue = [(SafariUIPageControlAccessibility *)&v5 accessibilityValue];
  }

  else
  {
    accessibilityValue = 0;
  }

  return accessibilityValue;
}

- (void)accessibilityIncrement
{
  if (![(SafariUIPageControlAccessibility *)self _accessibilityAdjustInDirection:1])
  {
    v3.receiver = self;
    v3.super_class = SafariUIPageControlAccessibility;
    [(SafariUIPageControlAccessibility *)&v3 accessibilityIncrement];
  }
}

- (void)accessibilityDecrement
{
  if (![(SafariUIPageControlAccessibility *)self _accessibilityAdjustInDirection:0])
  {
    v3.receiver = self;
    v3.super_class = SafariUIPageControlAccessibility;
    [(SafariUIPageControlAccessibility *)&v3 accessibilityDecrement];
  }
}

@end