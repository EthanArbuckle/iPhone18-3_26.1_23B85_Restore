@interface EnsureClientEstablishedAsync
@end

@implementation EnsureClientEstablishedAsync

uint64_t __remoteXPCVideoTargetClient_EnsureClientEstablishedAsync_block_invoke(uint64_t a1, int a2, int a3)
{
  if (!a2 && a3 != 1)
  {
    FigSignalErrorAtGM();
  }

  v4 = *(*(a1 + 32) + 16);

  return v4();
}

@end