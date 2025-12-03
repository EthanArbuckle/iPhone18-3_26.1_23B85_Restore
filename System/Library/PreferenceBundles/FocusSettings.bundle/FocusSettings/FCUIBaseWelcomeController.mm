@interface FCUIBaseWelcomeController
+ (id)colorForColorName:(id)name;
- (FCUISetupNavigationController)setupNavigationController;
- (id)addBoldTrayButton;
- (id)addBoldTrayButtonWithColor:(id)color;
- (id)addTrayButton;
- (void)_closeButtonPressed:(id)pressed;
- (void)setHeaderViewDetailText:(id)text;
- (void)setHeaderViewTitle:(id)title;
- (void)setHeaderViewTitleHyphenationFactor:(float)factor;
- (void)setShowCloseButton:(BOOL)button;
- (void)viewDidLoad;
@end

@implementation FCUIBaseWelcomeController

- (void)viewDidLoad
{
  v7.receiver = self;
  v7.super_class = FCUIBaseWelcomeController;
  [(FCUIBaseWelcomeController *)&v7 viewDidLoad];
  navigationItem = [(FCUIBaseWelcomeController *)self navigationItem];
  v4 = +[NSBundle fcui_focusSettingsLocalizationBundle];
  v5 = [v4 localizedStringForKey:@"ONBOARDING_BACK_BUTTON" value:&stru_21648 table:0];
  [navigationItem setBackButtonTitle:v5];

  scrollView = [(FCUIBaseWelcomeController *)self scrollView];
  [scrollView setDelegate:self];
  [(FCUIBaseWelcomeController *)self setShowCloseButton:1];
}

- (FCUISetupNavigationController)setupNavigationController
{
  navigationController = [(FCUIBaseWelcomeController *)self navigationController];
  v3 = objc_opt_class();
  v4 = navigationController;
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

- (void)setShowCloseButton:(BOOL)button
{
  if (self->_showCloseButton != button)
  {
    self->_showCloseButton = button;
    if (button)
    {
      navigationItem2 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:24 target:self action:"_closeButtonPressed:"];
      navigationItem = [(FCUIBaseWelcomeController *)self navigationItem];
      [navigationItem setRightBarButtonItem:navigationItem2];
    }

    else
    {
      navigationItem2 = [(FCUIBaseWelcomeController *)self navigationItem];
      [navigationItem2 setRightBarButtonItem:0];
    }
  }
}

- (void)setHeaderViewTitle:(id)title
{
  titleCopy = title;
  headerView = [(FCUIBaseWelcomeController *)self headerView];
  [headerView setTitle:titleCopy];
}

- (void)setHeaderViewTitleHyphenationFactor:(float)factor
{
  headerView = [(FCUIBaseWelcomeController *)self headerView];
  *&v4 = factor;
  [headerView setTitleHyphenationFactor:v4];
}

- (void)setHeaderViewDetailText:(id)text
{
  textCopy = text;
  headerView = [(FCUIBaseWelcomeController *)self headerView];
  [headerView setDetailText:textCopy];
}

- (id)addTrayButton
{
  v3 = [OBTrayButton buttonWithType:1];
  buttonTray = [(FCUIBaseWelcomeController *)self buttonTray];
  [buttonTray addButton:v3];

  return v3;
}

- (id)addBoldTrayButtonWithColor:(id)color
{
  colorCopy = color;
  v5 = +[OBBoldTrayButton boldButton];
  v6 = v5;
  if (colorCopy)
  {
    [v5 setTintColor:colorCopy];
  }

  buttonTray = [(FCUIBaseWelcomeController *)self buttonTray];
  [buttonTray addButton:v6];

  return v6;
}

- (id)addBoldTrayButton
{
  v3 = +[OBBoldTrayButton boldButton];
  buttonTray = [(FCUIBaseWelcomeController *)self buttonTray];
  [buttonTray addButton:v3];

  return v3;
}

+ (id)colorForColorName:(id)name
{
  v3 = NSSelectorFromString(name);
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

- (void)_closeButtonPressed:(id)pressed
{
  navigationController = [(FCUIBaseWelcomeController *)self navigationController];
  [navigationController dismissViewControllerAnimated:1 completion:0];
}

@end