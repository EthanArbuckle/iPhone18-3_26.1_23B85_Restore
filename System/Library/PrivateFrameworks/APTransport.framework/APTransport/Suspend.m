@interface Suspend
@end

@implementation Suspend

void __lowPowerKeepAliveController_Suspend_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (*(v1 + 32))
  {
    v3 = *(v1 + 24);
    if (v3)
    {
      dispatch_source_cancel(*(v1 + 24));
      dispatch_release(v3);
      *(*(a1 + 32) + 24) = 0;
    }

    if (gLogCategory_APTKeepAliveControllerLowPower <= 50 && (gLogCategory_APTKeepAliveControllerLowPower != -1 || _LogCategory_Initialize()))
    {
      __lowPowerKeepAliveController_Suspend_block_invoke_cold_1(a1);
    }

    *(*(a1 + 32) + 32) = 0;
  }
}

@end