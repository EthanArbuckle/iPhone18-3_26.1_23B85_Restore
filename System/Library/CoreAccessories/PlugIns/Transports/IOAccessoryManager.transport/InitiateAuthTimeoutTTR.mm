@interface InitiateAuthTimeoutTTR
@end

@implementation InitiateAuthTimeoutTTR

void __acc_tapToRadar_InitiateAuthTimeoutTTR_block_invoke()
{
  v1 = 0xAAAAAAAAAAAAAAAALL;
  v0 = CFUserNotificationDisplayAlert(0.0, 0, 0, 0, 0, @"Accessory Authentication Timeout\n File a Radar?", 0, @"Not Now", @"Yes", 0, &v1);
  acc_tapToRadar_InitiateAuthTimeoutTTR_isAlertPending = 0;
  if (!v0 && v1 == 1)
  {
    _acc_tapToRadar_authFailure(1);
  }
}

@end