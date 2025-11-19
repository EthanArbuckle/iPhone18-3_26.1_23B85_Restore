@interface ICStartupBaseViewController
- (ICStartupNavigationController)startupNavigationController;
- (unint64_t)numChoices;
- (void)hideChoices;
- (void)primaryButtonPressed:(id)a3;
- (void)secondaryButtonPressed:(id)a3;
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
  v2 = [(ICStartupBaseViewController *)self buttonTray];
  [v2 setHidden:1];
}

- (unint64_t)numChoices
{
  v2 = [(ICStartupBaseViewController *)self choiceLabels];
  v3 = [v2 count];

  return v3;
}

- (void)updateChoiceButtons
{
  v3 = [(ICStartupBaseViewController *)self numChoices];
  if (![(ICStartupBaseViewController *)self didSetupChoices]&& v3)
  {
    for (i = 0; i != v3; ++i)
    {
      v5 = [(ICStartupBaseViewController *)self choiceLabels];
      v6 = [v5 objectAtIndexedSubscript:i];

      if (i)
      {
        v7 = [OBTrayButton buttonWithType:1];
        v8 = v7;
        v9 = self;
        v10 = "secondaryButtonPressed:";
      }

      else
      {
        v7 = +[OBBoldTrayButton boldButton];
        v8 = v7;
        v9 = self;
        v10 = "primaryButtonPressed:";
      }

      [v7 addTarget:v9 action:v10 forControlEvents:64];
      [v8 setTitle:v6 forState:0];
      v11 = [(ICStartupBaseViewController *)self buttonTray];
      [v11 addButton:v8];
    }

    [(ICStartupBaseViewController *)self setDidSetupChoices:1];
    goto LABEL_10;
  }

  if (v3)
  {
LABEL_10:
    v12 = [(ICStartupBaseViewController *)self buttonTray];
    [v12 setHidden:0];

    return;
  }

  [(ICStartupBaseViewController *)self hideChoices];
}

- (ICStartupNavigationController)startupNavigationController
{
  objc_opt_class();
  v3 = [(ICStartupBaseViewController *)self navigationController];
  v4 = ICCheckedDynamicCast();

  return v4;
}

- (void)primaryButtonPressed:(id)a3
{
  if ([(ICStartupBaseViewController *)self numChoices]< 2)
  {
    v6 = 0;
  }

  else
  {
    v4 = [(ICStartupBaseViewController *)self startupNavigationController];
    v5 = [v4 shouldSwapChoices];

    v6 = v5 & 1;
  }

  [(ICStartupBaseViewController *)self choiceSelected:v6];
}

- (void)secondaryButtonPressed:(id)a3
{
  v4 = [(ICStartupBaseViewController *)self startupNavigationController];
  v5 = [v4 shouldSwapChoices] ^ 1;

  [(ICStartupBaseViewController *)self choiceSelected:v5];
}

@end