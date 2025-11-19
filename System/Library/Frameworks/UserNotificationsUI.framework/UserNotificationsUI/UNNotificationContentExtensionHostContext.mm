@interface UNNotificationContentExtensionHostContext
@end

@implementation UNNotificationContentExtensionHostContext

void __85___UNNotificationContentExtensionHostContext__extensionDidUpdatePlayPauseMediaButton__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 notificationExtensionDidUpdatePlayPauseMediaButton:*(a1 + 32)];
}

void __99___UNNotificationContentExtensionHostContext__extensionDidCompleteNotificationResponse_withOption___block_invoke(void *a1)
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __99___UNNotificationContentExtensionHostContext__extensionDidCompleteNotificationResponse_withOption___block_invoke_2;
  block[3] = &unk_278B71820;
  v2 = a1[5];
  block[4] = a1[4];
  v3 = v2;
  v4 = a1[6];
  v6 = v3;
  v7 = v4;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __99___UNNotificationContentExtensionHostContext__extensionDidCompleteNotificationResponse_withOption___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 notificationExtension:*(a1 + 32) extensionDidCompleteResponse:*(a1 + 40) withOption:*(a1 + 48)];
}

void __75___UNNotificationContentExtensionHostContext__extensionMediaPlayingStarted__block_invoke(uint64_t a1)
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __75___UNNotificationContentExtensionHostContext__extensionMediaPlayingStarted__block_invoke_2;
  block[3] = &unk_278B716D0;
  block[4] = *(a1 + 32);
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __75___UNNotificationContentExtensionHostContext__extensionMediaPlayingStarted__block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 notificationExtensionMediaPlayingDidStart:*(a1 + 32)];
}

void __74___UNNotificationContentExtensionHostContext__extensionMediaPlayingPaused__block_invoke(uint64_t a1)
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __74___UNNotificationContentExtensionHostContext__extensionMediaPlayingPaused__block_invoke_2;
  block[3] = &unk_278B716D0;
  block[4] = *(a1 + 32);
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __74___UNNotificationContentExtensionHostContext__extensionMediaPlayingPaused__block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 notificationExtensionMediaPlayingDidPause:*(a1 + 32)];
}

void __77___UNNotificationContentExtensionHostContext__extensionRequestsDefaultAction__block_invoke(uint64_t a1)
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __77___UNNotificationContentExtensionHostContext__extensionRequestsDefaultAction__block_invoke_2;
  block[3] = &unk_278B716D0;
  block[4] = *(a1 + 32);
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __77___UNNotificationContentExtensionHostContext__extensionRequestsDefaultAction__block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 notificationExtensionRequestsDefaultAction:*(a1 + 32)];
}

void __71___UNNotificationContentExtensionHostContext__extensionRequestsDismiss__block_invoke(uint64_t a1)
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __71___UNNotificationContentExtensionHostContext__extensionRequestsDismiss__block_invoke_2;
  block[3] = &unk_278B716D0;
  block[4] = *(a1 + 32);
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __71___UNNotificationContentExtensionHostContext__extensionRequestsDismiss__block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 notificationExtensionRequestsDismiss:*(a1 + 32)];
}

void __71___UNNotificationContentExtensionHostContext__extensionDidUpdateTitle___block_invoke(uint64_t a1)
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __71___UNNotificationContentExtensionHostContext__extensionDidUpdateTitle___block_invoke_2;
  v2[3] = &unk_278B717F8;
  v1 = *(a1 + 40);
  v2[4] = *(a1 + 32);
  v3 = v1;
  dispatch_async(MEMORY[0x277D85CD0], v2);
}

void __71___UNNotificationContentExtensionHostContext__extensionDidUpdateTitle___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 notificationExtension:*(a1 + 32) didUpdateTitle:*(a1 + 40)];
}

void __85___UNNotificationContentExtensionHostContext__extensionDidUpdateNotificationActions___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = [MEMORY[0x277CCAAC8] unarchivedObjectOfClass:objc_opt_class() fromData:v4 error:0];
    if (v3)
    {
      [*(a1 + 32) addObject:v3];
    }
  }
}

void __85___UNNotificationContentExtensionHostContext__extensionDidUpdateNotificationActions___block_invoke_2(uint64_t a1)
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __85___UNNotificationContentExtensionHostContext__extensionDidUpdateNotificationActions___block_invoke_3;
  v2[3] = &unk_278B717F8;
  v1 = *(a1 + 40);
  v2[4] = *(a1 + 32);
  v3 = v1;
  dispatch_async(MEMORY[0x277D85CD0], v2);
}

void __85___UNNotificationContentExtensionHostContext__extensionDidUpdateNotificationActions___block_invoke_3(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 notificationExtension:*(a1 + 32) didUpdateNotificationActions:*(a1 + 40)];
}

@end