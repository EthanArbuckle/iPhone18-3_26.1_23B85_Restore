@interface MPContentItemsForIdentifiersCallback
@end

@implementation MPContentItemsForIdentifiersCallback

uint64_t ___MPContentItemsForIdentifiersCallback_block_invoke_2(uint64_t a1)
{
  v3 = a1 + 40;
  v2 = *(a1 + 40);
  if (*(*(*(v3 + 8) + 8) + 40))
  {
    return (*(v2 + 16))(v2, 0);
  }

  else
  {
    return (*(v2 + 16))(v2, *(a1 + 32));
  }
}

void ___MPContentItemsForIdentifiersCallback_block_invoke(uint64_t a1, uint64_t a2)
{
  v13[1] = *MEMORY[0x1E69E9840];
  if (a2)
  {
    if (a2 == 1)
    {
      if (dyld_program_sdk_at_least())
      {
        v9 = [MEMORY[0x1E696AAA8] currentHandler];
        v10 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void _MPContentItemsForIdentifiersCallback(CFArrayRef, void *, void (^__strong)(CFArrayRef, CFErrorRef))_block_invoke"}];
        [v9 handleFailureInFunction:v10 file:@"MPPlayableContentManager.m" lineNumber:744 description:@"-contentItemForIdentifier:completionHandler: completion handler was released without being called."];
      }

      v2 = os_log_create("com.apple.amp.mediaplayer", "RemoteControl");
      if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
      {
        *v11 = 0;
        _os_log_impl(&dword_1A238D000, v2, OS_LOG_TYPE_ERROR, "-contentItemForIdentifier:completionHandler: completion handler was released without being called", v11, 2u);
      }
    }
  }

  else
  {
    v4 = MEMORY[0x1E696ABC0];
    v12 = *MEMORY[0x1E696A278];
    v13[0] = @"MPPlayableContentManager.datasource did not respond to contentItemForIdentifier: before timeout.";
    v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:&v12 count:1];
    v6 = [v4 errorWithDomain:@"MPErrorDomain" code:7 userInfo:v5];
    v7 = *(*(a1 + 40) + 8);
    v8 = *(v7 + 40);
    *(v7 + 40) = v6;

    dispatch_group_leave(*(a1 + 32));
  }
}

void ___MPContentItemsForIdentifiersCallback_block_invoke_249(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  v5 = a3;
  if ([*(a1 + 32) disarm])
  {
    if (v5)
    {
      objc_storeStrong((*(*(a1 + 64) + 8) + 40), a3);
    }

    else if (v7)
    {
      v6 = [v7 _mediaRemoteContentItem];
      [*(a1 + 40) lock];
      [*(a1 + 48) addObject:v6];
      [*(a1 + 40) unlock];
    }

    dispatch_group_leave(*(a1 + 56));
  }
}

@end