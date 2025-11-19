@interface FigRemote
@end

@implementation FigRemote

void __FigRemote_ReleaseAndClearLocalCAContextAndShutDownCAServer_block_invoke(uint64_t a1)
{
  v2 = dispatch_time(0, 100000000);
  v3 = *(a1 + 32);

  dispatch_after(v2, v3, &__block_literal_global_82);
}

uint64_t __FigRemote_ReleaseAndClearLocalCAContextAndShutDownCAServer_block_invoke_2()
{
  result = FigAtomicDecrement32();
  if (result <= 0)
  {

    JUMPOUT(0x19A8CC540);
  }

  return result;
}

@end