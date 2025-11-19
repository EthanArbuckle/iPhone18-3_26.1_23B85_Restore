@interface CTServerConnectionCreateWithIdentifierSymbolLoc
@end

@implementation CTServerConnectionCreateWithIdentifierSymbolLoc

void *__get_CTServerConnectionCreateWithIdentifierSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = CoreTelephonyLibrary_20875();
  result = dlsym(v2, "_CTServerConnectionCreateWithIdentifier");
  *(*(*(a1 + 32) + 8) + 24) = result;
  get_CTServerConnectionCreateWithIdentifierSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

@end