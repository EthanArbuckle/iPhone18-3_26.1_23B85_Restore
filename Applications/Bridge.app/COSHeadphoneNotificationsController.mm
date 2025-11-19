@interface COSHeadphoneNotificationsController
- (BOOL)textView:(id)a3 shouldInteractWithURL:(id)a4 inRange:(_NSRange)a5 interaction:(int64_t)a6;
- (id)bluetoothSettingsLinkText;
- (id)createDescriptionTextView;
- (id)createScrollView;
- (id)createTitleLabel;
- (id)descriptionText;
- (id)healthLinkText;
- (id)linkText:(id)a3 withLink:(id)a4;
- (id)titleText;
- (void)applyBodyStyle:(id)a3 toRange:(_NSRange)a4;
- (void)applyBoldStyle:(id)a3 toTextMatching:(id)a4;
- (void)viewDidLoad;
@end

@implementation COSHeadphoneNotificationsController

- (void)viewDidLoad
{
  v49.receiver = self;
  v49.super_class = COSHeadphoneNotificationsController;
  [(COSHeadphoneNotificationsController *)&v49 viewDidLoad];
  v3 = +[UIColor systemBackgroundColor];
  v4 = [(COSHeadphoneNotificationsController *)self view];
  [v4 setBackgroundColor:v3];

  v5 = [(COSHeadphoneNotificationsController *)self createScrollView];
  scrollView = self->_scrollView;
  self->_scrollView = v5;

  v7 = [(COSHeadphoneNotificationsController *)self view];
  [v7 addSubview:self->_scrollView];

  v8 = [(COSHeadphoneNotificationsController *)self createTitleLabel];
  titleLabel = self->_titleLabel;
  self->_titleLabel = v8;

  v10 = [(COSHeadphoneNotificationsController *)self createDescriptionTextView];
  descriptionView = self->_descriptionView;
  self->_descriptionView = v10;

  [(UIScrollView *)self->_scrollView addSubview:self->_titleLabel];
  [(UIScrollView *)self->_scrollView addSubview:self->_descriptionView];
  v48 = +[NSMutableArray array];
  v46 = [(UIScrollView *)self->_scrollView leadingAnchor];
  v47 = [(COSHeadphoneNotificationsController *)self view];
  v45 = [v47 safeAreaLayoutGuide];
  v44 = [v45 leadingAnchor];
  v43 = [v46 constraintEqualToAnchor:v44];
  v50[0] = v43;
  v41 = [(UIScrollView *)self->_scrollView trailingAnchor];
  v42 = [(COSHeadphoneNotificationsController *)self view];
  v40 = [v42 safeAreaLayoutGuide];
  v39 = [v40 trailingAnchor];
  v38 = [v41 constraintEqualToAnchor:v39];
  v50[1] = v38;
  v36 = [(UIScrollView *)self->_scrollView topAnchor];
  v37 = [(COSHeadphoneNotificationsController *)self view];
  v35 = [v37 safeAreaLayoutGuide];
  v34 = [v35 topAnchor];
  v33 = [v36 constraintEqualToAnchor:v34];
  v50[2] = v33;
  v31 = [(UIScrollView *)self->_scrollView bottomAnchor];
  v32 = [(COSHeadphoneNotificationsController *)self view];
  v30 = [v32 safeAreaLayoutGuide];
  v29 = [v30 bottomAnchor];
  v28 = [v31 constraintEqualToAnchor:v29];
  v50[3] = v28;
  v27 = [(UILabel *)self->_titleLabel widthAnchor];
  v26 = [(UIScrollView *)self->_scrollView widthAnchor];
  v25 = [v27 constraintEqualToAnchor:v26 multiplier:0.9];
  v50[4] = v25;
  v24 = [(UILabel *)self->_titleLabel centerXAnchor];
  v12 = [(UIScrollView *)self->_scrollView centerXAnchor];
  v13 = [v24 constraintEqualToAnchor:v12];
  v50[5] = v13;
  v14 = [(UIView *)self->_descriptionView widthAnchor];
  v15 = [(UIScrollView *)self->_scrollView widthAnchor];
  v16 = [v14 constraintEqualToAnchor:v15 multiplier:0.9];
  v50[6] = v16;
  v17 = [(UIView *)self->_descriptionView centerXAnchor];
  v18 = [(UIScrollView *)self->_scrollView centerXAnchor];
  v19 = [v17 constraintEqualToAnchor:v18];
  v50[7] = v19;
  v20 = [NSArray arrayWithObjects:v50 count:8];
  [v48 addObjectsFromArray:v20];

  v21 = _NSDictionaryOfVariableBindings(@"titleLabelMargin, descriptionLabelMargin", &off_100281EF0, &off_100281F00, 0);
  v22 = _NSDictionaryOfVariableBindings(@"_titleLabel, _descriptionView", self->_titleLabel, self->_descriptionView, 0);
  v23 = +[NSLayoutConstraint constraintsWithVisualFormat:options:metrics:views:](NSLayoutConstraint, "constraintsWithVisualFormat:options:metrics:views:", @"V:|-(titleLabelMargin)-[_titleLabel]-(descriptionLabelMargin)-[_descriptionView]-|", 0, v21, v22);
  [v48 addObjectsFromArray:v23];

  [NSLayoutConstraint activateConstraints:v48];
}

- (id)titleText
{
  v2 = +[NSBundle mainBundle];
  v3 = [v2 localizedStringForKey:@"ABOUT_HEADPHONE_LEVEL_WEEKLY_NOTIFICATIONS_TITLE" value:&stru_10026E598 table:@"Sounds"];

  return v3;
}

- (id)linkText:(id)a3 withLink:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [[NSMutableAttributedString alloc] initWithString:v6 attributes:0];

  v8 = [v7 length];
  v9 = +[PSListController appearance];
  v10 = [v9 footerHyperlinkColor];

  v14 = NSForegroundColorAttributeName;
  v15 = v10;
  v11 = [NSDictionary dictionaryWithObjects:&v15 forKeys:&v14 count:1];
  [v7 setAttributes:v11 range:{0, v8}];
  v12 = [NSURL URLWithString:v5];

  [v7 addAttribute:NSLinkAttributeName value:v12 range:{0, v8}];

  return v7;
}

- (id)bluetoothSettingsLinkText
{
  v3 = +[NSBundle mainBundle];
  v4 = [v3 localizedStringForKey:@"CLASSIFY_BLUETOOTH_DEVICES_IN_SETTINGS_LINK" value:&stru_10026E598 table:@"Sounds"];

  v5 = [(COSHeadphoneNotificationsController *)self linkText:v4 withLink:@"prefs:root=Bluetooth"];

  return v5;
}

- (id)healthLinkText
{
  v3 = +[NSBundle mainBundle];
  v4 = [v3 localizedStringForKey:@"LEARN_MORE_IN_HEALTH_LINK" value:&stru_10026E598 table:@"Sounds"];

  v5 = [(COSHeadphoneNotificationsController *)self linkText:v4 withLink:@"x-apple-Health://HearingAppPlugin.healthplugin/SafeHeadphoneListening"];

  return v5;
}

- (void)applyBodyStyle:(id)a3 toRange:(_NSRange)a4
{
  length = a4.length;
  location = a4.location;
  v6 = a3;
  v9 = [UIFont preferredFontForTextStyle:UIFontTextStyleBody];
  [v6 addAttribute:NSFontAttributeName value:v9 range:{location, length}];
  v7 = +[PSListController appearance];
  v8 = [v7 textColor];

  [v6 addAttribute:NSForegroundColorAttributeName value:v8 range:{location, length}];
}

- (void)applyBoldStyle:(id)a3 toTextMatching:(id)a4
{
  v5 = a4;
  v6 = a3;
  v14 = [UIFont preferredFontForTextStyle:UIFontTextStyleBody];
  v7 = [v14 fontDescriptor];
  v8 = [v7 fontDescriptorWithSymbolicTraits:2];
  v9 = [UIFont fontWithDescriptor:v8 size:0.0];
  v10 = [v6 string];
  v11 = [v10 rangeOfString:v5];
  v13 = v12;

  [v6 addAttribute:NSFontAttributeName value:v9 range:{v11, v13}];
}

- (id)descriptionText
{
  v3 = [NSAttributedString alloc];
  v4 = +[NSBundle mainBundle];
  v5 = [v4 localizedStringForKey:@"ABOUT_HEADPHONE_LEVEL_WEEKLY_NOTIFICATIONS_DETAILS_1" value:&stru_10026E598 table:@"Sounds"];
  v6 = [v3 initWithString:v5];

  v7 = [NSAttributedString alloc];
  v8 = +[NSBundle mainBundle];
  v9 = [v8 localizedStringForKey:@"ABOUT_HEADPHONE_LEVEL_WEEKLY_NOTIFICATIONS_SUBTITLE" value:&stru_10026E598 table:@"Sounds"];
  v10 = [v7 initWithString:v9];

  v11 = [NSAttributedString alloc];
  v12 = +[NSBundle mainBundle];
  v13 = [v12 localizedStringForKey:@"ABOUT_HEADPHONE_LEVEL_WEEKLY_NOTIFICATIONS_DETAILS_2" value:&stru_10026E598 table:@"Sounds"];
  v14 = [v11 initWithString:v13];

  v15 = [(COSHeadphoneNotificationsController *)self bluetoothSettingsLinkText];
  v16 = [NSAttributedString alloc];
  v17 = +[NSBundle mainBundle];
  v18 = [v17 localizedStringForKey:@"ABOUT_HEADPHONE_LEVEL_WEEKLY_NOTIFICATIONS_DETAILS_3" value:&stru_10026E598 table:@"Sounds"];
  v19 = [v16 initWithString:v18];

  v20 = [(COSHeadphoneNotificationsController *)self healthLinkText];
  v21 = objc_opt_new();
  [v21 appendAttributedString:v6];
  [v21 appendAttributedString:v10];
  [v21 appendAttributedString:v14];
  [v21 appendAttributedString:v15];
  [v21 appendAttributedString:v19];
  [v21 appendAttributedString:v20];
  v22 = [v21 length];
  [(COSHeadphoneNotificationsController *)self applyBodyStyle:v21 toRange:0, v22];
  v23 = [v10 string];
  [(COSHeadphoneNotificationsController *)self applyBoldStyle:v21 toTextMatching:v23];

  [(COSHeadphoneNotificationsController *)self removeUnderlineStyle:v21 toRange:0, v22];

  return v21;
}

- (id)createScrollView
{
  v3 = [[UIScrollView alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
  [v3 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v3 setContentInsetAdjustmentBehavior:2];
  [v3 setContentInset:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];
  [v3 setScrollEnabled:1];
  [v3 setShowsVerticalScrollIndicator:1];
  v4 = [(COSHeadphoneNotificationsController *)self view];
  [v4 frame];
  v6 = v5;
  [v3 contentSize];
  [v3 setContentSize:v6];

  return v3;
}

- (id)createTitleLabel
{
  v3 = objc_alloc_init(UILabel);
  [v3 setTranslatesAutoresizingMaskIntoConstraints:0];
  v4 = [(COSHeadphoneNotificationsController *)self titleText];
  [v3 setText:v4];

  [v3 setTextAlignment:1];
  [v3 setNumberOfLines:0];
  [v3 setLineBreakMode:0];
  v5 = [UIFont _preferredFontForTextStyle:UIFontTextStyleTitle1 variant:1024];
  [v3 setFont:v5];

  return v3;
}

- (id)createDescriptionTextView
{
  v3 = objc_alloc_init(UITextView);
  [v3 setEditable:0];
  [v3 setSelectable:1];
  [v3 setScrollEnabled:0];
  [v3 _setInteractiveTextSelectionDisabled:1];
  v4 = +[UIColor clearColor];
  [v3 setBackgroundColor:v4];

  [v3 setShowsVerticalScrollIndicator:0];
  [v3 setTranslatesAutoresizingMaskIntoConstraints:0];
  v5 = [(COSHeadphoneNotificationsController *)self descriptionText];
  [v3 setAttributedText:v5];

  [v3 setTextAlignment:4];
  [v3 setDelegate:self];

  return v3;
}

- (BOOL)textView:(id)a3 shouldInteractWithURL:(id)a4 inRange:(_NSRange)a5 interaction:(int64_t)a6
{
  v7 = a4;
  v8 = v7;
  if (!a6)
  {
    v9 = [v7 scheme];
    v10 = [v9 isEqualToString:@"prefs"];

    if (v10)
    {
      BPSOpenSensitiveURLAsync();
    }

    else
    {
      v11 = +[UIApplication sharedApplication];
      [v11 openURL:v8 withCompletionHandler:0];
    }
  }

  return a6 == 0;
}

@end