@interface MPSetPlaybackQueueCommandEvent
- (MPSetPlaybackQueueCommandEvent)initWithCommand:(id)a3 mediaRemoteType:(unsigned int)a4 options:(id)a5;
- (MPSetPlaybackQueueCommandEvent)initWithCommand:(id)a3 playbackQueue:(id)a4;
- (id)copyWithDialogOptions:(id)a3;
@end

@implementation MPSetPlaybackQueueCommandEvent

- (id)copyWithDialogOptions:(id)a3
{
  v4 = a3;
  v5 = [(MPSetPlaybackQueueCommandEvent *)self playbackQueue];
  v6 = [v5 mediaRemoteOptions];
  v7 = [v6 mutableCopy];

  v8 = [MEMORY[0x1E696AFB0] UUID];
  v9 = [v8 UUIDString];
  [v7 setObject:v9 forKeyedSubscript:*MEMORY[0x1E69B10B0]];

  [v7 setObject:v4 forKeyedSubscript:@"kMRMediaRemoteOptionDialogOptions"];
  v10 = objc_alloc(objc_opt_class());
  v11 = [(MPRemoteCommandEvent *)self command];
  v12 = [v10 initWithCommand:v11 mediaRemoteType:-[MPRemoteCommandEvent mediaRemoteCommandType](self options:{"mediaRemoteCommandType"), v7}];

  return v12;
}

- (MPSetPlaybackQueueCommandEvent)initWithCommand:(id)a3 playbackQueue:(id)a4
{
  v7 = a4;
  v8 = a3;
  v9 = [v7 mediaRemoteOptions];
  v12.receiver = self;
  v12.super_class = MPSetPlaybackQueueCommandEvent;
  v10 = [(MPRemoteCommandEvent *)&v12 initWithCommand:v8 mediaRemoteType:122 options:v9];

  if (v10)
  {
    objc_storeStrong(&v10->_playbackQueue, a4);
  }

  return v10;
}

- (MPSetPlaybackQueueCommandEvent)initWithCommand:(id)a3 mediaRemoteType:(unsigned int)a4 options:(id)a5
{
  v5 = *&a4;
  v25 = *MEMORY[0x1E69E9840];
  v8 = a5;
  v20.receiver = self;
  v20.super_class = MPSetPlaybackQueueCommandEvent;
  v9 = [(MPRemoteCommandEvent *)&v20 initWithCommand:a3 mediaRemoteType:v5 options:v8];
  if (!v9)
  {
    goto LABEL_4;
  }

  if (CFDictionaryGetValue(v8, *MEMORY[0x1E69B1268]))
  {
    v10 = [MPRemotePlaybackQueue queueWithMediaRemotePlaybackQueue:MRSystemAppPlaybackQueueCreateFromExternalRepresentation() options:v8];
    playbackQueue = v9->_playbackQueue;
    v9->_playbackQueue = v10;
    v12 = v10;

    v13 = [(MPRemoteCommandEvent *)v9 mediaRemoteOptions];
    v14 = [v13 objectForKeyedSubscript:*MEMORY[0x1E69B10E8]];
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
    v24 = v8;
    _os_log_impl(&dword_1A238D000, v17, OS_LOG_TYPE_ERROR, "MPSetPlaybackQueueCommandEvent: Failed to extract playback queue data from media remote command=%@ options=%@", buf, 0x16u);
  }

  v16 = 0;
LABEL_8:

  return v16;
}

@end