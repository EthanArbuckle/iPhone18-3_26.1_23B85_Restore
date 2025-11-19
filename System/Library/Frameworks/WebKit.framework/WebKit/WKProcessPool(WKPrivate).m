@interface WKProcessPool(WKPrivate)
- (uint64_t)_getActivePagesOriginsInWebProcessForTesting:()WKPrivate completionHandler:;
- (uint64_t)_isJITDisabledInAllRemoteWorkerProcesses:()WKPrivate;
- (uint64_t)_seedResourceLoadStatisticsForTestingWithFirstParty:()WKPrivate thirdParty:shouldScheduleNotification:completionHandler:;
- (void)_getActivePagesOriginsInWebProcessForTesting:()WKPrivate completionHandler:;
@end

@implementation WKProcessPool(WKPrivate)

- (uint64_t)_isJITDisabledInAllRemoteWorkerProcesses:()WKPrivate
{
  *a1 = &unk_1F10F87B0;
  _Block_release(a1[1]);

  return WTF::fastFree(a1, v2);
}

- (uint64_t)_getActivePagesOriginsInWebProcessForTesting:()WKPrivate completionHandler:
{
  *a1 = &unk_1F10F87D8;
  _Block_release(a1[1]);

  return WTF::fastFree(a1, v2);
}

- (void)_getActivePagesOriginsInWebProcessForTesting:()WKPrivate completionHandler:
{
  WTF::createNSArray<WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &>(a2, &v4);
  (*(*(a1 + 8) + 16))();
  v3 = v4;
  v4 = 0;
  if (v3)
  {
  }
}

- (uint64_t)_seedResourceLoadStatisticsForTestingWithFirstParty:()WKPrivate thirdParty:shouldScheduleNotification:completionHandler:
{
  *a1 = &unk_1F10F8800;
  _Block_release(a1[1]);

  return WTF::fastFree(a1, v2);
}

@end