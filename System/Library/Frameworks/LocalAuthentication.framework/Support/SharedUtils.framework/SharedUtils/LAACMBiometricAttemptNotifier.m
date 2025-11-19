@interface LAACMBiometricAttemptNotifier
- (void)notificationCenter:(id)a3 didReceiveNotification:(__CFString *)a4;
@end

@implementation LAACMBiometricAttemptNotifier

- (void)notificationCenter:(id)a3 didReceiveNotification:(__CFString *)a4
{
  if ([(__CFString *)a4 isEqualToString:@"com.apple.BiometricKit.matchOperationStartAttempted"])
  {
    v4 = MEMORY[0x1E69AD208];

    [v4 notifyBiometricMatchOperationStartAttempted];
  }
}

@end