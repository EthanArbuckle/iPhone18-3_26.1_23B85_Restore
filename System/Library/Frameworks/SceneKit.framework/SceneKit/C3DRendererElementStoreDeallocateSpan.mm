@interface C3DRendererElementStoreDeallocateSpan
@end

@implementation C3DRendererElementStoreDeallocateSpan

uint64_t ____C3DRendererElementStoreDeallocateSpan_block_invoke(uint64_t a1, uint64_t a2)
{
  ProgramHashCodeStore = C3DEngineContextGetProgramHashCodeStore(a2);
  C3DProgramHashCodeStoreInvalidateRendererElementSpan(ProgramHashCodeStore, *(a1 + 32));
  SortSystem = C3DEngineContextGetSortSystem(a2);
  v6 = *(a1 + 32);

  return C3DSortSystemInvalidateKeyForRendererElementSpan(SortSystem, v6);
}

@end