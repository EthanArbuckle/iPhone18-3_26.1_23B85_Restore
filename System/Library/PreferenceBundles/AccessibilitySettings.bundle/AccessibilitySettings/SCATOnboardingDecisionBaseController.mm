@interface SCATOnboardingDecisionBaseController
- (SCATOnboardingDecisionBaseController)initWithTitle:(id)title detailText:(id)text decision:(BOOL)decision completion:(id)completion;
- (SCATOnboardingDecisionBaseController)initWithTitle:(id)title detailText:(id)text yesButtonTitle:(id)buttonTitle noButtonTitle:(id)noButtonTitle completion:(id)completion;
- (void)_addNoButton:(id)button;
- (void)_addYesButton:(id)button;
@end

@implementation SCATOnboardingDecisionBaseController

- (SCATOnboardingDecisionBaseController)initWithTitle:(id)title detailText:(id)text decision:(BOOL)decision completion:(id)completion
{
  decisionCopy = decision;
  completionCopy = completion;
  v16.receiver = self;
  v16.super_class = SCATOnboardingDecisionBaseController;
  v11 = [(SCATOnboardingDecisionBaseController *)&v16 initWithTitle:title detailText:text symbolName:0];
  v12 = v11;
  if (v11)
  {
    [(SCATOnboardingDecisionBaseController *)v11 setCompletionHandler:completionCopy];
    AXParameterizedLocalizedString();
    if (decisionCopy)
      v13 = {;
      [(SCATOnboardingDecisionBaseController *)v12 _addYesButton:v13];

      v14 = AXParameterizedLocalizedString();
      [(SCATOnboardingDecisionBaseController *)v12 _addNoButton:v14];
    }

    else
      v14 = {;
      [(SCATOnboardingDecisionBaseController *)v12 _addYesButton:v14];
    }
  }

  return v12;
}

- (SCATOnboardingDecisionBaseController)initWithTitle:(id)title detailText:(id)text yesButtonTitle:(id)buttonTitle noButtonTitle:(id)noButtonTitle completion:(id)completion
{
  buttonTitleCopy = buttonTitle;
  noButtonTitleCopy = noButtonTitle;
  completionCopy = completion;
  v18.receiver = self;
  v18.super_class = SCATOnboardingDecisionBaseController;
  v15 = [(SCATOnboardingDecisionBaseController *)&v18 initWithTitle:title detailText:text symbolName:0];
  v16 = v15;
  if (v15)
  {
    [(SCATOnboardingDecisionBaseController *)v15 setCompletionHandler:completionCopy];
    [(SCATOnboardingDecisionBaseController *)v16 _addYesButton:buttonTitleCopy];
    [(SCATOnboardingDecisionBaseController *)v16 _addNoButton:noButtonTitleCopy];
  }

  return v16;
}

- (void)_addYesButton:(id)button
{
  buttonCopy = button;
  v6 = +[OBBoldTrayButton boldButton];
  [v6 setTitle:buttonCopy forState:0];

  [v6 addTarget:self action:"_didTapYesButton" forControlEvents:0x2000];
  buttonTray = [(SCATOnboardingDecisionBaseController *)self buttonTray];
  [buttonTray addButton:v6];
}

- (void)_addNoButton:(id)button
{
  buttonCopy = button;
  v6 = +[OBLinkTrayButton linkButton];
  [v6 setTitle:buttonCopy forState:0];

  [v6 addTarget:self action:"_didTapNoButton" forControlEvents:0x2000];
  buttonTray = [(SCATOnboardingDecisionBaseController *)self buttonTray];
  [buttonTray addButton:v6];
}

@end