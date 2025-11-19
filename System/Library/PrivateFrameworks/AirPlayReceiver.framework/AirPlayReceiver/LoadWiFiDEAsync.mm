@interface LoadWiFiDEAsync
@end

@implementation LoadWiFiDEAsync

void ___LoadWiFiDEAsync_block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = [MEMORY[0x277D051D0] sharedInstance];
  [v3 loadExtensions];
  v4 = [v3 extensionForIdentifier:@"com.apple.DiagnosticExtensions.WiFi"];
  if (gLogCategory_AirPlayReceiverPlatform <= 50 && (gLogCategory_AirPlayReceiverPlatform != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  v5 = *(a1 + 32);
  v6 = *(*(v5 + 8) + 88);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = ___LoadWiFiDEAsync_block_invoke_2;
  v7[3] = &unk_278C60A08;
  v7[4] = v5;
  v7[5] = v4;
  dispatch_sync(v6, v7);
  objc_autoreleasePoolPop(v2);
  CFRelease(*(*(a1 + 32) + 8));
}

void ___LoadWiFiDEAsync_block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  v4 = *(v1 + 56);
  v3 = v2;
  *(v1 + 56) = v2;
}

@end