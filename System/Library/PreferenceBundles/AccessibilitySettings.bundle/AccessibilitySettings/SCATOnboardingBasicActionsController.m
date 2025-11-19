@interface SCATOnboardingBasicActionsController
- (SCATOnboardingBasicActionsController)initWithCompletion:(id)a3;
- (void)viewDidLoad;
@end

@implementation SCATOnboardingBasicActionsController

- (SCATOnboardingBasicActionsController)initWithCompletion:(id)a3
{
  v4 = a3;
  v5 = AXLocStringKeyForModel();
  v6 = AXParameterizedLocalizedString();

  v7 = AXParameterizedLocalizedString();
  v12.receiver = self;
  v12.super_class = SCATOnboardingBasicActionsController;
  v8 = [(SCATOnboardingBasicActionsController *)&v12 initWithTitle:v7 detailText:v6 icon:0];

  if (v8)
  {
    v9 = objc_retainBlock(v4);
    completionHandler = v8->_completionHandler;
    v8->_completionHandler = v9;
  }

  return v8;
}

- (void)viewDidLoad
{
  v12.receiver = self;
  v12.super_class = SCATOnboardingBasicActionsController;
  [(SCATOnboardingBasicActionsController *)&v12 viewDidLoad];
  v3 = +[OBBoldTrayButton boldButton];
  v4 = AXParameterizedLocalizedString();
  [v3 setTitle:v4 forState:0];

  [v3 addTarget:self action:"_didTapNextButton" forControlEvents:0x2000];
  v5 = [(SCATOnboardingBasicActionsController *)self buttonTray];
  [v5 addButton:v3];

  v6 = AXParameterizedLocalizedString();
  v7 = AXParameterizedLocalizedString();
  v8 = [UIImage systemImageNamed:@"switch.2"];
  [(SCATOnboardingBasicActionsController *)self addBulletedListItemWithTitle:v6 description:v7 image:v8];

  v9 = AXParameterizedLocalizedString();
  v10 = AXParameterizedLocalizedString();
  v11 = [UIImage systemImageNamed:@"button.horizontal.top.press.fill"];
  [(SCATOnboardingBasicActionsController *)self addBulletedListItemWithTitle:v9 description:v10 image:v11];
}

@end