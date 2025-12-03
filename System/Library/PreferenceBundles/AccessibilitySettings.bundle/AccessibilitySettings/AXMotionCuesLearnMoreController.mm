@interface AXMotionCuesLearnMoreController
+ (id)learnMoreController;
- (void)continueButtonTapped;
- (void)viewDidLoad;
- (void)viewWillDisappear:(BOOL)disappear;
@end

@implementation AXMotionCuesLearnMoreController

+ (id)learnMoreController
{
  v2 = [AXMotionCuesLearnMoreController alloc];
  v3 = settingsLocString(@"MotionCuesLearnMoreTitle", @"Accessibility-MotionCues");
  v4 = [UIImage _systemImageNamed:@"motion.cues"];
  v5 = [(AXMotionCuesLearnMoreController *)v2 initWithTitle:v3 detailText:0 icon:v4 contentLayout:2];

  return v5;
}

- (void)viewDidLoad
{
  v19 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:1 target:self action:"cancelButtonTapped:"];
  navigationItem = [(AXMotionCuesLearnMoreController *)self navigationItem];
  [navigationItem setRightBarButtonItem:v19];

  navigationItem2 = [(AXMotionCuesLearnMoreController *)self navigationItem];
  [navigationItem2 setBackButtonDisplayMode:1];

  v5 = +[UIDevice currentDevice];
  if ([v5 userInterfaceIdiom] == &dword_0 + 1)
  {
    v6 = 60.0;
  }

  else
  {
    v6 = 40.0;
  }

  v7 = [UIImageSymbolConfiguration configurationWithPointSize:5 weight:2 scale:v6];
  v8 = [UIImage systemImageNamed:@"water.waves" withConfiguration:v7];
  v9 = [UIImage systemImageNamed:@"switch.2"];
  v10 = [v9 imageWithSymbolConfiguration:v7];

  v11 = settingsLocString(@"MotionCuesLearnMoreItemMayReduceMotionSicknessTitle", @"Accessibility-MotionCues");
  v12 = AXLocStringKeyForModel();
  v13 = settingsLocString(v12, @"Accessibility-MotionCues");
  [(AXMotionCuesLearnMoreController *)self addBulletedListItemWithTitle:v11 description:v13 image:v8];

  v14 = settingsLocString(@"MotionCuesLearnMoreItemControlCenterTitle", @"Accessibility-MotionCues");
  v15 = settingsLocString(@"MotionCuesLearnMoreItemControlCenterDescription", @"Accessibility-MotionCues");
  [(AXMotionCuesLearnMoreController *)self addBulletedListItemWithTitle:v14 description:v15 image:v10];

  v16 = +[OBBoldTrayButton boldButton];
  [v16 setTranslatesAutoresizingMaskIntoConstraints:0];
  v17 = settingsLocString(@"MotionCuesLearnMoreContinueButtonTitle", @"Accessibility-MotionCues");
  [v16 setTitle:v17 forState:0];

  [v16 addTarget:self action:"continueButtonTapped" forControlEvents:64];
  [(AXMotionCuesLearnMoreController *)self setMainButton:v16];
  buttonTray = [(AXMotionCuesLearnMoreController *)self buttonTray];
  [buttonTray addButton:v16];
}

- (void)viewWillDisappear:(BOOL)disappear
{
  v5.receiver = self;
  v5.super_class = AXMotionCuesLearnMoreController;
  [(AXMotionCuesLearnMoreController *)&v5 viewWillDisappear:disappear];
  dismissHandler = self->_dismissHandler;
  if (dismissHandler)
  {
    dismissHandler[2]();
  }
}

- (void)continueButtonTapped
{
  v4 = [[AXMotionCuesLearnMorePageController alloc] initWithPage:1];
  navigationController = [(AXMotionCuesLearnMoreController *)self navigationController];
  [navigationController pushViewController:v4 animated:1];
}

@end