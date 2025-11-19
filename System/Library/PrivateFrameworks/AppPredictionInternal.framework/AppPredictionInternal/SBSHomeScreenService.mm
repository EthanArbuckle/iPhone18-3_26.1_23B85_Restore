@interface SBSHomeScreenService
@end

@implementation SBSHomeScreenService

uint64_t __56__SBSHomeScreenService_ATXSingleton__atx_sharedInstance__block_invoke()
{
  atx_sharedInstance_service = objc_opt_new();

  return MEMORY[0x2821F96F8]();
}

@end