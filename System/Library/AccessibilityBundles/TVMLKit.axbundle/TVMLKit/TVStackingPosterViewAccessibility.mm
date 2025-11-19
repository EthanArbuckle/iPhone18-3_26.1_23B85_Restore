@interface TVStackingPosterViewAccessibility
@end

@implementation TVStackingPosterViewAccessibility

BOOL __76___TVStackingPosterViewAccessibility__accessibilitySupplementaryFooterViews__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  v3 = ((objc_opt_isKindOfClass() & 1) != 0 || (NSClassFromString(&cfstr_Tvprogressview_0.isa), (objc_opt_isKindOfClass() & 1) != 0)) && ([v2 isAccessibilityElement] & 1) != 0;

  return v3;
}

Class __76___TVStackingPosterViewAccessibility__accessibilityShouldReverseComponents___block_invoke()
{
  result = NSClassFromString(&cfstr_Tvlabel_0.isa);
  _accessibilityShouldReverseComponents___TVLabelClass = result;
  return result;
}

uint64_t __65___TVStackingPosterViewAccessibility__accessibilityFrameDelegate__block_invoke()
{
  v0 = [objc_alloc(MEMORY[0x29EDB8DE8]) initWithCapacity:3];
  v1 = _accessibilityFrameDelegate_FrameDelegateClasses;
  _accessibilityFrameDelegate_FrameDelegateClasses = v0;

  [_accessibilityFrameDelegate_FrameDelegateClasses axSafelyAddObject:NSClassFromString(&cfstr_Tvimageview.isa)];
  v2 = _accessibilityFrameDelegate_FrameDelegateClasses;
  v3 = NSClassFromString(&cfstr_Tvmonogramview_0.isa);

  return [v2 axSafelyAddObject:v3];
}

@end