@interface ARRecordingTechniquePublic(ARKitAdditions)
- (void)_saveVideoInPhotosLibrary:()ARKitAdditions;
- (void)_subscribeToBackgroundNotifications;
- (void)copyVideoToPhotoLibrary:()ARKitAdditions;
@end

@implementation ARRecordingTechniquePublic(ARKitAdditions)

- (void)_subscribeToBackgroundNotifications
{
  v2 = [MEMORY[0x277CCAB98] defaultCenter];
  [v2 addObserver:a1 selector:sel_finishRecording name:*MEMORY[0x277D76660] object:0];
}

- (void)_saveVideoInPhotosLibrary:()ARKitAdditions
{
  v4 = a3;
  v5 = MEMORY[0x277CD9948];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __72__ARRecordingTechniquePublic_ARKitAdditions___saveVideoInPhotosLibrary___block_invoke;
  v7[3] = &unk_278BCD6D8;
  v7[4] = a1;
  v8 = v4;
  v6 = v4;
  [v5 requestAuthorization:v7];
}

- (void)copyVideoToPhotoLibrary:()ARKitAdditions
{
  v4 = a3;
  v5 = [MEMORY[0x277CD9948] sharedPhotoLibrary];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __70__ARRecordingTechniquePublic_ARKitAdditions__copyVideoToPhotoLibrary___block_invoke;
  v9[3] = &unk_278BCD4A8;
  v10 = v4;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __70__ARRecordingTechniquePublic_ARKitAdditions__copyVideoToPhotoLibrary___block_invoke_2;
  v7[3] = &unk_278BCD700;
  v7[4] = a1;
  v8 = v10;
  v6 = v10;
  [v5 performChanges:v9 completionHandler:v7];
}

@end