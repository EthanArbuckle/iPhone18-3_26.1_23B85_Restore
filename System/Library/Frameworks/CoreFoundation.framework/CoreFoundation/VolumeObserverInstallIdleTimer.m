@interface VolumeObserverInstallIdleTimer
@end

@implementation VolumeObserverInstallIdleTimer

uint64_t ___VolumeObserverInstallIdleTimer_block_invoke(uint64_t result)
{
  v1 = *(result + 32);
  if (v1 && *v1)
  {
    if ((*(v1 + 24) & 0x20) != 0)
    {
      result = (*(*(v1 + 40) + 16))();
      *(v1 + 24) &= ~0x20uLL;
    }

    *(v1 + 80) = 1;
  }

  return result;
}

@end