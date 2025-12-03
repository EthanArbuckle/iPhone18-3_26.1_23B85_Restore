@interface MPSetPlaybackSessionCommandEvent
- (MPSetPlaybackSessionCommandEvent)initWithCommand:(id)command mediaRemoteType:(unsigned int)type options:(id)options;
@end

@implementation MPSetPlaybackSessionCommandEvent

- (MPSetPlaybackSessionCommandEvent)initWithCommand:(id)command mediaRemoteType:(unsigned int)type options:(id)options
{
  v5 = *&type;
  optionsCopy = options;
  v20.receiver = self;
  v20.super_class = MPSetPlaybackSessionCommandEvent;
  v9 = [(MPRemoteCommandEvent *)&v20 initWithCommand:command mediaRemoteType:v5 options:optionsCopy];
  if (v9)
  {
    v10 = [optionsCopy objectForKey:*MEMORY[0x1E69B1190]];
    v11 = MRPlaybackSessionCreateFromExternalRepresentation();
    if (v11)
    {
      v12 = v11;
      v13 = MRPlaybackSessionCopyIdentifier();
      identifier = v9->_identifier;
      v9->_identifier = v13;

      v15 = MRPlaybackSessionCopyType();
      type = v9->_type;
      v9->_type = v15;

      v17 = MRPlaybackSessionCopyPlaybackSessionData();
      playbackSessionData = v9->_playbackSessionData;
      v9->_playbackSessionData = v17;

      CFRelease(v12);
    }
  }

  return v9;
}

@end