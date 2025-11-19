@interface ImageIOSIMD
@end

@implementation ImageIOSIMD

void __ImageIOSIMD_GetVectorLevel_block_invoke()
{
  if (ImageIOSIMD_GetHardwareVectorLevel::hardwarePredicate != -1)
  {
    __ImageIOSIMD_GetVectorLevel_block_invoke_cold_1();
  }

  vectorLevel = ImageIOSIMD_GetHardwareVectorLevel::hardwareLevel;
}

uint64_t __ImageIOSIMD_GetHardwareVectorLevel_block_invoke()
{
  v4 = 0;
  v3 = 4;
  result = sysctlbyname("hw.optional.FEAT_FP16", &v4, &v3, 0, 0);
  if (v4)
  {
    v1 = result == 0;
  }

  else
  {
    v1 = 0;
  }

  v2 = 5;
  if (!v1)
  {
    v2 = 1;
  }

  ImageIOSIMD_GetHardwareVectorLevel::hardwareLevel = v2;
  return result;
}

@end