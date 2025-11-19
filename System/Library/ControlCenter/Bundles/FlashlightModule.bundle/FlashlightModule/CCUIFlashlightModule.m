@interface CCUIFlashlightModule
- (id)backgroundViewControllerForContext:(id)a3;
- (id)contentViewControllerForContext:(id)a3;
@end

@implementation CCUIFlashlightModule

- (id)contentViewControllerForContext:(id)a3
{
  v4 = objc_alloc_init(CCUIFlashlightModuleViewController);
  v5 = [MEMORY[0x29EDB9F48] ccui_bundleForModuleInstance:self];
  v6 = [v5 ccui_displayName];
  [(CCUIButtonModuleViewController *)v4 setTitle:v6];

  v7 = [MEMORY[0x29EDC7AC8] systemImageNamed:@"flashlight.off.fill"];
  [(CCUIButtonModuleViewController *)v4 setGlyphImage:v7];

  v8 = [MEMORY[0x29EDC7AC8] systemImageNamed:@"flashlight.on.fill"];
  [(CCUIButtonModuleViewController *)v4 setSelectedGlyphImage:v8];

  v9 = [MEMORY[0x29EDC7A00] systemIndigoColor];
  [(CCUISliderModuleViewController *)v4 setSelectedGlyphColor:v9];

  viewController = self->_viewController;
  p_viewController = &self->_viewController;
  if (!viewController)
  {
    objc_storeStrong(p_viewController, v4);
  }

  return v4;
}

- (id)backgroundViewControllerForContext:(id)a3
{
  v4 = objc_alloc_init(CCUIFlashlightBackgroundViewController);
  backgroundViewController = self->_backgroundViewController;
  p_backgroundViewController = &self->_backgroundViewController;
  if (!backgroundViewController)
  {
    objc_storeStrong(p_backgroundViewController, v4);
  }

  return v4;
}

@end