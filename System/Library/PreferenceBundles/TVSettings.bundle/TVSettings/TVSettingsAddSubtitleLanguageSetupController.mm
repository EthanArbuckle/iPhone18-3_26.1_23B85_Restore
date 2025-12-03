@interface TVSettingsAddSubtitleLanguageSetupController
- (void)setupController;
@end

@implementation TVSettingsAddSubtitleLanguageSetupController

- (void)setupController
{
  v6 = objc_alloc_init(PSSpecifier);
  v3 = [TVSettingsAddSubtitleLanguageController alloc];
  topLevelController = [(TVSettingsAddLanguageSetupController *)self topLevelController];
  v5 = [(TVSettingsAddSubtitleLanguageController *)v3 initWithTopLevelController:topLevelController];

  [(TVSettingsAddSubtitleLanguageController *)v5 setRootController:self];
  [(TVSettingsAddSubtitleLanguageController *)v5 setSpecifier:v6];
  [(TVSettingsAddSubtitleLanguageController *)v5 setParentController:self];
  [(TVSettingsAddSubtitleLanguageSetupController *)self showController:v5];
}

@end