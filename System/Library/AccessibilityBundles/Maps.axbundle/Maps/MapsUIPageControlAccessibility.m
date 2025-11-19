@interface MapsUIPageControlAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (BOOL)_axScrollSteppingPageViewForward:(BOOL)a3;
- (void)accessibilityDecrement;
- (void)accessibilityIncrement;
@end

@implementation MapsUIPageControlAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"SteppingPageViewController"];
  [v3 validateClass:@"SteppingPageViewController" hasInstanceMethod:@"setSignIndex: animated:" withFullSignature:{"v", "q", "B", 0}];
}

- (BOOL)_axScrollSteppingPageViewForward:(BOOL)a3
{
  v3 = a3;
  v5 = [(MapsUIPageControlAccessibility *)self superview];
  v6 = [v5 _accessibilityViewController];

  NSClassFromString(&cfstr_Steppingpagevi.isa);
  isKindOfClass = objc_opt_isKindOfClass();
  if (isKindOfClass)
  {
    v8 = [(MapsUIPageControlAccessibility *)self currentPage];
    v9 = [MEMORY[0x29EDC7938] sharedApplication];
    if ([v9 userInterfaceLayoutDirection] == 1)
    {
      v10 = -1;
    }

    else
    {
      v10 = 1;
    }

    if (v3)
    {
      v11 = v10;
    }

    else
    {
      v11 = -v10;
    }

    if (v11 + v8 >= 0 && v11 + v8 < [(MapsUIPageControlAccessibility *)self numberOfPages])
    {
      v13 = v6;
      AXPerformSafeBlock();
      UIAccessibilityPostNotification(*MEMORY[0x29EDC7ED8], *MEMORY[0x29EDBDAE8]);
    }
  }

  return isKindOfClass & 1;
}

- (void)accessibilityIncrement
{
  if (![(MapsUIPageControlAccessibility *)self _axScrollSteppingPageViewForward:1])
  {
    v3.receiver = self;
    v3.super_class = MapsUIPageControlAccessibility;
    [(MapsUIPageControlAccessibility *)&v3 accessibilityIncrement];
  }
}

- (void)accessibilityDecrement
{
  if (![(MapsUIPageControlAccessibility *)self _axScrollSteppingPageViewForward:0])
  {
    v3.receiver = self;
    v3.super_class = MapsUIPageControlAccessibility;
    [(MapsUIPageControlAccessibility *)&v3 accessibilityDecrement];
  }
}

@end