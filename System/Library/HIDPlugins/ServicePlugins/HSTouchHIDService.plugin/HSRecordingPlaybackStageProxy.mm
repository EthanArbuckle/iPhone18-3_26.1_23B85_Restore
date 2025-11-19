@interface HSRecordingPlaybackStageProxy
- (float)playbackProgress;
- (int)mode;
- (unint64_t)recordingSize;
- (void)playbackSetProgress:(float)a3 dispatchEvent:(BOOL)a4;
- (void)recordingSetMaxSize:(unint64_t)a3;
- (void)setMode:(int)a3;
@end

@implementation HSRecordingPlaybackStageProxy

- (int)mode
{
  v2 = [(HSRecordingPlaybackStageProxy *)self HSRecordingPlaybackStageProxy_0mode];
  v3 = [v2 intValue];

  return v3;
}

- (void)setMode:(int)a3
{
  v4 = [NSNumber numberWithInt:*&a3];
  v7 = v4;
  v5 = [NSArray arrayWithObjects:&v7 count:1];
  v6 = [(HSRecordingPlaybackStageProxy *)self HSRecordingPlaybackStageProxy_setMode:v5];
}

- (void)recordingSetMaxSize:(unint64_t)a3
{
  v4 = [NSNumber numberWithUnsignedLong:a3];
  v7 = v4;
  v5 = [NSArray arrayWithObjects:&v7 count:1];
  v6 = [(HSRecordingPlaybackStageProxy *)self HSRecordingPlaybackStageProxy_recordingSetMaxSize:v5];
}

- (unint64_t)recordingSize
{
  v2 = [(HSRecordingPlaybackStageProxy *)self HSRecordingPlaybackStageProxy_0recordingSize];
  v3 = [v2 unsignedLongValue];

  return v3;
}

- (float)playbackProgress
{
  v2 = [(HSRecordingPlaybackStageProxy *)self HSRecordingPlaybackStageProxy_0playbackProgress];
  [v2 floatValue];
  v4 = v3;

  return v4;
}

- (void)playbackSetProgress:(float)a3 dispatchEvent:(BOOL)a4
{
  v4 = a4;
  v6 = [NSNumber numberWithFloat:?];
  v10[0] = v6;
  v7 = [NSNumber numberWithBool:v4];
  v10[1] = v7;
  v8 = [NSArray arrayWithObjects:v10 count:2];
  v9 = [(HSRecordingPlaybackStageProxy *)self HSRecordingPlaybackStageProxy_playbackSetProgressdispatchEvent:v8];
}

@end