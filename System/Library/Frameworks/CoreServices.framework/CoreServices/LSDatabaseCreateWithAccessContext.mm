@interface LSDatabaseCreateWithAccessContext
@end

@implementation LSDatabaseCreateWithAccessContext

_LSDatabase *___LSDatabaseCreateWithAccessContext_block_invoke(uint64_t a1, unsigned int a2)
{
  result = objc_loadWeakRetained((a1 + 32));
  if (result)
  {
    _LSDatabaseHandleUnitExhaustion(result, a2);
  }

  return result;
}

@end