@interface PreferredExternalRouteDidChangeNotificationSymbolLoc
@end

@implementation PreferredExternalRouteDidChangeNotificationSymbolLoc

void *__getAVSystemController_PreferredExternalRouteDidChangeNotificationSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaExperienceLibrary();
  result = dlsym(v2, "AVSystemController_PreferredExternalRouteDidChangeNotification");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getAVSystemController_PreferredExternalRouteDidChangeNotificationSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

@end