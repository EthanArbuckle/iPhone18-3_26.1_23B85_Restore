@interface NSURLSessionConfiguration
@end

@implementation NSURLSessionConfiguration

void __61__NSURLSessionConfiguration_AppleMediaServices___URLBagCache__block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x1E695AC38] sharedURLCache];
  v3 = _MergedGlobals_168;
  _MergedGlobals_168 = v2;

  if (os_variant_has_internal_content())
  {
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    v5 = *(a1 + 32);

    CFNotificationCenterAddObserver(DarwinNotifyCenter, v5, _handleClearCachesNotification_0, @"com.apple.AMS.ClearNSURLCache", 0, CFNotificationSuspensionBehaviorDrop);
  }
}

uint64_t __81__NSURLSessionConfiguration_AppleMediaServices__ams_configureWithClientInfo_bag___block_invoke(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) set_allowsTLSSessionTickets:a2];
  v3 = *(a1 + 40);

  return [v3 finishWithSuccess];
}

uint64_t __81__NSURLSessionConfiguration_AppleMediaServices__ams_configureWithClientInfo_bag___block_invoke_2(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) set_allowsTCPFastOpen:a2];
  v3 = *(a1 + 40);

  return [v3 finishWithSuccess];
}

@end