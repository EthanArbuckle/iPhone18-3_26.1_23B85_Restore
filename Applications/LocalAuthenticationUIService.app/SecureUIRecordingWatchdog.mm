@interface SecureUIRecordingWatchdog
- (void)recordingStarted:(BOOL)started;
@end

@implementation SecureUIRecordingWatchdog

- (void)recordingStarted:(BOOL)started
{

  SecureUIRecordingWatchdog.recordingStarted(_:)(started);
}

@end