@interface SecureUIRecordingWatchdog
- (void)recordingStarted:(BOOL)started;
@end

@implementation SecureUIRecordingWatchdog

- (void)recordingStarted:(BOOL)started
{

  sub_10002BB80(started);
}

@end