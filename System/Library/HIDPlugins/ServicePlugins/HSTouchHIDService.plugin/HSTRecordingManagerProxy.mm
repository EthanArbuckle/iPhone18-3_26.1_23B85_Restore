@interface HSTRecordingManagerProxy
- (BOOL)saveRecording:(id)recording;
@end

@implementation HSTRecordingManagerProxy

- (BOOL)saveRecording:(id)recording
{
  recordingCopy = recording;
  v8 = recordingCopy;
  v5 = [NSArray arrayWithObjects:&v8 count:1];
  v6 = [(HSTRecordingManagerProxy *)self HSTRecordingManagerProxy_saveRecording:v5];

  LOBYTE(self) = [v6 BOOLValue];
  return self;
}

@end