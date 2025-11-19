@interface BKDescribeSenderSet
@end

@implementation BKDescribeSenderSet

void ___BKDescribeSenderSet_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = ___BKDescribeSenderSet_block_invoke_2;
  v3[3] = &unk_2784F67D0;
  v4 = v1;
  [v4 appendCollection:v2 withName:0 itemBlock:v3];
}

@end