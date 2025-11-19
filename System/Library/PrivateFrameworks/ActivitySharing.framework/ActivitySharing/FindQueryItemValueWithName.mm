@interface FindQueryItemValueWithName
@end

@implementation FindQueryItemValueWithName

uint64_t ___FindQueryItemValueWithName_block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 name];
  v4 = [v3 isEqualToString:*(a1 + 32)];

  return v4;
}

@end