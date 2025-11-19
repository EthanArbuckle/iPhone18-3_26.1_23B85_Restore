@interface PBA
@end

@implementation PBA

uint64_t __63__PBA_SBUICallToActionLabelAccessibility_accessibilityActivate__block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 _accessibilityViewController];
  NSClassFromString(&cfstr_Pbadeviceunloc_0.isa);
  if (objc_opt_isKindOfClass())
  {
    v4 = 32;
  }

  else
  {
    NSClassFromString(&cfstr_Pbadatarecover_0.isa);
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_6;
    }

    v4 = 40;
  }

  *(*(*(a1 + v4) + 8) + 24) = 1;
LABEL_6:
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    v5 = 1;
  }

  else
  {
    v5 = *(*(*(a1 + 40) + 8) + 24);
  }

  return v5 & 1;
}

@end