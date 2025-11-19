@interface AXRemoteElementAccessibility
@end

@implementation AXRemoteElementAccessibility

uint64_t __101__AXRemoteElementAccessibility__PosterKit__AXRuntime__accessibilityShouldHitTestRemoteElementProcess__block_invoke()
{
  v0 = MEMORY[0x29EDB8D80];
  v1 = NSClassFromString(&cfstr_Preditingscene.isa);
  _accessibilityShouldHitTestRemoteElementProcess_Classes = [v0 axArrayByIgnoringNilElementsWithCount:{2, v1, NSClassFromString(&cfstr_Pruisambientpo.isa)}];

  return MEMORY[0x2A1C71028]();
}

uint64_t __101__AXRemoteElementAccessibility__PosterKit__AXRuntime__accessibilityShouldHitTestRemoteElementProcess__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 _accessibilityViewController];
  v4 = [v2 _axIsKindOfClass:v3 fromArray:_accessibilityShouldHitTestRemoteElementProcess_Classes];

  return v4;
}

@end