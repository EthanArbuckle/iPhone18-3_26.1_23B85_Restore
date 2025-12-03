@interface ClarityUIFinishedController
- (ClarityUIFinishedController)initWithCompletion:(id)completion;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation ClarityUIFinishedController

- (ClarityUIFinishedController)initWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = [UIImage systemImageNamed:@"checkmark.circle"];
  v6 = +[UIColor systemGreenColor];
  v7 = [v5 imageWithTintColor:v6 renderingMode:1];

  v8 = settingsLocString(@"ONBOARDING_COMPLETE_TITLE", @"ClarityUISettings");
  v9 = settingsLocString(@"ONBOARDING_COMPLETE_DETAIL", @"ClarityUISettings");
  v20.receiver = self;
  v20.super_class = ClarityUIFinishedController;
  v10 = [(ClarityUIFinishedController *)&v20 initWithTitle:v8 detailText:v9 icon:v7];

  if (v10)
  {
    v11 = objc_retainBlock(completionCopy);
    completionHandler = v10->_completionHandler;
    v10->_completionHandler = v11;

    v13 = +[OBBoldTrayButton boldButton];
    v14 = settingsLocString(@"ENTER_CLARITY_UI_BUTTON", @"ClarityUISettings");
    [v13 setTitle:v14 forState:0];

    [v13 addTarget:v10 action:"_didTapDoneButton:" forControlEvents:0x2000];
    buttonTray = [(ClarityUIFinishedController *)v10 buttonTray];
    [buttonTray addButton:v13];

    v16 = +[OBLinkTrayButton linkButton];
    v17 = settingsLocString(@"ENTER_CLARITY_UI_LATER_BUTTON", @"ClarityUISettings");
    [v16 setTitle:v17 forState:0];

    [v16 addTarget:v10 action:"_didTapEnterLaterButton:" forControlEvents:0x2000];
    buttonTray2 = [(ClarityUIFinishedController *)v10 buttonTray];
    [buttonTray2 addButton:v16];
  }

  return v10;
}

- (void)viewWillAppear:(BOOL)appear
{
  v3.receiver = self;
  v3.super_class = ClarityUIFinishedController;
  [(ClarityUIFinishedController *)&v3 viewWillAppear:appear];
  _AXSClarityUISetEnabled();
}

@end