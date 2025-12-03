@interface MPPrepareForSetPlaybackQueueCommandEvent
- (MPPrepareForSetPlaybackQueueCommandEvent)initWithCommand:(id)command mediaRemoteType:(unsigned int)type options:(id)options;
@end

@implementation MPPrepareForSetPlaybackQueueCommandEvent

- (MPPrepareForSetPlaybackQueueCommandEvent)initWithCommand:(id)command mediaRemoteType:(unsigned int)type options:(id)options
{
  v5 = *&type;
  optionsCopy = options;
  v14.receiver = self;
  v14.super_class = MPPrepareForSetPlaybackQueueCommandEvent;
  v9 = [(MPRemoteCommandEvent *)&v14 initWithCommand:command mediaRemoteType:v5 options:optionsCopy];
  if (v9)
  {
    v10 = [optionsCopy objectForKey:*MEMORY[0x1E69B11D0]];
    v9->_isProactive = [v10 BOOLValue];

    v11 = [optionsCopy objectForKeyedSubscript:*MEMORY[0x1E69B11D8]];
    proactiveReason = v9->_proactiveReason;
    v9->_proactiveReason = v11;
  }

  return v9;
}

@end