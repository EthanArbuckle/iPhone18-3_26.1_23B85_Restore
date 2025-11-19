@interface ClarityUIPrivacySettingOnboardingController
- (ClarityUIPrivacySettingOnboardingController)initWithTitle:(id)a3 privacySpecifier:(id)a4 completion:(id)a5;
@end

@implementation ClarityUIPrivacySettingOnboardingController

- (ClarityUIPrivacySettingOnboardingController)initWithTitle:(id)a3 privacySpecifier:(id)a4 completion:(id)a5
{
  v8 = a4;
  v9 = a5;
  v10 = a3;
  v11 = [v8 propertyForKey:@"ClarityTCCExplanation"];
  v12 = [v8 propertyForKey:@"ClarityTCCIconKey"];
  v13 = v12;
  if (!v12 || ([v12 integerValue], TCCCopyIconResourcePathForService(), v14 = objc_claimAutoreleasedReturnValue(), +[UIImage imageWithContentsOfFile:](UIImage, "imageWithContentsOfFile:", v14), v15 = objc_claimAutoreleasedReturnValue(), v14, !v15))
  {
    v16 = [v8 propertyForKey:PSIconImageKey];
    if (v16)
    {
      v15 = v16;
    }

    else
    {
      v17 = [v8 propertyForKey:PSLazyIconLoading];
      v18 = [v17 BOOLValue];

      if (v18)
      {
        v19 = [[PSTableCell alloc] initWithStyle:0 reuseIdentifier:0 specifier:v8];
        [v19 setSpecifier:v8];
        v15 = [v19 getLazyIcon];
      }

      else
      {
        v15 = 0;
      }
    }
  }

  v20 = [[ClarityUISettingsWrapperController alloc] initWithPSSpecifier:v8];
  v25.receiver = self;
  v25.super_class = ClarityUIPrivacySettingOnboardingController;
  v21 = [(ClarityUIOnboardingSettingsWrapperController *)&v25 initWithTitle:v10 detailText:v11 icon:v15 controller:v20];

  if (v21)
  {
    v22 = objc_retainBlock(v9);
    completionHandler = v21->_completionHandler;
    v21->_completionHandler = v22;

    [(ClarityUISettingsWrapperController *)v20 setDelegate:v21];
    [(ClarityUIOnboardingSettingsWrapperController *)v21 setNextButtonEnabled:0];
  }

  return v21;
}

@end