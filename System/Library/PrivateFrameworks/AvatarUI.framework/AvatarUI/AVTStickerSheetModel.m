@interface AVTStickerSheetModel
+ (id)sheetModelForAvatarRecord:(id)a3 withConfigurations:(id)a4 cache:(id)a5 taskScheduler:(id)a6 renderingQueue:(id)a7 encodingQueue:(id)a8 stickerGeneratorPool:(id)a9 imageProvider:(id)a10 environment:(id)a11;
- (AVTStickerSheetModel)initWithAvatarRecord:(id)a3 stickerItems:(id)a4 stickerRenderer:(id)a5 taskScheduler:(id)a6 placeholderProviderFactory:(id)a7 environment:(id)a8;
@end

@implementation AVTStickerSheetModel

+ (id)sheetModelForAvatarRecord:(id)a3 withConfigurations:(id)a4 cache:(id)a5 taskScheduler:(id)a6 renderingQueue:(id)a7 encodingQueue:(id)a8 stickerGeneratorPool:(id)a9 imageProvider:(id)a10 environment:(id)a11
{
  v59 = *MEMORY[0x1E69E9840];
  v16 = a3;
  v17 = a4;
  v18 = a5;
  v19 = a6;
  v20 = a7;
  v21 = a8;
  v22 = a9;
  v45 = a10;
  v44 = a11;
  v23 = v16;
  v50 = v19;
  v51 = v18;
  v48 = v21;
  v49 = v20;
  v46 = v22;
  v53 = [[AVTUIStickerRenderer alloc] initWithAvatarRecord:v16 cache:v18 renderingScheduler:v19 renderingQueue:v20 encodingQueue:v21 stickerGeneratorPool:v22 environment:v44];
  v24 = [MEMORY[0x1E695DF70] array];
  v54 = 0u;
  v55 = 0u;
  v56 = 0u;
  v57 = 0u;
  obj = v17;
  v25 = [obj countByEnumeratingWithState:&v54 objects:v58 count:16];
  if (v25)
  {
    v26 = v25;
    v27 = *v55;
    do
    {
      for (i = 0; i != v26; ++i)
      {
        if (*v55 != v27)
        {
          objc_enumerationMutation(obj);
        }

        v29 = *(*(&v54 + 1) + 8 * i);
        v30 = [(AVTUIStickerRenderer *)v53 scheduledStickerResourceProviderForStickerConfiguration:v29];
        v31 = MEMORY[0x1E696AEC0];
        v32 = [v23 identifier];
        v33 = [v29 name];
        v34 = [v31 stringWithFormat:@"%@_%@", v32, v33];

        v35 = [AVTUIStickerItem alloc];
        v36 = [v29 localizedName];
        v37 = [(AVTUIStickerItem *)v35 initWithIdentifier:v34 localizedName:v36 resourceProvider:v30];

        [v24 addObject:v37];
      }

      v26 = [obj countByEnumeratingWithState:&v54 objects:v58 count:16];
    }

    while (v26);
  }

  v38 = +[AVTRenderingScope gridThumbnailScope];
  v39 = [v45 providerForRecord:v23 scope:v38];
  v40 = [v39 copy];

  v41 = [[AVTUIStickerPlaceholderProviderFactory alloc] initWithImageProvider:v40];
  v42 = [[a1 alloc] initWithAvatarRecord:v23 stickerItems:v24 stickerRenderer:v53 taskScheduler:v50 placeholderProviderFactory:v41 environment:v44];

  return v42;
}

- (AVTStickerSheetModel)initWithAvatarRecord:(id)a3 stickerItems:(id)a4 stickerRenderer:(id)a5 taskScheduler:(id)a6 placeholderProviderFactory:(id)a7 environment:(id)a8
{
  v23 = a3;
  v22 = a4;
  v21 = a5;
  v15 = a6;
  v16 = a7;
  v17 = a8;
  v24.receiver = self;
  v24.super_class = AVTStickerSheetModel;
  v18 = [(AVTStickerSheetModel *)&v24 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_avatarRecord, a3);
    objc_storeStrong(&v19->_stickerItems, a4);
    objc_storeStrong(&v19->_stickerRenderer, a5);
    objc_storeStrong(&v19->_placeholderProviderFactory, a7);
    objc_storeStrong(&v19->_environment, a8);
    objc_storeStrong(&v19->_taskScheduler, a6);
  }

  return v19;
}

@end