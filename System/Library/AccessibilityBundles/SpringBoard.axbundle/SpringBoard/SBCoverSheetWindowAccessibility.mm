@interface SBCoverSheetWindowAccessibility
- (BOOL)accessibilityElementsHidden;
@end

@implementation SBCoverSheetWindowAccessibility

- (BOOL)accessibilityElementsHidden
{
  if (AXSBOnenessOrXCUITestIsCurrentlyRequestingClientDuringContinuitySession())
  {
    return 1;
  }

  v3 = [MEMORY[0x29EDBDFA8] server];
  v4 = [v3 isControlCenterVisible];

  return v4;
}

@end