@interface MPPlaybackSessionCommandEvent
- (MPPlaybackSessionCommandEvent)initWithCommand:(id)a3 mediaRemoteType:(unsigned int)a4 options:(id)a5;
@end

@implementation MPPlaybackSessionCommandEvent

- (MPPlaybackSessionCommandEvent)initWithCommand:(id)a3 mediaRemoteType:(unsigned int)a4 options:(id)a5
{
  v5 = *&a4;
  v8 = a5;
  v18.receiver = self;
  v18.super_class = MPPlaybackSessionCommandEvent;
  v9 = [(MPRemoteCommandEvent *)&v18 initWithCommand:a3 mediaRemoteType:v5 options:v8];
  if (v9)
  {
    v10 = [v8 objectForKeyedSubscript:*MEMORY[0x1E69B11A0]];
    identifier = v9->_identifier;
    v9->_identifier = v10;

    v12 = [v8 objectForKeyedSubscript:*MEMORY[0x1E69B11B8]];
    revision = v9->_revision;
    v9->_revision = v12;

    v14 = [v8 objectForKeyedSubscript:*MEMORY[0x1E69B11B0]];
    v15 = [v14 integerValue];
    v16 = v15 == 512;
    if (v15 == 1024)
    {
      v16 = 2;
    }

    v9->_priority = v16;
  }

  return v9;
}

@end