@interface MPCreateRadioStationCommandEvent
- (MPCreateRadioStationCommandEvent)initWithCommand:(id)a3 mediaRemoteType:(unsigned int)a4 options:(id)a5;
@end

@implementation MPCreateRadioStationCommandEvent

- (MPCreateRadioStationCommandEvent)initWithCommand:(id)a3 mediaRemoteType:(unsigned int)a4 options:(id)a5
{
  v5 = *&a4;
  v8 = a5;
  v16.receiver = self;
  v16.super_class = MPCreateRadioStationCommandEvent;
  v9 = [(MPRemoteCommandEvent *)&v16 initWithCommand:a3 mediaRemoteType:v5 options:v8];
  if (v9)
  {
    v10 = [v8 objectForKey:*MEMORY[0x1E69B1260]];
    v11 = [v10 copy];

    if ([v11 length])
    {
      v12 = [MEMORY[0x1E695DFF8] URLWithString:v11];
      stationURL = v9->_stationURL;
      v9->_stationURL = v12;
    }

    v14 = [v8 objectForKey:*MEMORY[0x1E69B1228]];
    v9->_requestingPlaybackInitialization = [v14 BOOLValue];
  }

  return v9;
}

@end