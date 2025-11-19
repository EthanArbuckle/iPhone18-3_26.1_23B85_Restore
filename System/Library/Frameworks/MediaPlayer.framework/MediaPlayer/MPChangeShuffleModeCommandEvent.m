@interface MPChangeShuffleModeCommandEvent
- (MPChangeShuffleModeCommandEvent)initWithCommand:(id)a3 mediaRemoteType:(unsigned int)a4 options:(id)a5;
@end

@implementation MPChangeShuffleModeCommandEvent

- (MPChangeShuffleModeCommandEvent)initWithCommand:(id)a3 mediaRemoteType:(unsigned int)a4 options:(id)a5
{
  v5 = *&a4;
  v8 = a5;
  v15.receiver = self;
  v15.super_class = MPChangeShuffleModeCommandEvent;
  v9 = [(MPRemoteCommandEvent *)&v15 initWithCommand:a3 mediaRemoteType:v5 options:v8];
  if (v9)
  {
    v10 = [v8 objectForKey:*MEMORY[0x1E69B1230]];
    v11 = [v10 intValue];

    if (v11 > 3)
    {
      v12 = 0;
    }

    else
    {
      v12 = qword_1A2741AB8[v11];
    }

    v9->_shuffleType = v12;
    v13 = [v8 objectForKey:*MEMORY[0x1E69B0CE8]];
    v9->_preservesShuffleMode = [v13 BOOLValue];
  }

  return v9;
}

@end