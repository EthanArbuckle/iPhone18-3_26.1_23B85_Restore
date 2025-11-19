@interface LSRegisterExtensionPointClient
@end

@implementation LSRegisterExtensionPointClient

uint64_t ___LSRegisterExtensionPointClient_block_invoke(uint64_t a1, void *a2)
{
  result = _LSGetOSStatusFromNSError(a2);
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

uint64_t ___LSRegisterExtensionPointClient_block_invoke_2(uint64_t a1, char a2, void *a3)
{
  if (a2)
  {
    result = 0;
  }

  else
  {
    result = _LSGetOSStatusFromNSError(a3);
  }

  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

@end