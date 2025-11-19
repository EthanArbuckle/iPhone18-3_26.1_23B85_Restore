@interface LSRemoveDefaultRoleHandlerForContentType
@end

@implementation LSRemoveDefaultRoleHandlerForContentType

void ___LSRemoveDefaultRoleHandlerForContentType_block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  *(*(*(a1 + 32) + 8) + 24) = _LSGetOSStatusFromNSError(v3);
}

void ___LSRemoveDefaultRoleHandlerForContentType_block_invoke_2(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  v6 = v5;
  if (a2)
  {
    *(*(*(a1 + 32) + 8) + 24) = 0;
    _LSContextUpdate(0, 1, 0);
  }

  else
  {
    *(*(*(a1 + 32) + 8) + 24) = _LSGetOSStatusFromNSError(v5);
  }
}

@end