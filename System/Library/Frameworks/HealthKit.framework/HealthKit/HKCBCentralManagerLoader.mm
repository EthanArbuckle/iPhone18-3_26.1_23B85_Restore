@interface HKCBCentralManagerLoader
@end

@implementation HKCBCentralManagerLoader

void __61___HKCBCentralManagerLoader_getCentralManagerWithCompletion___block_invoke(uint64_t a1)
{
  if ([*(*(a1 + 32) + 8) state] == 5)
  {
    v2 = *(*(a1 + 32) + 8);
    v3 = *(*(a1 + 40) + 16);

    v3();
  }

  else
  {
    v4 = *(a1 + 40);
    v5 = *(*(a1 + 32) + 24);
    v7 = [v4 copy];
    v6 = _Block_copy(v7);
    [v5 addObject:v6];
  }
}

@end