@interface GLPSubroutineUniformObject
@end

@implementation GLPSubroutineUniformObject

uint64_t __deserialize_GLPSubroutineUniformObject_block_invoke(uint64_t a1)
{
  v2 = (*(*(*(a1 + 32) + 240) + 8))(**(*(a1 + 32) + 240), 48, "Deserialized");
  *v2 = 0u;
  *(v2 + 32) = 0u;
  *(v2 + 16) = 0u;
  *v2 = deserialize_GLPString(*(a1 + 32));
  *(v2 + 8) = v3;
  v4 = *(a1 + 32);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 0x40000000;
  v6[2] = __deserialize_GLPType_block_invoke;
  v6[3] = &__block_descriptor_tmp_12;
  v6[4] = v4;
  deserialize_pointer(v4, v6, (v2 + 16));
  return v2;
}

@end