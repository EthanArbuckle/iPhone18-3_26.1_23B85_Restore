@interface MPChangePlaybackPositionCommandEvent
- (MPChangePlaybackPositionCommandEvent)initWithCommand:(id)a3 mediaRemoteType:(unsigned int)a4 options:(id)a5;
@end

@implementation MPChangePlaybackPositionCommandEvent

- (MPChangePlaybackPositionCommandEvent)initWithCommand:(id)a3 mediaRemoteType:(unsigned int)a4 options:(id)a5
{
  v5 = *&a4;
  v8 = a5;
  v15.receiver = self;
  v15.super_class = MPChangePlaybackPositionCommandEvent;
  v9 = [(MPRemoteCommandEvent *)&v15 initWithCommand:a3 mediaRemoteType:v5 options:v8];
  if (v9)
  {
    v10 = [v8 objectForKey:*MEMORY[0x1E69B1168]];
    [v10 doubleValue];
    v9->_positionTime = v11;

    v12 = [v8 objectForKey:*MEMORY[0x1E69B11F8]];
    referenceTime = v9->_referenceTime;
    v9->_referenceTime = v12;
  }

  return v9;
}

@end