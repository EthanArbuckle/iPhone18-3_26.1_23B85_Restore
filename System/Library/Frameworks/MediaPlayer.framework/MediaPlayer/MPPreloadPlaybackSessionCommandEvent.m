@interface MPPreloadPlaybackSessionCommandEvent
- (MPPreloadPlaybackSessionCommandEvent)initWithCommand:(id)a3 mediaRemoteType:(unsigned int)a4 options:(id)a5;
@end

@implementation MPPreloadPlaybackSessionCommandEvent

- (MPPreloadPlaybackSessionCommandEvent)initWithCommand:(id)a3 mediaRemoteType:(unsigned int)a4 options:(id)a5
{
  v5 = *&a4;
  v8 = a5;
  v27.receiver = self;
  v27.super_class = MPPreloadPlaybackSessionCommandEvent;
  v9 = [(MPRemoteCommandEvent *)&v27 initWithCommand:a3 mediaRemoteType:v5 options:v8];
  if (v9)
  {
    v10 = [v8 objectForKeyedSubscript:*MEMORY[0x1E69B11A0]];
    identifier = v9->_identifier;
    v9->_identifier = v10;

    v12 = [v8 objectForKeyedSubscript:*MEMORY[0x1E69B11C0]];
    type = v9->_type;
    v9->_type = v12;

    v14 = [v8 objectForKeyedSubscript:*MEMORY[0x1E69B11B0]];
    v15 = [v14 integerValue];
    v16 = v15 == 512;
    if (v15 == 1024)
    {
      v16 = 2;
    }

    v9->_priority = v16;

    v17 = [v8 objectForKeyedSubscript:*MEMORY[0x1E69B1198]];
    if (![v17 length])
    {

      v25 = 0;
      goto LABEL_12;
    }

    v18 = [MEMORY[0x1E695DFF8] fileURLWithPath:v17 isDirectory:0];
    playbackSessionDataFilePath = v9->_playbackSessionDataFilePath;
    v9->_playbackSessionDataFilePath = v18;

    v20 = [v8 objectForKeyedSubscript:*MEMORY[0x1E69B11B8]];
    revision = v9->_revision;
    v9->_revision = v20;

    metadata = v9->_metadata;
    v9->_metadata = MEMORY[0x1E695E0F8];

    v23 = [v8 objectForKeyedSubscript:*MEMORY[0x1E69B11A8]];
    if ([v23 length])
    {
      v24 = [MEMORY[0x1E696AE40] propertyListWithData:v23 options:0 format:0 error:0];
      if (_NSIsNSDictionary())
      {
        objc_storeStrong(&v9->_metadata, v24);
      }
    }
  }

  v25 = v9;
LABEL_12:

  return v25;
}

@end