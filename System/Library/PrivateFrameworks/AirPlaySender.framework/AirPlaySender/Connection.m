@interface Connection
@end

@implementation Connection

void *__getkCFACCProperties_Connection_MFi4Auth_AccessoryCertInfoToMatchSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = CoreAccessoriesLibrary();
  result = dlsym(v2, "kCFACCProperties_Connection_MFi4Auth_AccessoryCertInfoToMatch");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkCFACCProperties_Connection_MFi4Auth_AccessoryCertInfoToMatchSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

@end