@interface GLPTwoThings
@end

@implementation GLPTwoThings

uint64_t __deserialize_GLPTwoThings_block_invoke(uint64_t a1)
{
  v2 = (*(*(*(a1 + 32) + 240) + 8))(**(*(a1 + 32) + 240), 16, "Deserialized");
  deserialize_GLPNameTableEntry(*(a1 + 32), v2);
  deserialize_GLPNameTableEntry(*(a1 + 32), v2 + 8);
  return v2;
}

@end