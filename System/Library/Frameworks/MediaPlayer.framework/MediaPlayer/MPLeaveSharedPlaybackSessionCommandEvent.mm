@interface MPLeaveSharedPlaybackSessionCommandEvent
- (MPLeaveSharedPlaybackSessionCommandEvent)initWithCommand:(id)command mediaRemoteType:(unsigned int)type options:(id)options;
@end

@implementation MPLeaveSharedPlaybackSessionCommandEvent

- (MPLeaveSharedPlaybackSessionCommandEvent)initWithCommand:(id)command mediaRemoteType:(unsigned int)type options:(id)options
{
  v5 = *&type;
  optionsCopy = options;
  v13.receiver = self;
  v13.super_class = MPLeaveSharedPlaybackSessionCommandEvent;
  v9 = [(MPRemoteCommandEvent *)&v13 initWithCommand:command mediaRemoteType:v5 options:optionsCopy];
  if (v9)
  {
    v10 = [optionsCopy objectForKeyedSubscript:*MEMORY[0x1E69B1220]];
    sessionIdentifier = v9->_sessionIdentifier;
    v9->_sessionIdentifier = v10;
  }

  return v9;
}

@end