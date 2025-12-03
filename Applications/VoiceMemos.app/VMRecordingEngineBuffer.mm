@interface VMRecordingEngineBuffer
+ (id)bufferWithAudioBuffer:(id)buffer audioTime:(id)time;
- (VMRecordingEngineBuffer)initWithAudioBuffer:(id)buffer audioTime:(id)time;
@end

@implementation VMRecordingEngineBuffer

- (VMRecordingEngineBuffer)initWithAudioBuffer:(id)buffer audioTime:(id)time
{
  bufferCopy = buffer;
  timeCopy = time;
  v14.receiver = self;
  v14.super_class = VMRecordingEngineBuffer;
  v8 = [(VMRecordingEngineBuffer *)&v14 init];
  if (v8)
  {
    v9 = [bufferCopy copy];
    audioBuffer = v8->_audioBuffer;
    v8->_audioBuffer = v9;

    rc_copyFromTimeStamp = [timeCopy rc_copyFromTimeStamp];
    audioTime = v8->_audioTime;
    v8->_audioTime = rc_copyFromTimeStamp;
  }

  return v8;
}

+ (id)bufferWithAudioBuffer:(id)buffer audioTime:(id)time
{
  timeCopy = time;
  bufferCopy = buffer;
  v8 = [[self alloc] initWithAudioBuffer:bufferCopy audioTime:timeCopy];

  return v8;
}

@end