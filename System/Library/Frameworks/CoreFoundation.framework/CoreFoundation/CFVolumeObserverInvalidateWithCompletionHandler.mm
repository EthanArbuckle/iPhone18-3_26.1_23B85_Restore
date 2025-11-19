@interface CFVolumeObserverInvalidateWithCompletionHandler
@end

@implementation CFVolumeObserverInvalidateWithCompletionHandler

void ___CFVolumeObserverInvalidateWithCompletionHandler_block_invoke(uint64_t a1)
{
  _VolumeObserverInvalidate(*(a1 + 40));
  v2 = *(a1 + 32);
  if (v2)
  {
    (*(v2 + 16))();
    v3 = *(a1 + 32);

    _Block_release(v3);
  }
}

@end