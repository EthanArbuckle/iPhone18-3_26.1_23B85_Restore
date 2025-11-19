@interface AXCCSoundDetectionModule
- (AXCCSoundDetectionModule)init;
- (BOOL)isSelected;
- (void)_initializeViewContent;
- (void)expandModule;
- (void)openSoundDetectionSettings;
- (void)setSelected:(BOOL)a3;
@end

@implementation AXCCSoundDetectionModule

- (AXCCSoundDetectionModule)init
{
  v8.receiver = self;
  v8.super_class = AXCCSoundDetectionModule;
  v2 = [(AXCCSoundDetectionModule *)&v8 init];
  v3 = v2;
  if (v2)
  {
    v6[0] = MEMORY[0x29EDCA5F8];
    v6[1] = 3221225472;
    v6[2] = sub_29C932334;
    v6[3] = &unk_29F334C48;
    v7 = v2;
    v4 = MEMORY[0x29ED4CA90](v6);
    if ([MEMORY[0x29EDBA108] isMainThread])
    {
      v4[2](v4);
    }

    else
    {
      AXPerformBlockAsynchronouslyOnMainThread();
    }
  }

  return v3;
}

- (void)_initializeViewContent
{
  v3 = [(CCUIMenuModuleViewController *)[AXCCSoundDetectionModuleViewController alloc] initWithNibName:0 bundle:0];
  contentViewController = self->_contentViewController;
  self->_contentViewController = v3;

  [(AXCCSoundDetectionModuleViewController *)self->_contentViewController setSoundDetectionDelegate:self];
  [(AXCCSoundDetectionModuleViewController *)self->_contentViewController setModule:self];
  v5 = self->_contentViewController;
  v6 = MEMORY[0x29EDC7AC8];
  v7 = [MEMORY[0x29EDB9F48] bundleForClass:objc_opt_class()];
  v8 = [v6 imageNamed:@"SoundDetectionIcon" inBundle:v7];
  [(CCUIMenuModuleViewController *)v5 setGlyphImage:v8];

  v9 = self->_contentViewController;
  v10 = MEMORY[0x29EDC7AC8];
  v11 = [MEMORY[0x29EDB9F48] bundleForClass:objc_opt_class()];
  v12 = [v10 imageNamed:@"SoundDetectionIcon" inBundle:v11];
  [(CCUIButtonModuleViewController *)v9 setSelectedGlyphImage:v12];

  v13 = self->_contentViewController;
  v14 = [MEMORY[0x29EDC7A00] systemPinkColor];
  [(CCUIButtonModuleViewController *)v13 setSelectedGlyphColor:v14];

  if (![(CCUIButtonModuleViewController *)self->_contentViewController isExpanded])
  {
    v15 = [(AXCCSoundDetectionModule *)self isSelected];
    v16 = self->_contentViewController;

    [(CCUIButtonModuleViewController *)v16 setSelected:v15];
  }
}

- (void)expandModule
{
  v2 = [(AXCCSoundDetectionModule *)self contentModuleContext];
  [v2 requestExpandModule];
}

- (void)setSelected:(BOOL)a3
{
  v3 = a3;
  v9 = [(AXCCSoundDetectionModule *)self contentModuleContext];
  v4 = MEMORY[0x29EDC0CF0];
  if (v3)
  {
    v5 = @"status.running";
  }

  else
  {
    v5 = @"status.paused";
  }

  if (v3)
  {
    v6 = 1;
  }

  else
  {
    v6 = 2;
  }

  v7 = sub_29C9325CC(v5);
  v8 = [v4 statusUpdateWithMessage:v7 type:v6];
  [v9 enqueueStatusUpdate:v8];
}

- (BOOL)isSelected
{
  v2 = [MEMORY[0x29EDBDDB8] sharedInstance];
  v3 = [v2 soundDetectionState] == 2;

  return v3;
}

- (void)openSoundDetectionSettings
{
  if (AXDeviceSupportsNameRecognition())
  {
    v3 = @"settings-navigation://com.apple.Settings.Accessibility/SOUND_AND_NAME_RECOGNITION_TITLE/SOUND_RECOGNITION";
  }

  else
  {
    v3 = @"settings-navigation://com.apple.Settings.Accessibility/SOUND_RECOGNITION_TITLE";
  }

  v5 = [MEMORY[0x29EDB8E70] URLWithString:v3];
  v4 = [(AXCCSoundDetectionModule *)self contentModuleContext];
  [v4 openURL:v5 completionHandler:0];
}

@end