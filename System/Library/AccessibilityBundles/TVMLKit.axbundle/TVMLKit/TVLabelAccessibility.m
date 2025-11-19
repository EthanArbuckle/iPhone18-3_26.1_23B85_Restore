@interface TVLabelAccessibility
@end

@implementation TVLabelAccessibility

BOOL __44___TVLabelAccessibility_accessibilityTraits__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  NSClassFromString(&cfstr_Tvshelfviewhea.isa);
  if (objc_opt_isKindOfClass())
  {
    v3 = 1;
  }

  else
  {
    v4 = [v2 accessibilityTraits];
    v3 = (*MEMORY[0x29EDC7F80] & ~v4) == 0;
  }

  return v3;
}

@end