@interface CCUIFlashlightBackgroundViewController
- (CCUIFlashlightBackgroundViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)_updateGlyphForFlashlightLevel:(unint64_t)a3;
- (void)flashlightLevelDidChange:(unint64_t)a3;
@end

@implementation CCUIFlashlightBackgroundViewController

- (CCUIFlashlightBackgroundViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  v7.receiver = self;
  v7.super_class = CCUIFlashlightBackgroundViewController;
  v4 = [(CCUIFlashlightBackgroundViewController *)&v7 initWithNibName:a3 bundle:a4];
  if (v4 && [MEMORY[0x29EDC6D08] deviceSupportsFlashlight])
  {
    v5 = [MEMORY[0x29EDC6D08] sharedInstance];
    [v5 addObserver:v4];
  }

  return v4;
}

- (void)flashlightLevelDidChange:(unint64_t)a3
{
  dispatch_assert_queue_V2(MEMORY[0x29EDCA578]);

  [(CCUIFlashlightBackgroundViewController *)self _updateGlyphForFlashlightLevel:a3];
}

- (void)_updateGlyphForFlashlightLevel:(unint64_t)a3
{
  v4 = @"flashlight.on.fill";
  if (!a3)
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