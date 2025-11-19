@interface AVAssetDownloadDefaultPrimaryContentConfiguration
- (void)_serializeIntoDownloadConfig:(FigStreamingAssetDownloadConfig *)a3 asset:(id)a4;
- (void)_setupContentConfigWithDownloadConfig:(FigStreamingAssetDownloadConfig *)a3 asset:(id)a4;
@end

@implementation AVAssetDownloadDefaultPrimaryContentConfiguration

- (void)_setupContentConfigWithDownloadConfig:(FigStreamingAssetDownloadConfig *)a3 asset:(id)a4
{
  v11[1] = *MEMORY[0x1E69E9840];
  v6 = [a4 preferredMediaSelection];
  v7 = [v6 selectedMediaOptionInMediaSelectionGroup:{objc_msgSend(a4, "mediaSelectionGroupForMediaCharacteristic:", @"AVMediaCharacteristicAudible"}];
  if (v7)
  {
    v8 = [AVAssetVariantQualifier predicateForChannelCount:2 mediaSelectionOption:v7 operatorType:1];
    if (v8)
    {
      v9 = [AVAssetVariantQualifier assetVariantQualifierWithPredicate:v8];
      if (v9)
      {
        v11[0] = v9;
        -[AVAssetDownloadContentConfiguration setVariantQualifiers:](self, "setVariantQualifiers:", [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:1]);
      }
    }

    if (![(NSArray *)[(AVAssetDownloadContentConfiguration *)self mediaSelections] count])
    {
      v10 = v6;
      -[AVAssetDownloadContentConfiguration setMediaSelections:](self, "setMediaSelections:", [MEMORY[0x1E695DEC8] arrayWithObjects:&v10 count:1]);
    }
  }
}

- (void)_serializeIntoDownloadConfig:(FigStreamingAssetDownloadConfig *)a3 asset:(id)a4
{
  if (![(NSArray *)[(AVAssetDownloadContentConfiguration *)self variantQualifiers] count])
  {
    v7 = dispatch_semaphore_create(0);
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __88__AVAssetDownloadDefaultPrimaryContentConfiguration__serializeIntoDownloadConfig_asset___block_invoke;
    v9[3] = &unk_1E7462A28;
    v9[4] = a4;
    v9[5] = self;
    v9[6] = v7;
    v9[7] = a3;
    [a4 loadValuesAsynchronouslyForKeys:&unk_1F0AD3808 completionHandler:v9];
    dispatch_semaphore_wait(v7, 0xFFFFFFFFFFFFFFFFLL);
    dispatch_release(v7);
  }

  v8.receiver = self;
  v8.super_class = AVAssetDownloadDefaultPrimaryContentConfiguration;
  [(AVAssetDownloadContentConfiguration *)&v8 _serializeIntoDownloadConfig:a3 asset:a4];
}

intptr_t __88__AVAssetDownloadDefaultPrimaryContentConfiguration__serializeIntoDownloadConfig_asset___block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) statusOfValueForKey:@"preferredMediaSelection" error:0] == 2)
  {
    [*(a1 + 40) _setupContentConfigWithDownloadConfig:*(a1 + 56) asset:*(a1 + 32)];
  }

  v2 = *(a1 + 48);

  return dispatch_semaphore_signal(v2);
}

@end