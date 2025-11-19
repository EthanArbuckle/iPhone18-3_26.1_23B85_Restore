@interface BHSTextViewController
- (void)_createDismissButton;
- (void)_createTextView;
- (void)dismissButtonPressed:(id)a3;
- (void)viewDidLoad;
@end

@implementation BHSTextViewController

- (void)viewDidLoad
{
  v7.receiver = self;
  v7.super_class = BHSTextViewController;
  [(BHSTextViewController *)&v7 viewDidLoad];
  v3 = +[UIColor whiteColor];
  v4 = [(BHSTextViewController *)self view];
  [v4 setBackgroundColor:v3];

  v5 = [NSBundle bundleForClass:objc_opt_class()];
  v6 = [v5 localizedStringForKey:@"FEEDBACK_WHEELCHAIR_MORE_INFO_TITLE" value:&stru_188B0 table:@"Localizable"];
  [(BHSTextViewController *)self setTitle:v6];

  [(BHSTextViewController *)self _createTextView];
  [(BHSTextViewController *)self _createDismissButton];
}

- (void)dismissButtonPressed:(id)a3
{
  v5 = [(BHSTextViewController *)self navigationController];
  v4 = [(BHSTextViewController *)self onDismiss];
  [v5 dismissViewControllerAnimated:1 completion:v4];
}

- (void)_createDismissButton
{
  v4 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:0 target:self action:"dismissButtonPressed:"];
  v3 = [(BHSTextViewController *)self navigationItem];
  [v3 setRightBarButtonItem:v4];
}

- (void)_createTextView
{
  v6 = objc_alloc_init(UITextView);
  [(BHSTextViewController *)self setView:v6];
  v3 = [UIFont preferredFontForTextStyle:UIFontTextStyleBody];
  [v6 setFont:v3];

  [v6 setEditable:0];
  v4 = [NSBundle bundleForClass:objc_opt_class()];
  v5 = [v4 localizedStringForKey:@"FEEDBACK_WHEELCHAIR_MORE_INFO_DESCRIPTION" value:&stru_188B0 table:@"Localizable"];
  [v6 setText:v5];
}

@end