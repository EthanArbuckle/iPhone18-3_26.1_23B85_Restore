@interface SCATOnboardingDecisionBaseController
- (SCATOnboardingDecisionBaseController)initWithTitle:(id)a3 detailText:(id)a4 decision:(BOOL)a5 completion:(id)a6;
- (SCATOnboardingDecisionBaseController)initWithTitle:(id)a3 detailText:(id)a4 yesButtonTitle:(id)a5 noButtonTitle:(id)a6 completion:(id)a7;
- (void)_addNoButton:(id)a3;
- (void)_addYesButton:(id)a3;
@end

@implementation SCATOnboardingDecisionBaseController

- (SCATOnboardingDecisionBaseController)initWithTitle:(id)a3 detailText:(id)a4 decision:(BOOL)a5 completion:(id)a6
{
  v6 = a5;
  v10 = a6;
  v16.receiver = self;
  v16.super_class = SCATOnboardingDecisionBaseController;
  v11 = [(SCATOnboardingDecisionBaseController *)&v16 initWithTitle:a3 detailText:a4 symbolName:0];
  v12 = v11;
  if (v11)
  {
    [(SCATOnboardingDecisionBaseController *)v11 setCompletionHandler:v10];
    AXParameterizedLocalizedString();
    if (v6)
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

- (SCATOnboardingDecisionBaseController)initWithTitle:(id)a3 detailText:(id)a4 yesButtonTitle:(id)a5 noButtonTitle:(id)a6 completion:(id)a7
{
  v12 = a5;
  v13 = a6;
  v14 = a7;
  v18.receiver = self;
  v18.super_class = SCATOnboardingDecisionBaseController;
  v15 = [(SCATOnboardingDecisionBaseController *)&v18 initWithTitle:a3 detailText:a4 symbolName:0];
  v16 = v15;
  if (v15)
  {
    [(SCATOnboardingDecisionBaseController *)v15 setCompletionHandler:v14];
    [(SCATOnboardingDecisionBaseController *)v16 _addYesButton:v12];
    [(SCATOnboardingDecisionBaseController *)v16 _addNoButton:v13];
  }

  return v16;
}

- (void)_addYesButton:(id)a3
{
  v4 = a3;
  v6 = +[OBBoldTrayButton boldButton];
  [v6 setTitle:v4 forState:0];

  [v6 addTarget:self action:"_didTapYesButton" forControlEvents:0x2000];
  v5 = [(SCATOnboardingDecisionBaseController *)self buttonTray];
  [v5 addButton:v6];
}

- (void)_addNoButton:(id)a3
{
  v4 = a3;
  v6 = +[OBLinkTrayButton linkButton];
  [v6 setTitle:v4 forState:0];

  [v6 addTarget:self action:"_didTapNoButton" forControlEvents:0x2000];
  v5 = [(SCATOnboardingDecisionBaseController *)self buttonTray];
  [v5 addButton:v6];
}

@end