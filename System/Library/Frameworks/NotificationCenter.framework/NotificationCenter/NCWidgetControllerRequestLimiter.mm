@interface NCWidgetControllerRequestLimiter
@end

@implementation NCWidgetControllerRequestLimiter

uint64_t __51___NCWidgetControllerRequestLimiter_sharedInstance__block_invoke(uint64_t a1)
{
  sharedInstance___sharedInstance = objc_alloc_init(*(a1 + 32));

  return MEMORY[0x2821F96F8]();
}

@end