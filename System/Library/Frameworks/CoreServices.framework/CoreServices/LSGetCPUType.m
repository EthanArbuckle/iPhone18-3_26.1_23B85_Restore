@interface LSGetCPUType
@end

@implementation LSGetCPUType

uint64_t ___LSGetCPUType_block_invoke()
{
  v3 = 0;
  v2 = 4;
  result = sysctlbyname("hw.cputype", &v3, &v2, 0, 0);
  if (!result)
  {
    v1 = v3;
    if (v3 == 7)
    {
      v1 = 16777223;
    }

    _LSGetCPUType::type = v1;
  }

  return result;
}

@end