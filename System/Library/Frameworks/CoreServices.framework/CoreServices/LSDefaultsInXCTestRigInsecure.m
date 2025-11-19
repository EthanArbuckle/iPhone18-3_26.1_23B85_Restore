@interface LSDefaultsInXCTestRigInsecure
@end

@implementation LSDefaultsInXCTestRigInsecure

void ___LSDefaultsInXCTestRigInsecure_block_invoke()
{
  if (_LSDefaultsIsAppleInternal_once != -1)
  {
    ___LSDefaultsInXCTestRigInsecure_block_invoke_cold_1();
  }

  if (_LSDefaultsIsAppleInternal_appleInternal == 1)
  {
    v0 = getprogname();
    v1 = strcasecmp(v0, "xctest") == 0;
  }

  else
  {
    v1 = 0;
  }

  _LSDefaultsInXCTestRigInsecure_inXCTestRigInsecure = v1;
}

@end