@interface TIAddKeyboardLanguageListSetupController
- (void)setupController;
@end

@implementation TIAddKeyboardLanguageListSetupController

- (void)setupController
{
  v3 = objc_alloc_init(PSSpecifier);
  v4 = objc_alloc_init(TIAddKeyboardLanguageListController);
  [(TIAddKeyboardLanguageListController *)v4 setRootController:self];
  [(TIAddKeyboardLanguageListController *)v4 setSpecifier:v3];
  [(TIAddKeyboardLanguageListController *)v4 setParentController:self];

  [(TIAddKeyboardLanguageListSetupController *)self showController:v4];
}

@end