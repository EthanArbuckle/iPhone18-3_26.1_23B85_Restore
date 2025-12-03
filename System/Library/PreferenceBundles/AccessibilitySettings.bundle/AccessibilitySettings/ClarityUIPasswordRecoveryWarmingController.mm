@interface ClarityUIPasswordRecoveryWarmingController
- (ClarityUIPasswordRecoveryWarmingController)initWithCompletion:(id)completion;
@end

@implementation ClarityUIPasswordRecoveryWarmingController

- (ClarityUIPasswordRecoveryWarmingController)initWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = settingsLocString(@"PASSWORD_RECOVERY_TITLE", @"ClarityUISettings");
  v6 = settingsLocString(@"PASSWORD_RECOVERY_SUBTITLE", @"ClarityUISettings");
  v17.receiver = self;
  v17.super_class = ClarityUIPasswordRecoveryWarmingController;
  v7 = [(ClarityUIPasswordRecoveryWarmingController *)&v17 initWithTitle:v5 detailText:v6 icon:0];
  if (v7)
  {
    v8 = objc_retainBlock(completionCopy);
    completionHandler = v7->_completionHandler;
    v7->_completionHandler = v8;

    v10 = +[OBBoldTrayButton boldButton];
    v11 = settingsLocString(@"PASSWORD_RECOVERY_CONTINUE", @"ClarityUISettings");
    [v10 setTitle:v11 forState:0];

    [v10 addTarget:v7 action:"_didTapNextButton:" forControlEvents:0x2000];
    buttonTray = [(ClarityUIPasswordRecoveryWarmingController *)v7 buttonTray];
    [buttonTray addButton:v10];

    v13 = +[OBLinkTrayButton linkButton];
    v14 = settingsLocString(@"PASSWORD_RECOVERY_SKIP", @"ClarityUISettings");
    [v13 setTitle:v14 forState:0];

    [v13 addTarget:v7 action:"_didTapSkipButton:" forControlEvents:0x2000];
    buttonTray2 = [(ClarityUIPasswordRecoveryWarmingController *)v7 buttonTray];
    [buttonTray2 addButton:v13];
  }

  return v7;
}

@end