@interface MPSetPlaybackSessionCommandEvent
- (MPSetPlaybackSessionCommandEvent)initWithCommand:(id)a3 mediaRemoteType:(unsigned int)a4 options:(id)a5;
@end

@implementation MPSetPlaybackSessionCommandEvent

- (MPSetPlaybackSessionCommandEvent)initWithCommand:(id)a3 mediaRemoteType:(unsigned int)a4 options:(id)a5
{
  v5 = *&a4;
  v8 = a5;
  v20.receiver = self;
  v20.super_class = MPSetPlaybackSessionCommandEvent;
  v9 = [(MPRemoteCommandEvent *)&v20 initWithCommand:a3 mediaRemoteType:v5 options:v8];
  if (v9)
  {
    v10 = [v8 objectForKey:*MEMORY[0x1E69B1190]];
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