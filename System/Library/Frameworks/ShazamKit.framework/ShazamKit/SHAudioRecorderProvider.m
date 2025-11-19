@interface SHAudioRecorderProvider
+ (id)iOSAudioRecorders;
+ (id)macOSAudioRecorders;
+ (id)tvOSAudioRecorders;
+ (id)watchOSAudioRecorders;
@end

@implementation SHAudioRecorderProvider

+ (id)iOSAudioRecorders
{
  v2 = [[SHAudioRecorder alloc] initWithRecordingSource:2];
  v6[0] = v2;
  v3 = [[SHAudioRecorder alloc] initWithRecordingSource:1];
  v6[1] = v3;
  v4 = [NSArray arrayWithObjects:v6 count:2];

  return v4;
}

+ (id)watchOSAudioRecorders
{
  v2 = [[SHAudioRecorder alloc] initWithRecordingSource:2];
  v5 = v2;
  v3 = [NSArray arrayWithObjects:&v5 count:1];

  return v3;
}

+ (id)tvOSAudioRecorders
{
  v2 = [[SHAudioRecorder alloc] initWithRecordingSource:1];
  v5 = v2;
  v3 = [NSArray arrayWithObjects:&v5 count:1];

  return v3;
}

+ (id)macOSAudioRecorders
{
  v2 = [[SHAudioRecorder alloc] initWithRecordingSource:2];
  v6[0] = v2;
  v3 = [[SHAudioRecorder alloc] initWithRecordingSource:1];
  v6[1] = v3;
  v4 = [NSArray arrayWithObjects:v6 count:2];

  return v4;
}

@end