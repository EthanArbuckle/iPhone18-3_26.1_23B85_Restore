@interface AFGetNowPlayingMediaContentItmes
@end

@implementation AFGetNowPlayingMediaContentItmes

void ___AFGetNowPlayingMediaContentItmes_block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  if (AFIsInternalInstall_onceToken != -1)
  {
    dispatch_once(&AFIsInternalInstall_onceToken, &__block_literal_global_164_46064);
  }

  if (AFIsInternalInstall_isInternal == 1)
  {
    dispatch_assert_queue_V2(*(a1 + 32));
  }

  if (a2)
  {
    v6 = a3;
    v9 = MRPlaybackQueueCopyContentItems();
    MRPlaybackQueueGetRange();
    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v7 = *(a1 + 40);
    v8 = *(v7 + 16);
    v9 = a3;
    v8(v7, 0, -1, 0);
  }
}

@end