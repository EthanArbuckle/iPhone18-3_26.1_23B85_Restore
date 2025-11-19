@interface SFUserActivityController
@end

@implementation SFUserActivityController

void __53___SFUserActivityController_sharedActivityController__block_invoke(uint64_t a1)
{
  v1 = objc_alloc_init(*(a1 + 32));
  v2 = +[_SFUserActivityController sharedActivityController]::sharedController;
  +[_SFUserActivityController sharedActivityController]::sharedController = v1;
}

@end