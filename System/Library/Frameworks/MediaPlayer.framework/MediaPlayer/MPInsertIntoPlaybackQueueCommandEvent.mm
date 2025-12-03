@interface MPInsertIntoPlaybackQueueCommandEvent
- (MPInsertIntoPlaybackQueueCommandEvent)initWithCommand:(id)command mediaRemoteType:(unsigned int)type options:(id)options;
- (MPInsertIntoPlaybackQueueCommandEvent)initWithCommand:(id)command playbackQueue:(id)queue options:(id)options;
@end

@implementation MPInsertIntoPlaybackQueueCommandEvent

- (MPInsertIntoPlaybackQueueCommandEvent)initWithCommand:(id)command playbackQueue:(id)queue options:(id)options
{
  queueCopy = queue;
  optionsCopy = options;
  v22.receiver = self;
  v22.super_class = MPInsertIntoPlaybackQueueCommandEvent;
  v11 = [(MPRemoteCommandEvent *)&v22 initWithCommand:command mediaRemoteType:125 options:optionsCopy];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_playbackQueue, queue);
    v13 = [optionsCopy objectForKeyedSubscript:@"MPRemoteCommandQueueInsertionPosition"];
    v14 = v13;
    if (v13)
    {
      integerValue = [v13 integerValue];
    }

    else
    {
      v16 = [optionsCopy objectForKey:*MEMORY[0x1E69B1178]];
      intValue = [v16 intValue];

      v18 = (intValue - 1);
      if (v18 < 3)
      {
        integerValue = v18 + 1;
      }

      else
      {
        integerValue = 0;
      }
    }

    v12->_insertionPosition = integerValue;
    v19 = [optionsCopy objectForKeyedSubscript:*MEMORY[0x1E69B1130]];
    insertAfterContentItemID = v12->_insertAfterContentItemID;
    v12->_insertAfterContentItemID = v19;
  }

  return v12;
}

- (MPInsertIntoPlaybackQueueCommandEvent)initWithCommand:(id)command mediaRemoteType:(unsigned int)type options:(id)options
{
  v5 = *&type;
  optionsCopy = options;
  v22.receiver = self;
  v22.super_class = MPInsertIntoPlaybackQueueCommandEvent;
  v9 = [(MPRemoteCommandEvent *)&v22 initWithCommand:command mediaRemoteType:v5 options:optionsCopy];
  if (v9)
  {
    v10 = [optionsCopy objectForKey:*MEMORY[0x1E69B1178]];
    intValue = [v10 intValue];

    v12 = (intValue - 1);
    if (v12 < 3)
    {
      v13 = v12 + 1;
    }

    else
    {
      v13 = 0;
    }

    v9->_insertionPosition = v13;
    v14 = [optionsCopy objectForKeyedSubscript:*MEMORY[0x1E69B1130]];
    insertAfterContentItemID = v9->_insertAfterContentItemID;
    v9->_insertAfterContentItemID = v14;

    v16 = [optionsCopy objectForKeyedSubscript:*MEMORY[0x1E69B1170]];
    v17 = v16;
    if (v16)
    {
      integerValue = [v16 integerValue];
    }

    else
    {
      integerValue = 0x7FFFFFFFFFFFFFFFLL;
    }

    v9->_destinationOffset = integerValue;
    CFDictionaryGetValue(optionsCopy, *MEMORY[0x1E69B1268]);
    v19 = [MPRemotePlaybackQueue queueWithMediaRemotePlaybackQueue:MRSystemAppPlaybackQueueCreateFromExternalRepresentation() options:optionsCopy];
    playbackQueue = v9->_playbackQueue;
    v9->_playbackQueue = v19;
  }

  return v9;
}

@end