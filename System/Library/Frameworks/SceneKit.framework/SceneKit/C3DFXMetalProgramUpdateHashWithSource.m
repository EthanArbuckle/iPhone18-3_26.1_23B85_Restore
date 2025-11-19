@interface C3DFXMetalProgramUpdateHashWithSource
@end

@implementation C3DFXMetalProgramUpdateHashWithSource

CFHashCode ___C3DFXMetalProgramUpdateHashWithSource_block_invoke(uint64_t a1, CFTypeRef cf, const void *a3)
{
  v5 = CFHash(cf);
  result = CFHash(a3);
  v7 = *(*(a1 + 32) + 8);
  v8 = 0x9DDFEA08EB382D69 * (*(v7 + 56) ^ ((0x9DDFEA08EB382D69 * (*(v7 + 56) ^ v5)) >> 47) ^ (0x9DDFEA08EB382D69 * (*(v7 + 56) ^ v5)));
  *(v7 + 56) = 0x9DDFEA08EB382D69 * (v8 ^ (v8 >> 47));
  v9 = *(*(a1 + 32) + 8);
  v10 = *(v9 + 56);
  *(v9 + 56) = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v10 ^ ((0x9DDFEA08EB382D69 * (v10 ^ result)) >> 47) ^ (0x9DDFEA08EB382D69 * (v10 ^ result)))) ^ ((0x9DDFEA08EB382D69 * (v10 ^ ((0x9DDFEA08EB382D69 * (v10 ^ result)) >> 47) ^ (0x9DDFEA08EB382D69 * (v10 ^ result)))) >> 47));
  return result;
}

@end