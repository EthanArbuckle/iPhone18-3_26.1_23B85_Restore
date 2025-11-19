@interface INRideOption
@end

@implementation INRideOption

void __64__INRideOption_WFRideOptionsLoader__wf_isAvailableForPartySize___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = a2;
  v7 = *(a1 + 40);
  v12 = v6;
  if (v7 >= [v6 partySizeRange])
  {
    v9 = *(a1 + 40);
    v10 = v9 - [v12 partySizeRange];
    [v12 partySizeRange];
    v8 = v10 <= v11;
  }

  else
  {
    v8 = 0;
  }

  *(*(*(a1 + 32) + 8) + 24) = v8;
  *a4 = *(*(*(a1 + 32) + 8) + 24);
}

@end