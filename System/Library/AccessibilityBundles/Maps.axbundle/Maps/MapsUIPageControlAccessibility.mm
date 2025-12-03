@interface MapsUIPageControlAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (BOOL)_axScrollSteppingPageViewForward:(BOOL)forward;
- (void)accessibilityDecrement;
- (void)accessibilityIncrement;
@end

@implementation MapsUIPageControlAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"SteppingPageViewController"];
  [validationsCopy validateClass:@"SteppingPageViewController" hasInstanceMethod:@"setSignIndex: animated:" withFullSignature:{"v", "q", "B", 0}];
}

- (BOOL)_axScrollSteppingPageViewForward:(BOOL)forward
{
  forwardCopy = forward;
  superview = [(MapsUIPageControlAccessibility *)self superview];
  _accessibilityViewController = [superview _accessibilityViewController];

  NSClassFromString(&cfstr_Steppingpagevi.isa);
  isKindOfClass = objc_opt_isKindOfClass();
  if (isKindOfClass)
  {
    currentPage = [(MapsUIPageControlAccessibility *)self currentPage];
    mEMORY[0x29EDC7938] = [MEMORY[0x29EDC7938] sharedApplication];
    if ([mEMORY[0x29EDC7938] userInterfaceLayoutDirection] == 1)
    {
      v10 = -1;
    }

    else
    {
      v10 = 1;
    }

    if (forwardCopy)
    {
      v11 = v10;
    }

    else
    {
      v11 = -v10;
    }

    if (v11 + currentPage >= 0 && v11 + currentPage < [(MapsUIPageControlAccessibility *)self numberOfPages])
    {
      v13 = _accessibilityViewController;
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