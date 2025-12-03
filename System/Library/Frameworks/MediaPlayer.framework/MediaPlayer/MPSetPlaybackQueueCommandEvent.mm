@interface MPSetPlaybackQueueCommandEvent
- (MPSetPlaybackQueueCommandEvent)initWithCommand:(id)command mediaRemoteType:(unsigned int)type options:(id)options;
- (MPSetPlaybackQueueCommandEvent)initWithCommand:(id)command playbackQueue:(id)queue;
- (id)copyWithDialogOptions:(id)options;
@end

@implementation MPSetPlaybackQueueCommandEvent

- (id)copyWithDialogOptions:(id)options
{
  optionsCopy = options;
  playbackQueue = [(MPSetPlaybackQueueCommandEvent *)self playbackQueue];
  mediaRemoteOptions = [playbackQueue mediaRemoteOptions];
  v7 = [mediaRemoteOptions mutableCopy];

  uUID = [MEMORY[0x1E696AFB0] UUID];
  uUIDString = [uUID UUIDString];
  [v7 setObject:uUIDString forKeyedSubscript:*MEMORY[0x1E69B10B0]];

  [v7 setObject:optionsCopy forKeyedSubscript:@"kMRMediaRemoteOptionDialogOptions"];
  v10 = objc_alloc(objc_opt_class());
  command = [(MPRemoteCommandEvent *)self command];
  v12 = [v10 initWithCommand:command mediaRemoteType:-[MPRemoteCommandEvent mediaRemoteCommandType](self options:{"mediaRemoteCommandType"), v7}];

  return v12;
}

- (MPSetPlaybackQueueCommandEvent)initWithCommand:(id)command playbackQueue:(id)queue
{
  queueCopy = queue;
  commandCopy = command;
  mediaRemoteOptions = [queueCopy mediaRemoteOptions];
  v12.receiver = self;
  v12.super_class = MPSetPlaybackQueueCommandEvent;
  v10 = [(MPRemoteCommandEvent *)&v12 initWithCommand:commandCopy mediaRemoteType:122 options:mediaRemoteOptions];

  if (v10)
  {
    objc_storeStrong(&v10->_playbackQueue, queue);
  }

  return v10;
}

- (MPSetPlaybackQueueCommandEvent)initWithCommand:(id)command mediaRemoteType:(unsigned int)type options:(id)options
{
  v5 = *&type;
  v25 = *MEMORY[0x1E69E9840];
  optionsCopy = options;
  v20.receiver = self;
  v20.super_class = MPSetPlaybackQueueCommandEvent;
  v9 = [(MPRemoteCommandEvent *)&v20 initWithCommand:command mediaRemoteType:v5 options:optionsCopy];
  if (!v9)
  {
    goto LABEL_4;
  }

  if (CFDictionaryGetValue(optionsCopy, *MEMORY[0x1E69B1268]))
  {
    v10 = [MPRemotePlaybackQueue queueWithMediaRemotePlaybackQueue:MRSystemAppPlaybackQueueCreateFromExternalRepresentation() options:optionsCopy];
    playbackQueue = v9->_playbackQueue;
    v9->_playbackQueue = v10;
    v12 = v10;

    mediaRemoteOptions = [(MPRemoteCommandEvent *)v9 mediaRemoteOptions];
    v14 = [mediaRemoteOptions objectForKeyedSubscript:*MEMORY[0x1E69B10E8]];
    sessionIdentifierOverride = v9->_sessionIdentifierOverride;
    v9->_sessionIdentifierOverride = v14;

LABEL_4:
    v16 = v9;
    goto LABEL_8;
  }

  v17 = os_log_create("com.apple.amp.mediaplayer", "RemoteControl");
  if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
  {
    v18 = MRMediaRemoteCopyCommandDescription();
    *buf = 138412546;
    v22 = v18;
    v23 = 2112;
    v24 = optionsCopy;
    _os_log_impl(&dword_1A238D000, v17, OS_LOG_TYPE_ERROR, "MPSetPlaybackQueueCommandEvent: Failed to extract playback queue data from media remote command=%@ options=%@", buf, 0x16u);
  }

  v16 = 0;
LABEL_8:

  return v16;
}

@end