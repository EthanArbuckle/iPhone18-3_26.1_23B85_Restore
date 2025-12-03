@interface STKClass0SMSAboutViewController
- (id)formattedAboutText;
- (void)viewDidLoad;
@end

@implementation STKClass0SMSAboutViewController

- (void)viewDidLoad
{
  v14.receiver = self;
  v14.super_class = STKClass0SMSAboutViewController;
  [(STKClass0SMSAboutViewController *)&v14 viewDidLoad];
  view = [(STKClass0SMSAboutViewController *)self view];
  v4 = [UITextView alloc];
  [view frame];
  Width = CGRectGetWidth(v15);
  [view frame];
  v6 = [v4 initWithFrame:{0.0, 0.0, Width, CGRectGetHeight(v16)}];
  aboutContentView = self->_aboutContentView;
  self->_aboutContentView = v6;

  [(UITextView *)self->_aboutContentView setAdjustsFontForContentSizeCategory:1];
  [(UITextView *)self->_aboutContentView setAutoresizingMask:18];
  [(UITextView *)self->_aboutContentView setTextContainerInset:10.0, 10.0, 10.0, 10.0];
  v8 = self->_aboutContentView;
  formattedAboutText = [(STKClass0SMSAboutViewController *)self formattedAboutText];
  [(UITextView *)v8 setAttributedText:formattedAboutText];

  [(UITextView *)self->_aboutContentView setScrollEnabled:0];
  [(UITextView *)self->_aboutContentView setEditable:0];
  [(UITextView *)self->_aboutContentView setSelectable:0];
  [view addSubview:self->_aboutContentView];
  v10 = [NSBundle bundleWithIdentifier:@"com.apple.CTNotifyUIService"];
  v11 = [v10 localizedStringForKey:@"CLASS0SMS_ABOUT_TITLE" value:&stru_100018670 table:@"SIMToolkitUI"];
  [(STKClass0SMSAboutViewController *)self setTitle:v11];

  v12 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:0 target:self action:"doneButtonTapped:"];
  navigationItem = [(STKClass0SMSAboutViewController *)self navigationItem];
  [navigationItem setRightBarButtonItem:v12];
}

- (id)formattedAboutText
{
  v2 = [NSBundle bundleWithIdentifier:@"com.apple.CTNotifyUIService"];
  v3 = [v2 localizedStringForKey:@"CLASS0SMS_CLASS_0_SMS" value:&stru_100018670 table:@"SIMToolkitUI"];

  v4 = [NSBundle bundleWithIdentifier:@"com.apple.CTNotifyUIService"];
  v5 = [v4 localizedStringForKey:@"CLASS0SMS_FLASH_SMS" value:&stru_100018670 table:@"SIMToolkitUI"];

  v6 = [NSBundle bundleWithIdentifier:@"com.apple.CTNotifyUIService"];
  v7 = [v6 localizedStringForKey:@"CLASS0SMS_ABOUT_BODY" value:&stru_100018670 table:@"SIMToolkitUI"];
  v8 = [NSString stringWithFormat:v7, v3, v5];

  v9 = [[NSMutableAttributedString alloc] initWithString:v8];
  v10 = [v8 rangeOfString:v3];
  v21 = v11;
  v22 = v10;
  v12 = [v8 rangeOfString:v5];
  v23 = v13;
  v24 = v12;
  v14 = [UIFontMetrics metricsForTextStyle:UIFontTextStyleBody];
  v15 = [UIFont systemFontOfSize:14.0];
  v16 = [v14 scaledFontForFont:v15];

  v17 = [UIFontMetrics metricsForTextStyle:UIFontTextStyleBody];
  v18 = [UIFont boldSystemFontOfSize:14.0];
  v19 = [v17 scaledFontForFont:v18];

  [v9 beginEditing];
  [v9 addAttribute:NSFontAttributeName value:v16 range:{0, objc_msgSend(v8, "length")}];
  [v9 addAttribute:NSFontAttributeName value:v19 range:{v22, v21}];
  [v9 addAttribute:NSFontAttributeName value:v19 range:{v24, v23}];
  [v9 endEditing];

  return v9;
}

@end