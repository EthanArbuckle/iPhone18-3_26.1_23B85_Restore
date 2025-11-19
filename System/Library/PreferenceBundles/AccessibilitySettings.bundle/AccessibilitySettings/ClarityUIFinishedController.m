@interface ClarityUIFinishedController
- (ClarityUIFinishedController)initWithCompletion:(id)a3;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation ClarityUIFinishedController

- (ClarityUIFinishedController)initWithCompletion:(id)a3
{
  v4 = a3;
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
    v11 = objc_retainBlock(v4);
    completionHandler = v10->_completionHandler;
    v10->_completionHandler = v11;

    v13 = +[OBBoldTrayButton boldButton];
    v14 = settingsLocString(@"ENTER_CLARITY_UI_BUTTON", @"ClarityUISettings");
    [v13 setTitle:v14 forState:0];

    [v13 addTarget:v10 action:"_didTapDoneButton:" forControlEvents:0x2000];
    v15 = [(ClarityUIFinishedController *)v10 buttonTray];
    [v15 addButton:v13];

    v16 = +[OBLinkTrayButton linkButton];
    v17 = settingsLocString(@"ENTER_CLARITY_UI_LATER_BUTTON", @"ClarityUISettings");
    [v16 setTitle:v17 forState:0];

    [v16 addTarget:v10 action:"_didTapEnterLaterButton:" forControlEvents:0x2000];
    v18 = [(ClarityUIFinishedController *)v10 buttonTray];
    [v18 addButton:v16];
  }

  return v10;
}

- (void)viewWillAppear:(BOOL)a3
{
  v3.receiver = self;
  v3.super_class = ClarityUIFinishedController;
  [(ClarityUIFinishedController *)&v3 viewWillAppear:a3];
  _AXSClarityUISetEnabled();
}

@end