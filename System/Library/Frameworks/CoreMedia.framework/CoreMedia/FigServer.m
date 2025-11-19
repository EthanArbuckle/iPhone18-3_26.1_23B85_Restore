@interface FigServer
@end

@implementation FigServer

void __FigServer_InitializeWithEnvironment_block_invoke(uint64_t a1)
{
  if (checkFigRemotePrivTrace_onceToken != -1)
  {
    __FigServer_InitializeWithEnvironment_block_invoke_cold_1();
  }

  v2 = *(a1 + 32);
  if (v2 >= 0xA)
  {
    v2 = 10;
  }

  gServerEnvironment = v2;
}

dispatch_queue_t __FigServer_RememberProcessInfoForAFewSeconds_block_invoke()
{
  result = dispatch_queue_create("com.apple.coremedia.retain-process-info", 0);
  qword_1ED4CCDC0 = result;
  return result;
}

void __FigServer_RememberProcessInfoForAFewSeconds_block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    CFRelease(v1);
  }
}

@end