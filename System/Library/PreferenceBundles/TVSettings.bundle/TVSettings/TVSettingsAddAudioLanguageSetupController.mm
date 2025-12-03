@interface TVSettingsAddAudioLanguageSetupController
- (void)setupController;
@end

@implementation TVSettingsAddAudioLanguageSetupController

- (void)setupController
{
  v6 = objc_alloc_init(PSSpecifier);
  v3 = [TVSettingsAddAudioLanguageController alloc];
  topLevelController = [(TVSettingsAddLanguageSetupController *)self topLevelController];
  v5 = [(TVSettingsAddAudioLanguageController *)v3 initWithTopLevelController:topLevelController];

  [(TVSettingsAddAudioLanguageController *)v5 setRootController:self];
  [(TVSettingsAddAudioLanguageController *)v5 setSpecifier:v6];
  [(TVSettingsAddAudioLanguageController *)v5 setParentController:self];
  [(TVSettingsAddAudioLanguageSetupController *)self showController:v5];
}

@end