@interface GetMCRPForTargetSessionID
@end

@implementation GetMCRPForTargetSessionID

uint64_t __airplayReqProcessor_GetMCRPForTargetSessionID_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  CString = CFObjectGetCString();
  result = CFObjectGetInt64();
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (a3)
  {
    v7 = *(*(a1 + 40) + 8);
    if (!*(v7 + 24))
    {
      result = strcmp(CString, "control");
      if (!result)
      {
        v8 = *(a1 + 48);
        if (!v8 || v8 == *(*(*(a1 + 32) + 8) + 24))
        {
          *(v7 + 24) = a3;
        }
      }
    }
  }

  return result;
}

@end