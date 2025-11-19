@interface MPRecentsUnknownCallersViewController
- (MPRecentsUnknownCallersViewController)initWithTitle:(id)a3 detailText:(id)a4 icon:(id)a5;
- (MPRecentsUnknownCallersViewControllerDelegate)delegate;
- (void)didPressEnableButton;
- (void)didRequestDismiss;
@end

@implementation MPRecentsUnknownCallersViewController

- (MPRecentsUnknownCallersViewController)initWithTitle:(id)a3 detailText:(id)a4 icon:(id)a5
{
  v17.receiver = self;
  v17.super_class = MPRecentsUnknownCallersViewController;
  v5 = [(MPRecentsUnknownCallersViewController *)&v17 initWithTitle:a3 detailText:a4 icon:a5];
  if (v5)
  {
    v6 = +[OBBoldTrayButton boldButton];
    v7 = +[NSBundle mainBundle];
    v8 = [v7 localizedStringForKey:@"TURN_ON_CALL_SILENCING" value:&stru_10028F310 table:@"PHRecents"];
    [v6 setTitle:v8 forState:0];

    [v6 addTarget:v5 action:"didPressEnableButton" forControlEvents:64];
    v9 = [(MPRecentsUnknownCallersViewController *)v5 buttonTray];
    [v9 addButton:v6];

    v10 = +[OBLinkTrayButton linkButton];
    v11 = +[NSBundle mainBundle];
    v12 = [v11 localizedStringForKey:@"TURN_ON_LATER_IN_SETTINGS" value:&stru_10028F310 table:@"PHRecents"];
    [v10 setTitle:v12 forState:0];

    [v10 addTarget:v5 action:"didRequestDismiss" forControlEvents:64];
    v13 = [(MPRecentsUnknownCallersViewController *)v5 buttonTray];
    [v13 addButton:v10];

    v14 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:1 target:v5 action:"didRequestDismiss"];
    v15 = [(MPRecentsUnknownCallersViewController *)v5 navigationItem];
    [v15 setLeftBarButtonItem:v14];
  }

  return v5;
}

- (void)didPressEnableButton
{
  v3 = [(MPRecentsUnknownCallersViewController *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = [(MPRecentsUnknownCallersViewController *)self delegate];
    [v5 unknownCallersViewControllerDidRequestEnable:self];
  }
}

- (void)didRequestDismiss
{
  v3 = [(MPRecentsUnknownCallersViewController *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = [(MPRecentsUnknownCallersViewController *)self delegate];
    [v5 unknownCallersViewControllerDidRequestDismiss:self];
  }
}

- (MPRecentsUnknownCallersViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end