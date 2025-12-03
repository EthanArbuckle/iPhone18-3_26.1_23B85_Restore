@interface ClarityUIPrivacySettingOnboardingController
- (ClarityUIPrivacySettingOnboardingController)initWithTitle:(id)title privacySpecifier:(id)specifier completion:(id)completion;
@end

@implementation ClarityUIPrivacySettingOnboardingController

- (ClarityUIPrivacySettingOnboardingController)initWithTitle:(id)title privacySpecifier:(id)specifier completion:(id)completion
{
  specifierCopy = specifier;
  completionCopy = completion;
  titleCopy = title;
  v11 = [specifierCopy propertyForKey:@"ClarityTCCExplanation"];
  v12 = [specifierCopy propertyForKey:@"ClarityTCCIconKey"];
  v13 = v12;
  if (!v12 || ([v12 integerValue], TCCCopyIconResourcePathForService(), v14 = objc_claimAutoreleasedReturnValue(), +[UIImage imageWithContentsOfFile:](UIImage, "imageWithContentsOfFile:", v14), getLazyIcon = objc_claimAutoreleasedReturnValue(), v14, !getLazyIcon))
  {
    v16 = [specifierCopy propertyForKey:PSIconImageKey];
    if (v16)
    {
      getLazyIcon = v16;
    }

    else
    {
      v17 = [specifierCopy propertyForKey:PSLazyIconLoading];
      bOOLValue = [v17 BOOLValue];

      if (bOOLValue)
      {
        v19 = [[PSTableCell alloc] initWithStyle:0 reuseIdentifier:0 specifier:specifierCopy];
        [v19 setSpecifier:specifierCopy];
        getLazyIcon = [v19 getLazyIcon];
      }

      else
      {
        getLazyIcon = 0;
      }
    }
  }

  v20 = [[ClarityUISettingsWrapperController alloc] initWithPSSpecifier:specifierCopy];
  v25.receiver = self;
  v25.super_class = ClarityUIPrivacySettingOnboardingController;
  v21 = [(ClarityUIOnboardingSettingsWrapperController *)&v25 initWithTitle:titleCopy detailText:v11 icon:getLazyIcon controller:v20];

  if (v21)
  {
    v22 = objc_retainBlock(completionCopy);
    completionHandler = v21->_completionHandler;
    v21->_completionHandler = v22;

    [(ClarityUISettingsWrapperController *)v20 setDelegate:v21];
    [(ClarityUIOnboardingSettingsWrapperController *)v21 setNextButtonEnabled:0];
  }

  return v21;
}

@end