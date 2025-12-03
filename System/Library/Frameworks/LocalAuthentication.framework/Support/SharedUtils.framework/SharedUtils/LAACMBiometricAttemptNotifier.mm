@interface LAACMBiometricAttemptNotifier
- (void)notificationCenter:(id)center didReceiveNotification:(__CFString *)notification;
@end

@implementation LAACMBiometricAttemptNotifier

- (void)notificationCenter:(id)center didReceiveNotification:(__CFString *)notification
{
  if ([(__CFString *)notification isEqualToString:@"com.apple.BiometricKit.matchOperationStartAttempted"])
  {
    v4 = MEMORY[0x1E69AD208];

    [v4 notifyBiometricMatchOperationStartAttempted];
  }
}

@end