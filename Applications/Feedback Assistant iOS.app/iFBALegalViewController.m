@interface iFBALegalViewController
- (UIBarButtonItem)acceptButton;
- (UIBarButtonItem)declineButton;
- (UITextView)textView;
- (void)accept:(id)a3;
- (void)decline:(id)a3;
- (void)didReceiveMemoryWarning;
- (void)viewDidLoad;
@end

@implementation iFBALegalViewController

- (void)viewDidLoad
{
  v26.receiver = self;
  v26.super_class = iFBALegalViewController;
  [(iFBALegalViewController *)&v26 viewDidLoad];
  v3 = [NSAttributedString alloc];
  v4 = +[iFBAConstants currentiOSLegalDoc];
  v29[0] = NSDocumentTypeDocumentAttribute;
  v29[1] = NSCharacterEncodingDocumentAttribute;
  v30[0] = NSRTFTextDocumentType;
  v30[1] = &off_1000E5E58;
  v5 = [NSDictionary dictionaryWithObjects:v30 forKeys:v29 count:2];
  v6 = [v3 initWithURL:v4 options:v5 documentAttributes:0 error:0];
  v7 = [(iFBALegalViewController *)self textView];
  [v7 setAttributedText:v6];

  v8 = +[NSBundle mainBundle];
  v9 = [v8 localizedStringForKey:@"DECLINE" value:&stru_1000E2210 table:0];
  v10 = [(iFBALegalViewController *)self declineButton];
  [v10 setTitle:v9];

  v11 = +[NSBundle mainBundle];
  v12 = [v11 localizedStringForKey:@"ACCEPT" value:&stru_1000E2210 table:0];
  v13 = [(iFBALegalViewController *)self acceptButton];
  [v13 setTitle:v12];

  v14 = [UITraitCollection traitCollectionWithUserInterfaceStyle:0];
  v15 = [UITraitCollection traitCollectionWithUserInterfaceStyle:2];
  v27[0] = v14;
  v16 = +[UIColor systemBackgroundColor];
  v27[1] = v15;
  v28[0] = v16;
  v17 = +[UIColor secondarySystemBackgroundColor];
  v28[1] = v17;
  v18 = [NSDictionary dictionaryWithObjects:v28 forKeys:v27 count:2];

  v19 = [UIColor _dynamicColorWithColorsByTraitCollection:v18];
  v20 = [(iFBALegalViewController *)self view];
  [v20 setBackgroundColor:v19];

  v21 = [(iFBALegalViewController *)self view];
  v22 = [v21 backgroundColor];
  v23 = [(iFBALegalViewController *)self textView];
  [v23 setBackgroundColor:v22];

  v24 = +[UIColor labelColor];
  v25 = [(iFBALegalViewController *)self textView];
  [v25 setTextColor:v24];

  [(iFBALegalViewController *)self setModalInPresentation:1];
}

- (void)didReceiveMemoryWarning
{
  v2.receiver = self;
  v2.super_class = iFBALegalViewController;
  [(iFBALegalViewController *)&v2 didReceiveMemoryWarning];
}

- (void)decline:(id)a3
{
  v4 = +[NSBundle mainBundle];
  v5 = [v4 localizedStringForKey:@"AGREEMENT_REQUIREMENT" value:&stru_1000E2210 table:0];
  v9 = [UIAlertController alertControllerWithTitle:&stru_1000E2210 message:v5 preferredStyle:1];

  v6 = +[NSBundle mainBundle];
  v7 = [v6 localizedStringForKey:@"OK" value:&stru_1000E2210 table:0];
  v8 = [UIAlertAction actionWithTitle:v7 style:1 handler:0];
  [v9 addAction:v8];

  [(iFBALegalViewController *)self presentViewController:v9 animated:1 completion:0];
}

- (void)accept:(id)a3
{
  v4 = +[iFBAConstants sharedUserDefaults];
  v5 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", +[FBKSharedConstants currentLegalVersion]);
  [v4 setValue:v5 forKey:FBKAgreedLegalVersionKey];

  [(iFBALegalViewController *)self dismissViewControllerAnimated:1 completion:0];
  v6 = [(iFBALegalViewController *)self completion];
  v6[2](v6, 1);
}

- (UITextView)textView
{
  WeakRetained = objc_loadWeakRetained(&self->_textView);

  return WeakRetained;
}

- (UIBarButtonItem)acceptButton
{
  WeakRetained = objc_loadWeakRetained(&self->_acceptButton);

  return WeakRetained;
}

- (UIBarButtonItem)declineButton
{
  WeakRetained = objc_loadWeakRetained(&self->_declineButton);

  return WeakRetained;
}

@end