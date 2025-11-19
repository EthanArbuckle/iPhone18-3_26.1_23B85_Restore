@interface LSCopyRationalizedEnvironmentVariablesDict
@end

@implementation LSCopyRationalizedEnvironmentVariablesDict

void ___LSCopyRationalizedEnvironmentVariablesDict_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v5 = a3;
  if (_NSIsNSString() && ([v6 hasPrefix:@"DYLD"] & 1) == 0)
  {
    [*(a1 + 32) setObject:v5 forKeyedSubscript:v6];
  }
}

@end