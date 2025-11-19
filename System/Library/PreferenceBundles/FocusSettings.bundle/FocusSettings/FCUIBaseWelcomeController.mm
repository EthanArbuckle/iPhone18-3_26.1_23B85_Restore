@interface FCUIBaseWelcomeController
+ (id)colorForColorName:(id)a3;
- (FCUISetupNavigationController)setupNavigationController;
- (id)addBoldTrayButton;
- (id)addBoldTrayButtonWithColor:(id)a3;
- (id)addTrayButton;
- (void)_closeButtonPressed:(id)a3;
- (void)setHeaderViewDetailText:(id)a3;
- (void)setHeaderViewTitle:(id)a3;
- (void)setHeaderViewTitleHyphenationFactor:(float)a3;
- (void)setShowCloseButton:(BOOL)a3;
- (void)viewDidLoad;
@end

@implementation FCUIBaseWelcomeController

- (void)viewDidLoad
{
  v7.receiver = self;
  v7.super_class = FCUIBaseWelcomeController;
  [(FCUIBaseWelcomeController *)&v7 viewDidLoad];
  v3 = [(FCUIBaseWelcomeController *)self navigationItem];
  v4 = +[NSBundle fcui_focusSettingsLocalizationBundle];
  v5 = [v4 localizedStringForKey:@"ONBOARDING_BACK_BUTTON" value:&stru_21648 table:0];
  [v3 setBackButtonTitle:v5];

  v6 = [(FCUIBaseWelcomeController *)self scrollView];
  [v6 setDelegate:self];
  [(FCUIBaseWelcomeController *)self setShowCloseButton:1];
}

- (FCUISetupNavigationController)setupNavigationController
{
  v2 = [(FCUIBaseWelcomeController *)self navigationController];
  v3 = objc_opt_class();
  v4 = v2;
  if (v3)
  {
    if (objc_opt_isKindOfClass())
    {
      v3 = v4;
    }

    else
    {
      v3 = 0;
    }
  }

  v5 = v3;

  return v3;
}

- (void)setShowCloseButton:(BOOL)a3
{
  if (self->_showCloseButton != a3)
  {
    self->_showCloseButton = a3;
    if (a3)
    {
      v6 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:24 target:self action:"_closeButtonPressed:"];
      v5 = [(FCUIBaseWelcomeController *)self navigationItem];
      [v5 setRightBarButtonItem:v6];
    }

    else
    {
      v6 = [(FCUIBaseWelcomeController *)self navigationItem];
      [v6 setRightBarButtonItem:0];
    }
  }
}

- (void)setHeaderViewTitle:(id)a3
{
  v4 = a3;
  v5 = [(FCUIBaseWelcomeController *)self headerView];
  [v5 setTitle:v4];
}

- (void)setHeaderViewTitleHyphenationFactor:(float)a3
{
  v5 = [(FCUIBaseWelcomeController *)self headerView];
  *&v4 = a3;
  [v5 setTitleHyphenationFactor:v4];
}

- (void)setHeaderViewDetailText:(id)a3
{
  v4 = a3;
  v5 = [(FCUIBaseWelcomeController *)self headerView];
  [v5 setDetailText:v4];
}

- (id)addTrayButton
{
  v3 = [OBTrayButton buttonWithType:1];
  v4 = [(FCUIBaseWelcomeController *)self buttonTray];
  [v4 addButton:v3];

  return v3;
}

- (id)addBoldTrayButtonWithColor:(id)a3
{
  v4 = a3;
  v5 = +[OBBoldTrayButton boldButton];
  v6 = v5;
  if (v4)
  {
    [v5 setTintColor:v4];
  }

  v7 = [(FCUIBaseWelcomeController *)self buttonTray];
  [v7 addButton:v6];

  return v6;
}

- (id)addBoldTrayButton
{
  v3 = +[OBBoldTrayButton boldButton];
  v4 = [(FCUIBaseWelcomeController *)self buttonTray];
  [v4 addButton:v3];

  return v3;
}

+ (id)colorForColorName:(id)a3
{
  v3 = NSSelectorFromString(a3);
  if (objc_opt_respondsToSelector())
  {
    v4 = [UIColor performSelector:v3];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)_closeButtonPressed:(id)a3
{
  v3 = [(FCUIBaseWelcomeController *)self navigationController];
  [v3 dismissViewControllerAnimated:1 completion:0];
}

@end