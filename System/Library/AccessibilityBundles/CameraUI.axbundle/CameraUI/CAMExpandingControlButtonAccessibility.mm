@interface CAMExpandingControlButtonAccessibility
@end

@implementation CAMExpandingControlButtonAccessibility

uint64_t __68___CAMExpandingControlButtonAccessibility__axCameraExpandingControl__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  MEMORY[0x29C2CF1C0](@"CAMExpandingControl");
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

@end