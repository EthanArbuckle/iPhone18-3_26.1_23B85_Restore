@interface COSHeadphoneNotificationsController
- (BOOL)textView:(id)view shouldInteractWithURL:(id)l inRange:(_NSRange)range interaction:(int64_t)interaction;
- (id)bluetoothSettingsLinkText;
- (id)createDescriptionTextView;
- (id)createScrollView;
- (id)createTitleLabel;
- (id)descriptionText;
- (id)healthLinkText;
- (id)linkText:(id)text withLink:(id)link;
- (id)titleText;
- (void)applyBodyStyle:(id)style toRange:(_NSRange)range;
- (void)applyBoldStyle:(id)style toTextMatching:(id)matching;
- (void)viewDidLoad;
@end

@implementation COSHeadphoneNotificationsController

- (void)viewDidLoad
{
  v49.receiver = self;
  v49.super_class = COSHeadphoneNotificationsController;
  [(COSHeadphoneNotificationsController *)&v49 viewDidLoad];
  v3 = +[UIColor systemBackgroundColor];
  view = [(COSHeadphoneNotificationsController *)self view];
  [view setBackgroundColor:v3];

  createScrollView = [(COSHeadphoneNotificationsController *)self createScrollView];
  scrollView = self->_scrollView;
  self->_scrollView = createScrollView;

  view2 = [(COSHeadphoneNotificationsController *)self view];
  [view2 addSubview:self->_scrollView];

  createTitleLabel = [(COSHeadphoneNotificationsController *)self createTitleLabel];
  titleLabel = self->_titleLabel;
  self->_titleLabel = createTitleLabel;

  createDescriptionTextView = [(COSHeadphoneNotificationsController *)self createDescriptionTextView];
  descriptionView = self->_descriptionView;
  self->_descriptionView = createDescriptionTextView;

  [(UIScrollView *)self->_scrollView addSubview:self->_titleLabel];
  [(UIScrollView *)self->_scrollView addSubview:self->_descriptionView];
  v48 = +[NSMutableArray array];
  leadingAnchor = [(UIScrollView *)self->_scrollView leadingAnchor];
  view3 = [(COSHeadphoneNotificationsController *)self view];
  safeAreaLayoutGuide = [view3 safeAreaLayoutGuide];
  leadingAnchor2 = [safeAreaLayoutGuide leadingAnchor];
  v43 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v50[0] = v43;
  trailingAnchor = [(UIScrollView *)self->_scrollView trailingAnchor];
  view4 = [(COSHeadphoneNotificationsController *)self view];
  safeAreaLayoutGuide2 = [view4 safeAreaLayoutGuide];
  trailingAnchor2 = [safeAreaLayoutGuide2 trailingAnchor];
  v38 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  v50[1] = v38;
  topAnchor = [(UIScrollView *)self->_scrollView topAnchor];
  view5 = [(COSHeadphoneNotificationsController *)self view];
  safeAreaLayoutGuide3 = [view5 safeAreaLayoutGuide];
  topAnchor2 = [safeAreaLayoutGuide3 topAnchor];
  v33 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v50[2] = v33;
  bottomAnchor = [(UIScrollView *)self->_scrollView bottomAnchor];
  view6 = [(COSHeadphoneNotificationsController *)self view];
  safeAreaLayoutGuide4 = [view6 safeAreaLayoutGuide];
  bottomAnchor2 = [safeAreaLayoutGuide4 bottomAnchor];
  v28 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  v50[3] = v28;
  widthAnchor = [(UILabel *)self->_titleLabel widthAnchor];
  widthAnchor2 = [(UIScrollView *)self->_scrollView widthAnchor];
  v25 = [widthAnchor constraintEqualToAnchor:widthAnchor2 multiplier:0.9];
  v50[4] = v25;
  centerXAnchor = [(UILabel *)self->_titleLabel centerXAnchor];
  centerXAnchor2 = [(UIScrollView *)self->_scrollView centerXAnchor];
  v13 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
  v50[5] = v13;
  widthAnchor3 = [(UIView *)self->_descriptionView widthAnchor];
  widthAnchor4 = [(UIScrollView *)self->_scrollView widthAnchor];
  v16 = [widthAnchor3 constraintEqualToAnchor:widthAnchor4 multiplier:0.9];
  v50[6] = v16;
  centerXAnchor3 = [(UIView *)self->_descriptionView centerXAnchor];
  centerXAnchor4 = [(UIScrollView *)self->_scrollView centerXAnchor];
  v19 = [centerXAnchor3 constraintEqualToAnchor:centerXAnchor4];
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

- (id)linkText:(id)text withLink:(id)link
{
  linkCopy = link;
  textCopy = text;
  v7 = [[NSMutableAttributedString alloc] initWithString:textCopy attributes:0];

  v8 = [v7 length];
  v9 = +[PSListController appearance];
  footerHyperlinkColor = [v9 footerHyperlinkColor];

  v14 = NSForegroundColorAttributeName;
  v15 = footerHyperlinkColor;
  v11 = [NSDictionary dictionaryWithObjects:&v15 forKeys:&v14 count:1];
  [v7 setAttributes:v11 range:{0, v8}];
  v12 = [NSURL URLWithString:linkCopy];

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

- (void)applyBodyStyle:(id)style toRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  styleCopy = style;
  v9 = [UIFont preferredFontForTextStyle:UIFontTextStyleBody];
  [styleCopy addAttribute:NSFontAttributeName value:v9 range:{location, length}];
  v7 = +[PSListController appearance];
  textColor = [v7 textColor];

  [styleCopy addAttribute:NSForegroundColorAttributeName value:textColor range:{location, length}];
}

- (void)applyBoldStyle:(id)style toTextMatching:(id)matching
{
  matchingCopy = matching;
  styleCopy = style;
  v14 = [UIFont preferredFontForTextStyle:UIFontTextStyleBody];
  fontDescriptor = [v14 fontDescriptor];
  v8 = [fontDescriptor fontDescriptorWithSymbolicTraits:2];
  v9 = [UIFont fontWithDescriptor:v8 size:0.0];
  string = [styleCopy string];
  v11 = [string rangeOfString:matchingCopy];
  v13 = v12;

  [styleCopy addAttribute:NSFontAttributeName value:v9 range:{v11, v13}];
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

  bluetoothSettingsLinkText = [(COSHeadphoneNotificationsController *)self bluetoothSettingsLinkText];
  v16 = [NSAttributedString alloc];
  v17 = +[NSBundle mainBundle];
  v18 = [v17 localizedStringForKey:@"ABOUT_HEADPHONE_LEVEL_WEEKLY_NOTIFICATIONS_DETAILS_3" value:&stru_10026E598 table:@"Sounds"];
  v19 = [v16 initWithString:v18];

  healthLinkText = [(COSHeadphoneNotificationsController *)self healthLinkText];
  v21 = objc_opt_new();
  [v21 appendAttributedString:v6];
  [v21 appendAttributedString:v10];
  [v21 appendAttributedString:v14];
  [v21 appendAttributedString:bluetoothSettingsLinkText];
  [v21 appendAttributedString:v19];
  [v21 appendAttributedString:healthLinkText];
  v22 = [v21 length];
  [(COSHeadphoneNotificationsController *)self applyBodyStyle:v21 toRange:0, v22];
  string = [v10 string];
  [(COSHeadphoneNotificationsController *)self applyBoldStyle:v21 toTextMatching:string];

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
  view = [(COSHeadphoneNotificationsController *)self view];
  [view frame];
  v6 = v5;
  [v3 contentSize];
  [v3 setContentSize:v6];

  return v3;
}

- (id)createTitleLabel
{
  v3 = objc_alloc_init(UILabel);
  [v3 setTranslatesAutoresizingMaskIntoConstraints:0];
  titleText = [(COSHeadphoneNotificationsController *)self titleText];
  [v3 setText:titleText];

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
  descriptionText = [(COSHeadphoneNotificationsController *)self descriptionText];
  [v3 setAttributedText:descriptionText];

  [v3 setTextAlignment:4];
  [v3 setDelegate:self];

  return v3;
}

- (BOOL)textView:(id)view shouldInteractWithURL:(id)l inRange:(_NSRange)range interaction:(int64_t)interaction
{
  lCopy = l;
  v8 = lCopy;
  if (!interaction)
  {
    scheme = [lCopy scheme];
    v10 = [scheme isEqualToString:@"prefs"];

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

  return interaction == 0;
}

@end