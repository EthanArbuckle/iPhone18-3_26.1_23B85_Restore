@interface MPPrepareForSetPlaybackQueueCommandEvent
- (MPPrepareForSetPlaybackQueueCommandEvent)initWithCommand:(id)a3 mediaRemoteType:(unsigned int)a4 options:(id)a5;
@end

@implementation MPPrepareForSetPlaybackQueueCommandEvent

- (MPPrepareForSetPlaybackQueueCommandEvent)initWithCommand:(id)a3 mediaRemoteType:(unsigned int)a4 options:(id)a5
{
  v5 = *&a4;
  v8 = a5;
  v14.receiver = self;
  v14.super_class = MPPrepareForSetPlaybackQueueCommandEvent;
  v9 = [(MPRemoteCommandEvent *)&v14 initWithCommand:a3 mediaRemoteType:v5 options:v8];
  if (v9)
  {
    v10 = [v8 objectForKey:*MEMORY[0x1E69B11D0]];
    v9->_isProactive = [v10 BOOLValue];

    v11 = [v8 objectForKeyedSubscript:*MEMORY[0x1E69B11D8]];
    proactiveReason = v9->_proactiveReason;
    v9->_proactiveReason = v11;
  }

  return v9;
}

@end