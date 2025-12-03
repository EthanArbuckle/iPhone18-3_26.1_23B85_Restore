@interface HSRecordingPlaybackStageProxy
- (float)playbackProgress;
- (int)mode;
- (unint64_t)recordingSize;
- (void)playbackSetProgress:(float)progress dispatchEvent:(BOOL)event;
- (void)recordingSetMaxSize:(unint64_t)size;
- (void)setMode:(int)mode;
@end

@implementation HSRecordingPlaybackStageProxy

- (int)mode
{
  hSRecordingPlaybackStageProxy_0mode = [(HSRecordingPlaybackStageProxy *)self HSRecordingPlaybackStageProxy_0mode];
  intValue = [hSRecordingPlaybackStageProxy_0mode intValue];

  return intValue;
}

- (void)setMode:(int)mode
{
  v4 = [NSNumber numberWithInt:*&mode];
  v7 = v4;
  v5 = [NSArray arrayWithObjects:&v7 count:1];
  v6 = [(HSRecordingPlaybackStageProxy *)self HSRecordingPlaybackStageProxy_setMode:v5];
}

- (void)recordingSetMaxSize:(unint64_t)size
{
  v4 = [NSNumber numberWithUnsignedLong:size];
  v7 = v4;
  v5 = [NSArray arrayWithObjects:&v7 count:1];
  v6 = [(HSRecordingPlaybackStageProxy *)self HSRecordingPlaybackStageProxy_recordingSetMaxSize:v5];
}

- (unint64_t)recordingSize
{
  hSRecordingPlaybackStageProxy_0recordingSize = [(HSRecordingPlaybackStageProxy *)self HSRecordingPlaybackStageProxy_0recordingSize];
  unsignedLongValue = [hSRecordingPlaybackStageProxy_0recordingSize unsignedLongValue];

  return unsignedLongValue;
}

- (float)playbackProgress
{
  hSRecordingPlaybackStageProxy_0playbackProgress = [(HSRecordingPlaybackStageProxy *)self HSRecordingPlaybackStageProxy_0playbackProgress];
  [hSRecordingPlaybackStageProxy_0playbackProgress floatValue];
  v4 = v3;

  return v4;
}

- (void)playbackSetProgress:(float)progress dispatchEvent:(BOOL)event
{
  eventCopy = event;
  v6 = [NSNumber numberWithFloat:?];
  v10[0] = v6;
  v7 = [NSNumber numberWithBool:eventCopy];
  v10[1] = v7;
  v8 = [NSArray arrayWithObjects:v10 count:2];
  v9 = [(HSRecordingPlaybackStageProxy *)self HSRecordingPlaybackStageProxy_playbackSetProgressdispatchEvent:v8];
}

@end