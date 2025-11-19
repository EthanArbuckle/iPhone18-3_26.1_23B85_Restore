@interface VolumeObserverInvalidate
@end

@implementation VolumeObserverInvalidate

void ___VolumeObserverInvalidate_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 16);
  if (v3)
  {
    dispatch_release(v3);
    v2 = *(a1 + 32);
  }

  CFRelease(*(v2 + 48));
  CFRelease(*(*(a1 + 32) + 56));
  CFRelease(*(*(a1 + 32) + 64));
  CFRelease(*(*(a1 + 32) + 72));
  _Block_release(*(*(a1 + 32) + 40));
  v4 = *(a1 + 32);

  free(v4);
}

@end