@interface TVSettingsAddLanguageSetupController
- (TVSettingsAddLanguageSetupController)initWithTopLevelController:(id)controller;
@end

@implementation TVSettingsAddLanguageSetupController

- (TVSettingsAddLanguageSetupController)initWithTopLevelController:(id)controller
{
  controllerCopy = controller;
  v9.receiver = self;
  v9.super_class = TVSettingsAddLanguageSetupController;
  v6 = [(TVSettingsAddLanguageSetupController *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_topLevelController, controller);
  }

  return v7;
}

@end