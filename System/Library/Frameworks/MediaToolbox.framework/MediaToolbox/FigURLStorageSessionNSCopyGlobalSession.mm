@interface FigURLStorageSessionNSCopyGlobalSession
@end

@implementation FigURLStorageSessionNSCopyGlobalSession

void ___FigURLStorageSessionNSCopyGlobalSession_block_invoke()
{
  v0 = objc_autoreleasePoolPush();
  v1 = [MEMORY[0x1E695AC80] defaultSessionConfiguration];
  [v1 set_timingDataOptions:-1];
  v2 = figURLStorageSessionNSCommonCreate(*MEMORY[0x1E695E480], v1, 0, 0);
  if (v2)
  {
    sGlobalFigURLStorageSessionNS = v2;
  }

  else
  {
    ___FigURLStorageSessionNSCopyGlobalSession_block_invoke_cold_1();
  }

  objc_autoreleasePoolPop(v0);
}

@end