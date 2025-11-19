@interface VMRecordingEngineBuffer
+ (id)bufferWithAudioBuffer:(id)a3 audioTime:(id)a4;
- (VMRecordingEngineBuffer)initWithAudioBuffer:(id)a3 audioTime:(id)a4;
@end

@implementation VMRecordingEngineBuffer

- (VMRecordingEngineBuffer)initWithAudioBuffer:(id)a3 audioTime:(id)a4
{
  v6 = a3;
  v7 = a4;
  v14.receiver = self;
  v14.super_class = VMRecordingEngineBuffer;
  v8 = [(VMRecordingEngineBuffer *)&v14 init];
  if (v8)
  {
    v9 = [v6 copy];
    audioBuffer = v8->_audioBuffer;
    v8->_audioBuffer = v9;

    v11 = [v7 rc_copyFromTimeStamp];
    audioTime = v8->_audioTime;
    v8->_audioTime = v11;
  }

  return v8;
}

+ (id)bufferWithAudioBuffer:(id)a3 audioTime:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [[a1 alloc] initWithAudioBuffer:v7 audioTime:v6];

  return v8;
}

@end