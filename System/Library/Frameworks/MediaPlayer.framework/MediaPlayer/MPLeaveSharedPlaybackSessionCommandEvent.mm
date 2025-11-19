@interface MPLeaveSharedPlaybackSessionCommandEvent
- (MPLeaveSharedPlaybackSessionCommandEvent)initWithCommand:(id)a3 mediaRemoteType:(unsigned int)a4 options:(id)a5;
@end

@implementation MPLeaveSharedPlaybackSessionCommandEvent

- (MPLeaveSharedPlaybackSessionCommandEvent)initWithCommand:(id)a3 mediaRemoteType:(unsigned int)a4 options:(id)a5
{
  v5 = *&a4;
  v8 = a5;
  v13.receiver = self;
  v13.super_class = MPLeaveSharedPlaybackSessionCommandEvent;
  v9 = [(MPRemoteCommandEvent *)&v13 initWithCommand:a3 mediaRemoteType:v5 options:v8];
  if (v9)
  {
    v10 = [v8 objectForKeyedSubscript:*MEMORY[0x1E69B1220]];
    sessionIdentifier = v9->_sessionIdentifier;
    v9->_sessionIdentifier = v10;
  }

  return v9;
}

@end