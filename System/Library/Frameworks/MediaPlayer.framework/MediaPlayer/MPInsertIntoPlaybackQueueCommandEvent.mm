@interface MPInsertIntoPlaybackQueueCommandEvent
- (MPInsertIntoPlaybackQueueCommandEvent)initWithCommand:(id)a3 mediaRemoteType:(unsigned int)a4 options:(id)a5;
- (MPInsertIntoPlaybackQueueCommandEvent)initWithCommand:(id)a3 playbackQueue:(id)a4 options:(id)a5;
@end

@implementation MPInsertIntoPlaybackQueueCommandEvent

- (MPInsertIntoPlaybackQueueCommandEvent)initWithCommand:(id)a3 playbackQueue:(id)a4 options:(id)a5
{
  v9 = a4;
  v10 = a5;
  v22.receiver = self;
  v22.super_class = MPInsertIntoPlaybackQueueCommandEvent;
  v11 = [(MPRemoteCommandEvent *)&v22 initWithCommand:a3 mediaRemoteType:125 options:v10];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_playbackQueue, a4);
    v13 = [v10 objectForKeyedSubscript:@"MPRemoteCommandQueueInsertionPosition"];
    v14 = v13;
    if (v13)
    {
      v15 = [v13 integerValue];
    }

    else
    {
      v16 = [v10 objectForKey:*MEMORY[0x1E69B1178]];
      v17 = [v16 intValue];

      v18 = (v17 - 1);
      if (v18 < 3)
      {
        v15 = v18 + 1;
      }

      else
      {
        v15 = 0;
      }
    }

    v12->_insertionPosition = v15;
    v19 = [v10 objectForKeyedSubscript:*MEMORY[0x1E69B1130]];
    insertAfterContentItemID = v12->_insertAfterContentItemID;
    v12->_insertAfterContentItemID = v19;
  }

  return v12;
}

- (MPInsertIntoPlaybackQueueCommandEvent)initWithCommand:(id)a3 mediaRemoteType:(unsigned int)a4 options:(id)a5
{
  v5 = *&a4;
  v8 = a5;
  v22.receiver = self;
  v22.super_class = MPInsertIntoPlaybackQueueCommandEvent;
  v9 = [(MPRemoteCommandEvent *)&v22 initWithCommand:a3 mediaRemoteType:v5 options:v8];
  if (v9)
  {
    v10 = [v8 objectForKey:*MEMORY[0x1E69B1178]];
    v11 = [v10 intValue];

    v12 = (v11 - 1);
    if (v12 < 3)
    {
      v13 = v12 + 1;
    }

    else
    {
      v13 = 0;
    }

    v9->_insertionPosition = v13;
    v14 = [v8 objectForKeyedSubscript:*MEMORY[0x1E69B1130]];
    insertAfterContentItemID = v9->_insertAfterContentItemID;
    v9->_insertAfterContentItemID = v14;

    v16 = [v8 objectForKeyedSubscript:*MEMORY[0x1E69B1170]];
    v17 = v16;
    if (v16)
    {
      v18 = [v16 integerValue];
    }

    else
    {
      v18 = 0x7FFFFFFFFFFFFFFFLL;
    }

    v9->_destinationOffset = v18;
    CFDictionaryGetValue(v8, *MEMORY[0x1E69B1268]);
    v19 = [MPRemotePlaybackQueue queueWithMediaRemotePlaybackQueue:MRSystemAppPlaybackQueueCreateFromExternalRepresentation() options:v8];
    playbackQueue = v9->_playbackQueue;
    v9->_playbackQueue = v19;
  }

  return v9;
}

@end