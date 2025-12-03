@interface ANVolumeController
+ (id)sharedController;
- (void)setVolumeWithOptions:(unint64_t)options;
@end

@implementation ANVolumeController

+ (id)sharedController
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __38__ANVolumeController_sharedController__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (sharedController_onceToken != -1)
  {
    dispatch_once(&sharedController_onceToken, block);
  }

  v2 = sharedController_controller;

  return v2;
}

uint64_t __38__ANVolumeController_sharedController__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  sharedController_controller = objc_opt_new();

  return MEMORY[0x2821F96F8]();
}

- (void)setVolumeWithOptions:(unint64_t)options
{
  optionsCopy = options;
  v20 = *MEMORY[0x277D85DE8];
  [(ANVolumeController *)self smartSiriVolume];
  if (optionsCopy)
  {
    v5 = v4;
    if (v4 != -1.0)
    {
      mEMORY[0x277D26E58] = [MEMORY[0x277D26E58] sharedAVSystemController];
      *&v7 = v5;
      v8 = [mEMORY[0x277D26E58] setVolumeTo:@"VoiceCommand" forCategory:v7];

      if (ANLogHandleVolumeController_once != -1)
      {
        [ANVolumeController setVolumeWithOptions:];
      }

      v9 = ANLogHandleVolumeController_logger;
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *&v10 = v5;
        v11 = [MEMORY[0x277CCABB0] numberWithFloat:v10];
        v12 = [MEMORY[0x277CCABB0] numberWithBool:v8];
        v14 = 138412802;
        v15 = &stru_2836DAA20;
        v16 = 2112;
        v17 = v11;
        v18 = 2112;
        v19 = v12;
        _os_log_impl(&dword_2237C8000, v9, OS_LOG_TYPE_DEFAULT, "%@Volume set to %@ = %@", &v14, 0x20u);
      }
    }
  }

  v13 = *MEMORY[0x277D85DE8];
}

@end