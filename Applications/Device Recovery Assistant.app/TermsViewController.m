@interface TermsViewController
- (TermsViewController)init;
- (TermsViewControllerDelegate)delegate;
- (void)_didTapAgreeButton:(id)a3;
- (void)_didTapDisagreeButton:(id)a3;
- (void)viewDidLoad;
@end

@implementation TermsViewController

- (TermsViewController)init
{
  v3 = +[NSBundle mainBundle];
  v4 = [v3 localizedStringForKey:@"TERMS_SCREEN_TITLE" value:&stru_100028E90 table:0];

  v5 = +[NSBundle mainBundle];
  v6 = [v5 localizedStringForKey:@"TERMS_SCREEN_FIRST_PARAGRAPH" value:&stru_100028E90 table:0];
  v7 = +[NSBundle mainBundle];
  v8 = [v7 localizedStringForKey:@"TERMS_SCREEN_SECOND_PARAGRAPH" value:&stru_100028E90 table:0];
  v9 = [NSString stringWithFormat:@"%@\n\n%@", v6, v8];

  v10 = +[NSBundle mainBundle];
  v11 = [v10 localizedStringForKey:@"TERMS_COLLECT_DATA_BUTTON_TITLE" value:&stru_100028E90 table:0];

  v12 = +[NSBundle mainBundle];
  v13 = [v12 localizedStringForKey:@"TERMS_DONT_COLLECT_DATA_BUTTON_TITLE" value:&stru_100028E90 table:0];

  v20.receiver = self;
  v20.super_class = TermsViewController;
  v14 = [(TermsViewController *)&v20 initWithTitle:v4 detailText:v9 symbolName:0];
  if (v14)
  {
    v15 = +[OBBoldTrayButton boldButton];
    [v15 setTitle:v11 forState:0];
    [v15 addTarget:v14 action:"_didTapAgreeButton:" forControlEvents:0x2000];
    v16 = [(TermsViewController *)v14 buttonTray];
    [v16 addButton:v15];

    v17 = +[OBLinkTrayButton linkButton];
    [v17 setTitle:v13 forState:0];
    [v17 addTarget:v14 action:"_didTapDisagreeButton:" forControlEvents:0x2000];
    v18 = [(TermsViewController *)v14 buttonTray];
    [v18 addButton:v17];
  }

  return v14;
}

- (void)viewDidLoad
{
  v2.receiver = self;
  v2.super_class = TermsViewController;
  [(TermsViewController *)&v2 viewDidLoad];
}

- (void)_didTapAgreeButton:(id)a3
{
  v4 = [(TermsViewController *)self delegate];

  if (v4)
  {
    v5 = [(TermsViewController *)self delegate];
    [v5 termsViewControllerDidAgree:self];
  }
}

- (void)_didTapDisagreeButton:(id)a3
{
  v4 = [(TermsViewController *)self delegate];

  if (v4)
  {
    v5 = [(TermsViewController *)self delegate];
    [v5 termsViewControllerDidDisagree:self];
  }
}

- (TermsViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end