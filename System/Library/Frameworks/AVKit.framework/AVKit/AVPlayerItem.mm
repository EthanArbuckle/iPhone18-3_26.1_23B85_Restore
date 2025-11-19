@interface AVPlayerItem
@end

@implementation AVPlayerItem

void __75__AVPlayerItem_AVKitAdditionsPrivate__avkit_airMessageSendExternalMetadata__block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v12 = *MEMORY[0x1E69E9840];
  v4 = a2;
  v5 = _avairlog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315650;
    v7 = "[AVPlayerItem(AVKitAdditionsPrivate) avkit_airMessageSendExternalMetadata]_block_invoke";
    v8 = 2048;
    v9 = a3;
    v10 = 2114;
    v11 = v4;
    _os_log_impl(&dword_18B49C000, v5, OS_LOG_TYPE_DEFAULT, "%s Result of sending external metadata: %ld [%{public}@]", &v6, 0x20u);
  }
}

void __69__AVPlayerItem_AsyncProperty__avkit_enabledItemTracksWithCompletion___block_invoke(uint64_t a1)
{
  v2 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v3 = *(a1 + 32);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __69__AVPlayerItem_AsyncProperty__avkit_enabledItemTracksWithCompletion___block_invoke_2;
  v10[3] = &unk_1E7208290;
  v4 = v2;
  v11 = v4;
  [v3 enumerateObjectsUsingBlock:v10];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __69__AVPlayerItem_AsyncProperty__avkit_enabledItemTracksWithCompletion___block_invoke_3;
  block[3] = &unk_1E720A040;
  v5 = *(a1 + 40);
  v8 = v4;
  v9 = v5;
  v6 = v4;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __69__AVPlayerItem_AsyncProperty__avkit_enabledItemTracksWithCompletion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 isEnabled])
  {
    [*(a1 + 32) addObject:v3];
  }
}

uint64_t __69__AVPlayerItem_AsyncProperty__avkit_enabledItemTracksWithCompletion___block_invoke_3(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, *(a1 + 32));
  }

  return result;
}

void __70__AVPlayerItem_AsyncProperty__avkit_enabledAssetTracksWithCompletion___block_invoke(uint64_t a1)
{
  v2 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v3 = *(a1 + 32);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __70__AVPlayerItem_AsyncProperty__avkit_enabledAssetTracksWithCompletion___block_invoke_2;
  v10[3] = &unk_1E7208290;
  v4 = v2;
  v11 = v4;
  [v3 enumerateObjectsUsingBlock:v10];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __70__AVPlayerItem_AsyncProperty__avkit_enabledAssetTracksWithCompletion___block_invoke_3;
  block[3] = &unk_1E720A040;
  v5 = *(a1 + 40);
  v8 = v4;
  v9 = v5;
  v6 = v4;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __70__AVPlayerItem_AsyncProperty__avkit_enabledAssetTracksWithCompletion___block_invoke_2(uint64_t a1, void *a2)
{
  v7 = a2;
  if ([v7 isEnabled])
  {
    v3 = [v7 assetTrack];
    v4 = [v3 isEnabled];

    if (v4)
    {
      v5 = *(a1 + 32);
      v6 = [v7 assetTrack];
      [v5 addObject:v6];
    }
  }
}

uint64_t __70__AVPlayerItem_AsyncProperty__avkit_enabledAssetTracksWithCompletion___block_invoke_3(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, *(a1 + 32));
  }

  return result;
}

void __99__AVPlayerItem_AsyncProperty__avkit_assetTracksContainMediaCharacteristic_forMediaType_completion___block_invoke(uint64_t a1)
{
  v10[0] = 0;
  v10[1] = v10;
  v10[2] = 0x2020000000;
  v11 = 0;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __99__AVPlayerItem_AsyncProperty__avkit_assetTracksContainMediaCharacteristic_forMediaType_completion___block_invoke_2;
  v6[3] = &unk_1E7208240;
  v2 = *(a1 + 32);
  v7 = *(a1 + 40);
  v8 = *(a1 + 48);
  v9 = v10;
  [v2 enumerateObjectsUsingBlock:v6];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __99__AVPlayerItem_AsyncProperty__avkit_assetTracksContainMediaCharacteristic_forMediaType_completion___block_invoke_3;
  block[3] = &unk_1E7208268;
  v4 = *(a1 + 56);
  v5 = v10;
  dispatch_async(MEMORY[0x1E69E96A0], block);

  _Block_object_dispose(v10, 8);
}

void __99__AVPlayerItem_AsyncProperty__avkit_assetTracksContainMediaCharacteristic_forMediaType_completion___block_invoke_2(void *a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v11 = a2;
  if ([v11 isEnabled])
  {
    v6 = [v11 assetTrack];
    v7 = [v6 isEnabled];

    if (v7)
    {
      v8 = [v11 assetTrack];
      v9 = [v8 mediaType];
      if ([v9 isEqualToString:a1[4]])
      {
        v10 = [v8 hasMediaCharacteristic:a1[5]];

        if (v10)
        {
          *(*(a1[6] + 8) + 24) = 1;
          *a4 = 1;
        }
      }

      else
      {
      }
    }
  }
}

uint64_t __99__AVPlayerItem_AsyncProperty__avkit_assetTracksContainMediaCharacteristic_forMediaType_completion___block_invoke_3(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, *(*(*(a1 + 40) + 8) + 24));
  }

  return result;
}

void __52__AVPlayerItem_AsyncProperty___trackInspectionQueue__block_invoke()
{
  v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v0 = dispatch_queue_attr_make_with_qos_class(v3, QOS_CLASS_USER_INITIATED, 0);
  v1 = dispatch_queue_create("com.apple.avkit.trackInspectionQueue", v0);
  v2 = _trackInspectionQueue_trackInspectionQueue;
  _trackInspectionQueue_trackInspectionQueue = v1;
}

@end