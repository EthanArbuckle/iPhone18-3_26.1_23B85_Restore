@interface AVPlayerItem(AsyncProperty)
- (id)_trackInspectionQueue;
- (void)avkit_assetTracksContainMediaCharacteristic:()AsyncProperty forMediaType:completion:;
- (void)avkit_enabledAssetTracksWithCompletion:()AsyncProperty;
- (void)avkit_enabledItemTracksWithCompletion:()AsyncProperty;
@end

@implementation AVPlayerItem(AsyncProperty)

- (void)avkit_enabledItemTracksWithCompletion:()AsyncProperty
{
  v4 = [a3 copy];
  v5 = [a1 tracks];
  v6 = [a1 _trackInspectionQueue];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __69__AVPlayerItem_AsyncProperty__avkit_enabledItemTracksWithCompletion___block_invoke;
  v9[3] = &unk_1E720A040;
  v10 = v5;
  v11 = v4;
  v7 = v4;
  v8 = v5;
  dispatch_async(v6, v9);
}

- (void)avkit_enabledAssetTracksWithCompletion:()AsyncProperty
{
  v4 = [a3 copy];
  v5 = [a1 tracks];
  v6 = [a1 _trackInspectionQueue];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __70__AVPlayerItem_AsyncProperty__avkit_enabledAssetTracksWithCompletion___block_invoke;
  v9[3] = &unk_1E720A040;
  v10 = v5;
  v11 = v4;
  v7 = v4;
  v8 = v5;
  dispatch_async(v6, v9);
}

- (void)avkit_assetTracksContainMediaCharacteristic:()AsyncProperty forMediaType:completion:
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [a1 tracks];
  v12 = [a1 _trackInspectionQueue];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __99__AVPlayerItem_AsyncProperty__avkit_assetTracksContainMediaCharacteristic_forMediaType_completion___block_invoke;
  v17[3] = &unk_1E7209FD8;
  v18 = v11;
  v19 = v9;
  v20 = v8;
  v21 = v10;
  v13 = v10;
  v14 = v8;
  v15 = v9;
  v16 = v11;
  dispatch_async(v12, v17);
}

- (id)_trackInspectionQueue
{
  if (_trackInspectionQueue_onceToken != -1)
  {
    dispatch_once(&_trackInspectionQueue_onceToken, &__block_literal_global_12113);
  }

  v1 = _trackInspectionQueue_trackInspectionQueue;

  return v1;
}

@end