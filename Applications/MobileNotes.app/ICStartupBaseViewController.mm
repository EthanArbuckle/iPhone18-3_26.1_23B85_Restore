@interface ICStartupBaseViewController
- (ICStartupNavigationController)startupNavigationController;
- (unint64_t)numChoices;
- (void)hideChoices;
- (void)primaryButtonPressed:(id)pressed;
- (void)secondaryButtonPressed:(id)pressed;
- (void)updateChoiceButtons;
- (void)viewDidLoad;
@end

@implementation ICStartupBaseViewController

- (void)viewDidLoad
{
  v3.receiver = self;
  v3.super_class = ICStartupBaseViewController;
  [(ICStartupBaseViewController *)&v3 viewDidLoad];
  [(ICStartupBaseViewController *)self choicesUpdated];
}

- (void)hideChoices
{
  buttonTray = [(ICStartupBaseViewController *)self buttonTray];
  [buttonTray setHidden:1];
}

- (unint64_t)numChoices
{
  choiceLabels = [(ICStartupBaseViewController *)self choiceLabels];
  v3 = [choiceLabels count];

  return v3;
}

- (void)updateChoiceButtons
{
  numChoices = [(ICStartupBaseViewController *)self numChoices];
  if (![(ICStartupBaseViewController *)self didSetupChoices]&& numChoices)
  {
    for (i = 0; i != numChoices; ++i)
    {
      choiceLabels = [(ICStartupBaseViewController *)self choiceLabels];
      v6 = [choiceLabels objectAtIndexedSubscript:i];

      if (i)
      {
        v7 = [OBTrayButton buttonWithType:1];
        v8 = v7;
        selfCopy2 = self;
        v10 = "secondaryButtonPressed:";
      }

      else
      {
        v7 = +[OBBoldTrayButton boldButton];
        v8 = v7;
        selfCopy2 = self;
        v10 = "primaryButtonPressed:";
      }

      [v7 addTarget:selfCopy2 action:v10 forControlEvents:64];
      [v8 setTitle:v6 forState:0];
      buttonTray = [(ICStartupBaseViewController *)self buttonTray];
      [buttonTray addButton:v8];
    }

    [(ICStartupBaseViewController *)self setDidSetupChoices:1];
    goto LABEL_10;
  }

  if (numChoices)
  {
LABEL_10:
    buttonTray2 = [(ICStartupBaseViewController *)self buttonTray];
    [buttonTray2 setHidden:0];

    return;
  }

  [(ICStartupBaseViewController *)self hideChoices];
}

- (ICStartupNavigationController)startupNavigationController
{
  objc_opt_class();
  navigationController = [(ICStartupBaseViewController *)self navigationController];
  v4 = ICCheckedDynamicCast();

  return v4;
}

- (void)primaryButtonPressed:(id)pressed
{
  if ([(ICStartupBaseViewController *)self numChoices]< 2)
  {
    v6 = 0;
  }

  else
  {
    startupNavigationController = [(ICStartupBaseViewController *)self startupNavigationController];
    shouldSwapChoices = [startupNavigationController shouldSwapChoices];

    v6 = shouldSwapChoices & 1;
  }

  [(ICStartupBaseViewController *)self choiceSelected:v6];
}

- (void)secondaryButtonPressed:(id)pressed
{
  startupNavigationController = [(ICStartupBaseViewController *)self startupNavigationController];
  v5 = [startupNavigationController shouldSwapChoices] ^ 1;

  [(ICStartupBaseViewController *)self choiceSelected:v5];
}

@end