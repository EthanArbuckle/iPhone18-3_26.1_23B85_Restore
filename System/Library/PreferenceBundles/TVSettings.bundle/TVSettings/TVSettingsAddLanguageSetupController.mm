@interface TVSettingsAddLanguageSetupController
- (TVSettingsAddLanguageSetupController)initWithTopLevelController:(id)a3;
@end

@implementation TVSettingsAddLanguageSetupController

- (TVSettingsAddLanguageSetupController)initWithTopLevelController:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = TVSettingsAddLanguageSetupController;
  v6 = [(TVSettingsAddLanguageSetupController *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_topLevelController, a3);
  }

  return v7;
}

@end