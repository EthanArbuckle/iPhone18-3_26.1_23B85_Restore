@interface AVControlItemAccessibilityAccessibility
@end

@implementation AVControlItemAccessibilityAccessibility

id __68__tvOS_AVControlItemAccessibilityAccessibility__startPiPControlItem__block_invoke()
{
  v0 = [MEMORY[0x29C2C6300](@"PBSPictureInPictureController") safeValueForKeyPath:@"sharedInstance.currentState"];
  if ([v0 safeBoolForKey:@"isPictureInPictureActive"])
  {
    v1 = @"pip.swap.button";
  }

  else
  {
    v1 = @"pip.start.button";
  }

  v2 = accessibilityLocalizedString(v1);

  return v2;
}

@end