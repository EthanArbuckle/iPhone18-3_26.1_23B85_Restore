@interface CCUIFlashlightBackgroundViewController
- (CCUIFlashlightBackgroundViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)_updateGlyphForFlashlightLevel:(unint64_t)level;
- (void)flashlightLevelDidChange:(unint64_t)change;
@end

@implementation CCUIFlashlightBackgroundViewController

- (CCUIFlashlightBackgroundViewController)initWithNibName:(id)name bundle:(id)bundle
{
  v7.receiver = self;
  v7.super_class = CCUIFlashlightBackgroundViewController;
  v4 = [(CCUIFlashlightBackgroundViewController *)&v7 initWithNibName:name bundle:bundle];
  if (v4 && [MEMORY[0x29EDC6D08] deviceSupportsFlashlight])
  {
    mEMORY[0x29EDC6D08] = [MEMORY[0x29EDC6D08] sharedInstance];
    [mEMORY[0x29EDC6D08] addObserver:v4];
  }

  return v4;
}

- (void)flashlightLevelDidChange:(unint64_t)change
{
  dispatch_assert_queue_V2(MEMORY[0x29EDCA578]);

  [(CCUIFlashlightBackgroundViewController *)self _updateGlyphForFlashlightLevel:change];
}

- (void)_updateGlyphForFlashlightLevel:(unint64_t)level
{
  v4 = @"flashlight.on.fill";
  if (!level)
  {
    v4 = @"flashlight.off.fill";
  }

  v5 = MEMORY[0x29EDC7AD0];
  v6 = v4;
  v8 = [v5 configurationWithPointSize:3 weight:2 scale:30.0];
  v7 = [MEMORY[0x29EDC7AC8] systemImageNamed:v6 withConfiguration:v8];

  [(CCUICustomContentModuleBackgroundViewController *)self setHeaderGlyphImage:v7 unscaledSymbolPointSize:30.0];
}

@end