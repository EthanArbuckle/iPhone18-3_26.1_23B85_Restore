@interface AXBLocalizationCaptionController
+ (id)controller;
- (void)_updateFeature;
- (void)initializeMonitor;
@end

@implementation AXBLocalizationCaptionController

+ (id)controller
{
  if (controller_onceToken_1 != -1)
  {
    +[AXBLocalizationCaptionController controller];
  }

  v3 = controller_SharedManager;

  return v3;
}

uint64_t __46__AXBLocalizationCaptionController_controller__block_invoke()
{
  controller_SharedManager = objc_alloc_init(AXBLocalizationCaptionController);

  return MEMORY[0x2A1C71028]();
}

- (void)initializeMonitor
{
  v3 = [MEMORY[0x29EDBA068] defaultCenter];
  [v3 addObserver:self selector:sel__updateFeature name:*MEMORY[0x29EDC8498] object:0];

  [(AXBLocalizationCaptionController *)self _updateFeature];
}

- (void)_updateFeature
{
  v3 = [MEMORY[0x29EDBDFA0] sharedInstance];
  v4 = [v3 localizationQACaptionMode];

  if (v4)
  {
    [MEMORY[0x29EDBD700] startService];
    self->_wasEnabled = 1;
  }

  else if (self->_wasEnabled)
  {
    v5 = MEMORY[0x29EDBD700];

    [v5 stopService];
  }
}

@end