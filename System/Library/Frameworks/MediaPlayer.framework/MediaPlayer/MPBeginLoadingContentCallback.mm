@interface MPBeginLoadingContentCallback
@end

@implementation MPBeginLoadingContentCallback

void ___MPBeginLoadingContentCallback_block_invoke(uint64_t a1, uint64_t a2)
{
  v9[1] = *MEMORY[0x1E69E9840];
  if (a2)
  {
    if (a2 != 1)
    {
      return;
    }

    if (dyld_program_sdk_at_least())
    {
      v5 = [MEMORY[0x1E696AAA8] currentHandler];
      v6 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void _MPBeginLoadingContentCallback(MRMediaRemoteIndexPath, void *, void (^__strong)(CFErrorRef))_block_invoke"}];
      [v5 handleFailureInFunction:v6 file:@"MPPlayableContentManager.m" lineNumber:598 description:@"-beginLoadingChildItemsAtIndexPath:completionHandler: completion handler was released without being called."];
    }

    v2 = os_log_create("com.apple.amp.mediaplayer", "RemoteControl");
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      *v7 = 0;
      _os_log_impl(&dword_1A238D000, v2, OS_LOG_TYPE_ERROR, "-beginLoadingChildItemsAtIndexPath:completionHandler: completion handler was released without being called", v7, 2u);
    }
  }

  else
  {
    v3 = *(a1 + 32);
    v4 = MEMORY[0x1E696ABC0];
    v8 = *MEMORY[0x1E696A278];
    v9[0] = @"MPPlayableContentManager.datasource did not respond to beginLoadingChildItemsAtIndexPath: before timeout.";
    v2 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:&v8 count:1];
    (*(v3 + 16))(v3, [v4 errorWithDomain:@"MPErrorDomain" code:7 userInfo:v2]);
  }
}

void ___MPBeginLoadingContentCallback_block_invoke_226(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = os_log_create("com.apple.amp.mediaplayer", "RemoteControl");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v6 = 138543618;
    v7 = v5;
    v8 = 2114;
    v9 = v3;
    _os_log_impl(&dword_1A238D000, v4, OS_LOG_TYPE_DEFAULT, "Loading operation at completed at index path: %{public}@, error: %{public}@", &v6, 0x16u);
  }

  if ([*(a1 + 40) disarm])
  {
    (*(*(a1 + 48) + 16))();
  }
}

@end