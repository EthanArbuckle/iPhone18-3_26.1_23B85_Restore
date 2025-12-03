@interface COSAppleWatchPairingDiscoveryNoWatchViewController
- (COSAppleWatchPairingDiscoveryNoWatchViewController)init;
- (id)_detailTextLabelFont;
- (id)_titleLabelFont;
- (id)alternateButtonTitle;
- (void)alternateButtonPressed:(id)pressed;
- (void)viewDidLoad;
@end

@implementation COSAppleWatchPairingDiscoveryNoWatchViewController

- (COSAppleWatchPairingDiscoveryNoWatchViewController)init
{
  v5.receiver = self;
  v5.super_class = COSAppleWatchPairingDiscoveryNoWatchViewController;
  v2 = [(COSAppleWatchPairingDiscoveryNoWatchViewController *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(COSAppleWatchPairingDiscoveryNoWatchViewController *)v2 setStyle:8];
  }

  return v3;
}

- (void)viewDidLoad
{
  v74.receiver = self;
  v74.super_class = COSAppleWatchPairingDiscoveryNoWatchViewController;
  [(COSAppleWatchPairingDiscoveryNoWatchViewController *)&v74 viewDidLoad];
  view = [(COSAppleWatchPairingDiscoveryNoWatchViewController *)self view];
  v4 = +[UIColor clearColor];
  [view setBackgroundColor:v4];

  v5 = [UIView alloc];
  y = CGRectZero.origin.y;
  width = CGRectZero.size.width;
  height = CGRectZero.size.height;
  v9 = [v5 initWithFrame:{CGRectZero.origin.x, y, width, height}];
  containerView = self->_containerView;
  self->_containerView = v9;

  [(UIView *)self->_containerView setTranslatesAutoresizingMaskIntoConstraints:0];
  contentView = [(COSAppleWatchPairingDiscoveryNoWatchViewController *)self contentView];
  [contentView addSubview:self->_containerView];

  v12 = [[UIActivityIndicatorView alloc] initWithActivityIndicatorStyle:100];
  spinner = self->_spinner;
  self->_spinner = v12;

  [(UIActivityIndicatorView *)self->_spinner setTranslatesAutoresizingMaskIntoConstraints:0];
  v14 = [[UILabel alloc] initWithFrame:{CGRectZero.origin.x, y, width, height}];
  titleLabel = self->_titleLabel;
  self->_titleLabel = v14;

  [(UILabel *)self->_titleLabel setTranslatesAutoresizingMaskIntoConstraints:0];
  _titleLabelFont = [(COSAppleWatchPairingDiscoveryNoWatchViewController *)self _titleLabelFont];
  [(UILabel *)self->_titleLabel setFont:_titleLabelFont];

  [(UILabel *)self->_titleLabel setNumberOfLines:0];
  [(UILabel *)self->_titleLabel setTextAlignment:1];
  v17 = BPSTextColor();
  [(UILabel *)self->_titleLabel setColor:v17];

  v18 = +[NSBundle mainBundle];
  v19 = [v18 localizedStringForKey:@"HAVING_TROUBLE_MAGIC_CODE" value:&stru_10026E598 table:@"Localizable"];
  [(UILabel *)self->_titleLabel setText:v19];

  v20 = [[UILabel alloc] initWithFrame:{CGRectZero.origin.x, y, width, height}];
  detailTextLabel = self->_detailTextLabel;
  self->_detailTextLabel = v20;

  [(UILabel *)self->_detailTextLabel setTranslatesAutoresizingMaskIntoConstraints:0];
  _detailTextLabelFont = [(COSAppleWatchPairingDiscoveryNoWatchViewController *)self _detailTextLabelFont];
  [(UILabel *)self->_detailTextLabel setFont:_detailTextLabelFont];

  [(UILabel *)self->_detailTextLabel setNumberOfLines:0];
  [(UILabel *)self->_detailTextLabel setTextAlignment:1];
  v23 = BPSDetailTextColor();
  [(UILabel *)self->_detailTextLabel setColor:v23];

  v24 = +[NSBundle mainBundle];
  v25 = [v24 localizedStringForKey:@"HAVING_TROUBLE_MAGIC_CODE_DETAIL_TEXT" value:&stru_10026E598 table:@"Localizable"];
  [(UILabel *)self->_detailTextLabel setText:v25];

  [(UIActivityIndicatorView *)self->_spinner setHidesWhenStopped:1];
  [(UIView *)self->_containerView addSubview:self->_spinner];
  [(UIView *)self->_containerView addSubview:self->_titleLabel];
  [(UIView *)self->_containerView addSubview:self->_detailTextLabel];
  contentView2 = [(COSAppleWatchPairingDiscoveryNoWatchViewController *)self contentView];
  leadingAnchor = [contentView2 leadingAnchor];
  leadingAnchor2 = [(UIView *)self->_containerView leadingAnchor];
  v70 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v75[0] = v70;
  contentView3 = [(COSAppleWatchPairingDiscoveryNoWatchViewController *)self contentView];
  trailingAnchor = [contentView3 trailingAnchor];
  trailingAnchor2 = [(UIView *)self->_containerView trailingAnchor];
  v66 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  v75[1] = v66;
  centerXAnchor = [(UIView *)self->_containerView centerXAnchor];
  view2 = [(COSAppleWatchPairingDiscoveryNoWatchViewController *)self view];
  centerXAnchor2 = [view2 centerXAnchor];
  v62 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
  v75[2] = v62;
  centerYAnchor = [(UIView *)self->_containerView centerYAnchor];
  view3 = [(COSAppleWatchPairingDiscoveryNoWatchViewController *)self view];
  centerYAnchor2 = [view3 centerYAnchor];
  v58 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
  v75[3] = v58;
  topAnchor = [(UIActivityIndicatorView *)self->_spinner topAnchor];
  topAnchor2 = [(UIView *)self->_containerView topAnchor];
  v55 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v75[4] = v55;
  centerXAnchor3 = [(UIActivityIndicatorView *)self->_spinner centerXAnchor];
  centerXAnchor4 = [(UIView *)self->_containerView centerXAnchor];
  v52 = [centerXAnchor3 constraintEqualToAnchor:centerXAnchor4];
  v75[5] = v52;
  topAnchor3 = [(UILabel *)self->_titleLabel topAnchor];
  bottomAnchor = [(UIActivityIndicatorView *)self->_spinner bottomAnchor];
  v49 = [topAnchor3 constraintEqualToAnchor:bottomAnchor constant:10.0];
  v75[6] = v49;
  leadingAnchor3 = [(UILabel *)self->_titleLabel leadingAnchor];
  safeAreaLayoutGuide = [(UIView *)self->_containerView safeAreaLayoutGuide];
  leadingAnchor4 = [safeAreaLayoutGuide leadingAnchor];
  v45 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4];
  v75[7] = v45;
  trailingAnchor3 = [(UILabel *)self->_titleLabel trailingAnchor];
  safeAreaLayoutGuide2 = [(UIView *)self->_containerView safeAreaLayoutGuide];
  trailingAnchor4 = [safeAreaLayoutGuide2 trailingAnchor];
  v41 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4];
  v75[8] = v41;
  topAnchor4 = [(UILabel *)self->_detailTextLabel topAnchor];
  bottomAnchor2 = [(UILabel *)self->_titleLabel bottomAnchor];
  v38 = [topAnchor4 constraintEqualToAnchor:bottomAnchor2 constant:0.0];
  v75[9] = v38;
  bottomAnchor3 = [(UILabel *)self->_detailTextLabel bottomAnchor];
  bottomAnchor4 = [(UIView *)self->_containerView bottomAnchor];
  v35 = [bottomAnchor3 constraintEqualToAnchor:bottomAnchor4];
  v75[10] = v35;
  leadingAnchor5 = [(UILabel *)self->_detailTextLabel leadingAnchor];
  safeAreaLayoutGuide3 = [(UIView *)self->_containerView safeAreaLayoutGuide];
  leadingAnchor6 = [safeAreaLayoutGuide3 leadingAnchor];
  v29 = [leadingAnchor5 constraintEqualToAnchor:leadingAnchor6];
  v75[11] = v29;
  trailingAnchor5 = [(UILabel *)self->_detailTextLabel trailingAnchor];
  safeAreaLayoutGuide4 = [(UIView *)self->_containerView safeAreaLayoutGuide];
  trailingAnchor6 = [safeAreaLayoutGuide4 trailingAnchor];
  v33 = [trailingAnchor5 constraintEqualToAnchor:trailingAnchor6];
  v75[12] = v33;
  v34 = [NSArray arrayWithObjects:v75 count:13];
  [NSLayoutConstraint activateConstraints:v34];

  [(UIActivityIndicatorView *)self->_spinner startAnimating];
}

- (id)_titleLabelFont
{
  v2 = [UIFontDescriptor preferredFontDescriptorWithTextStyle:UIFontTextStyleTitle3];
  v8 = UIFontWeightTrait;
  v3 = [NSNumber numberWithDouble:UIFontWeightSemibold];
  v9 = v3;
  v4 = [NSDictionary dictionaryWithObjects:&v9 forKeys:&v8 count:1];
  v5 = [v2 fontDescriptorByAddingAttributes:v4];

  v6 = [UIFont fontWithDescriptor:v5 size:0.0];

  return v6;
}

- (id)_detailTextLabelFont
{
  v2 = [UIFontDescriptor preferredFontDescriptorWithTextStyle:UIFontTextStyleTitle3];
  v3 = [UIFont fontWithDescriptor:v2 size:0.0];

  return v3;
}

- (id)alternateButtonTitle
{
  v2 = +[NSBundle mainBundle];
  v3 = [v2 localizedStringForKey:@"HAVING_TROUBLE_MAGIC_CODE_LEARN_MORE" value:&stru_10026E598 table:@"Localizable"];

  return v3;
}

- (void)alternateButtonPressed:(id)pressed
{
  v4 = +[LSApplicationWorkspace defaultWorkspace];
  v3 = [NSURL URLWithString:@"https://support.apple.com/HT204505"];
  [v4 openURL:v3 configuration:0 completionHandler:0];
}

@end