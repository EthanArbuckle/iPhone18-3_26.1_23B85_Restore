@interface INRideOption(WFRideOptionsLoader)
- (uint64_t)wf_isAvailableForPartySize:()WFRideOptionsLoader;
@end

@implementation INRideOption(WFRideOptionsLoader)

- (uint64_t)wf_isAvailableForPartySize:()WFRideOptionsLoader
{
  v5 = [a1 availablePartySizeOptions];
  v6 = [v5 count];

  v7 = 1;
  if (a3 && v6)
  {
    v11 = 0;
    v12 = &v11;
    v13 = 0x2020000000;
    v14 = 0;
    v8 = [a1 availablePartySizeOptions];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __64__INRideOption_WFRideOptionsLoader__wf_isAvailableForPartySize___block_invoke;
    v10[3] = &unk_278C1B118;
    v10[4] = &v11;
    v10[5] = a3;
    [v8 enumerateObjectsUsingBlock:v10];

    v7 = *(v12 + 24);
    _Block_object_dispose(&v11, 8);
  }

  return v7 & 1;
}

@end