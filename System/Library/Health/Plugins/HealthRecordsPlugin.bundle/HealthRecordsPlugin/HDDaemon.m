@interface HDDaemon
- (HDHealthRecordsDaemonExtension)healthRecordsDaemonExtension;
@end

@implementation HDDaemon

- (HDHealthRecordsDaemonExtension)healthRecordsDaemonExtension
{
  v4 = [(HDDaemon *)self daemonExtensionWithIdentifier:HKHealthRecordsPluginIdentifier];
  if (!v4)
  {
    sub_A93A0(a2, self);
  }

  return v4;
}

@end