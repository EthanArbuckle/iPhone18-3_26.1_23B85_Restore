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

  server = [MEMORY[0x29EDBDFA8] server];
  isControlCenterVisible = [server isControlCenterVisible];

  return isControlCenterVisible;
}

@end