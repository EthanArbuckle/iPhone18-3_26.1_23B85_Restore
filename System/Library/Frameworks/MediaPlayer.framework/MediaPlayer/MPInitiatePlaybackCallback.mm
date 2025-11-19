@interface MPInitiatePlaybackCallback
@end

@implementation MPInitiatePlaybackCallback

void ___MPInitiatePlaybackCallback_block_invoke(uint64_t a1, uint64_t a2)
{
  v10[1] = *MEMORY[0x1E69E9840];
  if (a2)
  {
    if (a2 != 1)
    {
      return;
    }

    if (dyld_program_sdk_at_least())
    {
      v6 = [MEMORY[0x1E696AAA8] currentHandler];
      v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void _MPInitiatePlaybackCallback(MRMediaRemoteIndexPath, void *)_block_invoke"}];
      [v6 handleFailureInFunction:v7 file:@"MPPlayableContentManager.m" lineNumber:703 description:@"-playableContentManager:initiatePlaybackOfContentItemAtIndexPath:completionHandler: completion handler was released without being called."];
    }

    v2 = os_log_create("com.apple.amp.mediaplayer", "RemoteControl");
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      *v8 = 0;
      _os_log_impl(&dword_1A238D000, v2, OS_LOG_TYPE_ERROR, "-playableContentManager:initiatePlaybackOfContentItemAtIndexPath:completionHandler: completion handler was released without being called", v8, 2u);
    }
  }

  else
  {
    v4 = MEMORY[0x1E696ABC0];
    v9 = *MEMORY[0x1E696A278];
    v10[0] = @"MPPlayableContentManager.datasource did not respond to playableContentManager:initiatePlaybackOfContentItemAtIndexPath: before timeout.";
    v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:&v9 count:1];
    v2 = [v4 errorWithDomain:@"MPErrorDomain" code:7 userInfo:v5];

    [*(a1 + 32) _handlePlaybackInitializationCompletedWithContext:*(a1 + 40) error:v2];
  }
}

void ___MPInitiatePlaybackCallback_block_invoke_239(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([*(a1 + 32) disarm])
  {
    [*(a1 + 40) _handlePlaybackInitializationCompletedWithContext:*(a1 + 48) error:v3];
  }
}

@end