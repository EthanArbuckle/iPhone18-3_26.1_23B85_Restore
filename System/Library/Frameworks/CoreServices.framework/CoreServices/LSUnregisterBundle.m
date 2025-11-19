@interface LSUnregisterBundle
@end

@implementation LSUnregisterBundle

uint64_t ___LSUnregisterBundle_block_invoke(uint64_t a1, uint64_t a2, int a3, _BYTE *a4)
{
  result = _LSBundleGet(**(a1 + 40), a3);
  v8 = *(a1 + 56) == a3 || result == 0;
  if (!v8 && *(result + 168) == 2 && *(result + 12) == *(*(a1 + 48) + 12))
  {
    *(*(*(a1 + 32) + 8) + 24) = 1;
    *a4 = 1;
  }

  return result;
}

void ___LSUnregisterBundle_block_invoke_186(uint64_t a1, void *a2)
{
  v3 = a2;
  *(*(*(a1 + 32) + 8) + 24) = _LSGetOSStatusFromNSError(v3);
}

void ___LSUnregisterBundle_block_invoke_2(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  v6 = v5;
  if (a2)
  {
    v7 = 0;
  }

  else
  {
    v8 = v5;
    v7 = _LSGetOSStatusFromNSError(v5);
    v6 = v8;
  }

  *(*(*(a1 + 32) + 8) + 24) = v7;
}

@end