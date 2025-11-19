@interface SFSafariViewControllerPrewarmingRequestThrottler
@end

@implementation SFSafariViewControllerPrewarmingRequestThrottler

void __71___SFSafariViewControllerPrewarmingRequestThrottler__startRequestTimer__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained _stopRequestTimer];
    [v2 _performNextRequest];
    WeakRetained = v2;
  }
}

@end